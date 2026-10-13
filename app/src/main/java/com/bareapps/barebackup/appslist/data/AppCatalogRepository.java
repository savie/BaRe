package com.bareapps.barebackup.appslist.data;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/** Reads the installed-package catalog; backup operations are intentionally out of scope here. */
public final class AppCatalogRepository {
    private final Context appContext;

    public AppCatalogRepository(Context context) {
        this.appContext = context.getApplicationContext();
    }

    public List<InstalledApp> loadInstalledApps() {
        PackageManager manager = appContext.getPackageManager();
        List<ApplicationInfo> installed;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            installed = manager.getInstalledApplications(PackageManager.ApplicationInfoFlags.of(0));
        } else {
            //noinspection deprecation
            installed = manager.getInstalledApplications(0);
        }

        List<InstalledApp> result = new ArrayList<>(installed.size());
        for (ApplicationInfo info : installed) {
            String packageName = info.packageName;
            if (packageName == null || packageName.trim().isEmpty()) continue;
            String label;
            try {
                CharSequence loadedLabel = manager.getApplicationLabel(info);
                label = loadedLabel == null ? packageName : loadedLabel.toString();
            } catch (RuntimeException error) {
                label = packageName;
            }
            result.add(new InstalledApp(packageName, label, info));
        }
        result.sort(Comparator.comparing(InstalledApp::getLabel, String.CASE_INSENSITIVE_ORDER)
                .thenComparing(InstalledApp::getPackageName, String.CASE_INSENSITIVE_ORDER));
        return result;
    }

    public List<InstalledApp> filter(List<InstalledApp> source, String query, AppFilter filter) {
        String normalized = query == null ? "" : query.trim().toLowerCase(Locale.ROOT);
        AppFilter effectiveFilter = filter == null ? AppFilter.ALL : filter;
        List<InstalledApp> result = new ArrayList<>();
        for (InstalledApp app : source) {
            if (effectiveFilter == AppFilter.USER && app.isSystemApp()) continue;
            if (effectiveFilter == AppFilter.SYSTEM && !app.isSystemApp()) continue;
            if (!normalized.isEmpty()
                    && !app.getLabel().toLowerCase(Locale.ROOT).contains(normalized)
                    && !app.getPackageName().toLowerCase(Locale.ROOT).contains(normalized)) {
                continue;
            }
            result.add(app);
        }
        return result;
    }
}
