package defpackage;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lv7 {
    public final iv7 a;
    public final ArrayList b = new ArrayList();
    public vc4 c;
    public vc4 d;
    public int e;

    public lv7(ViewGroup viewGroup) {
        View childAt;
        vc4 vc4Var = vc4.e;
        this.c = vc4Var;
        this.d = vc4Var;
        Drawable background = viewGroup.getBackground();
        this.e = background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : 0;
        iv7 iv7Var = new iv7(this, viewGroup.getContext(), viewGroup);
        this.a = iv7Var;
        iv7Var.setVisibility(8);
        iv7Var.setWillNotDraw(true);
        hb hbVar = new hb(this, 6);
        WeakHashMap weakHashMap = dl8.a;
        uk8.c(iv7Var, hbVar);
        dl8.p(iv7Var, new jv7(this));
        int childCount = viewGroup.getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                childAt = null;
                break;
            }
            childAt = viewGroup.getChildAt(childCount);
            if (childAt.isAttachedToWindow() != viewGroup.isAttachedToWindow()) {
                break;
            } else {
                childCount--;
            }
        }
        if (childAt == null) {
            viewGroup.addView(iv7Var, 0);
        } else {
            childAt.addOnAttachStateChangeListener(new kv7(viewGroup, iv7Var));
        }
    }
}
