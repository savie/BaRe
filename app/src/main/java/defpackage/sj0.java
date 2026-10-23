package defpackage;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.Call;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.RequestBody$Companion$toRequestBody$3;
import org.json.JSONException;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.cloud.helpers.BoxRecentUploadCache$CachedBoxFile;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sj0 extends ag8 {
    public final kh0 i;
    public final String j;
    public InputStream k;
    public final jv0 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sj0(kh0 kh0Var, rf8 rf8Var) {
        super(rf8Var);
        rf8Var.getClass();
        this.i = kh0Var;
        this.j = "BUploadSession";
        this.l = new jv0();
    }

    @Override // defpackage.ag8
    public final void b() {
        tb1 tb1Var = tb1.a;
        vr6.w$default(vr6.INSTANCE, this.j, eq3.k("Closing connection with ", qb1.f().getDisplayNameEn(), ", may result in unknown errors"), null, 4, null);
        jv0 jv0Var = this.l;
        jv0Var.b = true;
        ConcurrentHashMap.KeySetView keySetView = jv0Var.a;
        keySetView.getClass();
        Iterator it = keySetView.iterator();
        while (it.hasNext()) {
            ((Call) it.next()).cancel();
        }
        InputStream inputStream = this.k;
        if (inputStream != null) {
            f13.a(inputStream);
        }
    }

    @Override // defpackage.ag8
    public final String d() {
        return this.j;
    }

    @Override // defpackage.ag8
    public final void f() {
        k(this.a.b());
    }

    public final av0 i(String str, String str2, long j) throws JSONException {
        int i = 4;
        c7 c7Var = new c7(this, i);
        final d7 d7Var = new d7(this, i);
        String str3 = this.b;
        rf8 rf8Var = this.a;
        final kh0 kh0Var = this.i;
        String str4 = this.j;
        if (str3 == null || str3.length() == 0) {
            Log.i(str4, "Starting chunked upload");
            final q63 q63Var = rf8Var.a;
            kh0Var.getClass();
            str2.getClass();
            q63Var.getClass();
            mv0 mv0VarS = kh0Var.s();
            qt3 qt3Var = new qt3() { // from class: jh0
                @Override // defpackage.qt3
                public final Object invoke(Object obj, Object obj2) throws IOException {
                    long jLongValue = ((Long) obj).longValue();
                    ((Long) obj2).getClass();
                    kh0Var.getClass();
                    InputStream inputStreamV = kh0.v(q63Var, jLongValue);
                    d7Var.invoke(inputStreamV);
                    return inputStreamV;
                }
            };
            mv0VarS.getClass();
            RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("folder_id", str);
            jSONObject.put("file_name", str2);
            jSONObject.put("file_size", j);
            String string = jSONObject.toString();
            string.getClass();
            RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3A = RequestBody.Companion.a(string, mv0.g);
            Request.Builder builderB = mv0.b(mv0VarS.u("/api/2.0/files/upload_sessions"));
            builderB.c("POST", requestBody$Companion$toRequestBody$3A);
            Request request = new Request(builderB);
            jv0 jv0Var = this.l;
            return mv0VarS.t(mv0.s(mv0.h(mv0VarS, request, jv0Var, 2)), j, qt3Var, c7Var, jv0Var);
        }
        Log.i(str4, "Updating chunked upload with id " + this.b);
        String str5 = this.b;
        str5.getClass();
        final q63 q63Var2 = rf8Var.a;
        kh0Var.getClass();
        q63Var2.getClass();
        mv0 mv0VarS2 = kh0Var.s();
        qt3 qt3Var2 = new qt3() { // from class: ih0
            @Override // defpackage.qt3
            public final Object invoke(Object obj, Object obj2) throws IOException {
                long jLongValue = ((Long) obj).longValue();
                ((Long) obj2).getClass();
                kh0Var.getClass();
                InputStream inputStreamV = kh0.v(q63Var2, jLongValue);
                d7Var.invoke(inputStreamV);
                return inputStreamV;
            }
        };
        mv0VarS2.getClass();
        RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$2 = RequestBody.a;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("file_size", j);
        String string2 = jSONObject2.toString();
        string2.getClass();
        RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3A2 = RequestBody.Companion.a(string2, mv0.g);
        Request.Builder builderB2 = mv0.b(mv0VarS2.u("/api/2.0/files/" + str5 + "/upload_sessions"));
        builderB2.c("POST", requestBody$Companion$toRequestBody$3A2);
        Request request2 = new Request(builderB2);
        jv0 jv0Var2 = this.l;
        return mv0VarS2.t(mv0.s(mv0.h(mv0VarS2, request2, jv0Var2, 2)), j, qt3Var2, c7Var, jv0Var2);
    }

    public final av0 j(String str, String str2, long j) {
        av0 av0VarY;
        q63 q63Var = this.a.a;
        boolean z = q63.d;
        d86 d86Var = new d86(q63Var.w(true), j, new rj0(this, 0));
        this.k = d86Var;
        try {
            String str3 = this.b;
            if (str3 == null || str3.length() == 0) {
                av0VarY = this.i.y(str, str2, d86Var, j, this.l);
            } else {
                Log.i(this.j, "Updating upload with id " + this.b);
                kh0 kh0Var = this.i;
                String str4 = this.b;
                str4.getClass();
                av0VarY = kh0Var.z(str4, str2, d86Var, j, this.l);
            }
            d86Var.close();
            return av0VarY;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(d86Var, th);
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0108  */
    public final void k(String str) {
        boolean z;
        int i;
        long jA = this.a.a.A();
        try {
            tb1 tb1Var = tb1.a;
            String strJ = qb1.j();
            if (strJ == null) {
                throw new IllegalArgumentException("Box main folder id is not initialized");
            }
            this.b = this.i.q(strJ, str);
            if (e()) {
                return;
            }
            av0 av0VarI = jA > 50000000 ? i(strJ, str, jA) : j(strJ, str, jA);
            String str2 = av0VarI.a;
            this.d.a = str2;
            ag8.g(this, Long.valueOf(jA));
            List list = gv0.a;
            if (list == null || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (nq7.Z(str, "." + ((String) it.next()), false)) {
                        List list2 = gv0.a;
                        String str3 = av0VarI.b;
                        long j = av0VarI.c;
                        long j2 = av0VarI.e;
                        Long lValueOf = Long.valueOf(j2);
                        if (j2 <= 0) {
                            lValueOf = null;
                        }
                        gv0.b(new BoxRecentUploadCache$CachedBoxFile(str2, str3, j, lValueOf != null ? lValueOf.longValue() : System.currentTimeMillis()));
                        return;
                    }
                }
            }
        } catch (Exception e) {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, this.j, "executeUpload", e, null, 8, null);
            if (e()) {
                return;
            }
            String strA = dv0.a(e);
            vr6.e$default(vr6Var, this.j, "executeUpload: ".concat(strA), null, 4, null);
            int i2 = this.f;
            int i3 = this.e;
            boolean z2 = i2 < i3;
            ai6 ai6Var = nf1.a;
            if (x13.H(e) || ((e instanceof hv0) && ((i = ((hv0) e).a) == 429 || (500 <= i && i < 600)))) {
                z = true;
            } else {
                String message = e.getMessage();
                if (message == null) {
                    message = "";
                }
                if (nq7.Z(message, "Box API due to a network error", false)) {
                    z = true;
                } else {
                    z = false;
                }
            }
            if (!z2 || !z) {
                a(new Exception(strA), false);
            } else if (h(null)) {
                int i4 = this.f + 1;
                this.f = i4;
                vr6.i$default(vr6Var, this.j, dj7.j("executeUpload Retrying upload (", i4, "/", ")", i3), null, 4, null);
                k(str);
            }
        }
    }
}
