package defpackage;

import android.os.Build;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hp9 extends xi9 {
    private static final hp9 zzb;
    private int zzd;
    private int zzh;
    private long zzi;
    private long zzj;
    private boolean zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private int zzs;
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private String zzo = "";
    private String zzp = "";
    private String zzq = "";
    private String zzr = "";

    static {
        hp9 hp9Var = new hp9();
        zzb = hp9Var;
        xi9.f(hp9.class, hp9Var);
    }

    public static /* synthetic */ void A(hp9 hp9Var, int i) {
        hp9Var.zzd |= 128;
        hp9Var.zzl = i;
    }

    public static /* synthetic */ void B(hp9 hp9Var, int i) {
        hp9Var.zzd |= 256;
        hp9Var.zzm = i;
    }

    public static /* synthetic */ void C(hp9 hp9Var, int i) {
        hp9Var.zzd |= 8;
        hp9Var.zzh = i;
    }

    public static /* synthetic */ void D(hp9 hp9Var, long j) {
        hp9Var.zzd |= 16;
        hp9Var.zzi = j;
    }

    public static /* synthetic */ void E(hp9 hp9Var, long j) {
        hp9Var.zzd |= 32;
        hp9Var.zzj = j;
    }

    public static /* synthetic */ void p(hp9 hp9Var) {
        hp9Var.zzd |= 512;
        hp9Var.zzn = 846465066L;
    }

    public static /* synthetic */ void q(hp9 hp9Var, String str) {
        str.getClass();
        hp9Var.zzd |= 4;
        hp9Var.zzg = str;
    }

    public static /* synthetic */ void r(hp9 hp9Var) {
        String str = Build.BRAND;
        str.getClass();
        hp9Var.zzd |= 1024;
        hp9Var.zzo = str;
    }

    public static /* synthetic */ void s(hp9 hp9Var) {
        String str = Build.FINGERPRINT;
        str.getClass();
        hp9Var.zzd |= 8192;
        hp9Var.zzr = str;
    }

    public static /* synthetic */ void t(hp9 hp9Var) {
        String str = Build.MANUFACTURER;
        str.getClass();
        hp9Var.zzd |= 4096;
        hp9Var.zzq = str;
    }

    public static /* synthetic */ void u(hp9 hp9Var) {
        String str = Build.MODEL;
        str.getClass();
        hp9Var.zzd |= RSAKeyGenerator.MIN_KEY_SIZE_BITS;
        hp9Var.zzp = str;
    }

    public static /* synthetic */ void v(hp9 hp9Var, int i) {
        hp9Var.zzd |= 16384;
        hp9Var.zzs = i;
    }

    public static /* synthetic */ void w(hp9 hp9Var) {
        hp9Var.zzd |= 64;
        hp9Var.zzk = false;
    }

    public static /* synthetic */ void x(hp9 hp9Var) {
        hp9Var.zzd |= 1;
        hp9Var.zze = "8.3.0";
    }

    public static /* synthetic */ void y(hp9 hp9Var, String str) {
        hp9Var.zzd |= 2;
        hp9Var.zzf = str;
    }

    public static fp9 z() {
        return (fp9) zzb.k();
    }

    @Override // defpackage.xi9
    public final Object j(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hm9(zzb, "\u0004\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0002\u0003င\u0003\u0004ဂ\u0004\u0005ဈ\u0001\u0006ဂ\u0005\u0007ဇ\u0006\bင\u0007\tင\b\nဂ\t\u000bဈ\n\fဈ\u000b\rဈ\f\u000eဈ\r\u000fင\u000e", new Object[]{"zzd", "zze", "zzg", "zzh", "zzi", "zzf", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs"});
        }
        if (i2 == 3) {
            return new hp9();
        }
        if (i2 == 4) {
            return new fp9(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
