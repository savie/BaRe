package defpackage;

import android.util.Log;
import com.jcraft.jsch.SftpATTRS;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kd7 {
    public final l97 a;
    public final b97 b;
    public final a97 c;
    public final a48 d;
    public final fb2 e;
    public final j76 f;
    public final ox1 g;
    public q87 h;
    public boolean i;
    public boolean j;
    public String k;

    public kd7(l97 l97Var, b97 b97Var, a97 a97Var, a48 a48Var, fb2 fb2Var, j76 j76Var, ox1 ox1Var) {
        l97Var.getClass();
        b97Var.getClass();
        a97Var.getClass();
        a48Var.getClass();
        fb2Var.getClass();
        j76Var.getClass();
        ox1Var.getClass();
        this.a = l97Var;
        this.b = b97Var;
        this.c = a97Var;
        this.d = a48Var;
        this.e = fb2Var;
        this.f = j76Var;
        this.g = ox1Var;
        this.k = "";
        l73.v(l73.c(ox1Var), null, new mg1(this, null, 4), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(kd7 kd7Var, String str, id7 id7Var, jv1 jv1Var) {
        jd7 jd7Var;
        String str2;
        if (jv1Var instanceof jd7) {
            jd7Var = (jd7) jv1Var;
            int i = jd7Var.e;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                jd7Var.e = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                jd7Var = new jd7(kd7Var, jv1Var);
            }
        } else {
            jd7Var = new jd7(kd7Var, jv1Var);
        }
        Object objB = jd7Var.c;
        yx1 yx1Var = yx1.a;
        int i2 = jd7Var.e;
        if (i2 == 0) {
            lg7.H(objB);
            if (pe4.d(kd7Var.k, str)) {
                return be8.a;
            }
            kd7Var.k = str;
            ch3 ch3Var = ch3.a;
            jd7Var.a = str;
            jd7Var.b = id7Var;
            jd7Var.e = 1;
            objB = ch3Var.b(jd7Var);
            if (objB == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            id7Var = jd7Var.b;
            str = jd7Var.a;
            lg7.H(objB);
        }
        for (oy1 oy1Var : ((Map) objB).values()) {
            i97 i97Var = new i97(str);
            oy1Var.getClass();
            String str3 = "App Quality Sessions session changed: " + i97Var;
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", str3, null);
            }
            ny1 ny1Var = oy1Var.b;
            synchronized (ny1Var) {
                if (!Objects.equals((String) ny1Var.d, str)) {
                    ny1.f((ca3) ny1Var.b, (String) ny1Var.c, str);
                    ny1Var.d = str;
                }
            }
            int iOrdinal = id7Var.ordinal();
            if (iOrdinal == 0) {
                str2 = "Notified " + h97.a + " of new session " + str;
            } else {
                if (iOrdinal != 1) {
                    q.j();
                    return null;
                }
                str2 = "Notified " + h97.a + " of new fallback session " + str;
            }
            Log.d("FirebaseSessions", str2);
        }
        return be8.a;
    }

    public final void b() {
        this.i = false;
        if (this.h == null) {
            Log.d("FirebaseSessions", "App backgrounded, but local SessionData not initialized");
            return;
        }
        Log.d("FirebaseSessions", "App backgrounded on " + this.f.a());
        l73.v(l73.c(this.g), null, new pj(this, null, 2), 3);
    }

    public final void c() {
        this.i = true;
        q87 q87Var = this.h;
        if (q87Var == null) {
            this.j = true;
            Log.d("FirebaseSessions", "App foregrounded, but local SessionData not initialized");
            return;
        }
        jv1 jv1Var = null;
        if (q87Var == null) {
            pe4.F("localSessionData");
            throw null;
        }
        Log.d("FirebaseSessions", "App foregrounded on " + this.f.a());
        if (e(q87Var) || d(q87Var)) {
            l73.v(l73.c(this.g), null, new k41(this, q87Var, jv1Var, 3), 3);
        }
    }

    public final boolean d(q87 q87Var) {
        Map map = q87Var.c;
        boolean z = true;
        j76 j76Var = this.f;
        if (map == null) {
            Log.d("FirebaseSessions", "No process data for " + j76Var.a());
            return true;
        }
        j76Var.getClass();
        i76 i76Var = (i76) map.get(j76Var.a());
        if (i76Var != null && i76Var.a == j76Var.c && pe4.d(i76Var.b, (String) j76Var.d.getValue())) {
            z = false;
        }
        if (z) {
            Log.d("FirebaseSessions", "Process " + j76Var.a() + " is stale");
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003a  */
    /* JADX WARN: Code duplicated, block: B:13:0x0042  */
    /* JADX WARN: Code duplicated, block: B:18:0x004f  */
    public final boolean e(q87 q87Var) {
        mr2 mr2VarC;
        long jG;
        i38 i38Var = q87Var.b;
        u87 u87Var = q87Var.a;
        if (i38Var == null) {
            Log.d("FirebaseSessions", "Session " + u87Var.a + " has not backgrounded yet");
            return false;
        }
        this.d.getClass();
        i38 i38VarA = a48.a();
        ma2 ma2Var = mr2.b;
        long jH = pe4.H(i38VarA.a - i38Var.a, or2.MILLISECONDS);
        l97 l97Var = this.a;
        mr2 mr2VarC2 = l97Var.a.c();
        if (mr2VarC2 != null) {
            jG = mr2VarC2.a;
            if (jG <= 0 || mr2.d(jG)) {
                mr2VarC = l97Var.b.c();
                if (mr2VarC != null) {
                    jG = mr2VarC.a;
                    if (jG > 0 || mr2.d(jG)) {
                        jG = pe4.G(30, or2.MINUTES);
                    }
                } else {
                    jG = pe4.G(30, or2.MINUTES);
                }
            }
        } else {
            mr2VarC = l97Var.b.c();
            if (mr2VarC != null) {
                jG = mr2VarC.a;
                if (jG > 0) {
                    jG = pe4.G(30, or2.MINUTES);
                } else {
                    jG = pe4.G(30, or2.MINUTES);
                }
            } else {
                jG = pe4.G(30, or2.MINUTES);
            }
        }
        boolean z = mr2.c(jH, jG) > 0;
        if (z) {
            Log.d("FirebaseSessions", "Session " + u87Var.a + " is expired");
        }
        return z;
    }
}
