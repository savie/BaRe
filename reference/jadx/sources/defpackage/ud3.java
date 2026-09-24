package defpackage;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ud3 implements od3 {
    public static final ud3 a = new ud3();

    public static String e(Set set) {
        String strK;
        String upperCase;
        String string;
        int i = 3;
        Set setZ1 = null;
        if (set != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = set.iterator();
            while (it.hasNext()) {
                String name = ((LabelParams) it.next()).getName();
                if (name != null) {
                    try {
                        SharedPreferences sharedPreferences = cz4.f;
                        if (sharedPreferences == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        string = sharedPreferences.getString("app_locale", null);
                    } catch (ClassCastException unused) {
                        string = null;
                    }
                    upperCase = name.toUpperCase((string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a());
                    upperCase.getClass();
                } else {
                    upperCase = null;
                }
                if (upperCase != null) {
                    arrayList.add(upperCase);
                }
            }
            String.CASE_INSENSITIVE_ORDER.getClass();
            setZ1 = el1.z1(el1.n1(arrayList, new nx(i)));
        }
        Set set2 = setZ1;
        if (set2 == null || set2.isEmpty()) {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.select_labels_to_filter);
        }
        SwiftApp.Companion companion2 = SwiftApp.d;
        String strJ = eq3.j(SwiftApp.Companion.c().getString(R.string.labels), ": ");
        if (set2.size() <= 3) {
            strK = el1.Y0(set2, ", ", null, null, null, 62);
        } else {
            String string2 = SwiftApp.Companion.c().getString(R.string.plus_more, String.valueOf(set2.size() - 3));
            string2.getClass();
            strK = dj7.k(el1.Y0(el1.p1(set2, 3), ", ", null, null, null, 62), " + ", string2);
        }
        return strJ.concat(strK);
    }

    @Override // defpackage.od3
    public final void b(nd3 nd3Var) {
        nd3Var.getClass();
        if (nd3Var != td3.Selected) {
            h(sv2.a);
        }
        super.b(nd3Var);
    }

    @Override // defpackage.od3
    public final nd3 c() {
        return td3.All;
    }

    @Override // defpackage.od3
    public final String d() {
        return "key_filter_labels";
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0043  */
    @Override // defpackage.od3
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final td3 a() {
        td3 td3Var;
        Set setG;
        String string = td3.All.toString();
        Object obj = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("key_filter_labels", string);
            if (string != null) {
                Iterator it = ((z3) td3.getEntries()).iterator();
                while (true) {
                    w3 w3Var = (w3) it;
                    if (!w3Var.hasNext()) {
                        break;
                    }
                    Object next = w3Var.next();
                    if (pe4.d(((td3) next).toString(), string)) {
                        obj = next;
                        break;
                    }
                }
                td3Var = (td3) obj;
                if (td3Var == null) {
                    td3Var = td3.All;
                }
            } else {
                td3Var = td3.All;
            }
            return (td3Var == td3.Selected && ((setG = g()) == null || setG.isEmpty())) ? td3.All : td3Var;
        } catch (ClassCastException unused) {
        }
    }

    public final Set g() {
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
        if (arrayList != null) {
            return el1.z1(arrayList);
        }
        return null;
    }

    public final void h(Set set) {
        SharedPreferences.Editor editor = cz4.k;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.putStringSet("selected_labels_filter", set).apply();
        Set setG = g();
        if (setG == null || setG.isEmpty()) {
            return;
        }
        b(td3.Selected);
    }
}
