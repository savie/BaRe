package defpackage;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class n24 extends op4 {
    public final int b;
    public final rp4 c;

    public n24(int i, rp4 rp4Var) {
        super(false);
        if (rp4Var == null) {
            f6.n("lmsPublicKey");
            throw null;
        }
        this.b = i;
        this.c = rp4Var;
    }

    public static n24 a(Object obj) {
        if (obj instanceof n24) {
            return (n24) obj;
        }
        if (obj instanceof DataInputStream) {
            return new n24(((DataInputStream) obj).readInt(), rp4.a(obj));
        }
        DataInputStream dataInputStream = null;
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return a(iz1.v((InputStream) obj));
            }
            g84.k(obj, "cannot parse ");
            return null;
        }
        try {
            DataInputStream dataInputStream2 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                n24 n24VarA = a(dataInputStream2);
                dataInputStream2.close();
                return n24VarA;
            } catch (Throwable th) {
                th = th;
                dataInputStream = dataInputStream2;
                if (dataInputStream != null) {
                    dataInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n24.class != obj.getClass()) {
            return false;
        }
        n24 n24Var = (n24) obj;
        if (this.b != n24Var.b) {
            return false;
        }
        return this.c.equals(n24Var.c);
    }

    @Override // defpackage.wv2
    public final byte[] getEncoded() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = this.b;
        byteArrayOutputStream.write((byte) (i >>> 24));
        byteArrayOutputStream.write((byte) (i >>> 16));
        byteArrayOutputStream.write((byte) (i >>> 8));
        byteArrayOutputStream.write((byte) i);
        try {
            byteArrayOutputStream.write(this.c.b());
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            e6.i(e.getMessage(), e);
            return null;
        }
    }

    public final int hashCode() {
        return this.c.hashCode() + (this.b * 31);
    }
}
