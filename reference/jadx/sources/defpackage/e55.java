package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import org.swiftapps.rootservice.ShellHelper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e55 implements g55 {
    public static final e55 a = new e55();

    @Override // defpackage.g55
    public final Set a() {
        mp6 mp6Var = mp6.a;
        if (!mp6.g || !mp6.e()) {
            return null;
        }
        boolean z = g42.a;
        List<String> listH = mp6.a.h(new String[]{g42.h("ls", "", "")}, ip6.SU);
        ArrayList arrayList = new ArrayList(hl1.G0(listH, 10));
        for (String str : listH) {
            arrayList.add(nq7.C0(str, "|", str));
        }
        return el1.z1(arrayList);
    }

    @Override // defpackage.g55
    public final void b(String str) {
        str.getClass();
        mp6 mp6Var = mp6.a;
        if (mp6.g && mp6.e() && !str.equals("com.google.android.gms")) {
            g00 g00Var = g00.a;
            Collection<String> collectionT = g00.t(str);
            if (collectionT == null) {
                collectionT = sv2.a;
            }
            if (collectionT.isEmpty()) {
                collectionT = nc8.I("");
            }
            ArrayList arrayList = new ArrayList(hl1.G0(collectionT, 10));
            for (String str2 : collectionT) {
                boolean z = g42.a;
                arrayList.add(g42.h("add", str, str2));
            }
            mp6 mp6Var2 = mp6.a;
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            mp6.a.h((String[]) Arrays.copyOf(strArr, strArr.length), ip6.SU);
        }
    }

    @Override // defpackage.g55
    public final boolean c() {
        return false;
    }

    @Override // defpackage.g55
    public final String d() {
        return "Magisk DenyList";
    }

    @Override // defpackage.g55
    public final void e() {
        mp6 mp6Var = mp6.a;
        if (mp6.g && mp6.e()) {
            boolean z = g42.a;
            mp6.a.h(new String[]{g42.h("enable", "", "")}, ip6.SU);
        }
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof e55);
    }

    public final int hashCode() {
        return -1661545664;
    }

    @Override // defpackage.g55
    public final boolean isEnabled() {
        mp6 mp6Var = mp6.a;
        if (mp6.g && mp6.e()) {
            ShellHelper shellHelper = ShellHelper.INSTANCE;
            boolean z = g42.a;
            if (shellHelper.su(g42.h("status", "", "")).b().c == 0) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return "DenyHelper";
    }
}
