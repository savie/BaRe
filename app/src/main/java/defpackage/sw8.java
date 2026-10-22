package defpackage;

import java.nio.file.attribute.FileTime;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sw8 implements yy8 {
    public static final nz8 d = new nz8(10);
    public static final nz8 e = new nz8(1);
    public static final nz8 f = new nz8(24);
    public uy8 a;
    public uy8 b;
    public uy8 c;

    public sw8() {
        uy8 uy8Var = uy8.b;
        this.a = uy8Var;
        this.b = uy8Var;
        this.c = uy8Var;
    }

    public static FileTime g(uy8 uy8Var) {
        if (uy8Var == null || uy8.b.equals(uy8Var)) {
            return null;
        }
        return ha3.a(uy8Var.a);
    }

    @Override // defpackage.yy8
    public final nz8 a() {
        return d;
    }

    @Override // defpackage.yy8
    public final nz8 b() {
        return new nz8(32);
    }

    @Override // defpackage.yy8
    public final void c(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        int i4 = i + 4;
        while (i4 + 4 <= i3) {
            int i5 = i4 + 2;
            if (new nz8(bArr, i4).equals(e)) {
                if (i3 - i5 >= 26) {
                    if (f.equals(new nz8(bArr, i5))) {
                        this.a = new uy8(bArr, i4 + 4);
                        this.b = new uy8(bArr, i4 + 12);
                        this.c = new uy8(bArr, i4 + 20);
                        return;
                    }
                    return;
                }
                return;
            }
            i4 = new nz8(bArr, i5).a + 2 + i5;
        }
    }

    @Override // defpackage.yy8
    public final byte[] d() {
        byte[] bArr = new byte[32];
        System.arraycopy(e.a(), 0, bArr, 4, 2);
        System.arraycopy(f.a(), 0, bArr, 6, 2);
        System.arraycopy(this.a.a(), 0, bArr, 8, 8);
        System.arraycopy(this.b.a(), 0, bArr, 16, 8);
        System.arraycopy(this.c.a(), 0, bArr, 24, 8);
        return bArr;
    }

    @Override // defpackage.yy8
    public final byte[] e() {
        return d();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof sw8) {
            sw8 sw8Var = (sw8) obj;
            if (Objects.equals(this.a, sw8Var.a) && Objects.equals(this.b, sw8Var.b) && Objects.equals(this.c, sw8Var.c)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.yy8
    public final nz8 f() {
        return b();
    }

    @Override // defpackage.yy8
    public final void h(byte[] bArr, int i, int i2) {
        uy8 uy8Var = uy8.b;
        this.a = uy8Var;
        this.b = uy8Var;
        this.c = uy8Var;
        c(bArr, i, i2);
    }

    public final int hashCode() {
        uy8 uy8Var = this.a;
        int iHashCode = uy8Var != null ? (-123) ^ Long.hashCode(uy8Var.a) : -123;
        uy8 uy8Var2 = this.b;
        if (uy8Var2 != null) {
            iHashCode ^= Integer.rotateLeft(Long.hashCode(uy8Var2.a), 11);
        }
        uy8 uy8Var3 = this.c;
        return uy8Var3 != null ? Integer.rotateLeft(Long.hashCode(uy8Var3.a), 22) ^ iHashCode : iHashCode;
    }

    public final String toString() {
        return "0x000A Zip Extra Field: Modify:[" + g(this.a) + "]  Access:[" + g(this.b) + "]  Create:[" + g(this.c) + "] ";
    }
}
