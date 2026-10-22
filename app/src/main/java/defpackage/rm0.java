package defpackage;

import java.io.IOException;
import java.util.concurrent.CompletionException;
import java.util.function.Function;
import java.util.logging.Logger;
import okhttp3.Response;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rm0 implements Function {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ rm0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                hn1 hn1Var = (hn1) obj2;
                Response response = (Response) obj;
                int i2 = cn0.k;
                try {
                    try {
                        String strTrim = response.k.n().trim();
                        if (!strTrim.isEmpty()) {
                            try {
                                if (by8.c(cy2.class, strTrim)) {
                                    throw new CompletionException(new dy2((cy2) by8.b(cy2.class, strTrim), response, null));
                                }
                            } catch (cy8 unused) {
                            }
                            try {
                                in1 in1Var = (in1) by8.b(in1.class, strTrim);
                                zr5 zr5Var = new zr5(response.f, in1Var.j(), in1Var.l(), in1Var.m(), in1Var.k(), Response.b("x-amz-version-id", response), in1Var);
                                response.close();
                                return zr5Var;
                            } catch (cy8 unused2) {
                                Logger.getLogger(cn0.class.getName()).warning("S3 service returned unknown XML for CompleteMultipartUpload REST API. ".concat(strTrim));
                            }
                        }
                        zr5 zr5Var2 = new zr5(response.f, hn1Var.f(), hn1Var.d(), hn1Var.h(), null, Response.b("x-amz-version-id", response));
                        response.close();
                        return zr5Var2;
                    } catch (IOException e) {
                        throw new CompletionException(new rg5(e));
                    }
                } catch (Throwable th) {
                    response.close();
                    throw th;
                }
            default:
                j23 j23Var = (j23) obj2;
                String str = (String) obj;
                g23 g23VarB = ((h23) j23Var.d).b(str);
                return (g23VarB == null && j23Var.b) ? new g23(str) : g23VarB;
        }
    }
}
