package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class me9 {
    public static final mz9 a = a(16);
    public static final mz9 b = a(32);
    public static final mz9 c;

    static {
        c(16);
        c(32);
        c = b(16, 16);
        b(32, 32);
        lz9 lz9VarT = mz9.t();
        kt9 kt9Var = zg9.a;
        lz9VarT.f("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        r0a r0aVar = r0a.TINK;
        lz9VarT.e(r0aVar);
        lz9 lz9VarT2 = mz9.t();
        kt9 kt9Var2 = ak9.a;
        lz9VarT2.f("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        lz9VarT2.e(r0aVar);
    }

    public static mz9 a(int i) {
        nw9 nw9VarX = ow9.x();
        nw9VarX.c();
        ((ow9) nw9VarX.b).zze = i;
        ow9 ow9Var = (ow9) nw9VarX.b();
        lz9 lz9VarT = mz9.t();
        lz9VarT.h(ow9Var.b());
        kt9 kt9Var = dg9.a;
        lz9VarT.f("type.googleapis.com/google.crypto.tink.AesGcmKey");
        lz9VarT.e(r0a.TINK);
        return (mz9) lz9VarT.b();
    }

    public static mz9 b(int i, int i2) {
        vv9 vv9VarW = wv9.w();
        yv9 yv9VarV = zv9.v();
        yv9VarV.c();
        ((zv9) yv9VarV.b).zze = 16;
        zv9 zv9Var = (zv9) yv9VarV.b();
        vv9VarW.c();
        wv9.v((wv9) vv9VarW.b, zv9Var);
        vv9VarW.c();
        ((wv9) vv9VarW.b).zzg = i;
        wv9 wv9Var = (wv9) vv9VarW.b();
        ly9 ly9VarY = my9.y();
        oy9 oy9VarX = py9.x();
        oy9VarX.c();
        ((py9) oy9VarX.b).zze = jy9.SHA256.zza();
        oy9VarX.c();
        ((py9) oy9VarX.b).zzf = i2;
        py9 py9Var = (py9) oy9VarX.b();
        ly9VarY.c();
        my9.w((my9) ly9VarY.b, py9Var);
        ly9VarY.c();
        ((my9) ly9VarY.b).zzg = 32;
        my9 my9Var = (my9) ly9VarY.b();
        nv9 nv9VarT = ov9.t();
        nv9VarT.c();
        ov9.v((ov9) nv9VarT.b, wv9Var);
        nv9VarT.c();
        ov9.w((ov9) nv9VarT.b, my9Var);
        ov9 ov9Var = (ov9) nv9VarT.b();
        lz9 lz9VarT = mz9.t();
        lz9VarT.h(ov9Var.b());
        kt9 kt9Var = ze9.a;
        lz9VarT.f("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        lz9VarT.e(r0a.TINK);
        return (mz9) lz9VarT.b();
    }

    public static void c(int i) {
        ew9 ew9VarX = fw9.x();
        ew9VarX.c();
        ((fw9) ew9VarX.b).zzg = i;
        hw9 hw9VarV = iw9.v();
        hw9VarV.c();
        ((iw9) hw9VarV.b).zze = 16;
        iw9 iw9Var = (iw9) hw9VarV.b();
        ew9VarX.c();
        fw9.w((fw9) ew9VarX.b, iw9Var);
        fw9 fw9Var = (fw9) ew9VarX.b();
        lz9 lz9VarT = mz9.t();
        lz9VarT.h(fw9Var.b());
        kt9 kt9Var = pf9.a;
        lz9VarT.f("type.googleapis.com/google.crypto.tink.AesEaxKey");
        lz9VarT.e(r0a.TINK);
    }
}
