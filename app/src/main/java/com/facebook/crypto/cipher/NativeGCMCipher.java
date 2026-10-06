package com.facebook.crypto.cipher;

import defpackage.bb9;
import defpackage.fz5;
import defpackage.l;
import defpackage.ov7;
import defpackage.xs1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class NativeGCMCipher {
    public int a = 1;
    public final ov7 b;
    private long mCtxPtr;

    public NativeGCMCipher(ov7 ov7Var) {
        this.b = ov7Var;
    }

    private native int nativeDecryptFinal(byte[] bArr, int i);

    private native int nativeDecryptInit(byte[] bArr, byte[] bArr2);

    private native int nativeDestroy();

    private native int nativeEncryptFinal(byte[] bArr, int i);

    private native int nativeEncryptInit(byte[] bArr, byte[] bArr2);

    private static native int nativeFailure();

    private native int nativeGetCipherBlockSize();

    private native int nativeUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3);

    private native int nativeUpdateAad(byte[] bArr, int i);

    public final void a(byte[] bArr, int i) throws l {
        bb9.n("Cipher has not been initialized", this.a == 3);
        this.a = 5;
        if (nativeDecryptFinal(bArr, i) == nativeFailure()) {
            throw new l("The message could not be decrypted successfully.It has either been tampered with or the wrong resource is being decrypted.");
        }
    }

    public final void b(byte[] bArr, byte[] bArr2) throws l {
        bb9.n("Cipher has already been initialized", this.a == 1);
        this.b.a();
        if (nativeDecryptInit(bArr, bArr2) == nativeFailure()) {
            throw new l("decryptInit");
        }
        this.a = 3;
    }

    public final void c() throws l {
        int i = this.a;
        bb9.n("Cipher has not been finalized", i == 5 || i == 4);
        if (nativeDestroy() == nativeFailure()) {
            throw new l("destroy");
        }
        this.a = 1;
    }

    public final void d(byte[] bArr, int i) throws l {
        bb9.n("Cipher has not been initialized", this.a == 2);
        this.a = 4;
        if (nativeEncryptFinal(bArr, i) == nativeFailure()) {
            throw new l(fz5.j(i, "encryptFinal: "));
        }
    }

    public final void e(byte[] bArr, byte[] bArr2) throws l {
        bb9.n("Cipher has already been initialized", this.a == 1);
        this.b.a();
        if (nativeEncryptInit(bArr, bArr2) == nativeFailure()) {
            throw new l("encryptInit");
        }
        this.a = 2;
    }

    public final void f() {
        int i = this.a;
        bb9.n("Cipher has not been initialized", i == 3 || i == 2);
    }

    public final int g() {
        f();
        return nativeGetCipherBlockSize();
    }

    public final int h(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws l {
        f();
        int iNativeUpdate = nativeUpdate(bArr, i, i2, bArr2, i3);
        if (iNativeUpdate >= 0) {
            return iNativeUpdate;
        }
        StringBuilder sbN = xs1.n("update: Offset = ", i, "; DataLen = ", "; Result = ", i2);
        sbN.append(iNativeUpdate);
        throw new l(sbN.toString());
    }

    public final void i(byte[] bArr, int i) throws l {
        f();
        if (nativeUpdateAad(bArr, i) < 0) {
            throw new l(fz5.j(i, "updateAAd: DataLen = "));
        }
    }
}
