package defpackage;

import android.graphics.Bitmap;
import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ih3 extends pr0 {
    public static final byte[] b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(jo4.a);

    @Override // defpackage.jo4
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    @Override // defpackage.pr0
    public final Bitmap c(nr0 nr0Var, Bitmap bitmap, int i, int i2) {
        return n98.b(nr0Var, bitmap, i, i2);
    }

    @Override // defpackage.jo4
    public final boolean equals(Object obj) {
        return obj instanceof ih3;
    }

    @Override // defpackage.jo4
    public final int hashCode() {
        return 1572326941;
    }
}
