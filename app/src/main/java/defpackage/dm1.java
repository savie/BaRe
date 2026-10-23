package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dm1 implements ae7 {
    public final String[] a;

    public dm1(String[] strArr) {
        this.a = strArr;
    }

    @Override // defpackage.ae7
    public final void d0(OutputStream outputStream) throws IOException {
        for (String str : this.a) {
            outputStream.write(str.getBytes(StandardCharsets.UTF_8));
            outputStream.write(10);
        }
    }
}
