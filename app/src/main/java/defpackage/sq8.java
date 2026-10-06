package defpackage;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class sq8 {
    public static fl4 a(qj4 qj4Var) {
        if (!(qj4Var instanceof fl4)) {
            qj4Var = null;
        }
        if (qj4Var != null) {
            return qj4Var.i();
        }
        return null;
    }

    public static tq8 b(String str) {
        HttpUrl httpUrlB;
        Object next;
        try {
            try {
                httpUrlB = HttpUrl.Companion.b(str);
            } catch (IllegalArgumentException unused) {
                httpUrlB = null;
            }
            if (httpUrlB != null) {
                ArrayList arrayListC = httpUrlB.c();
                Iterator it = fl1.y0(arrayListC).iterator();
                while (true) {
                    if (!((md4) it).c) {
                        next = null;
                        break;
                    }
                    next = ((md4) it).next();
                    int iIntValue = ((Number) next).intValue();
                    if (pe4.d(el1.V0(iIntValue, arrayListC), "remote.php") && pe4.d(el1.V0(iIntValue + 1, arrayListC), "dav") && pe4.d(el1.V0(iIntValue + 2, arrayListC), "files")) {
                        break;
                    }
                }
                Integer num = (Integer) next;
                if (num != null) {
                    int iIntValue2 = num.intValue();
                    String str2 = (String) el1.V0(iIntValue2 + 3, arrayListC);
                    if (str2 != null) {
                        if (nq7.j0(str2)) {
                            str2 = null;
                        }
                        if (str2 != null) {
                            String strY0 = el1.Y0(el1.g1(el1.p1(arrayListC, iIntValue2), fl1.A0("remote.php", "dav", "uploads", str2)), "/", "/", null, null, 60);
                            String strY1 = el1.Y0(el1.g1(el1.p1(arrayListC, iIntValue2), fl1.A0("ocs", "v1.php", "cloud", "capabilities")), "/", "/", null, null, 60);
                            HttpUrl.Builder builderG = httpUrlB.g();
                            builderG.f(strY0);
                            builderG.g = null;
                            builderG.h = null;
                            String strK0 = nq7.K0(builderG.e().h, '/');
                            HttpUrl.Builder builderG2 = httpUrlB.g();
                            builderG2.f(strY1);
                            builderG2.g = null;
                            builderG2.h = null;
                            builderG2.d("format", "json");
                            return new tq8(strK0, builderG2.e().h);
                        }
                    }
                }
            }
            return null;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "WebDavService", "Chunked upload not supported", e, null, 8, null);
            return null;
        }
    }

    public static boolean c(qj4 qj4Var) {
        Object bn6Var;
        kl4 kl4Var = qj4Var instanceof kl4 ? (kl4) qj4Var : null;
        if (kl4Var != null) {
            Serializable serializable = kl4Var.a;
            if (serializable instanceof Boolean) {
                return kl4Var.e();
            }
            if (serializable instanceof Number) {
                try {
                    bn6Var = Boolean.valueOf(kl4Var.s() > 0.0d);
                } catch (Throwable th) {
                    bn6Var = new bn6(th);
                }
                Object obj = Boolean.FALSE;
                if (bn6Var instanceof bn6) {
                    bn6Var = obj;
                }
                return ((Boolean) bn6Var).booleanValue();
            }
            if (serializable instanceof String) {
                String strO = kl4Var.o();
                strO.getClass();
                String string = nq7.H0(strO).toString();
                if (string.length() > 0 && !string.equalsIgnoreCase("false") && !string.equals("0")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean d(String str) {
        qj4 qj4VarX;
        qj4 qj4VarX2;
        str.getClass();
        fl4 fl4VarA = a(yc9.K(str));
        if (fl4VarA != null) {
            qj4 qj4VarX3 = fl4VarA.x("ocs");
            fl4 fl4VarA2 = qj4VarX3 != null ? a(qj4VarX3) : null;
            if (fl4VarA2 != null) {
                qj4 qj4VarX4 = fl4VarA2.x("data");
                fl4 fl4VarA3 = qj4VarX4 != null ? a(qj4VarX4) : null;
                if (fl4VarA3 != null) {
                    qj4 qj4VarX5 = fl4VarA3.x("capabilities");
                    fl4 fl4VarA4 = qj4VarX5 != null ? a(qj4VarX5) : null;
                    if (fl4VarA4 != null) {
                        qj4 qj4VarX6 = fl4VarA4.x("dav");
                        fl4 fl4VarA5 = qj4VarX6 != null ? a(qj4VarX6) : null;
                        boolean z = (fl4VarA5 == null || (qj4VarX2 = fl4VarA5.x("chunking")) == null || !c(qj4VarX2)) ? false : true;
                        qj4 qj4VarX7 = fl4VarA4.x("files");
                        fl4 fl4VarA6 = qj4VarX7 != null ? a(qj4VarX7) : null;
                        boolean z2 = (fl4VarA6 == null || (qj4VarX = fl4VarA6.x("bigfilechunking")) == null || !c(qj4VarX)) ? false : true;
                        if (z || z2) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }
}
