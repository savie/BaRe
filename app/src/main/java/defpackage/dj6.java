package defpackage;

import android.os.Build;
import android.util.Log;
import com.jcraft.jsch.SftpATTRS;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dj6 implements ra7 {
    public static final int g;
    public static final ai6 h;
    public final a48 a;
    public final qg3 b;
    public final f10 c;
    public final fj6 d;
    public final ka7 e;
    public final mj5 f;

    static {
        ma2 ma2Var = mr2.b;
        g = (int) mr2.f(pe4.G(24, or2.HOURS), or2.SECONDS);
        h = new ai6("com/google/firebase/sessions//");
    }

    public dj6(a48 a48Var, qg3 qg3Var, f10 f10Var, fj6 fj6Var, ka7 ka7Var) {
        a48Var.getClass();
        qg3Var.getClass();
        f10Var.getClass();
        fj6Var.getClass();
        ka7Var.getClass();
        this.a = a48Var;
        this.b = qg3Var;
        this.c = f10Var;
        this.d = fj6Var;
        this.e = ka7Var;
        this.f = new mj5();
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00a9 A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #1 {all -> 0x004e, blocks: (B:21:0x004a, B:45:0x009f, B:47:0x00a9, B:50:0x00b2), top: B:62:0x004a }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00b2 A[Catch: all -> 0x004e, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x004e, blocks: (B:21:0x004a, B:45:0x009f, B:47:0x00a9, B:50:0x00b2), top: B:62:0x004a }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0138  */
    /* JADX WARN: Code duplicated, block: B:56:0x013c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Instruction removed from duplicated block: B:50:0x00b2, please report this as an issue */
    @Override // defpackage.ra7
    public final Object a(jv1 jv1Var) throws Throwable {
        cj6 cj6Var;
        kj5 kj5Var;
        kj5 kj5Var2;
        kj5 kj5Var3;
        String str;
        Object objG;
        kj5 kj5Var4;
        if (jv1Var instanceof cj6) {
            cj6Var = (cj6) jv1Var;
            int i = cj6Var.d;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                cj6Var.d = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                cj6Var = new cj6(this, (kv1) jv1Var);
            }
        } else {
            cj6Var = new cj6(this, (kv1) jv1Var);
        }
        Object obj = cj6Var.b;
        int i2 = cj6Var.d;
        ka7 ka7Var = this.e;
        int i3 = 2;
        be8 be8Var = be8.a;
        jv1 jv1Var2 = null;
        yx1 yx1Var = yx1.a;
        try {
            if (i2 == 0) {
                lg7.H(obj);
                mj5 mj5Var = this.f;
                if (!mj5Var.g() && !ka7Var.b()) {
                    return be8Var;
                }
                cj6Var.a = mj5Var;
                cj6Var.d = 1;
                Object objA = mj5Var.a(cj6Var);
                kj5Var = mj5Var;
                if (objA != yx1Var) {
                }
                return yx1Var;
            }
            if (i2 != 1) {
                if (i2 == 2) {
                    kj5 kj5Var5 = cj6Var.a;
                    try {
                        lg7.H(obj);
                        kj5Var3 = kj5Var5;
                        str = ((yc4) obj).a;
                        if (str.equals("")) {
                            Log.w("FirebaseSessions", "Error getting Firebase Installation ID. Skipping this Session Event.");
                            kj5Var3.b(null);
                            return be8Var;
                        }
                        pw5 pw5Var = new pw5("X-Crashlytics-Installation-ID", str);
                        String str2 = Build.MANUFACTURER + Build.MODEL;
                        ai6 ai6Var = h;
                        pw5 pw5Var2 = new pw5("X-Crashlytics-Device-Model", ai6Var.c(str2, ""));
                        String str3 = Build.VERSION.INCREMENTAL;
                        str3.getClass();
                        pw5 pw5Var3 = new pw5("X-Crashlytics-OS-Build-Version", ai6Var.c(str3, ""));
                        String str4 = Build.VERSION.RELEASE;
                        str4.getClass();
                        pw5 pw5Var4 = new pw5("X-Crashlytics-OS-Display-Version", ai6Var.c(str4, ""));
                        this.c.getClass();
                        Map mapR0 = x65.r0(pw5Var, pw5Var2, pw5Var3, pw5Var4, new pw5("X-Crashlytics-API-Client-Version", "3.0.6"));
                        Log.d("FirebaseSessions", "Fetching settings from server.");
                        fj6 fj6Var = this.d;
                        s10 s10Var = new s10(this, jv1Var2, i3);
                        u01 u01Var = new u01(i3, jv1Var2);
                        cj6Var.a = kj5Var3;
                        cj6Var.d = 3;
                        objG = l73.G(fj6Var.b, new ej6(fj6Var, mapR0, s10Var, u01Var, null), cj6Var);
                        if (objG != yx1Var) {
                            objG = be8Var;
                        }
                        if (objG != yx1Var) {
                            kj5Var4 = kj5Var3;
                            kj5Var4.b(null);
                            return be8Var;
                        }
                        return yx1Var;
                    } catch (Throwable th) {
                        th = th;
                        kj5Var2 = kj5Var5;
                    }
                } else {
                    if (i2 != 3) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    kj5Var2 = cj6Var.a;
                    try {
                        lg7.H(obj);
                        kj5Var4 = kj5Var2;
                        kj5Var4.b(null);
                        return be8Var;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                kj5Var2.b(null);
                throw th;
            }
            kj5 kj5Var6 = cj6Var.a;
            lg7.H(obj);
            kj5Var = kj5Var6;
            if (!ka7Var.b()) {
                Log.d("FirebaseSessions", "Remote settings cache not expired. Using cached values.");
                kj5Var.b(null);
                return be8Var;
            }
            cz4 cz4Var = yc4.c;
            qg3 qg3Var = this.b;
            cj6Var.a = kj5Var;
            cj6Var.d = 2;
            Object objD = cz4Var.d(qg3Var, cj6Var);
            if (objD != yx1Var) {
                kj5Var3 = kj5Var;
                obj = objD;
                str = ((yc4) obj).a;
                if (str.equals("")) {
                    Log.w("FirebaseSessions", "Error getting Firebase Installation ID. Skipping this Session Event.");
                    kj5Var3.b(null);
                    return be8Var;
                }
                pw5 pw5Var5 = new pw5("X-Crashlytics-Installation-ID", str);
                String str5 = Build.MANUFACTURER + Build.MODEL;
                ai6 ai6Var2 = h;
                pw5 pw5Var6 = new pw5("X-Crashlytics-Device-Model", ai6Var2.c(str5, ""));
                String str6 = Build.VERSION.INCREMENTAL;
                str6.getClass();
                pw5 pw5Var7 = new pw5("X-Crashlytics-OS-Build-Version", ai6Var2.c(str6, ""));
                String str7 = Build.VERSION.RELEASE;
                str7.getClass();
                pw5 pw5Var8 = new pw5("X-Crashlytics-OS-Display-Version", ai6Var2.c(str7, ""));
                this.c.getClass();
                Map mapR1 = x65.r0(pw5Var5, pw5Var6, pw5Var7, pw5Var8, new pw5("X-Crashlytics-API-Client-Version", "3.0.6"));
                Log.d("FirebaseSessions", "Fetching settings from server.");
                fj6 fj6Var2 = this.d;
                s10 s10Var2 = new s10(this, jv1Var2, i3);
                u01 u01Var2 = new u01(i3, jv1Var2);
                cj6Var.a = kj5Var3;
                cj6Var.d = 3;
                objG = l73.G(fj6Var2.b, new ej6(fj6Var2, mapR1, s10Var2, u01Var2, null), cj6Var);
                if (objG != yx1Var) {
                    objG = be8Var;
                }
                if (objG != yx1Var) {
                    kj5Var4 = kj5Var3;
                    kj5Var4.b(null);
                    return be8Var;
                }
            }
            return yx1Var;
        } catch (Throwable th3) {
            th = th3;
            kj5Var2 = kj5Var;
        }
    }

    @Override // defpackage.ra7
    public final Boolean b() {
        return this.e.a().a;
    }

    @Override // defpackage.ra7
    public final mr2 c() {
        Integer num = this.e.a().c;
        if (num == null) {
            return null;
        }
        ma2 ma2Var = mr2.b;
        return new mr2(pe4.G(num.intValue(), or2.SECONDS));
    }

    @Override // defpackage.ra7
    public final Double d() {
        return this.e.a().b;
    }
}
