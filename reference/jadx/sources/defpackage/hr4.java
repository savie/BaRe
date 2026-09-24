package defpackage;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hr4 {
    public static List a() {
        boolean z = false;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("show_system_apps", false);
            SwiftApp.Companion companion = SwiftApp.d;
            LabelParams labelParams = new LabelParams("__user_apps", SwiftApp.Companion.c().getString(R.string.user_apps), String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(SwiftApp.Companion.c().getColor(R.color.grn) & 16777215)}, 1)));
            LabelParams labelParams2 = new LabelParams("__user_apps_labelled", u48.n(SwiftApp.Companion.c().getString(R.string.user_apps), " (", SwiftApp.Companion.c().getString(R.string.labelled), ")"), String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(SwiftApp.Companion.c().getColor(R.color.grn) & 16777215)}, 1)));
            LabelParams labelParams3 = new LabelParams("__user_apps_not_labelled", u48.n(SwiftApp.Companion.c().getString(R.string.user_apps), " (", SwiftApp.Companion.c().getString(R.string.not_labelled), ")"), String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(SwiftApp.Companion.c().getColor(R.color.grn) & 16777215)}, 1)));
            LabelParams labelParams4 = new LabelParams("__favorite_apps", SwiftApp.Companion.c().getString(R.string.favorite_apps), String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(SwiftApp.Companion.c().getColor(R.color.favorites) & 16777215)}, 1)));
            LabelParams labelParams5 = new LabelParams("__system_apps_launchable", SwiftApp.Companion.c().getString(R.string.system_apps_launchable), String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(SwiftApp.Companion.c().getColor(R.color.system_apps_package_text) & 16777215)}, 1)));
            if (!z) {
                labelParams5 = null;
            }
            LabelParams labelParams6 = new LabelParams("__system_apps_updated", SwiftApp.Companion.c().getString(R.string.system_apps_updated), String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(SwiftApp.Companion.c().getColor(R.color.system_apps_package_text) & 16777215)}, 1)));
            if (!z) {
                labelParams6 = null;
            }
            LabelParams labelParams7 = new LabelParams("__system_apps_labelled_favorites", SwiftApp.Companion.c().getString(R.string.system_apps_labelled_or_favorites), String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(SwiftApp.Companion.c().getColor(R.color.system_apps_package_text) & 16777215)}, 1)));
            if (!z) {
                labelParams7 = null;
            }
            return x50.p0(new LabelParams[]{labelParams, labelParams2, labelParams3, labelParams4, labelParams5, labelParams6, labelParams7, z ? new LabelParams("__system_apps_not_labelled", u48.n(SwiftApp.Companion.c().getString(R.string.system_apps), " (", SwiftApp.Companion.c().getString(R.string.not_labelled), ")"), String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(SwiftApp.Companion.c().getColor(R.color.system_apps_package_text) & 16777215)}, 1))) : null, new LabelParams("__installed_from_google_play", SwiftApp.Companion.c().getString(R.string.installed_from_google_play), String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(SwiftApp.Companion.c().getColor(R.color.grn) & 16777215)}, 1))), new LabelParams("__not_installed_from_google_play", SwiftApp.Companion.c().getString(R.string.not_installed_from_google_play), String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(SwiftApp.Companion.c().getColor(R.color.grn) & 16777215)}, 1))), new LabelParams("__apps_with_multiple_backups", SwiftApp.Companion.c().getString(R.string.apps_with_multiple_backpus), String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(SwiftApp.Companion.c().getColor(R.color.grn) & 16777215)}, 1))), new LabelParams("__apps_with_protected_backups", SwiftApp.Companion.c().getString(R.string.apps_with_protected_backpus), String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(SwiftApp.Companion.c().getColor(R.color.grn) & 16777215)}, 1))), new LabelParams("__backups_with_notes", SwiftApp.Companion.c().getString(R.string.backups_with_notes), String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(SwiftApp.Companion.c().getColor(R.color.grn) & 16777215)}, 1)))});
        } catch (ClassCastException unused) {
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static boolean b(ji jiVar, String str) {
        jiVar.getClass();
        str.getClass();
        switch (str.hashCode()) {
            case -1976982498:
                if (str.equals("__system_apps_updated")) {
                    return jiVar.isBundled() && jiVar.isUpdatedSystemApp();
                }
                break;
            case -1234029312:
                if (str.equals("__system_apps_not_labelled")) {
                    return jiVar.isBundled() && !jiVar.hasLabels();
                }
                break;
            case -1055093770:
                if (str.equals("__backups_with_notes")) {
                    return jiVar.hasBackupsWithNotes(jiVar.isCloudApp());
                }
                break;
            case -998410340:
                if (str.equals("__user_apps_not_labelled")) {
                    return (jiVar.isBundled() || jiVar.hasLabels()) ? false : true;
                }
                break;
            case -177562795:
                if (str.equals("__favorite_apps")) {
                    v53 v53Var = v53.a;
                    String packageName = jiVar.getPackageName();
                    packageName.getClass();
                    return v53.c.containsKey(packageName);
                }
                break;
            case -61632890:
                if (str.equals("__user_apps")) {
                    return !jiVar.isBundled();
                }
                break;
            case 170846826:
                if (str.equals("__installed_from_google_play")) {
                    return !jiVar.isBundled() && jiVar.isInstalledFromGooglePlay(jiVar.isCloudApp());
                }
                break;
            case 1265916758:
                if (str.equals("__not_installed_from_google_play")) {
                    return (jiVar.isBundled() || jiVar.isInstalledFromGooglePlay(jiVar.isCloudApp())) ? false : true;
                }
                break;
            case 1286927212:
                if (str.equals("__system_apps_labelled_favorites")) {
                    return jiVar.isBundled() && jiVar.isLabelledOrFavorites();
                }
                break;
            case 1297545396:
                if (str.equals("__apps_with_protected_backups")) {
                    return jiVar.hasProtectedBackups(jiVar.isCloudApp());
                }
                break;
            case 1321980910:
                if (str.equals("__apps_with_multiple_backups")) {
                    return jiVar.hasMultipleBackups(jiVar.isCloudApp());
                }
                break;
            case 1443300682:
                if (str.equals("__system_apps_launchable")) {
                    return jiVar.isBundled() && jiVar.isLaunchable();
                }
                break;
            case 1557850160:
                if (str.equals("__user_apps_labelled")) {
                    return !jiVar.isBundled() && jiVar.hasLabels();
                }
                break;
        }
        throw new io5(eq3.k("Unhandled built-in label id '", str, "'"));
    }

    public static boolean c(String str) {
        if (str != null && str.length() != 0 && uq7.V(str, "__", false)) {
            List listA = a();
            ArrayList arrayList = new ArrayList();
            Iterator it = ((ArrayList) listA).iterator();
            while (it.hasNext()) {
                String id = ((LabelParams) it.next()).getId();
                if (id != null) {
                    arrayList.add(id);
                }
            }
            if (arrayList.contains(str)) {
                return true;
            }
        }
        return false;
    }
}
