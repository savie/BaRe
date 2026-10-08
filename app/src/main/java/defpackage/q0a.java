package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q0a extends k79 {
    public static final /* synthetic */ int a = 0;
    private static final q0a zzc;
    private static volatile a89 zzd;
    private String zze = "";
    private o79 zzf = b89.e;

    static {
        q0a q0aVar = new q0a();
        zzc = q0aVar;
        k79.j(q0a.class, q0aVar);
    }

    @Override // defpackage.k79
    public final Object d(int i) {
        a89 i79Var;
        switch (s0a.a[i - 1]) {
            case 1:
                return new q0a();
            case 2:
                return new p0a(zzc);
            case 3:
                return new d89(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zze", "zzf", pz9.class});
            case 4:
                return zzc;
            case 5:
                a89 a89Var = zzd;
                if (a89Var != null) {
                    return a89Var;
                }
                synchronized (q0a.class) {
                    try {
                        i79Var = zzd;
                        if (i79Var == null) {
                            i79Var = new i79();
                            zzd = i79Var;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return i79Var;
            case 6:
                return (byte) 1;
            default:
                throw null;
        }
    }
}
