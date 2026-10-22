package defpackage;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bm0 extends Property {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bm0(Class cls, String str, int i) {
        super(cls, str);
        this.a = i;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.a) {
            case 0:
                ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) obj;
                int iAlpha = Color.alpha(extendedFloatingActionButton.getCurrentOriginalTextColor());
                return Float.valueOf(iAlpha != 0 ? Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / iAlpha : 0.0f);
            default:
                return Float.valueOf(((View) obj).getPaddingEnd());
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) obj;
                Float f = (Float) obj2;
                if (f.floatValue() != 1.0f) {
                    int currentOriginalTextColor = extendedFloatingActionButton.getCurrentOriginalTextColor();
                    extendedFloatingActionButton.z(ColorStateList.valueOf(xl1.g(currentOriginalTextColor, Math.round(ed.a(0.0f, Color.alpha(currentOriginalTextColor), f.floatValue())))));
                } else {
                    extendedFloatingActionButton.z(extendedFloatingActionButton.getOriginalTextColor());
                }
                break;
            default:
                View view = (View) obj;
                view.setPaddingRelative(view.getPaddingStart(), view.getPaddingTop(), ((Float) obj2).intValue(), view.getPaddingBottom());
                break;
        }
    }
}
