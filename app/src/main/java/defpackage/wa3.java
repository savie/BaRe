package defpackage;

import com.google.gson.a;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.RequestBody$Companion$toRequestBody$3;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wa3 {
    public static final List f = fl1.A0("https://gateway.filen.io", "https://gateway.filen.net", "https://gateway.filen-1.net", "https://gateway.filen-2.net", "https://gateway.filen-3.net", "https://gateway.filen-4.net", "https://gateway.filen-5.net", "https://gateway.filen-6.net");
    public final mt3 a;
    public final OkHttpClient b;
    public final List c;
    public final a d;
    public final MediaType e;

    public wa3(OkHttpClient okHttpClient) {
        zi1 zi1Var = new zi1(1);
        okHttpClient.getClass();
        this.a = zi1Var;
        OkHttpClient.Builder builderB = okHttpClient.b();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builderB.c(300L, timeUnit);
        builderB.y = _UtilJvmKt.b(300L, timeUnit);
        this.b = new OkHttpClient(builderB);
        this.c = f;
        t14 t14Var = new t14();
        t14Var.h = false;
        this.d = new a(t14Var);
        ai6 ai6Var = MediaType.d;
        this.e = MediaType.Companion.a("application/json; charset=utf-8");
    }

    public static va3 d(fl4 fl4Var) {
        qj4 qj4VarX = fl4Var.x("status");
        if (qj4VarX != null) {
            if (qj4VarX instanceof el4) {
                qj4VarX = null;
            }
            if (qj4VarX != null) {
                if ((qj4VarX instanceof kl4) && (qj4VarX.k().a instanceof Boolean)) {
                    return new va3(e(fl4Var, "message"), e(fl4Var, "code"), qj4VarX.e());
                }
                c6.f("Invalid Filen response field type: status");
                return null;
            }
        }
        c6.f("Missing Filen response field: status");
        return null;
    }

    public static String e(fl4 fl4Var, String str) {
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX == null) {
            return "";
        }
        if (qj4VarX instanceof el4) {
            qj4VarX = null;
        }
        if (qj4VarX == null) {
            return "";
        }
        if (!(qj4VarX instanceof kl4) || !(qj4VarX.k().a instanceof String)) {
            f6.g("Invalid Filen response field type: ".concat(str));
            return null;
        }
        String strO = qj4VarX.o();
        strO.getClass();
        return strO;
    }

    public final qj4 a(String str, String str2) {
        str2.getClass();
        return b("GET", str, null, str2, null, new zk(9));
    }

    public final qj4 b(String str, String str2, Object obj, String str3, Set set, bt3 bt3Var) throws NoSuchAlgorithmException, IOException {
        boolean zL;
        int i;
        List list = this.c;
        if (list.isEmpty()) {
            c6.f("Filen gateway list must not be empty");
            return null;
        }
        String strI = this.d.i(obj);
        RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
        RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3A = RequestBody.Companion.a(strI, this.e);
        int iFloorMod = Math.floorMod(((Number) this.a.invoke(Integer.valueOf(list.size()))).intValue(), list.size());
        char c = 0;
        int i2 = 0;
        IOException e = null;
        while (i2 < 11) {
            if (((Boolean) bt3Var.invoke()).booleanValue()) {
                l0.e("Filen request cancelled");
                return null;
            }
            Request.Builder builder = new Request.Builder();
            String str4 = (String) list.get((iFloorMod + i2) % list.size());
            char[] cArr = new char[1];
            cArr[c] = '/';
            builder.d(nq7.K0(str4, cArr) + str2);
            builder.c(str, str.equals("GET") ? null : requestBody$Companion$toRequestBody$3A);
            builder.c.d("Authorization", "Bearer ".concat(str3 == null ? "anonymous" : str3));
            if (!str.equals("GET")) {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
                byte[] bytes = strI.getBytes(f51.a);
                bytes.getClass();
                byte[] bArrDigest = messageDigest.digest(bytes);
                bArrDigest.getClass();
                builder.c.d("Checksum", x50.t0(bArrDigest, "", new hw(3), 30));
            }
            Request requestO = xs1.o(builder.c, "Accept", "application/json, text/plain, */*", builder);
            OkHttpClient okHttpClient = this.b;
            okHttpClient.getClass();
            RealCall realCall = new RealCall(okHttpClient, requestO);
            if (set != null) {
                set.add(realCall);
            }
            try {
                if (((Boolean) bt3Var.invoke()).booleanValue()) {
                    realCall.cancel();
                }
                if (((Boolean) bt3Var.invoke()).booleanValue()) {
                    throw new IllegalStateException("Filen request cancelled");
                }
                Response responseG = realCall.g();
                try {
                    try {
                        fl4 fl4VarI = yc9.K(responseG.k.n()).i();
                        if (!responseG.H) {
                            int i3 = responseG.d;
                            if (i3 == 408 || i3 == 429 || i3 >= 500) {
                                throw new lb3(i3, str2);
                            }
                        }
                        try {
                            va3 va3VarD = d(fl4VarI);
                            if (!va3VarD.a) {
                                String str5 = va3VarD.c;
                                String str6 = va3VarD.b;
                                if (nq7.j0(str6)) {
                                    str6 = "Filen API request failed";
                                }
                                throw new ua3(str5, str6);
                            }
                            if (!responseG.H) {
                                throw new lb3(responseG.d, str2);
                            }
                            if (((Boolean) bt3Var.invoke()).booleanValue()) {
                                throw new IllegalStateException("Filen request cancelled");
                            }
                            qj4 qj4VarX = fl4VarI.x("data");
                            if (qj4VarX == null) {
                                qj4VarX = new fl4();
                            }
                            responseG.close();
                            if (set != null) {
                                set.remove(realCall);
                            }
                            return qj4VarX;
                        } catch (RuntimeException e2) {
                            if (responseG.H) {
                                throw new pb3("Invalid Filen API response for ".concat(str2), e2);
                            }
                            throw new lb3(responseG.d, str2);
                        }
                    } catch (RuntimeException e3) {
                        if (responseG.H) {
                            throw new pb3("Invalid Filen API response for ".concat(str2), e3);
                        }
                        throw new lb3(responseG.d, str2);
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(responseG, th);
                        throw th2;
                    }
                }
            } catch (IOException e4) {
                e = e4;
                try {
                    if (e instanceof ua3) {
                        zL = w13.l(((ua3) e).a);
                    } else {
                        zL = !(e instanceof lb3) || (i = ((lb3) e).a) == 408 || i == 429 || i >= 500;
                    }
                    if (!zL || i2 == 10) {
                        throw e;
                    }
                    Thread.sleep(1000L);
                    if (set != null) {
                        set.remove(realCall);
                    }
                    i2++;
                    c = 0;
                } catch (Throwable th3) {
                    if (set != null) {
                        set.remove(realCall);
                    }
                    throw th3;
                }
            }
        }
        if (e != null) {
            throw e;
        }
        l0.e("Required value was null.");
        return null;
    }
}
