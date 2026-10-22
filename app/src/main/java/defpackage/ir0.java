package defpackage;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ir0 implements am6 {
    public final /* synthetic */ int a;
    public int b;
    public Object c;

    public ir0(int i) {
        this.a = i;
        switch (i) {
            case 1:
                this.b = 0;
                this.c = new StringBuilder();
                break;
            case 2:
                break;
            default:
                this.c = Bitmap.CompressFormat.JPEG;
                this.b = 100;
                break;
        }
    }

    public String a(int i, int i2) {
        if (i < 0) {
            l0.a();
            return null;
        }
        if (i2 > this.b) {
            l0.a();
            return null;
        }
        if (i > i2) {
            l0.a();
            return null;
        }
        while (i < i2 && tu0.o(((char[]) this.c)[i])) {
            i++;
        }
        while (i2 > i && tu0.o(((char[]) this.c)[i2 - 1])) {
            i2--;
        }
        return new String((char[]) this.c, i, i2 - i);
    }

    @Override // defpackage.am6
    public ll6 m(ll6 ll6Var, ou5 ou5Var) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ((Bitmap) ll6Var.get()).compress((Bitmap.CompressFormat) this.c, this.b, byteArrayOutputStream);
        ll6Var.b();
        return new jy0(byteArrayOutputStream.toByteArray());
    }

    public String toString() {
        switch (this.a) {
            case 2:
                return new String((char[]) this.c, 0, this.b);
            default:
                return super.toString();
        }
    }

    public ir0(lw4 lw4Var, int i) {
        this.a = 3;
        this.c = lw4Var;
        this.b = i;
    }
}
