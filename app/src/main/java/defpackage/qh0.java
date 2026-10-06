package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.Response;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qh0 implements st3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ no2 b;

    public /* synthetic */ qh0(no2 no2Var, int i) {
        this.a = i;
        this.b = no2Var;
    }

    @Override // defpackage.st3
    public final Object d(Object obj, Object obj2, Object obj3, Object obj4) throws IOException {
        int i = this.a;
        be8 be8Var = be8.a;
        no2 no2Var = this.b;
        switch (i) {
            case 0:
                rh0 rh0Var = (rh0) no2Var;
                long jLongValue = ((Long) obj).longValue();
                long jLongValue2 = ((Long) obj2).longValue();
                ((Long) obj3).getClass();
                OutputStream outputStream = (OutputStream) obj4;
                outputStream.getClass();
                try {
                    rh0Var.n.o(rh0Var.a, outputStream, jLongValue, jLongValue2);
                    outputStream.close();
                    return be8Var;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(outputStream, th);
                        throw th2;
                    }
                }
            default:
                d82 d82Var = (d82) no2Var;
                long jLongValue3 = ((Long) obj).longValue();
                ((Long) obj2).getClass();
                long jLongValue4 = ((Long) obj3).longValue();
                OutputStream outputStream2 = (OutputStream) obj4;
                outputStream2.getClass();
                br2 br2Var = d82Var.n;
                String str = d82Var.a;
                br2Var.getClass();
                str.getClass();
                Request.Builder builder = new Request.Builder();
                builder.d(br2Var.a("/2/files/download"));
                RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
                builder.c("POST", RequestBody.Companion.a("", null));
                fl4 fl4Var = new fl4();
                fl4Var.u("path", str);
                builder.c.d("Dropbox-API-Arg", x13.T(fl4Var));
                String str2 = br2.h.a;
                str2.getClass();
                builder.c.d("Content-Type", str2);
                if (jLongValue4 > 0) {
                    StringBuilder sbT = dj7.t("bytes=", "-", jLongValue3);
                    sbT.append((jLongValue4 + jLongValue3) - 1);
                    builder.c.d("Range", sbT.toString());
                }
                Response responseC = br2Var.c(new Request(builder), true, true);
                br2.b(responseC);
                try {
                    cy0.j(responseC.k.a(), outputStream2, 262144);
                    responseC.close();
                    return be8Var;
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        rs9.c(responseC, th3);
                        throw th4;
                    }
                }
        }
    }
}
