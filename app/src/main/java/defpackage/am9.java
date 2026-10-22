package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class am9 extends rm9 {
    public final wk9 a;

    public am9(wk9 wk9Var) {
        this.a = wk9Var;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        rm9 rm9Var = (rm9) obj;
        int iZza = rm9Var.zza();
        int iC = rm9.c((byte) 64);
        if (iC != iZza) {
            return iC - rm9Var.zza();
        }
        wk9 wk9Var = ((am9) rm9Var).a;
        wk9 wk9Var2 = this.a;
        byte[] bArr = wk9Var2.b;
        int length = bArr.length;
        byte[] bArr2 = wk9Var.b;
        if (length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        return pk9.a.compare(wk9Var2.o(), wk9Var.o());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && am9.class == obj.getClass()) {
            return this.a.equals(((am9) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(rm9.c((byte) 64)), this.a});
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        pj9 pj9Var;
        int i;
        boolean z;
        sj9 sj9Var = bk9.d;
        bk9 sj9Var2 = sj9Var.c;
        if (sj9Var2 == null) {
            pj9 pj9Var2 = sj9Var.a;
            char[] cArr = pj9Var2.b;
            int i2 = 0;
            while (true) {
                if (i2 >= cArr.length) {
                    pj9Var = pj9Var2;
                    break;
                }
                char c = cArr[i2];
                if (c >= 'a' && c <= 'z') {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= cArr.length) {
                            z = false;
                            break;
                        }
                        char c2 = cArr[i3];
                        if (c2 >= 'A' && c2 <= 'Z') {
                            z = true;
                            break;
                        }
                        i3++;
                    }
                    if (!z) {
                        char[] cArr2 = new char[cArr.length];
                        for (int i4 = 0; i4 < cArr.length; i4++) {
                            char c3 = cArr[i4];
                            if (c3 >= 97 && c3 <= 122) {
                                c3 ^= 32;
                            }
                            cArr2[i4] = (char) c3;
                        }
                        pj9Var = new pj9(pj9Var2.a.concat(".upperCase()"), cArr2);
                        byte[] bArr = pj9Var.g;
                        if (!pj9Var2.h || pj9Var.h) {
                            break;
                            break;
                        }
                        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                        for (i = 65; i <= 90; i++) {
                            int i5 = i | 32;
                            byte b = bArr[i];
                            byte b2 = bArr[i5];
                            if (b == -1) {
                                bArrCopyOf[i] = b2;
                            } else {
                                char c4 = (char) i;
                                char c5 = (char) i5;
                                if (b2 != -1) {
                                    l0.e(xx3.C("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c4), Character.valueOf(c5)));
                                    return null;
                                }
                                bArrCopyOf[i5] = b;
                            }
                        }
                        pj9Var = new pj9(pj9Var.a.concat(".ignoreCase()"), pj9Var.b, bArrCopyOf, true);
                        break;
                    }
                    l0.e("Cannot call upperCase() on a mixed-case alphabet");
                    return null;
                }
                i2++;
            }
            sj9Var2 = pj9Var == pj9Var2 ? sj9Var : new sj9(pj9Var);
            sj9Var.c = sj9Var2;
        }
        byte[] bArrO = this.a.o();
        return eq3.k("h'", sj9Var2.c(bArrO, bArrO.length), "'");
    }

    @Override // defpackage.rm9
    public final int zza() {
        return rm9.c((byte) 64);
    }
}
