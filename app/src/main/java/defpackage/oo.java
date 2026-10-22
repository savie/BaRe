package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oo {
    public final ImageView a;
    public n48 b;
    public int c = 0;

    public oo(ImageView imageView) {
        this.a = imageView;
    }

    public final void a() {
        n48 n48Var;
        ImageView imageView = this.a;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            fp2.a(drawable);
        }
        if (drawable == null || (n48Var = this.b) == null) {
            return;
        }
        jo.e(drawable, n48Var, imageView.getDrawableState());
    }

    public final void b(AttributeSet attributeSet, int i) {
        int resourceId;
        ImageView imageView = this.a;
        Context context = imageView.getContext();
        int[] iArr = ge6.f;
        u94 u94VarE = u94.e(i, 0, context, attributeSet, iArr);
        TypedArray typedArray = (TypedArray) u94VarE.b;
        dl8.m(imageView, imageView.getContext(), iArr, attributeSet, (TypedArray) u94VarE.b, i);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = iz1.m(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                fp2.a(drawable);
            }
            if (typedArray.hasValue(2)) {
                imageView.setImageTintList(u94VarE.a(2));
            }
            if (typedArray.hasValue(3)) {
                imageView.setImageTintMode(fp2.c(typedArray.getInt(3, -1), null));
            }
        } finally {
            u94VarE.f();
        }
    }

    public final void c(int i) {
        ImageView imageView = this.a;
        if (i != 0) {
            Drawable drawableM = iz1.m(imageView.getContext(), i);
            if (drawableM != null) {
                fp2.a(drawableM);
            }
            imageView.setImageDrawable(drawableM);
        } else {
            imageView.setImageDrawable(null);
        }
        a();
    }
}
