package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hn {
    public final CompoundButton a;
    public ColorStateList b = null;
    public PorterDuff.Mode c = null;
    public boolean d = false;
    public boolean e = false;
    public boolean f;

    public hn(CompoundButton compoundButton) {
        this.a = compoundButton;
    }

    public final void a() {
        CompoundButton compoundButton = this.a;
        Drawable buttonDrawable = compoundButton.getButtonDrawable();
        if (buttonDrawable != null) {
            if (this.d || this.e) {
                Drawable drawableMutate = buttonDrawable.mutate();
                if (this.d) {
                    drawableMutate.setTintList(this.b);
                }
                if (this.e) {
                    drawableMutate.setTintMode(this.c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(drawableMutate);
            }
        }
    }

    public final void b(AttributeSet attributeSet, int i) {
        int resourceId;
        int resourceId2;
        CompoundButton compoundButton = this.a;
        Context context = compoundButton.getContext();
        int[] iArr = ge6.m;
        u94 u94VarE = u94.e(i, 0, context, attributeSet, iArr);
        TypedArray typedArray = (TypedArray) u94VarE.b;
        dl8.m(compoundButton, compoundButton.getContext(), iArr, attributeSet, (TypedArray) u94VarE.b, i);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    compoundButton.setButtonDrawable(iz1.m(compoundButton.getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                    if (typedArray.hasValue(0)) {
                        compoundButton.setButtonDrawable(iz1.m(compoundButton.getContext(), resourceId));
                    }
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                compoundButton.setButtonDrawable(iz1.m(compoundButton.getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                compoundButton.setButtonTintList(u94VarE.a(2));
            }
            if (typedArray.hasValue(3)) {
                compoundButton.setButtonTintMode(fp2.c(typedArray.getInt(3, -1), null));
            }
        } finally {
            u94VarE.f();
        }
    }
}
