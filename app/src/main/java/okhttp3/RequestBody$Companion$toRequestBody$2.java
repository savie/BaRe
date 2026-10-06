package okhttp3;

import defpackage.rs9;
import defpackage.y13;
import defpackage.yw0;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RequestBody$Companion$toRequestBody$2 extends RequestBody {
    @Override // okhttp3.RequestBody
    public final MediaType b() {
        return null;
    }

    @Override // okhttp3.RequestBody
    public final void d(yw0 yw0Var) throws IOException {
        FileInputStream fileInputStream = new FileInputStream((FileDescriptor) null);
        try {
            yw0Var.c().B(y13.G(fileInputStream));
            fileInputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(fileInputStream, th);
                throw th2;
            }
        }
    }
}
