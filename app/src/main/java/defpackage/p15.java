package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.a;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class p15 {
    public static void a(ImageView imageView) {
        d45 d45Var = d45.b;
        d45Var.getClass();
        MFirebaseUser mFirebaseUserA = d45.a();
        if (mFirebaseUserA == null || mFirebaseUserA.isAnonymous()) {
            Context context = imageView.getContext();
            context.getClass();
            imageView.setImageDrawable(Const.w(context, R.drawable.ic_user_default, sz8.x(context)));
            return;
        }
        d45Var.getClass();
        MFirebaseUser mFirebaseUserA2 = d45.a();
        if (mFirebaseUserA2 == null) {
            throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
        }
        String photoUrl = mFirebaseUserA2.getPhotoUrl();
        if (photoUrl != null) {
            yk6 yk6VarC = a.c(imageView.getContext());
            pk6 pk6VarD = yk6VarC.f(Drawable.class).D(uq7.T(photoUrl, "/s96", "/s256"));
            pk6VarD.getClass();
            ((pk6) ((pk6) pk6VarD.s(so2.b, new b71())).k()).B(imageView);
        }
    }
}
