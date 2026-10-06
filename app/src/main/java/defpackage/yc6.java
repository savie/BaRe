package defpackage;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class yc6 {
    public static ArrayList a() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new zc6("ID_BACKUP_ALL_APPS", 101, R.string.backup_all_apps, R.string.backup_all_apps_summary, false, false, false, false, 4032));
        arrayList.add(new zc6("ID_BACKUP_PENDING_APPS", 102, R.string.backup_missing_apps, R.string.backup_missing_apps_summary, false, false, true, false, 3968));
        arrayList.add(new zc6("ID_BACKUP_UPDATED_APPS", 103, R.string.backup_updated_apps, R.string.backup_updated_apps_summary, false, false, true, false, 3968));
        arrayList.add(new zc6("ID_BACKUP_REDO_APPS", 104, R.string.redo_backups, R.string.redo_backups_message, false, false, true, false, 3968));
        arrayList.add(new zc6("ID_BACKUP_SYNC_APPS", 105, R.string.sync_device_backups_to_cloud, R.string.sync_device_backups_to_cloud_message, false, false, false, false, 2432));
        return arrayList;
    }

    public static ArrayList b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new zc6("ID_RESTORE_ALL_APPS", 201, R.string.restore_all_apps, R.string.restore_all_apps_summary, true, true, true, false, 3968));
        arrayList.add(new zc6("ID_RESTORE_MISSING_APPS", 202, R.string.restore_missing_apps, R.string.restore_missing_apps_summary, true, true, true, false, 3968));
        arrayList.add(new zc6("ID_RESTORE_NEW_VERSIONS_APPS", 203, R.string.restore_newer_versions, R.string.restore_newer_versions_summary, true, true, true, false, 3968));
        return arrayList;
    }

    public static ArrayList c(boolean z) {
        ArrayList arrayList = new ArrayList();
        if (!z) {
            return arrayList;
        }
        arrayList.add(new zc6("ID_BACKUP_CALLS", 0, R.string.backup_call_logs, R.string.backup_call_logs_summary, false, false, false, false, 4034));
        arrayList.add(new zc6("ID_RESTORE_CALLS", 0, R.string.restore_call_logs, R.string.restore_call_logs_summary, true, false, true, false, 3970));
        return arrayList;
    }

    public static List d() {
        return fl1.A0(new zc6("ID_BACKUP_FOLDERS", 0, R.string.backup_folders, R.string.backup_folders_summary, false, false, false, false, 4034), new zc6("ID_RESTORE_FOLDERS", 0, R.string.restore_folders, R.string.restore_folders_summary, true, false, true, false, 3970));
    }

    public static ArrayList e(boolean z) {
        ArrayList arrayList = new ArrayList();
        if (!z) {
            return arrayList;
        }
        arrayList.add(new zc6("ID_BACKUP_MESSAGES", 0, R.string.backup_messages, R.string.backup_messages_summary, false, false, false, false, 4034));
        arrayList.add(new zc6("ID_RESTORE_MESSAGES", 0, R.string.restore_messages, R.string.restore_messages_summary, true, false, true, false, 3970));
        return arrayList;
    }

    public static ArrayList f() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new zc6("ID_DELETE_BACKUPS_UNINSTALLED_APPS", 301, R.string.delete_backups_of_uninstalled_apps, R.string.delete_backups_of_uninstalled_apps_summary, false, false, true, true, 3840));
        arrayList.add(new zc6("ID_ENABLE_DISABLE_APPS_APPS", 302, R.string.enable_disable_apps, R.string.disable_apps_warning, false, true, false, false, 3840));
        return arrayList;
    }

    public static Set g() {
        Set setA0 = x50.A0(new Integer[]{101, 201});
        ArrayList arrayList = new ArrayList(hl1.G0(setA0, 10));
        Iterator it = setA0.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Number) it.next()).intValue()));
        }
        Set<String> setZ1 = el1.z1(arrayList);
        SharedPreferences sharedPreferences = cz4.f;
        if (sharedPreferences == null) {
            pe4.F("prefs");
            throw null;
        }
        Set<String> stringSet = sharedPreferences.getStringSet("pinned_actions", setZ1);
        if (stringSet == null) {
            stringSet = sv2.a;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it2 = stringSet.iterator();
        while (it2.hasNext()) {
            Integer numX = uq7.X((String) it2.next());
            if (numX != null) {
                arrayList2.add(numX);
            }
        }
        return el1.z1(arrayList2);
    }

    public static boolean h(String str) {
        return str != null && uq7.O(str, "APPS", false);
    }

    public static boolean i(String str) {
        return str != null && uq7.O(str, "CALLS", false);
    }

    public static boolean j(String str) {
        return str != null && uq7.O(str, "MESSAGES", false);
    }

    public static void k(Set set) {
        ArrayList arrayList = new ArrayList(hl1.G0(set, 10));
        Iterator it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Number) it.next()).intValue()));
        }
        Set<String> setZ1 = el1.z1(arrayList);
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putStringSet("pinned_actions", setZ1).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }
}
