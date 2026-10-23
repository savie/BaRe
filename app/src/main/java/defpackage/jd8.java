package defpackage;

import java.util.Objects;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jd8 extends h58 implements iv1 {
    public static final char[] e = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public final Boolean d;

    public jd8(Boolean bool) {
        super(UUID.class);
        this.d = bool;
    }

    public static final void p(byte[] bArr, int i, int i2) {
        bArr[i2] = (byte) (i >> 24);
        bArr[i2 + 1] = (byte) (i >> 16);
        bArr[i2 + 2] = (byte) (i >> 8);
        bArr[i2 + 3] = (byte) i;
    }

    public static void q(char[] cArr, int i, int i2) {
        char[] cArr2 = e;
        cArr[i2] = cArr2[(i >> 12) & 15];
        cArr[i2 + 1] = cArr2[(i >> 8) & 15];
        cArr[i2 + 2] = cArr2[(i >> 4) & 15];
        cArr[i2 + 3] = cArr2[i & 15];
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0018  */
    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        Boolean bool;
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, this.a);
        if (bk4VarK == null) {
            bool = null;
        } else {
            ak4 ak4Var = bk4VarK.b;
            if (ak4Var == ak4.a) {
                bool = Boolean.TRUE;
            } else if (ak4Var == ak4.e) {
                bool = Boolean.FALSE;
            } else {
                bool = null;
            }
        }
        return !Objects.equals(bool, this.d) ? new jd8(bool) : this;
    }

    @Override // defpackage.h58, defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        UUID uuid = (UUID) obj;
        return uuid.getLeastSignificantBits() == 0 && uuid.getMostSignificantBits() == 0;
    }

    @Override // defpackage.h58, defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        boolean zBooleanValue;
        UUID uuid = (UUID) obj;
        Boolean bool = this.d;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            fk4Var.getClass();
            zBooleanValue = false;
        }
        if (zBooleanValue) {
            byte[] bArr = new byte[16];
            long mostSignificantBits = uuid.getMostSignificantBits();
            long leastSignificantBits = uuid.getLeastSignificantBits();
            p(bArr, (int) (mostSignificantBits >> 32), 0);
            p(bArr, (int) mostSignificantBits, 4);
            p(bArr, (int) (leastSignificantBits >> 32), 8);
            p(bArr, (int) leastSignificantBits, 12);
            fk4Var.getClass();
            fk4Var.j(cl0.a, bArr, 0, 16);
            return;
        }
        char[] cArr = new char[36];
        long mostSignificantBits2 = uuid.getMostSignificantBits();
        int i = (int) (mostSignificantBits2 >> 32);
        q(cArr, i >> 16, 0);
        q(cArr, i, 4);
        cArr[8] = '-';
        int i2 = (int) mostSignificantBits2;
        q(cArr, i2 >>> 16, 9);
        cArr[13] = '-';
        q(cArr, i2, 14);
        cArr[18] = '-';
        long leastSignificantBits2 = uuid.getLeastSignificantBits();
        q(cArr, (int) (leastSignificantBits2 >>> 48), 19);
        cArr[23] = '-';
        q(cArr, (int) (leastSignificantBits2 >>> 32), 24);
        int i3 = (int) leastSignificantBits2;
        q(cArr, i3 >> 16, 28);
        q(cArr, i3, 32);
        fk4Var.c0(cArr, 0, 36);
    }
}
