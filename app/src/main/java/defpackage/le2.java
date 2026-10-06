package defpackage;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class le2 implements Callable {
    public final /* synthetic */ ne2 a;

    public /* synthetic */ le2(ne2 ne2Var) {
        this.a = ne2Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String string;
        ne2 ne2Var = this.a;
        synchronized (ne2Var) {
            try {
                u34 u34Var = (u34) ne2Var.a.get();
                ArrayList arrayListA = u34Var.a();
                synchronized (u34Var) {
                    ih4 ih4Var = u34Var.a;
                    v10 v10Var = new v10(u34Var, 13);
                    ih4Var.getClass();
                }
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < arrayListA.size(); i++) {
                    pd0 pd0Var = (pd0) arrayListA.get(i);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("agent", pd0Var.a);
                    jSONObject.put("dates", new JSONArray((Collection) pd0Var.b));
                    jSONArray.put(jSONObject);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("heartbeats", jSONArray);
                jSONObject2.put("version", "2");
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 11);
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                    try {
                        gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                        gZIPOutputStream.close();
                        base64OutputStream.close();
                        string = byteArrayOutputStream.toString("UTF-8");
                    } catch (Throwable th) {
                        try {
                            gZIPOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    try {
                        base64OutputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
        return string;
    }
}
