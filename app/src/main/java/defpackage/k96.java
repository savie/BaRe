package defpackage;

import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k96 {
    public final ArrayList a = new ArrayList();
    public final lv7 b;
    public vc4 c;
    public vc4 d;
    public int e;
    public boolean f;

    public k96(lv7 lv7Var, ArrayList arrayList) {
        vc4 vc4Var = vc4.e;
        this.c = vc4Var;
        this.d = vc4Var;
        a(arrayList, false);
        a(arrayList, true);
        ArrayList arrayList2 = lv7Var.b;
        if (!arrayList2.contains(this)) {
            arrayList2.add(this);
            vc4 vc4Var2 = lv7Var.c;
            vc4 vc4Var3 = lv7Var.d;
            this.c = vc4Var2;
            this.d = vc4Var3;
            c();
            b(lv7Var.e);
        }
        this.b = lv7Var;
    }

    public final void a(List list, boolean z) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ul1 ul1Var = (ul1) list.get(i);
            ul1Var.getClass();
            if (true == z) {
                k96 k96Var = ul1Var.e;
                if (k96Var != null) {
                    throw new IllegalStateException(ul1Var + " (" + (i + 1) + "/" + size + ") is already controlled by " + k96Var + " but is still added to " + this);
                }
                ul1Var.e = this;
                this.a.add(ul1Var);
            }
        }
    }

    public final void b(int i) {
        ArrayList arrayList = this.a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ul1 ul1Var = (ul1) arrayList.get(size);
            if (!ul1Var.g) {
                ColorDrawable colorDrawable = ul1Var.f;
                if (ul1Var.h != i) {
                    ul1Var.h = i;
                    colorDrawable.setColor(i);
                    j96 j96Var = ul1Var.b;
                    j96Var.e = colorDrawable;
                    ro roVar = j96Var.i;
                    if (roVar != null) {
                        ((View) roVar.c).setBackground(colorDrawable);
                    }
                }
            }
        }
    }

    public final void c() {
        int i;
        vc4 vc4VarC;
        ArrayList arrayList = this.a;
        vc4 vc4Var = vc4.e;
        vc4 vc4VarA = vc4Var;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ul1 ul1Var = (ul1) arrayList.get(size);
            vc4 vc4Var2 = this.c;
            vc4 vc4Var3 = this.d;
            ul1Var.c = vc4Var2;
            j96 j96Var = ul1Var.b;
            ul1Var.d = vc4Var3;
            if (!j96Var.c.equals(vc4VarA)) {
                j96Var.c = vc4VarA;
                ro roVar = j96Var.i;
                if (roVar != null) {
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) roVar.b;
                    layoutParams.leftMargin = vc4VarA.a;
                    layoutParams.topMargin = vc4VarA.b;
                    layoutParams.rightMargin = vc4VarA.c;
                    layoutParams.bottomMargin = vc4VarA.d;
                    ((View) roVar.c).setLayoutParams(layoutParams);
                }
            }
            int i2 = ul1Var.a;
            if (i2 == 1) {
                i = ul1Var.c.a;
                int i3 = ul1Var.d.a;
                if (j96Var.a != i3) {
                    j96Var.a = i3;
                    ro roVar2 = j96Var.i;
                    if (roVar2 != null) {
                        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) roVar2.b;
                        layoutParams2.width = i3;
                        ((View) roVar2.c).setLayoutParams(layoutParams2);
                    }
                }
                vc4VarC = vc4.c(i, 0, 0, 0);
            } else if (i2 == 2) {
                i = ul1Var.c.b;
                int i4 = ul1Var.d.b;
                if (j96Var.b != i4) {
                    j96Var.b = i4;
                    ro roVar3 = j96Var.i;
                    if (roVar3 != null) {
                        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) roVar3.b;
                        layoutParams3.height = i4;
                        ((View) roVar3.c).setLayoutParams(layoutParams3);
                    }
                }
                vc4VarC = vc4.c(0, i, 0, 0);
            } else if (i2 == 4) {
                i = ul1Var.c.c;
                int i5 = ul1Var.d.c;
                if (j96Var.a != i5) {
                    j96Var.a = i5;
                    ro roVar4 = j96Var.i;
                    if (roVar4 != null) {
                        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) roVar4.b;
                        layoutParams4.width = i5;
                        ((View) roVar4.c).setLayoutParams(layoutParams4);
                    }
                }
                vc4VarC = vc4.c(0, 0, i, 0);
            } else if (i2 != 8) {
                vc4VarC = vc4Var;
                i = 0;
            } else {
                i = ul1Var.c.d;
                int i6 = ul1Var.d.d;
                if (j96Var.b != i6) {
                    j96Var.b = i6;
                    ro roVar5 = j96Var.i;
                    if (roVar5 != null) {
                        FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) roVar5.b;
                        layoutParams5.height = i6;
                        ((View) roVar5.c).setLayoutParams(layoutParams5);
                    }
                }
                vc4VarC = vc4.c(0, 0, 0, i);
            }
            boolean z = i > 0;
            if (j96Var.d != z) {
                j96Var.d = z;
                ro roVar6 = j96Var.i;
                if (roVar6 != null) {
                    ((View) roVar6.c).setVisibility(z ? 0 : 8);
                }
            }
            float f = 0.0f;
            ul1Var.a(i > 0 ? 1.0f : 0.0f);
            if (i > 0) {
                f = 1.0f;
            }
            ul1Var.b(f);
            vc4VarA = vc4.a(vc4VarA, vc4VarC);
        }
    }
}
