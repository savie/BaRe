package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.Arrays;
import java.util.zip.ZipException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ww8 extends wv5 {
    public static final nz8 e = new nz8(23);
    public int d;

    public static void i(String str, int i, int i2, int i3) throws ZipException {
        if (i2 + i <= i3) {
            return;
        }
        StringBuilder sbV = dj7.v("Invalid X0017_StrongEncryptionHeader: ", str, TokenAuthenticationScheme.SCHEME_DELIMITER, i, " doesn't fit into ");
        sbV.append(i3);
        sbV.append(" bytes of data at position ");
        sbV.append(i2);
        throw new ZipException(sbV.toString());
    }

    @Override // defpackage.wv5, defpackage.yy8
    public final void c(byte[] bArr, int i, int i2) throws ZipException {
        super.c(bArr, i, i2);
        g(4, i2);
        int iJ = (int) wx3.j(bArr, i, 2);
        i("ivSize", iJ, 4, i2);
        int i3 = i + 4;
        g(i3, iJ);
        Arrays.copyOfRange(bArr, i3, iJ);
        int i4 = iJ + 16;
        g(i4, i2);
        int i5 = i + iJ;
        wx3.j(bArr, i5 + 6, 2);
        wx3.j(bArr, i5 + 10, 2);
        wx3.j(bArr, i5 + 12, 2);
        int iJ2 = (int) wx3.j(bArr, i5 + 14, 2);
        i("erdSize", iJ2, i4, i2);
        int i6 = i5 + 16;
        g(i6, iJ2);
        Arrays.copyOfRange(bArr, i6, iJ2);
        int i7 = iJ + 20 + iJ2;
        g(i7, i2);
        if (wx3.j(bArr, i6 + iJ2, 4) == 0) {
            g(i7 + 2, i2);
            int iJ3 = (int) wx3.j(bArr, i5 + 20 + iJ2, 2);
            i("vSize", iJ3, iJ + 22 + iJ2, i2);
            if (iJ3 < 4) {
                throw new ZipException(xs1.h(iJ3, "Invalid X0017_StrongEncryptionHeader: vSize ", " is too small to hold CRC"));
            }
            int i8 = i5 + 22 + iJ2;
            int i9 = iJ3 - 4;
            g(i8, i9);
            Arrays.copyOfRange(bArr, i8, i9);
            int i10 = (i8 + iJ3) - 4;
            g(i10, 4);
            Arrays.copyOfRange(bArr, i10, 4);
            return;
        }
        g(i7 + 6, i2);
        int i11 = i5 + 22 + iJ2;
        this.d = (int) wx3.j(bArr, i11, 2);
        int i12 = i5 + 24 + iJ2;
        int iJ4 = (int) wx3.j(bArr, i12, 2);
        if (iJ4 < this.d) {
            StringBuilder sbR = dj7.r(iJ4, "Invalid X0017_StrongEncryptionHeader: resize ", " is too small to hold hashSize");
            sbR.append(this.d);
            throw new ZipException(sbR.toString());
        }
        i("resize", iJ4, iJ + 24 + iJ2, i2);
        Arrays.copyOfRange(bArr, i12, this.d);
        int i13 = this.d;
        Arrays.copyOfRange(bArr, i12 + i13, iJ4 - i13);
        g(iJ + 26 + iJ2 + iJ4 + 2, i2);
        int iJ5 = (int) wx3.j(bArr, i5 + 26 + iJ2 + iJ4, 2);
        if (iJ5 < 4) {
            throw new ZipException(xs1.h(iJ5, "Invalid X0017_StrongEncryptionHeader: vSize ", " is too small to hold CRC"));
        }
        i("vSize", iJ5, iJ + 22 + iJ2 + iJ4, i2);
        int i14 = i11 + iJ4;
        Arrays.copyOfRange(bArr, i14, iJ5 - 4);
        Arrays.copyOfRange(bArr, (i14 + iJ5) - 4, 4);
    }

    @Override // defpackage.wv5, defpackage.yy8
    public final void h(byte[] bArr, int i, int i2) throws ZipException {
        super.h(bArr, i, i2);
        g(12, i2);
        wx3.j(bArr, i, 2);
        wx3.j(bArr, i + 4, 2);
        wx3.j(bArr, i + 6, 2);
        if (wx3.j(bArr, i + 8, 4) > 0) {
            g(16, i2);
            this.d = (int) wx3.j(bArr, i + 14, 2);
        }
    }
}
