package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ea5 {
    public final OkHttpClient a;
    public final String b;
    public final int c;
    public final int d;
    public final long e;
    public final mt3 f;
    public final mt3 g;
    public final AtomicLong h;
    public final MediaType i;

    public ea5(OkHttpClient okHttpClient) {
        dq dqVar = new dq(10);
        cj2 cj2Var = new cj2(1, ka5.a, ka5.class, "solve", "solve(Lorg/swiftapps/swiftbackup/cloud/protocols/mega/lite/MegaLiteHashcash$Challenge;)Ljava/lang/String;", 0, 3);
        okHttpClient.getClass();
        this.a = okHttpClient;
        this.b = "https://g.api.mega.co.nz";
        this.c = 3;
        this.d = 16;
        this.e = 500L;
        this.f = dqVar;
        this.g = cj2Var;
        this.h = new AtomicLong(System.currentTimeMillis());
        ai6 ai6Var = MediaType.d;
        this.i = MediaType.Companion.a("application/json; charset=utf-8");
    }

    public final String a(ff ffVar, ja5 ja5Var) {
        Request.Builder builder = new Request.Builder();
        builder.d(ffVar.a);
        RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
        builder.c("POST", RequestBody.Companion.a(ffVar.b, this.i));
        if (ja5Var != null) {
            builder.c.d("X-Hashcash", dj7.l("1:", ja5Var.a, ":", ja5Var.b));
        }
        Request request = new Request(builder);
        OkHttpClient okHttpClient = this.a;
        okHttpClient.getClass();
        Response responseG = new RealCall(okHttpClient, request).g();
        try {
            ResponseBody responseBody = responseG.k;
            int i = responseG.d;
            String strN = responseBody.n();
            if (i == 402) {
                String strB = Response.b("X-Hashcash", responseG);
                ia5 ia5VarA = strB != null ? ka5.a(strB) : null;
                if (ia5VarA != null && strN.length() == 0) {
                    throw new la5(ia5VarA);
                }
            }
            if (i == 200) {
                responseG.close();
                return strN;
            }
            throw new lb5("MEGA API HTTP " + i + TokenAuthenticationScheme.SCHEME_DELIMITER + responseG.c + ": " + nq7.G0(256, strN), null, 4);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseG, th);
                throw th2;
            }
        }
    }

    public final qj4 b(fl4 fl4Var, String str, da5 da5Var) throws IOException {
        String strA;
        boolean z;
        int i = this.d;
        da5Var.getClass();
        xi4 xi4Var = new xi4();
        xi4Var.p(fl4Var);
        StringBuilder sb = new StringBuilder();
        sb.append(this.b);
        sb.append("/cs?id=");
        sb.append(this.h.incrementAndGet());
        sb.append("&v=3");
        if (str != null && !nq7.j0(str)) {
            sb.append("&sid=");
            sb.append(str);
        }
        ff ffVar = new ff(sb.toString(), xi4Var.toString());
        ja5 ja5Var = null;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            try {
                strA = a(ffVar, ja5Var);
                qj4 qj4VarK = yc9.K(strA);
                if ((!(qj4VarK instanceof kl4) || !(qj4VarK.k().a instanceof Number)) && ((!((z = qj4VarK instanceof xi4)) || ((xi4) qj4VarK).a.size() != 0) && (!(qj4VarK instanceof fl4) || w13.n(qj4VarK) == null))) {
                    if (!z) {
                        break;
                    }
                    ArrayList arrayList = ((xi4) qj4VarK).a;
                    if (arrayList.size() != 1) {
                        break;
                    }
                    qj4VarK = (qj4) arrayList.get(0);
                    qj4VarK.getClass();
                }
                Integer numN = w13.n(qj4VarK);
                if (numN == null) {
                    return qj4VarK;
                }
                ca5 ca5Var = new ca5(numN.intValue());
                int i4 = ca5Var.a;
                if (i4 != -3 && i4 != -4 && i4 != -18 && i4 != -19) {
                    throw ca5Var;
                }
                if (i3 >= this.c) {
                    throw ca5Var;
                }
                c(i3);
                i3++;
                ja5Var = null;
            } catch (IOException e) {
                if (!da5Var.getRetriesNetworkFailures() || i2 >= i || Thread.currentThread().isInterrupted()) {
                    throw e;
                }
                c(i2);
                i2++;
            } catch (la5 e2) {
                try {
                    String str2 = (String) this.g.invoke(e2.a);
                    if (nq7.j0(str2)) {
                        throw new lb5("MEGA hashcash challenge could not be solved", null, 6);
                    }
                    ja5Var = new ja5(e2.a.c, str2);
                } catch (RuntimeException e3) {
                    throw new lb5("MEGA hashcash challenge failed", e3, 2);
                }
            } catch (lb5 e4) {
                if (!e4.a || !da5Var.getRetriesNetworkFailures() || i2 >= i || Thread.currentThread().isInterrupted()) {
                    throw e4;
                }
                c(i2);
                i2++;
            }
        }
        f6.g("Unexpected MEGA API response: ".concat(nq7.G0(256, strA)));
        return null;
    }

    public final void c(int i) throws InterruptedIOException {
        long j = this.e * ((long) (i + 1));
        if (j <= 0) {
            return;
        }
        try {
            this.f.invoke(Long.valueOf(j));
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            InterruptedIOException interruptedIOException = new InterruptedIOException("MEGA API retry interrupted");
            interruptedIOException.initCause(e);
            throw interruptedIOException;
        }
    }
}
