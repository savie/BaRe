package defpackage;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cu0 implements um8 {
    public boolean a;
    public final Object b;

    public cu0() {
        this.b = new HashMap(2);
    }

    public void a(ix7 ix7Var) {
        HashMap map = (HashMap) this.b;
        for (String str : ix7Var.b()) {
            if (!map.containsKey(str)) {
                map.put(str, ix7Var);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x008a  */
    @Override // defpackage.um8
    public tv8 o(View view, tv8 tv8Var, vm8 vm8Var) {
        boolean z;
        qv8 qv8Var = tv8Var.a;
        vc4 vc4VarH = qv8Var.h(519);
        vc4 vc4VarH2 = qv8Var.h(32);
        BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.b;
        boolean z2 = bottomSheetBehavior.p;
        int i = vc4VarH.b;
        int i2 = vc4VarH.c;
        int i3 = vc4VarH.a;
        bottomSheetBehavior.x = i;
        boolean z3 = true;
        boolean z4 = view.getLayoutDirection() == 1;
        int paddingBottom = view.getPaddingBottom();
        int paddingLeft = view.getPaddingLeft();
        int paddingRight = view.getPaddingRight();
        if (z2) {
            int iA = tv8Var.a();
            bottomSheetBehavior.w = iA;
            paddingBottom = iA + vm8Var.d;
        }
        if (bottomSheetBehavior.q) {
            paddingLeft = (z4 ? vm8Var.c : vm8Var.a) + i3;
        }
        if (bottomSheetBehavior.r) {
            paddingRight = (z4 ? vm8Var.a : vm8Var.c) + i2;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        if (!bottomSheetBehavior.t || marginLayoutParams.leftMargin == i3) {
            z = false;
        } else {
            marginLayoutParams.leftMargin = i3;
            z = true;
        }
        if (bottomSheetBehavior.u && marginLayoutParams.rightMargin != i2) {
            marginLayoutParams.rightMargin = i2;
            z = true;
        }
        if (bottomSheetBehavior.v) {
            int i4 = marginLayoutParams.topMargin;
            int i5 = vc4VarH.b;
            if (i4 != i5) {
                marginLayoutParams.topMargin = i5;
            } else {
                z3 = z;
            }
        } else {
            z3 = z;
        }
        if (z3) {
            view.setLayoutParams(marginLayoutParams);
        }
        view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
        boolean z5 = this.a;
        if (z5) {
            bottomSheetBehavior.n = vc4VarH2.d;
        }
        if (!z2 && !z5) {
            return tv8Var;
        }
        bottomSheetBehavior.S();
        return tv8Var;
    }

    public cu0(BottomSheetBehavior bottomSheetBehavior, boolean z) {
        this.b = bottomSheetBehavior;
        this.a = z;
    }
}
