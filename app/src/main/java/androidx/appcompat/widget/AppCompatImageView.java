package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import defpackage.bn;
import defpackage.i28;
import defpackage.m48;
import defpackage.n48;
import defpackage.oo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AppCompatImageView extends ImageView {
    public final bn a;
    public final oo b;
    public boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m48.a(context);
        this.c = false;
        i28.a(getContext(), this);
        bn bnVar = new bn(this);
        this.a = bnVar;
        bnVar.d(attributeSet, i);
        oo ooVar = new oo(this);
        this.b = ooVar;
        ooVar.b(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        bn bnVar = this.a;
        if (bnVar != null) {
            bnVar.a();
        }
        oo ooVar = this.b;
        if (ooVar != null) {
            ooVar.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        bn bnVar = this.a;
        if (bnVar != null) {
            return bnVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        bn bnVar = this.a;
        if (bnVar != null) {
            return bnVar.c();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        n48 n48Var;
        oo ooVar = this.b;
        if (ooVar == null || (n48Var = ooVar.b) == null) {
            return null;
        }
        return n48Var.a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        n48 n48Var;
        oo ooVar = this.b;
        if (ooVar == null || (n48Var = ooVar.b) == null) {
            return null;
        }
        return n48Var.b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return !(this.b.a.getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        bn bnVar = this.a;
        if (bnVar != null) {
            bnVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        bn bnVar = this.a;
        if (bnVar != null) {
            bnVar.f(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        oo ooVar = this.b;
        if (ooVar != null) {
            ooVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        oo ooVar = this.b;
        if (ooVar != null && drawable != null && !this.c) {
            ooVar.c = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (ooVar != null) {
            ooVar.a();
            if (this.c) {
                return;
            }
            ImageView imageView = ooVar.a;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(ooVar.c);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i) {
        super.setImageLevel(i);
        this.c = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        oo ooVar = this.b;
        if (ooVar != null) {
            ooVar.c(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        oo ooVar = this.b;
        if (ooVar != null) {
            ooVar.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        bn bnVar = this.a;
        if (bnVar != null) {
            bnVar.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        bn bnVar = this.a;
        if (bnVar != null) {
            bnVar.i(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        oo ooVar = this.b;
        if (ooVar != null) {
            if (ooVar.b == null) {
                ooVar.b = new n48();
            }
            n48 n48Var = ooVar.b;
            n48Var.a = colorStateList;
            n48Var.d = true;
            ooVar.a();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        oo ooVar = this.b;
        if (ooVar != null) {
            if (ooVar.b == null) {
                ooVar.b = new n48();
            }
            n48 n48Var = ooVar.b;
            n48Var.b = mode;
            n48Var.c = true;
            ooVar.a();
        }
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(Context context) {
        this(context, null);
    }
}
