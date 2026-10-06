package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zz4 extends RuntimeException {
    /* JADX WARN: Illegal instructions before constructor call */
    public zz4(dd1 dd1Var, String str) {
        dd1Var.getClass();
        vz4 vz4VarC = yz4.c(str);
        String str2 = vz4VarC != null ? vz4VarC.a : null;
        super((str2 == null || str2.length() == 0) ? eq3.k("Local network permission is required for ", dd1Var.getDisplayNameEn(), ".") : eq3.l("Local network permission is required for ", dd1Var.getDisplayNameEn(), " server ", str2, "."));
    }
}
