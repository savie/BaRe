package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.a;
import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zo2 implements l98 {
    public final l98 b;
    public final boolean c;

    public zo2(l98 l98Var, boolean z) {
        this.b = l98Var;
        this.c = z;
    }

    @Override // defpackage.l98
    public final ll6 a(Context context, ll6 ll6Var, int i, int i2) {
        nr0 nr0Var = a.a(context).a;
        Drawable drawable = (Drawable) ll6Var.get();
        or0 or0VarK = sz8.k(nr0Var, drawable, i, i2);
        if (or0VarK == null) {
            if (!this.c) {
                return ll6Var;
            }
            d6.e(drawable, " to a Bitmap", "Unable to convert ");
            return null;
        }
        ll6 ll6VarA = this.b.a(context, or0VarK, i, i2);
        if (!ll6VarA.equals(or0VarK)) {
            return new qs4(context.getResources(), ll6VarA);
        }
        ll6VarA.b();
        return ll6Var;
    }

    @Override // defpackage.jo4
    public final void b(MessageDigest messageDigest) {
        this.b.b(messageDigest);
    }

    @Override // defpackage.jo4
    public final boolean equals(Object obj) {
        if (obj instanceof zo2) {
            return this.b.equals(((zo2) obj).b);
        }
        return false;
    }

    @Override // defpackage.jo4
    public final int hashCode() {
        return this.b.hashCode();
    }
}
