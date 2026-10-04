package com.bare.appslist.engine;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

import com.bare.appslist.data.AppInventoryItem;
import com.bare.blacklist.data.BlacklistApp;
import com.bare.blacklist.repository.BlacklistRepository;
import com.bare.appslist.restore.SbaArchiveCreationExecutor;
import com.bare.appslist.actions.PrivilegedAppActionExecutor;
import com.bare.appslist.restore.SbaNativeArchiveBackend;
import com.bare.home.repository.AnonymousIdentityStore;
import com.bare.messagescalls.backups.CallsBackupRepository;
import com.bare.storage.AndroidStorageInventory;
import com.bare.storage.LocalStorageCoordinator;
import com.bare.storage.StorageSelection;
import com.bare.settings.MultipleBackupStrategy;
import com.bare.settings.SettingsRepository;
import com.bare.settings.model.AppSettings;
import com.bare.core.state.LocalState;
import com.bare.settings.appbackuplimits.AppBackupLimitItem;
import com.bare.tasks.TaskService;
import com.bare.appslist.planning.AppBackupStrategyPlanner;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/**
 * Concrete local Apps backup/restore owner.
 *
 * Reference storage shape:
 * BΛR☰/accounts/<uid-half-md5>/backups/apps/local/<package>/<backupId>.<part>
 * with .app/.splits/.libs/.dat/.extdat/.med/.extra and a metadata .xml.
 *
 * Archive creation uses the Reference SBA native ABI. Privileged app-private
 * paths are staged through the privileged command boundary before native
 * archive creation and copied back through the same boundary during restore.
 */
public final class AppLocalBackupEngine {
    public enum Part { APK, SPLITS, SHARED_LIBS, DATA, EXTERNAL_DATA, MEDIA, EXPANSION, SPECIAL_DATA }

    private static final int SBA_VERSION = 2;
    private static final int COMPRESSION_METHOD = 1;
    private static final int COMPRESSION_LEVEL = 1;
    private static final int ENCRYPTION_METHOD = 4;
    private static final int KDF = 1;
    private static final int ARGON_ITERATIONS = 3;
    private static final int ARGON_MEMORY_KIB = 16384;
    private static final int ARGON_PARALLELISM = 1;
    private static final int CHUNK_SIZE = 1048576;

    private final Context context;
    private final PrivilegedFileAccess privileged;

    public AppLocalBackupEngine(Context context) {
        this(context, new PrivilegedFileAccess());
    }

    public AppLocalBackupEngine(Context context, PrivilegedFileAccess privileged) {
        if (context == null) throw new NullPointerException("context");
        if (privileged == null) throw new NullPointerException("privileged");
        this.context = context.getApplicationContext();
        this.privileged = privileged;
    }

    public BackupResult backup(AppInventoryItem item, Set<Part> requested) throws Exception {
        if (item == null) throw new IllegalArgumentException("app");
        PackageInfo info = packageInfo(item.packageName);
        File packageDir = packageBackupDirectory(item.packageName);
        if (!packageDir.exists() && !packageDir.mkdirs()) {
            throw new IllegalStateException("Cannot create app backup directory");
        }

        BackupRecord latest = listBackups(item.packageName).isEmpty()
                ? null : listBackups(item.packageName).get(0);
        AppSettings settings = new SettingsRepository(new LocalState(context)).read();
        MultipleBackupStrategy strategy = settings.getAppsMultipleBackupStrategy() == null
                ? MultipleBackupStrategy.singleBackup()
                : settings.getAppsMultipleBackupStrategy();
        java.util.LinkedHashSet<Part> parts = requested == null || requested.isEmpty()
                ? new java.util.LinkedHashSet<>(Collections.singleton(Part.APK))
                : new java.util.LinkedHashSet<>(requested);
        applyBlacklistPolicy(info.packageName, parts);
        enforceLocalLimits(info, parts, settings.getAppBackupLimits());
        ChangeState changes = compareCurrentState(info, latest, parts);
        AppBackupStrategyPlanner.Plan plan = AppBackupStrategyPlanner.plan(
                strategy, changes.identicalApk, changes.anyChanged, changes.apkChanged,
                changes.dataChanged, changes.changedParts);
        if (plan.skips() && latest != null) {
            return new BackupResult(item.packageName, latest.id, latest.directory,
                    Collections.<String>emptyList(), 0L, true, plan.getDecision().name());
        }

        String backupId = latest != null && plan.updatesLatestBackup()
                ? latest.id : nextBackupId(packageDir);
        ArrayList<String> completed = new ArrayList<>();
        ArrayList<File> temporary = new ArrayList<>();
        JSONObject metadata = new JSONObject();

        metadata.put("formatVersion", 1);
        metadata.put("strategyDecision", plan.getDecision().name());
        metadata.put("changedParts", new JSONArray(plan.getChangedParts()));
        metadata.put("backupId", backupId);
        metadata.put("packageName", info.packageName);
        metadata.put("versionName", info.versionName);
        metadata.put("versionCode", info.getLongVersionCode());
        metadata.put("backupDate", System.currentTimeMillis());
        metadata.put("encrypted", true);
        metadata.put("encryptionMethod", "AEGIS-256");
        metadata.put("compressionMethod", "ZSTD");
        metadata.put("requiredVersionCode", 580);
        metadata.put("requiredVersionName", "v5.0.0");

        try {
            if (parts.contains(Part.APK)) {
                File source = new File(info.applicationInfo.sourceDir);
                File destination = new File(packageDir, backupId + ".app");
                if (destination.exists() && !destination.delete()) throw new IllegalStateException("Cannot replace APK backup");
                copyFile(source, destination);
                metadata.put("apkSize", destination.length());
                completed.add("APK");
            }

            if (parts.contains(Part.SPLITS)) {
                List<String> splits = splitSources(info);
                if (!splits.isEmpty()) {
                    File archive = new File(packageDir, backupId + ".splits");
                    if (archive.exists() && !archive.delete()) throw new IllegalStateException("Cannot replace split backup");
                    createArchive(
                            archive,
                            splitNames(splits),
                            splitSourcesForArchive(splits),
                            temporary);
                    metadata.put("splits", new JSONArray(splitNames(splits)));
                    metadata.put("splitsSize", archive.length());
                    completed.add("SPLITS");
                }
            }

            if (parts.contains(Part.SHARED_LIBS)) {
                List<File> libraries = sharedLibraries(info);
                if (!libraries.isEmpty()) {
                    File archive = new File(packageDir, backupId + ".libs");
                    if (archive.exists() && !archive.delete()) throw new IllegalStateException("Cannot replace library backup");
                    createArchive(archive, fileNames(libraries), libraries, temporary);
                    metadata.put("sharedLibs", new JSONArray(fileNames(libraries)));
                    metadata.put("sharedLibsSize", archive.length());
                    completed.add("SHARED_LIBS");
                }
            }

            if (parts.contains(Part.DATA)) {
                File archive = new File(packageDir, backupId + ".dat");
                if (archive.exists() && !archive.delete()) throw new IllegalStateException("Cannot replace data backup");
                List<File> sources = stagePrivilegedData(info, temporary);
                if (!sources.isEmpty()) {
                    createArchive(archive, dataEntryNames(sources), sources, temporary);
                    metadata.put("dataSize", archive.length());
                    metadata.put("dataEntries", new JSONArray(dataEntryNames(sources)));
                    com.bare.tasks.TaskService.SbaAppDataArchiveMetadata archiveMetadata =
                            new com.bare.tasks.TaskService.SbaAppDataArchiveMetadata(
                                    backupId, 0, "data", info.packageName, info.versionName,
                                    info.getLongVersionCode(), false, true, "1",
                                    dataEntryNames(sources).contains("data_de"),
                                    sourceSize(info, Part.DATA),
                                    dataEntryNames(sources).contains("data_de")
                                            ? privilegedSize(new File(deDataDirectory(info.packageName))) : 0L,
                                    dataEntryNames(sources));
                    metadata.put("dataArchiveMetadata",
                            new JSONObject(archiveMetadata.toJson()));
                    completed.add("DATA");
                }
            }

            if (parts.contains(Part.EXTERNAL_DATA)) {
                File source = externalDataDirectory(info.packageName);
                if (source.isDirectory()) {
                    File archive = new File(packageDir, backupId + ".extdat");
                    if (archive.exists() && !archive.delete()) throw new IllegalStateException("Cannot replace external-data backup");
                    createArchive(archive, Collections.singletonList(info.packageName), Collections.singletonList(source), temporary);
                    metadata.put("extDataSize", archive.length());
                    completed.add("EXTERNAL_DATA");
                }
            }

            if (parts.contains(Part.MEDIA)) {
                File source = mediaDirectory(info.packageName);
                if (source.isDirectory()) {
                    File archive = new File(packageDir, backupId + ".med");
                    if (archive.exists() && !archive.delete()) throw new IllegalStateException("Cannot replace media backup");
                    createArchive(archive, Collections.singletonList(info.packageName), Collections.singletonList(source), temporary);
                    metadata.put("mediaSize", archive.length());
                    completed.add("MEDIA");
                }
            }

            if (parts.contains(Part.EXPANSION)) {
                File source = expansionDirectory(info.packageName);
                if (source.isDirectory()) {
                    File archive = new File(packageDir, backupId + ".exp");
                    if (archive.exists() && !archive.delete()) throw new IllegalStateException("Cannot replace expansion backup");
                    createArchive(archive, Collections.singletonList(info.packageName),
                            Collections.singletonList(source), temporary);
                    metadata.put("expansionSize", archive.length());
                    completed.add("EXPANSION");
                }
            }

            if (parts.contains(Part.SPECIAL_DATA)) {
                File special = new File(packageDir, backupId + ".extra");
                if (special.exists() && !special.delete()) throw new IllegalStateException("Cannot replace special-data backup");
                if (writeSpecialData(info.packageName, special)) {
                    metadata.put("specialDataSize", special.length());
                    completed.add("SPECIAL_DATA");
                }
            }

            metadata.put("parts", new JSONArray(completed));
            metadata.put("sourceSizes", sourceSizes(info, parts));
            File xml = new File(packageDir, backupId + ".xml");
            writeAtomic(xml, metadata.toString());
            cleanupNormalBackups(packageDir, strategy);
            return new BackupResult(
                    item.packageName, backupId, packageDir, completed,
                    metadata.optLong("apkSize", 0L)
                            + metadata.optLong("splitsSize", 0L)
                            + metadata.optLong("sharedLibsSize", 0L)
                            + metadata.optLong("dataSize", 0L)
                            + metadata.optLong("extDataSize", 0L)
                            + metadata.optLong("mediaSize", 0L)
                            + metadata.optLong("expansionSize", 0L)
                            + metadata.optLong("specialDataSize", 0L),
                    false, plan.getDecision().name());
        } finally {
            for (File file : temporary) deleteTree(file);
        }
    }

    private void cleanupNormalBackups(File packageDir, MultipleBackupStrategy strategy) {
        if (strategy == null || !strategy.isMultipleBackups()) return;
        List<BackupRecord> records = listBackups(packageDir.getName());
        com.bare.appslist.planning.AppBackupRetentionPlanner.CleanupPlan<BackupRecord> plan =
                com.bare.appslist.planning.AppBackupRetentionPlanner.plan(strategy, records);
        for (BackupRecord record : plan.getDeletable()) deleteBackupArtifacts(record);
    }

    private void deleteBackupArtifacts(BackupRecord record) {
        String[] suffixes = {".app",".splits",".libs",".dat",".extdat",".med",".exp",".extra",".xml"};
        for (String suffix : suffixes) {
            File file = new File(record.directory, record.id + suffix);
            if (file.isFile()) file.delete();
        }
    }

    /**
     * Reference gs0/g00/xw/qk0 blacklist consumption.
     * Hide removes the app from inventory; a direct engine request is rejected.
     * NoData preserves the APK-related parts but suppresses data-bearing parts.
     */
    private void applyBlacklistPolicy(String packageName, Set<Part> parts) {
        BlacklistRepository repository = new BlacklistRepository(context);
        if (repository.isHidden(packageName)) {
            throw new IllegalStateException("App is blacklisted with Hide mode");
        }
        if (!repository.suppressesData(packageName)) return;
        parts.remove(Part.DATA);
        parts.remove(Part.EXTERNAL_DATA);
        parts.remove(Part.MEDIA);
        parts.remove(Part.EXPANSION);
        parts.remove(Part.SPECIAL_DATA);
    }

    private void enforceLocalLimits(
            PackageInfo info, java.util.Set<Part> parts, java.util.List<AppBackupLimitItem> limits) {
        if (limits == null || limits.isEmpty()) return;
        java.util.Iterator<Part> iterator = parts.iterator();
        while (iterator.hasNext()) {
            Part part = iterator.next();
            String normalized = part == Part.EXTERNAL_DATA ? "EXTDATA" : part.name();
            for (AppBackupLimitItem limit : limits) {
                if (limit == null || !limit.getPart().equalsIgnoreCase(normalized)) continue;
                long max = limit.getLocalLimitBytes();
                if (max > 0 && sourceSize(info, part) > max) {
                    iterator.remove();
                }
                break;
            }
        }
    }

    private ChangeState compareCurrentState(
            PackageInfo info, BackupRecord latest, Set<Part> parts) {
        ChangeState state = new ChangeState();
        if (latest == null) {
            state.anyChanged = true; state.apkChanged = true; state.dataChanged = true;
            state.changedParts.addAll(partNames(parts));
            return state;
        }
        JSONObject sizes = latest.metadata.optJSONObject("sourceSizes");
        long apkSize = new File(info.applicationInfo.sourceDir).length();
        String currentVersionName = info.versionName == null ? "Empty" : info.versionName;
        String backupVersionName = latest.metadata.optString("versionName", "Empty");
        boolean hasSplits = !splitSources(info).isEmpty();
        boolean hasSharedLibs = !sharedLibraries(info).isEmpty();
        state.apkChanged = info.getLongVersionCode() != latest.metadata.optLong("versionCode", -1L)
                || !currentVersionName.equals(backupVersionName)
                || apkSize != sizeOf(sizes, "APK")
                || hasSplits != latest.metadata.optBoolean("hasSplits", sizeOf(sizes, "SPLITS") > 0)
                || hasSharedLibs != latest.metadata.optBoolean("hasSharedLibs", sizeOf(sizes, "SHARED_LIBS") > 0);
        state.identicalApk = !state.apkChanged;
        state.dataChanged = false;
        for (Part part : parts) {
            if (part == Part.APK && state.apkChanged) state.changedParts.add("APK");
            else if (part == Part.SPLITS && sourceSize(info, part) != sizeOf(sizes, "SPLITS")) state.changedParts.add("SPLITS");
            else if (part == Part.SHARED_LIBS && sourceSize(info, part) != sizeOf(sizes, "SHARED_LIBS")) state.changedParts.add("SHARED_LIBS");
            else if (part == Part.DATA
                    && (sourceSize(info, part) != sizeOf(sizes, "DATA")
                    || modifiedDataSince(info.packageName, latest.metadata.optLong("backupDate", 0L)))) {
                state.dataChanged = true;
                state.changedParts.add("DATA");
            }
            else if (part == Part.EXTERNAL_DATA && sourceSize(info, part) != sizeOf(sizes, "EXTERNAL_DATA")) state.changedParts.add("EXTERNAL_DATA");
            else if (part == Part.MEDIA && sourceSize(info, part) != sizeOf(sizes, "MEDIA")) state.changedParts.add("MEDIA");
            else if (part == Part.EXPANSION && sourceSize(info, part) != sizeOf(sizes, "EXPANSION")) state.changedParts.add("EXPANSION");
            else if (part == Part.SPECIAL_DATA) state.changedParts.add("SPECIAL_DATA");
        }
        state.anyChanged = !state.changedParts.isEmpty();
        return state;
    }

    private JSONObject sourceSizes(PackageInfo info, Set<Part> parts) throws Exception {
        JSONObject o = new JSONObject();
        for (Part part : parts) o.put(part.name(), sourceSize(info, part));
        return o;
    }

    private long sourceSize(PackageInfo info, Part part) {
        switch (part) {
            case APK: return new File(info.applicationInfo.sourceDir).length();
            case SPLITS: return sumFiles(splitSourcesForArchive(splitSources(info)));
            case SHARED_LIBS: return sumFiles(sharedLibraries(info));
            case DATA: return privilegedSize(dataDirectory(info.packageName))
                    + privilegedSize(new File(deDataDirectory(info.packageName)));
            case EXTERNAL_DATA: return treeSize(externalDataDirectory(info.packageName));
            case MEDIA: return treeSize(mediaDirectory(info.packageName));
            case EXPANSION: return treeSize(expansionDirectory(info.packageName));
            case SPECIAL_DATA: return 1L;
            default: return 0L;
        }
    }

    /**
     * Reference eq.b()/nm6.b() parity: data is changed when files under the
     * app data root were modified after the last backup. Cache is excluded
     * when the canonical app-cache-backup setting is disabled.
     */
    private boolean modifiedDataSince(String packageName, long backupDate) {
        if (backupDate <= 0L) return true;
        try {
            AppSettings settings = new SettingsRepository(new LocalState(context)).read();
            boolean includeCache = Boolean.TRUE.equals(settings.getIsAppCacheBackupReq());
            String path = dataDirectory(packageName).getAbsolutePath();
            long seconds = backupDate / 1000L;
            String command = "find " + shell(path)
                    + " -type f -newermt '@" + seconds + "'"
                    + (includeCache ? "" : " ! -path " + shell(path + "/cache/*"))
                    + " -print";
            PrivilegedAppActionExecutor.Result result =
                    new PrivilegedAppActionExecutor.RootCommandRunner().run(command);
            if (!result.isSuccess()) return true;
            for (String line : result.getOutput()) {
                if (line != null && !line.trim().isEmpty()) return true;
            }
            return false;
        } catch (Exception ignored) {
            // Reference treats an unavailable modification scan conservatively.
            return true;
        }
    }

    private long privilegedSize(File file) {
        try {
            PrivilegedAppActionExecutor.Result result =
                    new PrivilegedAppActionExecutor.RootCommandRunner().run(
                            "du -sb " + shell(file.getAbsolutePath()) + " 2>/dev/null");
            if (!result.isSuccess() || result.getOutput().isEmpty()) return 0L;
            String first = result.getOutput().get(0).trim();
            int space = first.indexOf(' ');
            return Long.parseLong(space > 0 ? first.substring(0, space) : first);
        } catch (Exception ignored) { return 0L; }
    }

    private static long treeSize(File file) {
        if (file == null || !file.exists()) return 0L;
        if (file.isFile()) return file.length();
        long total = 0L;
        File[] children = file.listFiles();
        if (children != null) for (File child : children) total = safeAdd(total, treeSize(child));
        return total;
    }

    private static long sumFiles(List<File> files) {
        long total = 0L;
        for (File file : files) if (file != null && file.isFile()) total = safeAdd(total, file.length());
        return total;
    }

    private static long sizeOf(JSONObject object, String key) {
        return object == null ? -1L : object.optLong(key, -1L);
    }

    private static List<String> partNames(Set<Part> parts) {
        ArrayList<String> result = new ArrayList<>();
        for (Part part : parts) result.add(part.name());
        return result;
    }

    private static String shell(String path) {
        return "'" + path.replace("'", "'\\''") + "'";
    }

    private static final class ChangeState {
        boolean identicalApk;
        boolean anyChanged;
        boolean apkChanged;
        boolean dataChanged;
        final List<String> changedParts = new ArrayList<>();
    }

    public List<BackupRecord> listBackups(String packageName) {
        File dir = packageBackupDirectory(packageName);
        File[] files = dir.listFiles();
        if (files == null) return Collections.emptyList();
        ArrayList<BackupRecord> result = new ArrayList<>();
        for (File file : files) {
            if (!file.isFile() || !file.getName().endsWith(".xml")) continue;
            String id = file.getName().substring(0, file.getName().length() - 4);
            try {
                JSONObject metadata = new JSONObject(readUtf8(file));
                if (!packageName.equals(metadata.optString("packageName", ""))) continue;
                result.add(new BackupRecord(id, file, metadata, dir));
            } catch (Exception ignored) {
            }
        }
        result.sort((a, b) -> b.id.compareTo(a.id));
        return result;
    }

    public RestoreResult restore(
            String packageName, String backupId, Set<Part> requested) throws Exception {
        BackupRecord record = findBackup(packageName, backupId);
        PackageInfo installed = installedOrNull(packageName);
        AppSettings settings = new SettingsRepository(new LocalState(context)).read();
        long requiredVersion = record.metadata.optLong("requiredVersionCode", 0L);
        if (requiredVersion > 0 && currentVersionCode() < requiredVersion) {
            throw new IllegalStateException("Backup requires a newer BaRe version");
        }

        Set<Part> parts = requested == null || requested.isEmpty()
                ? parseParts(record.metadata.optJSONArray("parts"))
                : new LinkedHashSet<>(requested);
        applyBlacklistPolicy(packageName, parts);
        long backupVersionCode = record.metadata.optLong("versionCode", -1L);
        if (installed != null && backupVersionCode >= 0
                && backupVersionCode < installed.getLongVersionCode()
                && !Boolean.TRUE.equals(settings.getIsInPlaceApkDowngradeEnabled())) {
            parts.remove(Part.APK);
            parts.remove(Part.SPLITS);
            if (parts.isEmpty()) {
                throw new IllegalStateException("APK downgrade is disabled for this restore");
            }
        }

        int restored = 0;
        if (parts.contains(Part.APK)) {
            ArrayList<AppPackageInstaller.Entry> entries = new ArrayList<>();
            File apk = new File(record.directory, backupId + ".app");
            if (apk.isFile()) {
                entries.add(new AppPackageInstaller.Entry("base.apk", apk));
            }
            File splitArchive = new File(record.directory, backupId + ".splits");
            File splitDir = null;
            try {
                if (parts.contains(Part.SPLITS) && splitArchive.isFile()) {
                    splitDir = extractArchive(splitArchive, "splits-restore", record, false);
                    for (File file : apkFiles(splitDir)) {
                        entries.add(new AppPackageInstaller.Entry(file.getName(), file));
                    }
                }
                if (!entries.isEmpty()) {
                    AppPackageInstaller.Result install =
                            new AppPackageInstaller(context).install(packageName, entries);
                    if (!install.isSuccess()) {
                        throw new IllegalStateException(
                                install.message == null ? "Package installation failed" : install.message);
                    }
                    restored++;
                }
            } finally {
                deleteTree(splitDir);
            }
        }

        if (parts.contains(Part.SHARED_LIBS)) {
            File archive = new File(record.directory, backupId + ".libs");
            if (archive.isFile()) {
                restored += restoreSharedLibraries(archive, record);
            }
        }

        if (parts.contains(Part.DATA)) {
            File archive = new File(record.directory, backupId + ".dat");
            if (archive.isFile()) {
                File extracted = extractArchive(archive, "data-restore", record, true);
                try {
                    File data = new File(extracted, "data");
                    if (data.exists()) {
                        privileged.copyTree(
                                data.getAbsolutePath(),
                                dataDirectory(packageName),
                                installed == null);
                        restored++;
                    }
                    File dataDe = new File(extracted, "data_de");
                    if (dataDe.exists()) {
                        privileged.copyTree(
                                dataDe.getAbsolutePath(),
                                deDataDirectory(packageName),
                                installed == null);
                        restored++;
                    }
                } finally {
                    deleteTree(extracted);
                }
            }
        }

        if (parts.contains(Part.EXTERNAL_DATA)) {
            restored += restoreArchivePart(
                    record, backupId + ".extdat", externalDataDirectory(packageName), false);
        }
        if (parts.contains(Part.MEDIA)) {
            restored += restoreArchivePart(
                    record, backupId + ".med", mediaDirectory(packageName), false);
        }
        if (parts.contains(Part.EXPANSION)) {
            restored += restoreArchivePart(
                    record, backupId + ".exp", expansionDirectory(packageName), false);
        }
        if (parts.contains(Part.SPECIAL_DATA)) {
            AppSettings settings = new SettingsRepository(new LocalState(context)).read();
            boolean restoreSpecial = !Boolean.FALSE.equals(settings.getRestoreSpecialAppPerms());
            boolean restoreSsaid = !Boolean.FALSE.equals(settings.getIsRestoreSsaids());
            File special = new File(record.directory, backupId + ".extra");
            if (special.isFile() && restoreSpecial) {
                restoreSpecialData(packageName, special, restoreSsaid);
                restored++;
            }
        }

        return new RestoreResult(packageName, backupId, restored);
    }

    /**
     * Reference xw.u() final consumer: every extracted shared-library APK is
     * consumed by the privileged package installer using the exact
     * pm install -t path. The restore staging directory is the only
     * intermediate location; the package manager is the final destination/
     * consumer, so no synthetic /data/app-lib path is introduced.
     */
    private int restoreSharedLibraries(File archive, BackupRecord record) throws Exception {
        File extracted = extractArchive(archive, "shared-libs-restore", record, false);
        try {
            List<File> apks = apkFiles(extracted);
            if (apks.isEmpty()) return 0;
            PrivilegedAppActionExecutor.RootCommandRunner runner =
                    new PrivilegedAppActionExecutor.RootCommandRunner();
            int installed = 0;
            for (File apk : apks) {
                String command = "pm install -t " + shell(apk.getAbsolutePath());
                PrivilegedAppActionExecutor.Result result = runner.run(command);
                if (!result.isSuccess()) {
                    throw new IllegalStateException(
                            "Shared library install failed: " + apk.getName()
                                    + (result.getError() == null ? "" : " (" + result.getError() + ")"));
                }
                installed++;
            }
            return installed;
        } finally {
            deleteTree(extracted);
        }
    }

    private int restoreArchivePart(
            BackupRecord record, String fileName, File destination, boolean privilegedCopy)
            throws Exception {
        File archive = new File(record.directory, fileName);
        if (!archive.isFile()) return 0;
        File extracted = extractArchive(archive, "part-restore", record, privilegedCopy);
        try {
            File source = new File(extracted, record.metadata.optString("packageName", ""));
            if (!source.exists()) source = extracted;
            if (privilegedCopy) privileged.copyTree(source.getAbsolutePath(), destination.getAbsolutePath(), true);
            else copyTree(source, destination);
            return 1;
        } finally {
            deleteTree(extracted);
        }
    }

    private File extractArchive(
            File archive, String name, BackupRecord record, boolean privileged) throws Exception {
        File root = new File(context.getCacheDir(), "app-restore-" + name + "-" + System.nanoTime());
        if (!root.mkdirs()) throw new IllegalStateException("Cannot create restore staging directory");
        Exception last = null;
        for (char[] passwordChars : CallsBackupRepository.referencePasswordCandidates(context)) {
            try {
                String password = new String(passwordChars);
                try {
                    com.bare.messagescalls.restore.ReferenceSbaNativeRestoreOrchestrator.extractToDirectory(
                            archive, password, root, null);
                    return root;
                } finally {
                    Arrays.fill(passwordChars, '\0');
                }
            } catch (Exception e) {
                last = e;
                deleteTree(root);
                if (!root.mkdirs()) throw new IllegalStateException(
                        "Cannot recreate restore staging directory");
            }
        }
        deleteTree(root);
        throw last == null ? new IllegalStateException("No SBA password candidates") : last;
    }

    private void createArchive(
            File output, List<String> entryNames, List<File> sources, List<File> temporary) throws Exception {
        if (sources == null || sources.isEmpty() || entryNames == null
                || sources.size() != entryNames.size()) {
            throw new IllegalArgumentException("SBA source/name list mismatch");
        }
        byte[] salt = new byte[16];
        byte[] nonce = new byte[16];
        byte[] key = null;
        byte[] keyCheck = null;
        char[] password = CallsBackupRepository.referencePassword(context);
        try {
            SecureRandom random = new SecureRandom();
            random.nextBytes(salt);
            random.nextBytes(nonce);
            key = new SbaNativeArchiveBackend().deriveArgon2id(
                    new String(password), salt, ARGON_ITERATIONS, ARGON_MEMORY_KIB,
                    ARGON_PARALLELISM, 32);
            keyCheck = SbaArchiveCreationExecutor.keyCheck(
                    "SBA1-AEGIS256-key-check-v1", key, salt, nonce);

            byte[][] metadata = new byte[sources.size()][];
            String[] sourcePaths = new String[sources.size()];
            int[] flags = new int[sources.size()];
            for (int i = 0; i < sources.size(); i++) {
                metadata[i] = entryNames.get(i).getBytes(StandardCharsets.UTF_8);
                sourcePaths[i] = sources.get(i).getAbsolutePath();
                flags[i] = 0;
            }

            SbaArchiveCreationExecutor.Result result = new SbaArchiveCreationExecutor().create(
                    output,
                    "swiftbackup.app-data".getBytes(StandardCharsets.UTF_8),
                    metadata, sourcePaths, flags,
                    new String[sources.size()][],
                    new String[sources.size()][],
                    SBA_VERSION, COMPRESSION_METHOD, COMPRESSION_LEVEL, ENCRYPTION_METHOD,
                    KDF, ARGON_ITERATIONS, ARGON_MEMORY_KIB, ARGON_PARALLELISM, CHUNK_SIZE,
                    1, 0, key, keyCheck, salt, nonce, null);
            key = null;
            keyCheck = null;
            if (!result.isSuccess()) throw new IllegalStateException(result.getError());
        } finally {
            Arrays.fill(password, '\0');
            if (key != null) Arrays.fill(key, (byte) 0);
            if (keyCheck != null) Arrays.fill(keyCheck, (byte) 0);
            Arrays.fill(salt, (byte) 0);
            Arrays.fill(nonce, (byte) 0);
        }
    }

    private List<File> stagePrivilegedData(PackageInfo info, List<File> temporary) throws Exception {
        ArrayList<File> sources = new ArrayList<>();
        TaskService.AppsWorkingDir.Result workspace =
                new TaskService.AppsWorkingDir().open(context.getFilesDir(), null, System.nanoTime(), false);
        if (!workspace.created || workspace.directory == null) {
            throw new IllegalStateException(
                    workspace.error == null ? "Cannot create app task workspace" : workspace.error);
        }
        File root = new File(workspace.directory, "data-stage");
        if (!root.mkdirs()) throw new IllegalStateException("Cannot create app data stage");
        temporary.add(workspace.directory);

        AppSettings settings = new SettingsRepository(new LocalState(context)).read();
        File data = new File(root, "data");
        privileged.copyTree(dataDirectory(info.packageName), data.getAbsolutePath(), false);
        if (data.isDirectory()) {
            if (!Boolean.TRUE.equals(settings.getIsAppCacheBackupReq())) {
                deleteTree(new File(data, "cache"));
            }
            sources.add(data);
        }

        if (android.os.Build.VERSION.SDK_INT >= 24) {
            File de = new File(root, "data_de");
            String dePath = deDataDirectory(info.packageName);
            if (privileged.copyTree(dePath, de.getAbsolutePath(), false) && de.isDirectory()) {
                if (!Boolean.TRUE.equals(settings.getIsAppCacheBackupReq())) {
                    deleteTree(new File(de, "cache"));
                }
                sources.add(de);
            }
        }
        return sources;
    }

    private PackageInfo packageInfo(String packageName) throws Exception {
        return context.getPackageManager().getPackageInfo(
                packageName, PackageManager.GET_META_DATA | PackageManager.GET_SHARED_LIBRARY_FILES);
    }

    private PackageInfo installedOrNull(String packageName) {
        try { return packageInfo(packageName); } catch (Exception ignored) { return null; }
    }

    private List<String> splitSources(PackageInfo info) {
        ArrayList<String> result = new ArrayList<>();
        if (info.applicationInfo != null && info.applicationInfo.splitSourceDirs != null) {
            for (String path : info.applicationInfo.splitSourceDirs) if (path != null) result.add(path);
        }
        return result;
    }

    private List<File> splitSourcesForArchive(List<String> sources) {
        ArrayList<File> result = new ArrayList<>();
        for (String path : sources) result.add(new File(path));
        return result;
    }

    private List<File> sharedLibraries(PackageInfo info) {
        ArrayList<File> result = new ArrayList<>();
        String[] files = info.applicationInfo == null ? null : info.applicationInfo.sharedLibraryFiles;
        if (files != null) for (String path : files) if (path != null) result.add(new File(path));
        return result;
    }

    private List<String> dataEntryNames(List<File> sources) {
        ArrayList<String> result = new ArrayList<>();
        for (File file : sources) {
            result.add("data".equals(file.getName()) ? "data" : "data_de");
        }
        return result;
    }

    private List<String> splitNames(List<String> sources) {
        ArrayList<String> result = new ArrayList<>();
        for (String path : sources) result.add(new File(path).getName());
        return result;
    }

    private List<String> fileNames(List<File> files) {
        ArrayList<String> result = new ArrayList<>();
        for (File file : files) result.add(file.getName());
        return result;
    }

    private List<File> apkFiles(File root) {
        ArrayList<File> result = new ArrayList<>();
        File[] files = root.listFiles();
        if (files == null) return result;
        for (File file : files) {
            if (file.isFile() && file.getName().endsWith(".apk")) result.add(file);
            else if (file.isDirectory()) result.addAll(apkFiles(file));
        }
        result.sort((a, b) -> a.getName().compareTo(b.getName()));
        return result;
    }

    private BackupRecord findBackup(String packageName, String backupId) {
        for (BackupRecord record : listBackups(packageName)) {
            if (record.id.equals(backupId)) return record;
        }
        throw new IllegalArgumentException("Backup not found");
    }

    private File packageBackupDirectory(String packageName) {
        StorageSelection selection = new LocalStorageCoordinator(
                context, new AndroidStorageInventory(context)).resolveSelection();
        if (selection == null || selection.selected == null) {
            throw new IllegalStateException("No selected local storage");
        }
        String uid = new AnonymousIdentityStore(context).getOrCreateUid();
        String account = md5(uid).substring(0, 16);
        return new File(selection.selected.rootPath,
                "BΛR☰/accounts/" + account + "/backups/apps/local/" + packageName);
    }

    private String nextBackupId(File packageDir) {
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.ROOT);
        String base = format.format(new Date());
        String id = base + "-" + randomTag();
        while (new File(packageDir, id + ".xml").exists()) id = base + "-" + randomTag();
        return id;
    }

    private String randomTag() {
        final char[] alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        SecureRandom random = new SecureRandom();
        return "" + alphabet[random.nextInt(alphabet.length)]
                + alphabet[random.nextInt(alphabet.length)];
    }

    private static String md5(String value) {
        try {
            byte[] digest = java.security.MessageDigest.getInstance("MD5").digest(
                    value.getBytes(StandardCharsets.UTF_8));
            StringBuilder out = new StringBuilder();
            for (byte b : digest) out.append(String.format(Locale.ROOT, "%02x", b & 255));
            return out.toString();
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    private long currentVersionCode() {
        try {
            return context.getPackageManager().getPackageInfo(
                    context.getPackageName(), 0).getLongVersionCode();
        } catch (Exception e) {
            return 0L;
        }
    }

    private boolean writeSpecialData(String packageName, File file) {
        try {
            com.bare.appslist.specialdata.AppSpecialDataCollector collector =
                    new com.bare.appslist.specialdata.AppSpecialDataCollector(context, privileged);
            com.bare.appslist.specialdata.AppSpecialDataCollector.Capture capture =
                    collector.capture(packageName);
            String binding = new AnonymousIdentityStore(context).getOrCreateUid();
            return com.bare.appslist.specialdata.AppSpecialDataPayload.write(
                    file, binding, capture.permissionStatesCsv, capture.ssaid,
                    capture.ntfAccessComponent, capture.accessibilityComponent,
                    capture.notificationPolicyXml,
                    new com.bare.appslist.restore.SbaNativeBridge());
        } catch (Exception ignored) {
            return false;
        }
    }

    private void restoreSpecialData(String packageName, File file, boolean restoreSsaid) {
        try {
            String binding = new AnonymousIdentityStore(context).getOrCreateUid();
            com.bare.appslist.specialdata.AppSpecialDataPayload payload =
                    com.bare.appslist.specialdata.AppSpecialDataPayload.read(
                            file, binding, new com.bare.appslist.restore.SbaNativeBridge());
            if (payload == null) return;
            new com.bare.appslist.specialdata.AppSpecialDataRestorer(
                    context, privileged).restore(packageName, payload, restoreSsaid);
        } catch (Exception ignored) {
        }
    }

    private static File dataDirectory(String packageName) {
        return new File("/data/user/0/" + packageName);
    }

    private static String deDataDirectory(String packageName) {
        return "/data/user_de/0/" + packageName;
    }

    private static File externalDataDirectory(String packageName) {
        return new File(android.os.Environment.getExternalStorageDirectory(),
                "Android/data/" + packageName);
    }

    private static File mediaDirectory(String packageName) {
        return new File(android.os.Environment.getExternalStorageDirectory(),
                "Android/media/" + packageName);
    }

    private static File expansionDirectory(String packageName) {
        return new File(android.os.Environment.getExternalStorageDirectory(),
                "Android/obb/" + packageName);
    }

    private static void copyTree(File source, File destination) throws Exception {
        if (!source.exists()) return;
        if (source.isDirectory()) {
            if (!destination.exists() && !destination.mkdirs()) {
                throw new IllegalStateException("Cannot create destination directory");
            }
            File[] children = source.listFiles();
            if (children != null) for (File child : children) {
                copyTree(child, new File(destination, child.getName()));
            }
        } else {
            File parent = destination.getParentFile();
            if (parent != null && !parent.exists() && !parent.mkdirs()) {
                throw new IllegalStateException("Cannot create destination directory");
            }
            try (FileInputStream in = new FileInputStream(source);
                 FileOutputStream out = new FileOutputStream(destination)) {
                byte[] buffer = new byte[262144];
                int n;
                while ((n = in.read(buffer)) != -1) out.write(buffer, 0, n);
            }
        }
    }

    private static void writeAtomic(File file, String value) throws Exception {
        File temp = new File(file.getParentFile(), "." + file.getName() + ".tmp");
        try (FileOutputStream out = new FileOutputStream(temp)) {
            out.write(value.getBytes(StandardCharsets.UTF_8));
            out.getFD().sync();
        }
        if (!temp.renameTo(file)) {
            if (file.exists()) file.delete();
            if (!temp.renameTo(file)) throw new IllegalStateException("Cannot finalize metadata");
        }
    }

    private static void deleteTree(File root) {
        if (root == null || !root.exists()) return;
        File[] children = root.listFiles();
        if (children != null) for (File child : children) {
            if (child.isDirectory()) deleteTree(child);
            else child.delete();
        }
        root.delete();
    }

    public static final class BackupRecord implements com.bare.appslist.planning.AppBackupRetentionPlanner.BackupEntry {
        public final String id;
        public final File metadataFile;
        public final JSONObject metadata;
        public final File directory;
        BackupRecord(String i, File m, JSONObject j, File d) {
            id = i; metadataFile = m; metadata = j; directory = d;
        }
        @Override public boolean isProtectedBackup() {
            return metadata.optBoolean("protectedBackup", false);
        }
    }

    public static final class BackupResult {
        public final String packageName, backupId;
        public final File directory;
        public final List<String> parts;
        public final long size;
        public final boolean skipped;
        public final String decision;
        BackupResult(String p, String i, File d, List<String> r, long s, boolean k, String decision) {
            packageName = p; backupId = i; directory = d;
            parts = Collections.unmodifiableList(new ArrayList<>(r)); size = s;
            skipped = k; this.decision = decision;
        }
    }

    public static final class RestoreResult {
        public final String packageName, backupId;
        public final int restoredParts;
        RestoreResult(String p, String i, int r) {
            packageName = p; backupId = i; restoredParts = r;
        }
    }

    public static final class PrivilegedFileAccess {
        private final com.bare.appslist.actions.PrivilegedAppActionExecutor.RootCommandRunner runner =
                new com.bare.appslist.actions.PrivilegedAppActionExecutor.RootCommandRunner();

        public boolean copyTree(String source, String destination, boolean replace) throws Exception {
            validatePath(source);
            validatePath(destination);
            String command = (replace ? "rm -rf " : "test -e ")
                    + shell(destination);
            if (replace) {
                com.bare.appslist.actions.PrivilegedAppActionExecutor.Result rm = runner.run(command);
                if (!rm.isSuccess()) throw new IllegalStateException(rm.getError());
            } else if (runner.run(command).isSuccess()) {
                return true;
            }
            String mkdir = "mkdir -p " + shell(new File(destination).getParent());
            com.bare.appslist.actions.PrivilegedAppActionExecutor.Result m = runner.run(mkdir);
            if (!m.isSuccess()) throw new IllegalStateException(m.getError());
            com.bare.appslist.actions.PrivilegedAppActionExecutor.Result cp =
                    runner.run("cp -a " + shell(source) + " " + shell(destination));
            if (!cp.isSuccess()) throw new IllegalStateException(cp.getError());
            return true;
        }

        private static void validatePath(String path) {
            if (path == null || path.isEmpty() || path.indexOf('\0') >= 0) {
                throw new IllegalArgumentException("Invalid path");
            }
        }

        private static String shell(String path) {
            return "'" + path.replace("'", "'\\''") + "'";
        }
    }

    private static String readUtf8(File file) throws Exception {
        try (FileInputStream in = new FileInputStream(file)) {
            byte[] data = new byte[(int) file.length()];
            int off = 0;
            int n;
            while (off < data.length && (n = in.read(data, off, data.length - off)) > 0) off += n;
            return new String(data, 0, off, StandardCharsets.UTF_8);
        }
    }

    private static Set<Part> parseParts(JSONArray array) {
        LinkedHashSet<Part> parts = new LinkedHashSet<>();
        if (array == null) return parts;
        for (int i = 0; i < array.length(); i++) {
            try { parts.add(Part.valueOf(array.optString(i, ""))); } catch (IllegalArgumentException ignored) {}
        }
        return parts;
    }
}
