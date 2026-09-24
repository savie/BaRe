package org.swiftapps.swiftbackup.home.schedule.ui;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import defpackage.a37;
import defpackage.b37;
import defpackage.bt3;
import defpackage.c37;
import defpackage.e37;
import defpackage.ed;
import defpackage.fc5;
import defpackage.gv7;
import defpackage.h00;
import defpackage.h77;
import defpackage.hr2;
import defpackage.iz1;
import defpackage.jm1;
import defpackage.jx2;
import defpackage.ks7;
import defpackage.l0;
import defpackage.l73;
import defpackage.l90;
import defpackage.ly8;
import defpackage.me3;
import defpackage.mt3;
import defpackage.n55;
import defpackage.nf;
import defpackage.nl8;
import defpackage.pw5;
import defpackage.s88;
import defpackage.sh;
import defpackage.tu0;
import defpackage.w01;
import defpackage.w20;
import defpackage.x65;
import defpackage.yt5;
import defpackage.z85;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ScheduleFabMenuView extends FrameLayout {
    public static final Map K = x65.r0(new pw5(Integer.valueOf(R.id.action_by_quick_actions), ScheduleItem.Type.AppsQuickActions), new pw5(Integer.valueOf(R.id.action_by_labels), ScheduleItem.Type.AppsLabels), new pw5(Integer.valueOf(R.id.action_by_config), ScheduleItem.Type.AppConfig), new pw5(Integer.valueOf(R.id.action_messages), ScheduleItem.Type.Messages), new pw5(Integer.valueOf(R.id.action_call_logs), ScheduleItem.Type.CallLogs), new pw5(Integer.valueOf(R.id.action_folders), ScheduleItem.Type.Folders), new pw5(Integer.valueOf(R.id.action_walls), ScheduleItem.Type.Wallpapers), new pw5(Integer.valueOf(R.id.action_wifi), ScheduleItem.Type.Wifi));
    public a G;
    public AnimatedVectorDrawable H;
    public ValueAnimator I;
    public float J;
    public bt3 a;
    public mt3 b;
    public boolean c;
    public final ArrayList d;
    public final LayoutInflater e;
    public final gv7 f;
    public final View k;
    public final LinearLayout n;
    public final LinearLayout p;
    public final LinearLayout q;
    public final LinkedHashMap r;
    public final LinkedHashMap t;
    public final ExtendedFloatingActionButton x;
    public final ArgbEvaluator y;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum a {
        Main,
        Apps;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScheduleFabMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        this.d = new ArrayList();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        this.e = layoutInflaterFrom;
        this.f = new gv7(new n55(this, 5));
        View view = new View(context);
        view.setBackgroundColor(0);
        view.setClickable(true);
        view.setOnClickListener(new zf1(this, 7));
        view.setVisibility(8);
        this.k = view;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        linearLayout.setOrientation(1);
        linearLayout.setGravity(8388613);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        LinearLayout linearLayoutJ = j();
        this.n = linearLayoutJ;
        LinearLayout linearLayoutJ2 = j();
        this.p = linearLayoutJ2;
        LinearLayout linearLayoutJ3 = j();
        linearLayoutJ3.setVisibility(8);
        this.q = linearLayoutJ3;
        this.r = new LinkedHashMap();
        this.t = new LinkedHashMap();
        this.y = new ArgbEvaluator();
        this.G = a.Main;
        setClipChildren(false);
        setClipToPadding(false);
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(view);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388693);
        layoutParams.leftMargin = getFabMenuMargin();
        layoutParams.rightMargin = getFabMenuMargin();
        layoutParams.bottomMargin = getFabMenuMargin();
        linearLayout.setLayoutParams(layoutParams);
        addView(linearLayout);
        linearLayoutJ.setVisibility(8);
        linearLayoutJ.addView(linearLayoutJ2);
        linearLayoutJ.addView(linearLayoutJ3);
        linearLayout.addView(linearLayoutJ);
        Context context2 = getContext();
        fc5 fc5Var = (fc5) new l90(context2, this).c;
        fc5Var.getClass();
        new ks7(context2).inflate(R.menu.menu_new_schedule, fc5Var);
        w20 w20Var = new w20(this, 21);
        int size = fc5Var.size();
        for (int i2 = 0; i2 < size; i2++) {
            w20Var.invoke(fc5Var.getItem(i2));
        }
        View viewInflate = layoutInflaterFrom.inflate(R.layout.schedule_fab_menu_toggle, (ViewGroup) linearLayout, false);
        viewInflate.getClass();
        ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) viewInflate;
        this.x = extendedFloatingActionButton;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = l(8);
        extendedFloatingActionButton.setLayoutParams(layoutParams2);
        extendedFloatingActionButton.setOnClickListener(new h00(this, 10));
        linearLayout.addView(extendedFloatingActionButton);
        q(false, false);
    }

    public static /* synthetic */ void c(ScheduleFabMenuView scheduleFabMenuView, boolean z, boolean z2, a37 a37Var, int i) {
        List<View> activeMenuItems = scheduleFabMenuView.getActiveMenuItems();
        if ((i & 8) != 0) {
            a37Var = null;
        }
        scheduleFabMenuView.b(z, z2, activeMenuItems, a37Var);
    }

    private final List<View> getActiveMenuItems() {
        return h77.C0(new me3(new nl8(this.G == a.Apps ? this.q : this.p), true, new sh(10)));
    }

    private final int getFabMenuMargin() {
        return ((Number) this.f.getValue()).intValue();
    }

    public static b37 i(ScheduleFabMenuView scheduleFabMenuView, CharSequence charSequence, Integer num, Drawable drawable, boolean z, int i) {
        Drawable drawableMutate;
        Drawable drawableNewDrawable;
        Drawable drawableM = null;
        if ((i & 2) != 0) {
            num = null;
        }
        if ((i & 4) != 0) {
            drawable = null;
        }
        if ((i & 8) != 0) {
            z = false;
        }
        View viewInflate = scheduleFabMenuView.e.inflate(R.layout.schedule_fab_menu_item, (ViewGroup) scheduleFabMenuView, false);
        viewInflate.getClass();
        ViewGroup viewGroup = (ViewGroup) viewInflate;
        MaterialButton materialButton = (MaterialButton) viewGroup.findViewById(R.id.schedule_fab_menu_item_button);
        View viewFindViewById = viewGroup.findViewById(R.id.schedule_fab_menu_item_submenu_indicator);
        materialButton.setText(charSequence);
        materialButton.setContentDescription(charSequence);
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState == null || (drawableNewDrawable = constantState.newDrawable()) == null || (drawableMutate = drawableNewDrawable.mutate()) == null) {
                drawableMutate = drawable.mutate();
                drawableMutate.getClass();
            }
            drawableM = drawableMutate;
        } else if (num != null) {
            drawableM = iz1.m(scheduleFabMenuView.getContext(), num.intValue());
        }
        materialButton.setIcon(drawableM);
        materialButton.setElevation(0.0f);
        viewFindViewById.setVisibility(z ? 0 : 8);
        if (z) {
            materialButton.setPaddingRelative(scheduleFabMenuView.l(24), materialButton.getPaddingTop(), scheduleFabMenuView.l(56), materialButton.getPaddingBottom());
        }
        return new b37(viewGroup, materialButton, viewFindViewById);
    }

    public final void a(LinearLayout linearLayout, b37 b37Var) {
        View view = b37Var.a;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, l(56));
        layoutParams.gravity = 8388613;
        if (linearLayout.getChildCount() != 0) {
            layoutParams.topMargin = l(4);
        }
        view.setLayoutParams(layoutParams);
        linearLayout.addView(view);
    }

    public final void b(boolean z, boolean z2, List list, bt3 bt3Var) {
        if (!z2 || list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                View view = (View) it.next();
                view.setAlpha(view.isEnabled() ? 1.0f : 0.5f);
                view.setClipBounds(null);
            }
            if (bt3Var != null) {
                bt3Var.invoke();
                return;
            }
            return;
        }
        if (z) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                View view2 = (View) it2.next();
                view2.setAlpha(0.0f);
                view2.setClipBounds(new Rect(0, 0, 0, 0));
            }
        }
        LinearLayout linearLayout = this.n;
        yt5.a(linearLayout, new c37(linearLayout, z, list, this, bt3Var));
    }

    public final void d(a aVar) {
        h();
        this.G = aVar;
        this.p.setVisibility(aVar == a.Main ? 0 : 8);
        this.q.setVisibility(aVar == a.Apps ? 0 : 8);
    }

    public final void e(float f) {
        float fG = l73.g(f, 0.0f, 1.0f);
        this.J = fG;
        int iM = m(fG, R.attr.colorPrimaryContainer, R.attr.colorPrimary);
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(m(this.J, R.attr.colorOnPrimaryContainer, R.attr.colorOnPrimary));
        colorStateListValueOf.getClass();
        ColorStateList colorStateListValueOf2 = ColorStateList.valueOf(iM);
        ExtendedFloatingActionButton extendedFloatingActionButton = this.x;
        extendedFloatingActionButton.setBackgroundTintList(colorStateListValueOf2);
        extendedFloatingActionButton.setIconTint(colorStateListValueOf);
        extendedFloatingActionButton.setTextColor(colorStateListValueOf);
        extendedFloatingActionButton.setRippleColor(colorStateListValueOf);
    }

    public final void f() {
        g();
        ArrayList<Animator> arrayList = this.d;
        for (Animator animator : arrayList) {
            animator.removeAllListeners();
            animator.cancel();
        }
        arrayList.clear();
        h();
    }

    public final void g() {
        ValueAnimator valueAnimator = this.I;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
        }
        ValueAnimator valueAnimator2 = this.I;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        this.I = null;
    }

    public final mt3 getOnActionClick() {
        return this.b;
    }

    public final bt3 getOnBeforeExpand() {
        return this.a;
    }

    public final void h() {
        int i = 0;
        while (true) {
            LinearLayout linearLayout = this.p;
            float f = 0.5f;
            if (i < linearLayout.getChildCount()) {
                int i2 = i + 1;
                View childAt = linearLayout.getChildAt(i);
                if (childAt == null) {
                    l0.a();
                    return;
                }
                if (childAt.isEnabled()) {
                    f = 1.0f;
                }
                childAt.setAlpha(f);
                childAt.setClipBounds(null);
                i = i2;
            } else {
                int i3 = 0;
                while (true) {
                    LinearLayout linearLayout2 = this.q;
                    if (!(i3 < linearLayout2.getChildCount())) {
                        return;
                    }
                    int i4 = i3 + 1;
                    View childAt2 = linearLayout2.getChildAt(i3);
                    if (childAt2 == null) {
                        l0.a();
                        return;
                    } else {
                        childAt2.setAlpha(childAt2.isEnabled() ? 1.0f : 0.5f);
                        childAt2.setClipBounds(null);
                        i3 = i4;
                    }
                }
            }
        }
    }

    public final LinearLayout j() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        linearLayout.setOrientation(1);
        linearLayout.setGravity(8388613);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        return linearLayout;
    }

    public final void k(LinearLayout linearLayout, MenuItem menuItem, boolean z, bt3 bt3Var) {
        CharSequence title = menuItem.getTitle();
        if (title == null) {
            title = "";
        }
        CharSequence charSequence = title;
        this.t.put(Integer.valueOf(menuItem.getItemId()), charSequence);
        b37 b37VarI = i(this, charSequence, null, menuItem.getIcon(), z, 2);
        b37VarI.a.setId(menuItem.getItemId());
        b37VarI.b.setOnClickListener(new nf(bt3Var, 10));
        this.r.put(Integer.valueOf(menuItem.getItemId()), b37VarI);
        a(linearLayout, b37VarI);
    }

    public final int l(int i) {
        return tu0.v(i * getResources().getDisplayMetrics().density);
    }

    public final int m(float f, int i, int i2) {
        Object objEvaluate = this.y.evaluate(f, Integer.valueOf(z85.C(getContext(), jm1.U(this, i))), Integer.valueOf(z85.C(getContext(), jm1.U(this, i2))));
        objEvaluate.getClass();
        return ((Integer) objEvaluate).intValue();
    }

    public final void n(int i, boolean z) {
        b37 b37Var = (b37) this.r.get(Integer.valueOf(i));
        if (b37Var != null) {
            b37Var.a.setVisibility(z ? 0 : 8);
        }
    }

    public final void o(boolean z, boolean z2) {
        bt3 bt3Var;
        if (!z || this.c || (bt3Var = this.a) == null || ((Boolean) bt3Var.invoke()).booleanValue()) {
            int i = z ? 0 : 8;
            boolean z3 = this.c;
            View view = this.k;
            LinearLayout linearLayout = this.n;
            if (z == z3 && linearLayout.getVisibility() == i) {
                view.setVisibility(z ? 0 : 8);
                q(z, false);
                return;
            }
            f();
            this.c = z;
            if (z) {
                view.setVisibility(0);
                p(a.Main, false);
                linearLayout.setVisibility(0);
                c(this, true, z2, null, 12);
            } else if (z2) {
                c(this, false, true, new a37(this, 0), 4);
            } else {
                linearLayout.setVisibility(8);
                p(a.Main, false);
                view.setVisibility(8);
            }
            String string = getContext().getString(z ? R.string.close : R.string.new_schedule);
            string.getClass();
            ExtendedFloatingActionButton extendedFloatingActionButton = this.x;
            extendedFloatingActionButton.setContentDescription(string);
            s88.a(extendedFloatingActionButton, string);
            q(z, z2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        f();
        super.onDetachedFromWindow();
    }

    public final void p(a aVar, boolean z) {
        if (aVar == this.G) {
            return;
        }
        if (z && this.n.getVisibility() == 0) {
            b(false, true, getActiveMenuItems(), new w01(14, this, aVar));
        } else {
            h();
            d(aVar);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void q(boolean z, boolean z2) {
        String string = getContext().getString(R.string.new_schedule);
        ExtendedFloatingActionButton extendedFloatingActionButton = this.x;
        extendedFloatingActionButton.setText(string);
        AnimatedVectorDrawable animatedVectorDrawable = this.H;
        int i = R.drawable.ic_plus;
        if (z2) {
            if (animatedVectorDrawable != null) {
                animatedVectorDrawable.stop();
            }
            Drawable drawable = getContext().getDrawable(z ? R.drawable.avd_schedule_fab_menu_plus_to_close : R.drawable.avd_schedule_fab_menu_close_to_plus);
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            AnimatedVectorDrawable animatedVectorDrawable2 = drawableMutate instanceof AnimatedVectorDrawable ? (AnimatedVectorDrawable) drawableMutate : null;
            this.H = animatedVectorDrawable2;
            if (animatedVectorDrawable2 == null) {
                if (z) {
                    i = R.drawable.ic_schedule_fab_menu_close;
                }
                extendedFloatingActionButton.setIconResource(i);
            } else {
                extendedFloatingActionButton.setIcon(animatedVectorDrawable2);
                animatedVectorDrawable2.start();
            }
        } else {
            if (animatedVectorDrawable != null) {
                animatedVectorDrawable.stop();
            }
            this.H = null;
            if (z) {
                i = R.drawable.ic_schedule_fab_menu_close;
            }
            extendedFloatingActionButton.setIconResource(i);
        }
        float f = z ? 1.0f : 0.0f;
        if (!z2) {
            g();
            e(f);
            extendedFloatingActionButton.setAnimationEnabled(false);
            extendedFloatingActionButton.setExtended(!z);
            extendedFloatingActionButton.setAnimationEnabled(true);
            return;
        }
        g();
        float f2 = this.J;
        if (f2 == f) {
            e(f);
        } else {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f);
            valueAnimatorOfFloat.setDuration(160L);
            valueAnimatorOfFloat.setInterpolator(ed.b);
            valueAnimatorOfFloat.addUpdateListener(new hr2(this, 1));
            valueAnimatorOfFloat.addListener(new e37(this, valueAnimatorOfFloat));
            valueAnimatorOfFloat.start();
            this.I = valueAnimatorOfFloat;
        }
        if (z) {
            extendedFloatingActionButton.y(2);
        } else {
            extendedFloatingActionButton.y(3);
        }
    }

    public final void setOnActionClick(mt3 mt3Var) {
        this.b = mt3Var;
    }

    public final void setOnBeforeExpand(bt3 bt3Var) {
        this.a = bt3Var;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ScheduleFabMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ScheduleFabMenuView(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ ScheduleFabMenuView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }
}
