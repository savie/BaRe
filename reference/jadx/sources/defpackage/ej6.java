package defpackage;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URLConnection;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ej6 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ fj6 b;
    public final /* synthetic */ Map c;
    public final /* synthetic */ s10 d;
    public final /* synthetic */ u01 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ej6(fj6 fj6Var, Map map, s10 s10Var, u01 u01Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = fj6Var;
        this.c = map;
        this.d = s10Var;
        this.e = u01Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new ej6(this.b, this.c, this.d, this.e, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((ej6) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00d4 A[RETURN] */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        u01 u01Var = this.e;
        yx1 yx1Var = yx1.a;
        try {
            if (i == 0) {
                lg7.H(obj);
                URLConnection uRLConnectionOpenConnection = fj6.a(this.b).openConnection();
                uRLConnectionOpenConnection.getClass();
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
                httpsURLConnection.setRequestMethod("GET");
                httpsURLConnection.setRequestProperty("Accept", "application/json");
                for (Map.Entry entry : this.c.entrySet()) {
                    httpsURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                int responseCode = httpsURLConnection.getResponseCode();
                if (responseCode == 200) {
                    InputStream inputStream = httpsURLConnection.getInputStream();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                    }
                    bufferedReader.close();
                    inputStream.close();
                    JSONObject jSONObject = new JSONObject(sb.toString());
                    s10 s10Var = this.d;
                    this.a = 1;
                    if (s10Var.invoke(jSONObject, this) == yx1Var) {
                        return yx1Var;
                    }
                } else {
                    this.a = 2;
                    u01Var.invoke("Bad response code: " + responseCode, this);
                    if (be8Var == yx1Var) {
                        return yx1Var;
                    }
                }
            } else {
                if (i != 1 && i != 2 && i != 3) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
            }
        } catch (Exception e) {
            String message = e.getMessage();
            if (message == null) {
                message = e.toString();
            }
            this.a = 3;
            u01Var.invoke(message, this);
            if (be8Var == yx1Var) {
                return yx1Var;
            }
        }
        return be8Var;
    }
}
