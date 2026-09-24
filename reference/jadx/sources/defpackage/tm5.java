package defpackage;

import android.nfc.tech.IsoDep;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tm5 implements ai7 {
    public static final l15 b = o15.b(tm5.class);
    public final IsoDep a;

    public tm5(IsoDep isoDep) {
        this.a = isoDep;
        b.k("nfc connection opened");
    }

    @Override // defpackage.ai7
    public final byte[] I(byte[] bArr) throws IOException {
        String strF = x13.f(bArr, 0, bArr.length);
        l15 l15Var = b;
        ms8.A(5, l15Var, "sent: {}", strF);
        byte[] bArrTransceive = this.a.transceive(bArr);
        ms8.A(5, l15Var, "received: {}", x13.f(bArrTransceive, 0, bArrTransceive.length));
        return bArrTransceive;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.a.close();
        b.k("nfc connection closed");
    }

    @Override // defpackage.ai7
    public final boolean e0() {
        return this.a.isExtendedLengthApduSupported();
    }

    @Override // defpackage.ai7
    public final int l() {
        return 2;
    }
}
