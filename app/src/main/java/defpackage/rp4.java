package defpackage;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class rp4 extends op4 {
    public final up4 b;
    public final lp4 c;
    public final byte[] d;
    public final byte[] e;

    public rp4(up4 up4Var, lp4 lp4Var, byte[] bArr, byte[] bArr2) {
        super(false);
        this.b = up4Var;
        this.c = lp4Var;
        this.d = ms8.k(bArr2);
        this.e = ms8.k(bArr);
    }

    public static rp4 a(Object obj) throws Throwable {
        if (obj instanceof rp4) {
            return (rp4) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            up4 up4Var = (up4) up4.e.get(Integer.valueOf(dataInputStream.readInt()));
            lp4 lp4Var = (lp4) lp4.g.get(Integer.valueOf(dataInputStream.readInt()));
            byte[] bArr = new byte[16];
            dataInputStream.readFully(bArr);
            byte[] bArr2 = new byte[up4Var.b];
            dataInputStream.readFully(bArr2);
            return new rp4(up4Var, lp4Var, bArr2, bArr);
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
                rp4 rp4VarA = a(dataInputStream3);
                dataInputStream3.close();
                return rp4VarA;
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

    public final byte[] b() {
        ty3 ty3Var = new ty3(2);
        ty3Var.g(this.b.a);
        ty3Var.g(this.c.a);
        ty3Var.b(this.d);
        ty3Var.b(this.e);
        return ((ByteArrayOutputStream) ty3Var.a).toByteArray();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || rp4.class != obj.getClass()) {
            return false;
        }
        rp4 rp4Var = (rp4) obj;
        if (this.b.equals(rp4Var.b) && this.c.equals(rp4Var.c) && Arrays.equals(this.d, rp4Var.d)) {
            return Arrays.equals(this.e, rp4Var.e);
        }
        return false;
    }

    @Override // defpackage.wv2
    public final byte[] getEncoded() {
        return b();
    }

    public final int hashCode() {
        return ms8.x(this.e) + ((ms8.x(this.d) + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31)) * 31);
    }
}
