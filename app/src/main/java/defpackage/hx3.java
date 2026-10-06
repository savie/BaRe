package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.a;
import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hx3 implements l98 {
    public final l98 b;

    public hx3(l98 l98Var) {
        ms8.j(l98Var, "Argument must not be null");
        this.b = l98Var;
    }

    @Override // defpackage.l98
    public final ll6 a(Context context, ll6 ll6Var, int i, int i2) {
        fx3 fx3Var = (fx3) ll6Var.get();
        or0 or0Var = new or0(a.a(context).a, fx3Var.a.a.l);
        l98 l98Var = this.b;
        ll6 ll6VarA = l98Var.a(context, or0Var, i, i2);
        if (or0Var != ll6VarA) {
            or0Var.b();
        }
        fx3Var.a.a.c(l98Var, (Bitmap) ll6VarA.get());
        return ll6Var;
    }

    @Override // defpackage.jo4
    public final void b(MessageDigest messageDigest) {
        this.b.b(messageDigest);
    }

    @Override // defpackage.jo4
    public final boolean equals(Object obj) {
        if (obj instanceof hx3) {
            return this.b.equals(((hx3) obj).b);
        }
        return false;
    }

    @Override // defpackage.jo4
    public final int hashCode() {
        return this.b.hashCode();
    }
}
