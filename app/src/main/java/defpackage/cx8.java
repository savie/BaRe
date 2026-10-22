package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.Serializable;
import java.math.MathContext;
import java.nio.file.attribute.FileTime;
import java.util.Arrays;
import java.util.Date;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.zip.ZipException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cx8 implements yy8, Cloneable, Serializable {
    public static final nz8 n = new nz8(21589);
    public byte a;
    public boolean b;
    public boolean c;
    public boolean d;
    public lz8 e;
    public lz8 f;
    public lz8 k;

    public static lz8 i(FileTime fileTime) {
        MathContext mathContext = ha3.a;
        long j = fileTime.to(TimeUnit.SECONDS);
        if (-2147483648L <= j && j <= 2147483647L) {
            return new lz8(j);
        }
        c6.f(u48.l(j, "X5455 timestamps must fit in a signed 32 bit integer: "));
        return null;
    }

    public static Date k(lz8 lz8Var) {
        if (lz8Var != null) {
            return new Date(((long) ((int) lz8Var.a)) * 1000);
        }
        return null;
    }

    @Override // defpackage.yy8
    public final nz8 a() {
        return n;
    }

    @Override // defpackage.yy8
    public final nz8 b() {
        int i = 0;
        int i2 = (this.b ? 4 : 0) + 1 + ((!this.c || this.f == null) ? 0 : 4);
        if (this.d && this.k != null) {
            i = 4;
        }
        return new nz8(i2 + i);
    }

    @Override // defpackage.yy8
    public final void c(byte[] bArr, int i, int i2) throws ZipException {
        int i3;
        int i4;
        j((byte) 0);
        this.e = null;
        this.f = null;
        this.k = null;
        if (i2 < 1) {
            throw new ZipException(xs1.h(i2, "X5455_ExtendedTimestamp too short, only ", " bytes"));
        }
        int i5 = i2 + i;
        int i6 = i + 1;
        j(bArr[i]);
        if (!this.b || (i4 = i + 5) > i5) {
            this.b = false;
        } else {
            this.e = new lz8(bArr, i6);
            i6 = i4;
        }
        if (!this.c || (i3 = i6 + 4) > i5) {
            this.c = false;
        } else {
            this.f = new lz8(bArr, i6);
            i6 = i3;
        }
        if (!this.d || i6 + 4 > i5) {
            this.d = false;
        } else {
            this.k = new lz8(bArr, i6);
        }
    }

    public final Object clone() {
        return super.clone();
    }

    @Override // defpackage.yy8
    public final byte[] d() {
        lz8 lz8Var;
        lz8 lz8Var2;
        byte[] bArr = new byte[b().a];
        bArr[0] = 0;
        int i = 1;
        if (this.b) {
            bArr[0] = 1;
            System.arraycopy(lz8.a(this.e.a), 0, bArr, 1, 4);
            i = 5;
        }
        if (this.c && (lz8Var2 = this.f) != null) {
            bArr[0] = (byte) (bArr[0] | 2);
            System.arraycopy(lz8.a(lz8Var2.a), 0, bArr, i, 4);
            i += 4;
        }
        if (this.d && (lz8Var = this.k) != null) {
            bArr[0] = (byte) (bArr[0] | 4);
            System.arraycopy(lz8.a(lz8Var.a), 0, bArr, i, 4);
        }
        return bArr;
    }

    @Override // defpackage.yy8
    public final byte[] e() {
        return Arrays.copyOf(d(), f().a);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof cx8) {
            cx8 cx8Var = (cx8) obj;
            if ((this.a & 7) == (cx8Var.a & 7) && Objects.equals(this.e, cx8Var.e) && Objects.equals(this.f, cx8Var.f) && Objects.equals(this.k, cx8Var.k)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.yy8
    public final nz8 f() {
        return new nz8((this.b ? 4 : 0) + 1);
    }

    @Override // defpackage.yy8
    public final void h(byte[] bArr, int i, int i2) throws ZipException {
        j((byte) 0);
        this.e = null;
        this.f = null;
        this.k = null;
        c(bArr, i, i2);
    }

    public final int hashCode() {
        int iRotateLeft = (this.a & 7) * (-123);
        lz8 lz8Var = this.e;
        if (lz8Var != null) {
            iRotateLeft ^= (int) lz8Var.a;
        }
        lz8 lz8Var2 = this.f;
        if (lz8Var2 != null) {
            iRotateLeft ^= Integer.rotateLeft((int) lz8Var2.a, 11);
        }
        lz8 lz8Var3 = this.k;
        return lz8Var3 != null ? Integer.rotateLeft((int) lz8Var3.a, 22) ^ iRotateLeft : iRotateLeft;
    }

    public final void j(byte b) {
        this.a = b;
        this.b = (b & 1) == 1;
        this.c = (b & 2) == 2;
        this.d = (b & 4) == 4;
    }

    public final String toString() {
        lz8 lz8Var;
        lz8 lz8Var2;
        lz8 lz8Var3;
        StringBuilder sb = new StringBuilder("0x5455 Zip Extra Field: Flags=");
        sb.append(Integer.toBinaryString(pz8.e(this.a)));
        sb.append(TokenAuthenticationScheme.SCHEME_DELIMITER);
        if (this.b && (lz8Var3 = this.e) != null) {
            Date dateK = k(lz8Var3);
            sb.append(" Modify:[");
            sb.append(dateK);
            sb.append("] ");
        }
        if (this.c && (lz8Var2 = this.f) != null) {
            Date dateK2 = k(lz8Var2);
            sb.append(" Access:[");
            sb.append(dateK2);
            sb.append("] ");
        }
        if (this.d && (lz8Var = this.k) != null) {
            Date dateK3 = k(lz8Var);
            sb.append(" Create:[");
            sb.append(dateK3);
            sb.append("] ");
        }
        return sb.toString();
    }
}
