package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ar9 {
    public static final mz9 a;

    static {
        byte[] bArr = new byte[0];
        mz9 mz9Var = me9.a;
        kx9 kx9Var = kx9.UNCOMPRESSED;
        r0a r0aVar = r0a.TINK;
        a = a(kx9Var, mz9Var, r0aVar, bArr);
        a(kx9.COMPRESSED, mz9Var, r0a.RAW, bArr);
        a(kx9Var, me9.c, r0aVar, bArr);
    }

    public static mz9 a(kx9 kx9Var, mz9 mz9Var, r0a r0aVar, byte[] bArr) {
        mx9 mx9VarT = nx9.t();
        ay9 ay9VarT = by9.t();
        ay9VarT.c();
        ((by9) ay9VarT.b).zze = dy9.NIST_P256.zza();
        ay9VarT.c();
        ((by9) ay9VarT.b).zzf = jy9.SHA256.zza();
        x69 x69VarG = t69.g(bArr, 0, bArr.length);
        ay9VarT.c();
        by9.u((by9) ay9VarT.b, x69VarG);
        by9 by9Var = (by9) ay9VarT.b();
        ix9 ix9VarT = jx9.t();
        ix9VarT.c();
        jx9.u((jx9) ix9VarT.b, mz9Var);
        jx9 jx9Var = (jx9) ix9VarT.b();
        px9 px9VarY = qx9.y();
        px9VarY.c();
        qx9.w((qx9) px9VarY.b, by9Var);
        px9VarY.c();
        qx9.u((qx9) px9VarY.b, jx9Var);
        px9VarY.c();
        ((qx9) px9VarY.b).zzh = kx9Var.zza();
        qx9 qx9Var = (qx9) px9VarY.b();
        mx9VarT.c();
        nx9.v((nx9) mx9VarT.b, qx9Var);
        nx9 nx9Var = (nx9) mx9VarT.b();
        lz9 lz9VarT = mz9.t();
        kt9 kt9Var = tp9.a;
        lz9VarT.f("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey");
        lz9VarT.e(r0aVar);
        lz9VarT.h(nx9Var.b());
        return (mz9) lz9VarT.b();
    }
}
