package defpackage;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.List;
import java.util.Locale;
import org.swiftapps.swiftbackup.cloud.clients.MegaClient$Credentials;
import org.swiftapps.swiftbackup.cloud.protocols.mega.MegaLoginResult;
import org.swiftapps.swiftbackup.cloud.protocols.mega.lite.SwiftMegaSavedSession;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gt7 {
    public static final gt7 a = new gt7();
    public static MegaClient$Credentials b = new MegaClient$Credentials(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    public static final gv7 c = new gv7(new zk(17));
    public static final gv7 d = new gv7(new fl(15));
    public static final gv7 e = new gv7(new q9(16));
    public static final gv7 f = new gv7(new jx(24));
    public static final gv7 g = new gv7(new zj(17));
    public static gh h;
    public static vq i;

    public static void g(gh ghVar, String str) {
        String lowerCase = nq7.H0(str).toString().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        String str2 = (String) ghVar.a;
        String strEncodeToString = Base64.getUrlEncoder().withoutPadding().encodeToString((byte[]) ghVar.b);
        strEncodeToString.getClass();
        SwiftMegaSavedSession swiftMegaSavedSession = new SwiftMegaSavedSession(lowerCase, str2, strEncodeToString, (String) ghVar.c);
        gv7 gv7Var = w14.a;
        String strI = w14.c().i(swiftMegaSavedSession);
        x95 x95Var = x95.g;
        gv7 gv7Var2 = y32.a;
        x95.s(y32.e(strI));
    }

    public final MegaLoginResult a(gh ghVar, String str) {
        Object bn6Var;
        h = ghVar;
        i = null;
        try {
            d();
            if (str != null) {
                try {
                    g(ghVar, str);
                    bn6Var = be8.a;
                } catch (Throwable th) {
                    bn6Var = new bn6(th);
                }
                if (en6.a(bn6Var) != null) {
                    x95 x95Var = x95.g;
                    x95.s(null);
                }
            }
            return MegaLoginResult.Success.INSTANCE;
        } catch (Exception e2) {
            gh ghVar2 = h;
            if (ghVar2 != null) {
                Arrays.fill((byte[]) ghVar2.b, (byte) 0);
            }
            h = null;
            i = null;
            return new MegaLoginResult.Failed(e2);
        }
    }

    public final boolean b(String str) {
        String strI0 = nq7.I0(str, '/');
        if (nq7.j0(strI0)) {
            return true;
        }
        synchronized (this) {
            try {
                gh ghVarF = a.f();
                String str2 = "";
                List listW0 = nq7.w0(strI0, new char[]{'/'}, 6);
                ArrayList<String> arrayList = new ArrayList();
                for (Object obj : listW0) {
                    if (!nq7.j0((String) obj)) {
                        arrayList.add(obj);
                    }
                }
                for (String str3 : arrayList) {
                    List listA0 = fl1.A0(str2, str3);
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj2 : listA0) {
                        if (!nq7.j0((String) obj2)) {
                            arrayList2.add(obj2);
                        }
                    }
                    String strY0 = el1.Y0(arrayList2, "/", null, null, null, 62);
                    gt7 gt7Var = a;
                    pa5 pa5VarM = gt7Var.d().m(strY0);
                    if (pa5VarM == null) {
                        pa5 pa5VarM2 = gt7Var.d().m(str2);
                        if (pa5VarM2 == null) {
                            throw new IllegalStateException(("MEGA parent folder does not exist: " + ((Object) str2)).toString());
                        }
                        ((sa5) e.getValue()).a(ghVarF, pa5VarM2, str3);
                        i = null;
                    } else {
                        if (!(pa5VarM.f != 0)) {
                            throw new IllegalArgumentException(("MEGA path exists but is not a folder: " + strY0).toString());
                        }
                    }
                    str2 = strY0;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c(strI0);
    }

    public final boolean c(String str) {
        Object bn6Var;
        str.getClass();
        try {
            bn6Var = Boolean.valueOf(d().m(str) != null);
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        Object obj = Boolean.FALSE;
        if (bn6Var instanceof bn6) {
            bn6Var = obj;
        }
        return ((Boolean) bn6Var).booleanValue();
    }

    public final synchronized vq d() {
        vq vqVarC;
        gh ghVarF = f();
        vqVarC = i;
        if (vqVarC == null) {
            vqVarC = ((sa5) e.getValue()).c(ghVarF);
            i = vqVarC;
        }
        return vqVarC;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x010f  */
    public final MegaLoginResult e(String str) {
        String string;
        Object bn6Var;
        Object bn6Var2;
        SwiftMegaSavedSession swiftMegaSavedSession;
        Object bn6Var3;
        gh ghVar;
        MegaLoginResult failed;
        if (h != null) {
            return MegaLoginResult.Success.INSTANCE;
        }
        if (!b.isValid()) {
            return new MegaLoginResult.Failed(new IllegalStateException("MEGA credentials are missing"));
        }
        gv7 gv7Var = d;
        if (str == null || nq7.j0(str)) {
            String email = b.getEmail();
            x95 x95Var = x95.g;
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                string = sharedPreferences.getString("mega_swift_session", null);
                if (string == null) {
                    swiftMegaSavedSession = null;
                } else {
                    try {
                        gv7 gv7Var2 = y32.a;
                        bn6Var = y32.a(string);
                    } catch (Throwable th) {
                        bn6Var = new bn6(th);
                    }
                    if (en6.a(bn6Var) == null) {
                        String str2 = (String) bn6Var;
                        try {
                            gv7 gv7Var3 = w14.a;
                            bn6Var2 = (SwiftMegaSavedSession) w14.c().c(str2, SwiftMegaSavedSession.class);
                        } catch (Throwable th2) {
                            bn6Var2 = new bn6(th2);
                        }
                        if (bn6Var2 instanceof bn6) {
                            bn6Var2 = null;
                        }
                        swiftMegaSavedSession = (SwiftMegaSavedSession) bn6Var2;
                    } else {
                        x95 x95Var2 = x95.g;
                        x95.s(null);
                        swiftMegaSavedSession = null;
                    }
                }
                ti8 ti8VarValidatedForEmail = swiftMegaSavedSession != null ? swiftMegaSavedSession.validatedForEmail(email) : null;
                if (ti8VarValidatedForEmail == null) {
                    x95 x95Var3 = x95.g;
                    x95.s(null);
                } else {
                    try {
                        String strReplace = ti8VarValidatedForEmail.b.replace('+', '-');
                        strReplace.getClass();
                        String strReplace2 = strReplace.replace('/', '_');
                        strReplace2.getClass();
                        bn6Var3 = Base64.getUrlDecoder().decode(strReplace2 + uq7.R((4 - (strReplace2.length() % 4)) % 4, "="));
                        bn6Var3.getClass();
                    } catch (Throwable th3) {
                        bn6Var3 = new bn6(th3);
                    }
                    if (en6.a(bn6Var3) == null) {
                        byte[] bArr = (byte[]) bn6Var3;
                        try {
                            ((oa5) gv7Var.getValue()).j(ti8VarValidatedForEmail.a);
                            ghVar = new gh(ti8VarValidatedForEmail.a, bArr, ti8VarValidatedForEmail.c);
                        } catch (ca5 unused) {
                            Arrays.fill(bArr, (byte) 0);
                            x95 x95Var4 = x95.g;
                            x95.s(null);
                            ghVar = null;
                        } catch (Exception unused2) {
                            Arrays.fill(bArr, (byte) 0);
                            ghVar = null;
                        }
                        if (ghVar != null) {
                            return a.a(ghVar, null);
                        }
                    } else {
                        x95 x95Var5 = x95.g;
                        x95.s(null);
                    }
                }
                ghVar = null;
                if (ghVar != null) {
                    return a.a(ghVar, null);
                }
            } catch (ClassCastException unused3) {
                string = null;
            }
        }
        try {
            return a(((oa5) gv7Var.getValue()).d(b.getEmail(), b.getPassword(), str), b.getEmail());
        } catch (ca5 e2) {
            int i2 = e2.a;
            failed = (i2 == -26 || i2 == -8) ? new MegaLoginResult.MultiFactorAuthRequired(e2) : new MegaLoginResult.Failed(e2);
            return failed;
        } catch (Exception e3) {
            failed = new MegaLoginResult.Failed(e3);
            return failed;
        }
    }

    public final synchronized gh f() {
        try {
            gh ghVar = h;
            if (ghVar != null) {
                return ghVar;
            }
            MegaLoginResult megaLoginResultE = e(null);
            if (!(megaLoginResultE instanceof MegaLoginResult.Success)) {
                throw new IllegalStateException("Swift MEGA login failed: " + megaLoginResultE);
            }
            gh ghVar2 = h;
            if (ghVar2 != null) {
                return ghVar2;
            }
            throw new IllegalArgumentException("Swift MEGA login succeeded without session state");
        } catch (Throwable th) {
            throw th;
        }
    }
}
