package defpackage;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ao8 {
    public final yn8 a;
    public final Bitmap b;

    public ao8(yn8 yn8Var, Bitmap bitmap) {
        this.a = yn8Var;
        this.b = bitmap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ao8)) {
            return false;
        }
        ao8 ao8Var = (ao8) obj;
        return this.a.equals(ao8Var.a) && this.b.equals(ao8Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "WallApplyData(wall=" + this.a + ", thumbBitmap=" + this.b + ")";
    }
}
