package defpackage;

import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.view.insets.ProtectionLayout;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ts2 extends ss2 {
    @Override // defpackage.rs2, defpackage.ps2
    public void b(mv7 mv7Var, mv7 mv7Var2, Window window, View view, boolean z, boolean z2) {
        mv7Var.getClass();
        mv7Var2.getClass();
        window.getClass();
        view.getClass();
        int i = 0;
        w13.r(window, false);
        window.setStatusBarColor(0);
        window.setNavigationBarColor(0);
        int iA = mv7Var.a(z);
        int iA2 = mv7Var2.a(z2);
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        if (viewGroup != null) {
            int i2 = 0;
            while (true) {
                if ((i2 < viewGroup.getChildCount() ? 1 : i) == 0) {
                    if (iA != 0 || iA2 != 0) {
                        List listA0 = fl1.A0(new ul1(2, iA), new ul1(1, iA2), new ul1(4, iA2), new ul1(8, iA2));
                        ProtectionLayout protectionLayout = new ProtectionLayout(((ViewGroup) view).getContext(), listA0);
                        protectionLayout.setTag(listA0);
                        viewGroup.addView(protectionLayout);
                        break;
                    }
                    break;
                }
                int i3 = i2 + 1;
                View childAt = viewGroup.getChildAt(i2);
                if (childAt == null) {
                    l0.a();
                    return;
                }
                Object tag = childAt.getTag();
                if (tag instanceof List) {
                    List list = (List) tag;
                    if (list.size() == 4 && (list.get(i) instanceof ul1)) {
                        for (Object obj : (Iterable) tag) {
                            if ((obj instanceof ul1 ? (ul1) obj : null) != null) {
                                ul1 ul1Var = (ul1) obj;
                                int i4 = ul1Var.a;
                                j96 j96Var = ul1Var.b;
                                ColorDrawable colorDrawable = ul1Var.f;
                                if (i4 == 1) {
                                    ul1Var.g = true;
                                    if (ul1Var.h != iA2) {
                                        ul1Var.h = iA2;
                                        colorDrawable.setColor(iA2);
                                        j96Var.e = colorDrawable;
                                        ro roVar = j96Var.i;
                                        if (roVar != null) {
                                            ((View) roVar.c).setBackground(colorDrawable);
                                        }
                                    }
                                } else if (i4 == 2) {
                                    ul1Var.g = true;
                                    if (ul1Var.h != iA) {
                                        ul1Var.h = iA;
                                        colorDrawable.setColor(iA);
                                        j96Var.e = colorDrawable;
                                        ro roVar2 = j96Var.i;
                                        if (roVar2 != null) {
                                            ((View) roVar2.c).setBackground(colorDrawable);
                                        }
                                    }
                                } else if (i4 == 4) {
                                    ul1Var.g = true;
                                    if (ul1Var.h != iA2) {
                                        ul1Var.h = iA2;
                                        colorDrawable.setColor(iA2);
                                        j96Var.e = colorDrawable;
                                        ro roVar3 = j96Var.i;
                                        if (roVar3 != null) {
                                            ((View) roVar3.c).setBackground(colorDrawable);
                                        }
                                    }
                                } else if (i4 == 8) {
                                    ul1Var.g = true;
                                    if (ul1Var.h != iA2) {
                                        ul1Var.h = iA2;
                                        colorDrawable.setColor(iA2);
                                        j96Var.e = colorDrawable;
                                        ro roVar4 = j96Var.i;
                                        if (roVar4 != null) {
                                            ((View) roVar4.c).setBackground(colorDrawable);
                                        }
                                    }
                                }
                            }
                        }
                        break;
                    }
                }
                i2 = i3;
                i = 0;
            }
        }
        window.setNavigationBarContrastEnforced(mv7Var2.c == 0);
        ge geVar = new ge(view);
        int i5 = Build.VERSION.SDK_INT;
        y13 xv8Var = i5 >= 35 ? new xv8(window, geVar) : i5 >= 30 ? new vv8(window, geVar) : new uv8(window, geVar);
        xv8Var.C(!z);
        xv8Var.B(!z2);
    }
}
