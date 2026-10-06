package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.dl8;
import defpackage.no;
import defpackage.u51;
import defpackage.v51;
import defpackage.x51;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CheckableImageButton extends no implements Checkable {
    public static final int[] n = {R.attr.state_checked};
    public boolean d;
    public boolean e;
    public boolean f;
    public v51 k;

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = true;
        this.f = true;
        dl8.n(this, new u51(this, 0));
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.d;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        return this.d ? View.mergeDrawableStates(super.onCreateDrawableState(i + 1), n) : super.onCreateDrawableState(i);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        this.k = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof x51)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        x51 x51Var = (x51) parcelable;
        super.onRestoreInstanceState(x51Var.a);
        setChecked(x51Var.c);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        x51 x51Var = new x51(super.onSaveInstanceState());
        x51Var.c = this.d;
        return x51Var;
    }

    public void setCheckable(boolean z) {
        if (this.e != z) {
            this.e = z;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!this.e || this.d == z) {
            return;
        }
        this.d = z;
        refreshDrawableState();
        sendAccessibilityEvent(RSAKeyGenerator.MIN_KEY_SIZE_BITS);
    }

    @Override // android.view.View
    public void setFocusable(boolean z) {
        v51 v51Var;
        boolean zIsFocusable = isFocusable();
        super.setFocusable(z);
        if (zIsFocusable == z || (v51Var = this.k) == null) {
            return;
        }
        v51Var.b();
    }

    public void setOnFocusableChangedListener(v51 v51Var) {
        this.k = v51Var;
    }

    public void setPressable(boolean z) {
        this.f = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.f) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.d);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.swiftapps.swiftbackup.R.attr.imageButtonStyle);
    }

    public CheckableImageButton(Context context) {
        this(context, null);
    }
}
