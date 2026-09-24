package defpackage;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum td3 implements nd3 {
    All,
    Selected,
    Labelled,
    NotLabelled;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    @Override // defpackage.nd3
    public String getDisplayString() {
        int i = sd3.a[ordinal()];
        if (i == 1) {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.all);
        }
        if (i != 2) {
            if (i == 3) {
                SwiftApp.Companion companion2 = SwiftApp.d;
                return dj7.g(R.string.labelled);
            }
            if (i == 4) {
                SwiftApp.Companion companion3 = SwiftApp.d;
                return dj7.g(R.string.not_labelled);
            }
            q.j();
            return null;
        }
        SharedPreferences sharedPreferences = cz4.f;
        if (sharedPreferences == null) {
            pe4.F("prefs");
            throw null;
        }
        Set<String> set = sv2.a;
        Set<String> stringSet = sharedPreferences.getStringSet("selected_labels_filter", set);
        if (stringSet != null) {
            set = stringSet;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : set) {
            lr4 lr4Var = lr4.a;
            LabelParams labelParamsC = lr4.c(str);
            if (labelParamsC != null) {
                arrayList.add(labelParamsC);
            }
        }
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        return ud3.e(arrayList != null ? el1.z1(arrayList) : null);
    }

    @Override // defpackage.nd3
    public boolean isApplied() {
        int i = sd3.a[ordinal()];
        if (i != 1) {
            if (i == 2) {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                Set<String> set = sv2.a;
                Set<String> stringSet = sharedPreferences.getStringSet("selected_labels_filter", set);
                if (stringSet != null) {
                    set = stringSet;
                }
                ArrayList arrayList = new ArrayList();
                for (String str : set) {
                    lr4 lr4Var = lr4.a;
                    LabelParams labelParamsC = lr4.c(str);
                    if (labelParamsC != null) {
                        arrayList.add(labelParamsC);
                    }
                }
                if (arrayList.isEmpty()) {
                    arrayList = null;
                }
                Set setZ1 = arrayList != null ? el1.z1(arrayList) : null;
                if (setZ1 == null || setZ1.isEmpty()) {
                }
            } else if (i != 3 && i != 4) {
                q.j();
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.nd3
    public boolean isDefault() {
        return this == All;
    }

    @Override // defpackage.nd3
    public void reset() {
        ud3 ud3Var = ud3.a;
        ud3Var.b(ud3Var.c());
    }
}
