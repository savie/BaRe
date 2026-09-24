package defpackage;

import android.graphics.RectF;
import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jv7 extends ol1 {
    public final HashMap e;
    public final /* synthetic */ lv7 f;

    public jv7(lv7 lv7Var) {
        super(13, false);
        this.f = lv7Var;
        this.e = new HashMap();
    }

    @Override // defpackage.ol1
    public final tv8 A(tv8 tv8Var, List list) {
        ArrayList arrayList = this.f.b;
        RectF rectF = new RectF(1.0f, 1.0f, 1.0f, 1.0f);
        int i = 0;
        for (int size = list.size() - 1; size >= 0; size--) {
            yu8 yu8Var = (yu8) list.get(size);
            Integer num = (Integer) this.e.get(yu8Var);
            if (num != null) {
                int iIntValue = num.intValue();
                float fA = yu8Var.a.a();
                if ((iIntValue & 1) != 0) {
                    rectF.left = fA;
                }
                if ((iIntValue & 2) != 0) {
                    rectF.top = fA;
                }
                if ((iIntValue & 4) != 0) {
                    rectF.right = fA;
                }
                if ((iIntValue & 8) != 0) {
                    rectF.bottom = fA;
                }
                i |= iIntValue;
            }
        }
        vc4 vc4VarB = vc4.b(tv8Var.a.h(519), tv8Var.a.h(64));
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            k96 k96Var = (k96) arrayList.get(size2);
            vc4 vc4Var = k96Var.d;
            ArrayList arrayList2 = k96Var.a;
            for (int size3 = arrayList2.size() - 1; size3 >= 0; size3--) {
                ul1 ul1Var = (ul1) arrayList2.get(size3);
                int i2 = ul1Var.a;
                if ((i2 & i) != 0) {
                    j96 j96Var = ul1Var.b;
                    if (!j96Var.d) {
                        j96Var.d = true;
                        ro roVar = j96Var.i;
                        if (roVar != null) {
                            ((View) roVar.c).setVisibility(0);
                        }
                    }
                    if (i2 == 1) {
                        int i3 = vc4Var.a;
                        if (i3 > 0) {
                            ul1Var.b(vc4VarB.a / i3);
                        }
                        ul1Var.a(rectF.left);
                    } else if (i2 == 2) {
                        int i4 = vc4Var.b;
                        if (i4 > 0) {
                            ul1Var.b(vc4VarB.b / i4);
                        }
                        ul1Var.a(rectF.top);
                    } else if (i2 == 4) {
                        int i5 = vc4Var.c;
                        if (i5 > 0) {
                            ul1Var.b(vc4VarB.c / i5);
                        }
                        ul1Var.a(rectF.right);
                    } else if (i2 == 8) {
                        int i6 = vc4Var.d;
                        if (i6 > 0) {
                            ul1Var.b(vc4VarB.d / i6);
                        }
                        ul1Var.a(rectF.bottom);
                    }
                }
            }
        }
        return tv8Var;
    }

    @Override // defpackage.ol1
    public final l39 B(yu8 yu8Var, l39 l39Var) {
        if ((yu8Var.a.d() & 519) != 0) {
            vc4 vc4Var = (vc4) l39Var.c;
            vc4 vc4Var2 = (vc4) l39Var.b;
            int i = vc4Var.a != vc4Var2.a ? 1 : 0;
            if (vc4Var.b != vc4Var2.b) {
                i |= 2;
            }
            if (vc4Var.c != vc4Var2.c) {
                i |= 4;
            }
            if (vc4Var.d != vc4Var2.d) {
                i |= 8;
            }
            this.e.put(yu8Var, Integer.valueOf(i));
        }
        return l39Var;
    }

    @Override // defpackage.ol1
    public final void x(yu8 yu8Var) {
        ArrayList arrayList = this.f.b;
        if ((yu8Var.a.d() & 519) != 0) {
            this.e.remove(yu8Var);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                k96 k96Var = (k96) arrayList.get(size);
                int i = k96Var.e;
                boolean z = i > 0;
                int i2 = i - 1;
                k96Var.e = i2;
                if (z && i2 == 0) {
                    k96Var.c();
                }
            }
        }
    }

    @Override // defpackage.ol1
    public final void z(yu8 yu8Var) {
        ArrayList arrayList = this.f.b;
        if ((yu8Var.a.d() & 519) != 0) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((k96) arrayList.get(size)).e++;
            }
        }
    }
}
