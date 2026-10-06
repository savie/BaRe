package defpackage;

import android.util.Log;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.ProviderException;
import javax.crypto.BadPaddingException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xr9 implements w99 {
    public final wr9 a;

    public xr9(String str) throws GeneralSecurityException {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            this.a = new wr9(str, keyStore);
        } catch (IOException e) {
            throw new GeneralSecurityException(e);
        }
    }

    @Override // defpackage.w99
    public final byte[] a(byte[] bArr, byte[] bArr2) throws BadPaddingException {
        wr9 wr9Var = this.a;
        try {
            return wr9Var.a(bArr, bArr2);
        } catch (ProviderException e) {
            e = e;
            Log.w("xr9", "encountered a potentially transient KeyStore error, will wait and retry", e);
            try {
                Thread.sleep((int) (Math.random() * 100.0d));
            } catch (InterruptedException unused) {
            }
            return wr9Var.a(bArr, bArr2);
        } catch (BadPaddingException e2) {
            throw e2;
        } catch (GeneralSecurityException e3) {
            e = e3;
            Log.w("xr9", "encountered a potentially transient KeyStore error, will wait and retry", e);
            Thread.sleep((int) (Math.random() * 100.0d));
            return wr9Var.a(bArr, bArr2);
        }
    }

    @Override // defpackage.w99
    public final byte[] b(byte[] bArr, byte[] bArr2) {
        wr9 wr9Var = this.a;
        try {
            return wr9Var.b(bArr, bArr2);
        } catch (GeneralSecurityException | ProviderException e) {
            Log.w("xr9", "encountered a potentially transient KeyStore error, will wait and retry", e);
            try {
                Thread.sleep((int) (Math.random() * 100.0d));
            } catch (InterruptedException unused) {
            }
            return wr9Var.b(bArr, bArr2);
        }
    }
}
