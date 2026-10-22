package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class md0 extends l03 {
    public final byte[] a;
    public final byte[] b;

    public md0(byte[] bArr, byte[] bArr2) {
        this.a = bArr;
        this.b = bArr2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l03) {
            l03 l03Var = (l03) obj;
            boolean z = l03Var instanceof md0;
            md0 md0Var = (md0) l03Var;
            if (Arrays.equals(this.a, z ? md0Var.a : md0Var.a)) {
                md0 md0Var2 = (md0) l03Var;
                if (Arrays.equals(this.b, z ? md0Var2.b : md0Var2.b)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) ^ ((Arrays.hashCode(this.a) ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "ExperimentIds{clearBlob=" + Arrays.toString(this.a) + ", encryptedBlob=" + Arrays.toString(this.b) + "}";
    }
}
