package defpackage;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class y0 implements b0, wv2 {
    @Override // defpackage.b0
    public abstract q1 d();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b0) {
            return d().s(((b0) obj).d());
        }
        return false;
    }

    @Override // defpackage.wv2
    public final byte[] getEncoded() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        d().l(new m1(byteArrayOutputStream), true);
        return byteArrayOutputStream.toByteArray();
    }

    public int hashCode() {
        return d().hashCode();
    }

    public final byte[] i() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new r82(byteArrayOutputStream).o(d());
        return byteArrayOutputStream.toByteArray();
    }
}
