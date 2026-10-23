package defpackage;

import android.util.Base64;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ga {
    public final byte[] a;
    public final byte[] b;
    public final byte[] c;

    public ga(String str) {
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length != 3) {
            c6.f("Cannot parse iv:ciphertext:mac");
            throw null;
        }
        this.b = Base64.decode(strArrSplit[0], 2);
        this.c = Base64.decode(strArrSplit[1], 2);
        this.a = Base64.decode(strArrSplit[2], 2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ga.class != obj.getClass()) {
            return false;
        }
        ga gaVar = (ga) obj;
        return Arrays.equals(this.a, gaVar.a) && Arrays.equals(this.b, gaVar.b) && Arrays.equals(this.c, gaVar.c);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.c) + ((Arrays.hashCode(this.b) + ((Arrays.hashCode(this.a) + 31) * 31)) * 31);
    }

    public final String toString() {
        String strEncodeToString = Base64.encodeToString(this.b, 2);
        String strEncodeToString2 = Base64.encodeToString(this.a, 2);
        return String.format(strEncodeToString + ":" + Base64.encodeToString(this.c, 2) + ":" + strEncodeToString2, new Object[0]);
    }

    public ga(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[bArr.length];
        this.a = bArr4;
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        byte[] bArr5 = new byte[bArr2.length];
        this.b = bArr5;
        System.arraycopy(bArr2, 0, bArr5, 0, bArr2.length);
        byte[] bArr6 = new byte[bArr3.length];
        this.c = bArr6;
        System.arraycopy(bArr3, 0, bArr6, 0, bArr3.length);
    }
}
