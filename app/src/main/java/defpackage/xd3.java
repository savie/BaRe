package defpackage;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xd3 implements od3 {
    public static final xd3 a = new xd3();

    @Override // defpackage.od3
    public final void b(nd3 nd3Var) {
        nd3Var.getClass();
        if (nd3Var != wd3.Selected) {
            g(sv2.a);
        }
        super.b(nd3Var);
    }

    @Override // defpackage.od3
    public final nd3 c() {
        return wd3.All;
    }

    @Override // defpackage.od3
    public final String d() {
        return "key_filter_labels_temp";
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0043  */
    @Override // defpackage.od3
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final wd3 a() {
        wd3 wd3Var;
        Set setF;
        String string = wd3.All.toString();
        Object obj = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("key_filter_labels_temp", string);
            if (string != null) {
                Iterator it = ((z3) wd3.getEntries()).iterator();
                while (true) {
                    w3 w3Var = (w3) it;
                    if (!w3Var.hasNext()) {
                        break;
                    }
                    Object next = w3Var.next();
                    if (pe4.d(((wd3) next).toString(), string)) {
                        obj = next;
                        break;
                    }
                }
                wd3Var = (wd3) obj;
                if (wd3Var == null) {
                    wd3Var = wd3.All;
                }
            } else {
                wd3Var = wd3.All;
            }
            return (wd3Var == wd3.Selected && ((setF = f()) == null || setF.isEmpty())) ? wd3.All : wd3Var;
        } catch (ClassCastException unused) {
        }
    }

    public final Set f() {
        SharedPreferences sharedPreferences = cz4.f;
        if (sharedPreferences == null) {
            pe4.F("prefs");
            throw null;
        }
        Set<String> set = sv2.a;
        Set<String> stringSet = sharedPreferences.getStringSet("selected_labels_filter_temp", set);
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

    public final void g(Set set) {
        SharedPreferences.Editor editor = cz4.k;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.putStringSet("selected_labels_filter_temp", set).apply();
        Set setF = f();
        if (setF == null || setF.isEmpty()) {
            return;
        }
        b(wd3.Selected);
    }
}
