package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class re3 {
    public static final zc2 a;
    public static final List b;
    public static final gv7 c;

    static {
        ig3 ig3VarB = ig3.b();
        ig3VarB.a();
        a = new zc2(ig3VarB.c, gy5.d);
        b = fl1.A0('/', '.', '#', '$', '[', ']');
        c = new gv7(new qm(11));
    }

    public static zc2 a(String str, String str2) {
        str.getClass();
        str2.getClass();
        return c().d(str).d(str2);
    }

    public static zc2 b() {
        return a.d("appData");
    }

    public static zc2 c() {
        zc2 zc2VarF = f();
        tb1 tb1Var = tb1.a;
        return zc2VarF.d(qb1.e()).d("apps");
    }

    public static zc2 d() {
        zc2 zc2VarF = f();
        tb1 tb1Var = tb1.a;
        return zc2VarF.d(qb1.e()).d("callLogBackupsCount");
    }

    public static zc2 e(String str) {
        return k().d("cloud_v1").d(str);
    }

    public static zc2 f() {
        return g().d("tags");
    }

    public static zc2 g() {
        tb1 tb1Var = tb1.a;
        return k().d("cloud_v1").d(m(qb1.i("FireHelper.currentCloudDir")));
    }

    public static zc2 h() {
        zc2 zc2VarF = f();
        tb1 tb1Var = tb1.a;
        return zc2VarF.d(qb1.e()).d("folders");
    }

    public static zc2 i() {
        zc2 zc2VarF = f();
        tb1 tb1Var = tb1.a;
        return zc2VarF.d(qb1.e()).d("smsBackupsCount");
    }

    public static String j() {
        d45.b.getClass();
        MFirebaseUser mFirebaseUserA = d45.a();
        if (mFirebaseUserA != null) {
            return mFirebaseUserA.getUid();
        }
        throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
    }

    public static zc2 k() {
        return a.d("users").d(j());
    }

    public static zc2 l() {
        String strJ = j();
        boolean z = g42.a;
        return a.d("purchase_verifications/" + strJ + "/" + g42.a("AQK8OqW4gtD36Xte/DRxZA4zBTU1sr0y0N5jq+IeqAxKIILVpxc="));
    }

    public static String m(String str) {
        str.getClass();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            Character chValueOf = Character.valueOf(cCharAt);
            if (b.contains(Character.valueOf(cCharAt))) {
                chValueOf = null;
            }
            if (chValueOf != null) {
                arrayList.add(chValueOf);
            }
        }
        return el1.Y0(arrayList, "", null, null, null, 62);
    }

    public static void n(zc2 zc2Var, aj8 aj8Var) {
        if (zc2Var == null || aj8Var == null) {
            return;
        }
        zc2Var.g(aj8Var);
    }
}
