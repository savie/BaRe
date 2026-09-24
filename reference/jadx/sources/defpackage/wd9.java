package defpackage;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class wd9 {
    public static final /* synthetic */ int a = 0;

    static {
        Charset.forName("UTF-8");
    }

    public static zz9 a(uz9 uz9Var) {
        yz9 yz9VarV = zz9.v();
        int iZ = uz9Var.z();
        yz9VarV.c();
        ((zz9) yz9VarV.b).zze = iZ;
        for (sz9 sz9Var : uz9Var.B()) {
            wz9 wz9VarX = xz9.x();
            String strA = sz9Var.y().A();
            wz9VarX.c();
            xz9.u((xz9) wz9VarX.b, strA);
            int iZ2 = sz9Var.z();
            wz9VarX.c();
            ((xz9) wz9VarX.b).zzf = u48.d(iZ2);
            r0a r0aVarB = sz9Var.B();
            wz9VarX.c();
            ((xz9) wz9VarX.b).zzh = r0aVarB.zza();
            int iT = sz9Var.t();
            wz9VarX.c();
            ((xz9) wz9VarX.b).zzg = iT;
            xz9 xz9Var = (xz9) wz9VarX.b();
            yz9VarV.c();
            zz9.u((zz9) yz9VarV.b, xz9Var);
        }
        return (zz9) yz9VarV.b();
    }
}
