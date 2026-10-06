package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import defpackage.bb9;
import defpackage.ed;
import defpackage.hw1;
import defpackage.ib;
import defpackage.l0;
import defpackage.lk;
import defpackage.n61;
import defpackage.ph5;
import defpackage.qh5;
import defpackage.s23;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {
    public final Rect c;
    public final RectF d;
    public final RectF e;
    public final int[] f;
    public float g;
    public float h;

    public FabTransformationBehavior() {
        this.c = new Rect();
        this.d = new RectF();
        this.e = new RectF();
        this.f = new int[2];
    }

    public static float B(ib ibVar, qh5 qh5Var, float f) {
        long j = qh5Var.a;
        long j2 = qh5Var.b;
        qh5 qh5VarF = ((ph5) ibVar.b).f("expansion");
        return ed.a(f, 0.0f, qh5Var.b().getInterpolation((((qh5VarF.a + qh5VarF.b) + 17) - j) / j2));
    }

    public static Pair y(float f, float f2, boolean z, ib ibVar) {
        qh5 qh5VarF;
        qh5 qh5VarF2;
        if (f == 0.0f || f2 == 0.0f) {
            qh5VarF = ((ph5) ibVar.b).f("translationXLinear");
            qh5VarF2 = ((ph5) ibVar.b).f("translationYLinear");
        } else if ((!z || f2 >= 0.0f) && (z || f2 <= 0.0f)) {
            qh5VarF = ((ph5) ibVar.b).f("translationXCurveDownwards");
            qh5VarF2 = ((ph5) ibVar.b).f("translationYCurveDownwards");
        } else {
            qh5VarF = ((ph5) ibVar.b).f("translationXCurveUpwards");
            qh5VarF2 = ((ph5) ibVar.b).f("translationYCurveUpwards");
        }
        return new Pair(qh5VarF, qh5VarF2);
    }

    public final float A(View view, View view2, lk lkVar) {
        RectF rectF = this.d;
        C(view, rectF);
        rectF.offset(this.g, this.h);
        RectF rectF2 = this.e;
        C(view2, rectF2);
        lkVar.getClass();
        return (rectF2.centerY() - rectF.centerY()) + 0.0f;
    }

    public final void C(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    public abstract ib D(Context context, boolean z);

    @Override // com.google.android.material.transformation.ExpandableBehavior, defpackage.ew1
    public final boolean f(View view, View view2) {
        int expandedComponentIdHint;
        if (view.getVisibility() != 8) {
            return (view2 instanceof FloatingActionButton) && ((expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint()) == 0 || expandedComponentIdHint == view.getId());
        }
        l0.e("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        return false;
    }

    @Override // defpackage.ew1
    public final void g(hw1 hw1Var) {
        if (hw1Var.h == 0) {
            hw1Var.h = 80;
        }
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    public final AnimatorSet x(View view, View view2, boolean z, boolean z2) {
        ObjectAnimator objectAnimatorOfFloat;
        int i;
        float f;
        ObjectAnimator objectAnimatorOfFloat2;
        ObjectAnimator objectAnimatorOfFloat3;
        ObjectAnimator objectAnimatorOfFloat4;
        ib ibVarD = D(view2.getContext(), z);
        if (z) {
            this.g = view.getTranslationX();
            this.h = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        float elevation = view2.getElevation() - view.getElevation();
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-elevation);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -elevation);
        }
        ((ph5) ibVarD.b).f("elevation").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        float fZ = z(view, view2, (lk) ibVarD.c);
        float fA = A(view, view2, (lk) ibVarD.c);
        Pair pairY = y(fZ, fA, z, ibVarD);
        qh5 qh5Var = (qh5) pairY.first;
        qh5 qh5Var2 = (qh5) pairY.second;
        RectF rectF = this.d;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-fZ);
                view2.setTranslationY(-fA);
            }
            i = 0;
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            f = 0.0f;
            objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            float fB = B(ibVarD, qh5Var, -fZ);
            float fB2 = B(ibVarD, qh5Var2, -fA);
            Rect rect = this.c;
            view2.getWindowVisibleDisplayFrame(rect);
            rectF.set(rect);
            RectF rectF2 = this.e;
            C(view2, rectF2);
            rectF2.offset(fB, fB2);
            rectF2.intersect(rectF);
            rectF.set(rectF2);
        } else {
            i = 0;
            f = 0.0f;
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fZ);
            objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fA);
        }
        qh5Var.a(objectAnimatorOfFloat2);
        qh5Var2.a(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat3);
        rectF.width();
        rectF.height();
        float fZ2 = z(view, view2, (lk) ibVarD.c);
        float fA2 = A(view, view2, (lk) ibVarD.c);
        Pair pairY2 = y(fZ2, fA2, z, ibVarD);
        qh5 qh5Var3 = (qh5) pairY2.first;
        qh5 qh5Var4 = (qh5) pairY2.second;
        Property property = View.TRANSLATION_X;
        if (!z) {
            fZ2 = this.g;
        }
        float[] fArr = new float[1];
        fArr[i] = fZ2;
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        if (!z) {
            fA2 = this.h;
        }
        float[] fArr2 = new float[1];
        fArr2[i] = fA2;
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        qh5Var3.a(objectAnimatorOfFloat5);
        qh5Var4.a(objectAnimatorOfFloat6);
        arrayList.add(objectAnimatorOfFloat5);
        arrayList.add(objectAnimatorOfFloat6);
        if (view2 instanceof ViewGroup) {
            View viewFindViewById = view2.findViewById(R.id.mtrl_child_content_container);
            ViewGroup viewGroup = viewFindViewById != null ? viewFindViewById instanceof ViewGroup ? (ViewGroup) viewFindViewById : null : (ViewGroup) view2;
            if (viewGroup != null) {
                if (z) {
                    if (!z2) {
                        n61.a.set(viewGroup, Float.valueOf(f));
                    }
                    n61 n61Var = n61.a;
                    float[] fArr3 = new float[1];
                    fArr3[i] = 1.0f;
                    objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(viewGroup, n61Var, fArr3);
                } else {
                    n61 n61Var2 = n61.a;
                    float[] fArr4 = new float[1];
                    fArr4[i] = f;
                    objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(viewGroup, n61Var2, fArr4);
                }
                ((ph5) ibVarD.b).f("contentFade").a(objectAnimatorOfFloat4);
                arrayList.add(objectAnimatorOfFloat4);
            }
        }
        AnimatorSet animatorSet = new AnimatorSet();
        bb9.G(animatorSet, arrayList);
        animatorSet.addListener(new s23(z, view2, view));
        int size = arrayList2.size();
        for (int i2 = i; i2 < size; i2++) {
            animatorSet.addListener((Animator.AnimatorListener) arrayList2.get(i2));
        }
        return animatorSet;
    }

    public final float z(View view, View view2, lk lkVar) {
        RectF rectF = this.d;
        C(view, rectF);
        rectF.offset(this.g, this.h);
        RectF rectF2 = this.e;
        C(view2, rectF2);
        lkVar.getClass();
        return (rectF2.centerX() - rectF.centerX()) + 0.0f;
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = new Rect();
        this.d = new RectF();
        this.e = new RectF();
        this.f = new int[2];
    }
}
