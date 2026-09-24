package defpackage;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class mp4 implements wv2 {
    public final lp4 a;
    public final byte[] b;
    public final byte[] c;

    public mp4(lp4 lp4Var, byte[] bArr, byte[] bArr2) {
        this.a = lp4Var;
        this.b = bArr;
        this.c = bArr2;
    }

    public static mp4 a(Object obj) throws Throwable {
        if (obj instanceof mp4) {
            return (mp4) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            lp4 lp4Var = (lp4) lp4.g.get(Integer.valueOf(dataInputStream.readInt()));
            byte[] bArr = new byte[lp4Var.b];
            dataInputStream.readFully(bArr);
            byte[] bArr2 = new byte[lp4Var.d * lp4Var.b];
            dataInputStream.readFully(bArr2);
            return new mp4(lp4Var, bArr, bArr2);
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
                mp4 mp4VarA = a(dataInputStream3);
                dataInputStream3.close();
                return mp4VarA;
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

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && mp4.class == obj.getClass()) {
            mp4 mp4Var = (mp4) obj;
            lp4 lp4Var = mp4Var.a;
            lp4 lp4Var2 = this.a;
            if (lp4Var2 != null) {
                if (lp4Var2 != lp4Var) {
                    return false;
                }
            } else if (lp4Var == null) {
            }
            if (Arrays.equals(this.b, mp4Var.b)) {
                return Arrays.equals(this.c, mp4Var.c);
            }
        }
        return false;
    }

    @Override // defpackage.wv2
    public final byte[] getEncoded() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = this.a.a;
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write((byte) i);
        try {
            byteArrayOutputStream.write(this.b);
            byteArrayOutputStream.write(this.c);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            e6.i(e.getMessage(), e);
            return null;
        }
    }

    public final int hashCode() {
        lp4 lp4Var = this.a;
        int iHashCode = lp4Var != null ? lp4Var.hashCode() : 0;
        return Arrays.hashCode(this.c) + ((Arrays.hashCode(this.b) + (iHashCode * 31)) * 31);
    }
}
