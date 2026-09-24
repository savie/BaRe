package defpackage;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class sp4 implements wv2 {
    public final int a;
    public final mp4 b;
    public final up4 c;
    public final byte[][] d;

    public sp4(int i, mp4 mp4Var, up4 up4Var, byte[][] bArr) {
        this.a = i;
        this.b = mp4Var;
        this.c = up4Var;
        this.d = bArr;
    }

    public static sp4 a(Object obj) throws Throwable {
        if (obj instanceof sp4) {
            return (sp4) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            int i = dataInputStream.readInt();
            mp4 mp4VarA = mp4.a(obj);
            up4 up4Var = (up4) up4.e.get(Integer.valueOf(dataInputStream.readInt()));
            int i2 = up4Var.c;
            byte[][] bArr = new byte[i2][];
            for (int i3 = 0; i3 < i2; i3++) {
                byte[] bArr2 = new byte[up4Var.b];
                bArr[i3] = bArr2;
                dataInputStream.readFully(bArr2);
            }
            return new sp4(i, mp4VarA, up4Var, bArr);
        }
        DataInputStream dataInputStream2 = null;
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return a(iz1.v((InputStream) obj));
            }
            g84.k(obj, "cannot parse ");
            return null;
        }
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                sp4 sp4VarA = a(dataInputStream3);
                dataInputStream3.close();
                return sp4VarA;
            } catch (Throwable th) {
                th = th;
                dataInputStream2 = dataInputStream3;
                if (dataInputStream2 != null) {
                    dataInputStream2.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0032, code lost:
    
        if (r1 != null) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            if (r3 != r4) goto L4
            r3 = 1
            return r3
        L4:
            r0 = 0
            if (r4 == 0) goto L3e
            java.lang.Class<sp4> r1 = defpackage.sp4.class
            java.lang.Class r2 = r4.getClass()
            if (r1 == r2) goto L10
            goto L3e
        L10:
            sp4 r4 = (defpackage.sp4) r4
            int r1 = r3.a
            int r2 = r4.a
            if (r1 == r2) goto L19
            goto L3e
        L19:
            mp4 r1 = r4.b
            mp4 r2 = r3.b
            if (r2 == 0) goto L26
            boolean r1 = r2.equals(r1)
            if (r1 != 0) goto L29
            goto L3e
        L26:
            if (r1 == 0) goto L29
            goto L3e
        L29:
            up4 r1 = r4.c
            up4 r2 = r3.c
            if (r2 == 0) goto L32
            if (r2 == r1) goto L35
            return r0
        L32:
            if (r1 == 0) goto L35
            goto L3e
        L35:
            byte[][] r3 = r3.d
            byte[][] r4 = r4.d
            boolean r3 = java.util.Arrays.deepEquals(r3, r4)
            return r3
        L3e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sp4.equals(java.lang.Object):boolean");
    }

    @Override // defpackage.wv2
    public final byte[] getEncoded() {
        ty3 ty3Var = new ty3(2);
        ByteArrayOutputStream byteArrayOutputStream = (ByteArrayOutputStream) ty3Var.a;
        ty3Var.g(this.a);
        ty3Var.b(this.b.getEncoded());
        ty3Var.g(this.c.a);
        try {
            for (byte[] bArr : this.d) {
                byteArrayOutputStream.write(bArr);
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            e6.i(e.getMessage(), e);
            return null;
        }
    }

    public final int hashCode() {
        int i = this.a * 31;
        mp4 mp4Var = this.b;
        int iHashCode = (i + (mp4Var != null ? mp4Var.hashCode() : 0)) * 31;
        up4 up4Var = this.c;
        return Arrays.deepHashCode(this.d) + ((iHashCode + (up4Var != null ? up4Var.hashCode() : 0)) * 31);
    }
}
