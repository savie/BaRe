package com.l4digital.fastscroll;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.recyclerview.widget.a;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import defpackage.a9;
import defpackage.c6;
import defpackage.dl8;
import defpackage.dt1;
import defpackage.fa1;
import defpackage.hw1;
import defpackage.k53;
import defpackage.m53;
import defpackage.nt1;
import defpackage.o53;
import defpackage.p53;
import defpackage.q53;
import defpackage.q91;
import defpackage.ud6;
import defpackage.v7;
import defpackage.vk9;
import defpackage.yc;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class FastScroller extends LinearLayout {
    public q53 G;
    public SwipeRefreshLayout H;
    public TextView I;
    public View J;
    public ViewPropertyAnimator K;
    public ViewPropertyAnimator L;
    public o53 M;
    public p53 N;
    public final Runnable O;
    public final k53 P;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public boolean f;
    public boolean k;
    public boolean n;
    public Drawable p;
    public Drawable q;
    public Drawable r;
    public ImageView t;
    public ImageView x;
    public RecyclerView y;

    public FastScroller(Context context, q53 q53Var) {
        super(context);
        this.O = new yc(this, 1);
        this.P = new k53(this);
        i(context, null, q53Var);
        setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
    }

    public static void a(FastScroller fastScroller) {
        fastScroller.h();
        fastScroller.K = fastScroller.J.animate().translationX(fastScroller.getResources().getDimensionPixelSize(R.dimen.fastscroll_scrollbar_padding_end)).alpha(0.0f).setDuration(300L).setListener(new q91(fastScroller, 2));
    }

    private void setHandleSelected(boolean z) {
        this.t.setSelected(z);
        this.q.setTint(z ? this.a : this.b);
    }

    private void setRecyclerViewPosition(float f) {
        p53 p53Var;
        RecyclerView recyclerView = this.y;
        if (recyclerView == null || recyclerView.getLayoutManager() == null) {
            return;
        }
        int iF = f(f);
        this.y.getLayoutManager().D0(iF);
        if (!this.k || (p53Var = this.N) == null) {
            return;
        }
        this.I.setText(p53Var.a(iF));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setViewPositions(float f) {
        this.c = this.I.getMeasuredHeight();
        int measuredHeight = this.t.getMeasuredHeight();
        this.d = measuredHeight;
        int i = this.e;
        int i2 = this.c;
        int iMin = Math.min(Math.max(0, (int) (f - i2)), (i - i2) - (measuredHeight / 2));
        int i3 = this.e;
        int i4 = this.d;
        int iMin2 = Math.min(Math.max(0, (int) (f - (i4 / 2))), i3 - i4);
        if (this.k) {
            this.I.setY(iMin);
        }
        this.t.setY(iMin2);
    }

    public final void d(RecyclerView recyclerView) {
        this.y = recyclerView;
        if (getParent() instanceof ViewGroup) {
            setLayoutParams((ViewGroup) getParent());
        } else if (recyclerView.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) recyclerView.getParent();
            viewGroup.addView(this);
            setLayoutParams(viewGroup);
        }
        recyclerView.i(this.P);
        post(new a9(this, 5));
    }

    public final void e() {
        RecyclerView recyclerView = this.y;
        if (recyclerView != null) {
            ArrayList arrayList = recyclerView.z0;
            if (arrayList != null) {
                arrayList.remove(this.P);
            }
            this.y = null;
        }
    }

    public final int f(float f) {
        boolean z;
        RecyclerView recyclerView = this.y;
        if (recyclerView == null || recyclerView.getAdapter() == null || this.y.getLayoutManager() == null) {
            return 0;
        }
        int iB = this.y.getAdapter().b();
        float f2 = 0.0f;
        if (this.t.getY() != 0.0f) {
            float y = this.t.getY() + this.d;
            int i = this.e;
            f2 = y >= ((float) (i + (-5))) ? 1.0f : f / i;
        }
        int iRound = Math.round(f2 * iB);
        a layoutManager = this.y.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            z = ((LinearLayoutManager) layoutManager).L;
        } else {
            z = layoutManager instanceof StaggeredGridLayoutManager ? ((StaggeredGridLayoutManager) layoutManager).O : false;
        }
        if (z) {
            iRound = iB - iRound;
        }
        return Math.min(Math.max(0, iRound), iB - 1);
    }

    public final float g(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return 0.0f;
        }
        int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        int iComputeVerticalScrollRange = recyclerView.computeVerticalScrollRange();
        int i = this.e;
        float f = iComputeVerticalScrollRange - i;
        float f2 = iComputeVerticalScrollOffset;
        if (f <= 0.0f) {
            f = 1.0f;
        }
        return i * (f2 / f);
    }

    public final void h() {
        TextView textView = this.I;
        if (textView == null || textView.getVisibility() != 0) {
            return;
        }
        this.L = this.I.animate().alpha(0.0f).setDuration(100L).setListener(new v7(this, 2));
    }

    public final void i(Context context, AttributeSet attributeSet, q53 q53Var) {
        boolean z;
        boolean z2;
        float dimension;
        boolean z3;
        boolean z4;
        TypedArray typedArrayObtainStyledAttributes;
        View.inflate(context, R.layout.fast_scroller, this);
        setClipChildren(false);
        setOrientation(0);
        this.I = (TextView) findViewById(R.id.fastscroll_bubble);
        this.t = (ImageView) findViewById(R.id.fastscroll_handle);
        this.x = (ImageView) findViewById(R.id.fastscroll_track);
        this.J = findViewById(R.id.fastscroll_scrollbar);
        this.G = q53Var;
        float dimension2 = getResources().getDimension(q53Var.b);
        int color = -7829368;
        int color2 = -12303292;
        int color3 = -3355444;
        int color4 = -1;
        if (attributeSet == null || (typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ud6.a, 0, 0)) == null) {
            z = false;
            z2 = false;
            dimension = dimension2;
            z3 = true;
            z4 = true;
        } else {
            try {
                color = typedArrayObtainStyledAttributes.getColor(0, -7829368);
                color2 = typedArrayObtainStyledAttributes.getColor(4, -12303292);
                color3 = typedArrayObtainStyledAttributes.getColor(9, -3355444);
                color4 = typedArrayObtainStyledAttributes.getColor(2, -1);
                z3 = typedArrayObtainStyledAttributes.getBoolean(5, true);
                z4 = typedArrayObtainStyledAttributes.getBoolean(6, true);
                z = typedArrayObtainStyledAttributes.getBoolean(7, false);
                z2 = typedArrayObtainStyledAttributes.getBoolean(8, false);
                int i = typedArrayObtainStyledAttributes.getInt(1, q53Var.ordinal());
                this.G = (i < 0 || i >= q53.values().length) ? q53.NORMAL : q53.values()[i];
                dimension = typedArrayObtainStyledAttributes.getDimension(3, getResources().getDimension(this.G.b));
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        setTrackColor(color3);
        setHandleColor(color2);
        setBubbleColor(color);
        setBubbleTextColor(color4);
        setHideScrollbar(z3);
        this.k = z4;
        this.n = z4 && z;
        setTrackVisible(z2);
        this.I.setTextSize(0, dimension);
    }

    public final void j() {
        TextView textView = this.I;
        if (textView == null || textView.getVisibility() != 0) {
            this.I.setVisibility(0);
            this.L = this.I.animate().alpha(1.0f).setDuration(100L).setListener(new fa1(1));
        }
    }

    public final void k() {
        if (this.y.computeVerticalScrollRange() - this.e > 0) {
            this.J.setTranslationX(getResources().getDimensionPixelSize(R.dimen.fastscroll_scrollbar_padding_end));
            this.J.setVisibility(0);
            this.K = this.J.animate().translationX(0.0f).alpha(1.0f).setDuration(300L).setListener(new m53());
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.e = i2;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        Runnable runnable = this.O;
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        return super.onTouchEvent(motionEvent);
                    }
                }
            }
            requestDisallowInterceptTouchEvent(false);
            setHandleSelected(false);
            if (this.f) {
                getHandler().postDelayed(runnable, 1000L);
            }
            if (!this.n) {
                h();
            }
            o53 o53Var = this.M;
            if (o53Var != null) {
                AppListActivity appListActivity = (AppListActivity) ((vk9) o53Var).b;
                int i = AppListActivity.q0;
                appListActivity.o0().setEnabled(true);
            }
            return true;
        }
        float x = motionEvent.getX();
        float x2 = this.t.getX();
        View view = this.J;
        WeakHashMap weakHashMap = dl8.a;
        if (x < x2 - view.getPaddingStart()) {
            return false;
        }
        requestDisallowInterceptTouchEvent(true);
        setHandleSelected(true);
        getHandler().removeCallbacks(runnable);
        ViewPropertyAnimator viewPropertyAnimator = this.K;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        ViewPropertyAnimator viewPropertyAnimator2 = this.L;
        if (viewPropertyAnimator2 != null) {
            viewPropertyAnimator2.cancel();
        }
        View view2 = this.J;
        if (view2 == null || view2.getVisibility() != 0) {
            k();
        }
        if (this.k && this.N != null) {
            j();
        }
        o53 o53Var2 = this.M;
        if (o53Var2 != null) {
            AppListActivity appListActivity2 = (AppListActivity) ((vk9) o53Var2).b;
            int i2 = AppListActivity.q0;
            appListActivity2.o0().setEnabled(false);
        }
        float y = motionEvent.getY();
        setViewPositions(y);
        setRecyclerViewPosition(y);
        return true;
    }

    public void setBubbleColor(int i) {
        Drawable drawable;
        this.a = i;
        if (this.p == null && (drawable = getContext().getDrawable(this.G.a)) != null) {
            this.p = drawable;
            drawable.mutate();
        }
        this.p.setTint(this.a);
        TextView textView = this.I;
        Drawable drawable2 = this.p;
        WeakHashMap weakHashMap = dl8.a;
        textView.setBackground(drawable2);
    }

    public void setBubbleTextColor(int i) {
        this.I.setTextColor(i);
    }

    public void setBubbleTextSize(int i) {
        this.I.setTextSize(i);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setVisibility(z ? 0 : 8);
    }

    public void setFastScrollListener(o53 o53Var) {
        this.M = o53Var;
    }

    public void setHandleColor(int i) {
        Drawable drawable;
        this.b = i;
        if (this.q == null && (drawable = getContext().getDrawable(R.drawable.fastscroll_handle)) != null) {
            this.q = drawable;
            drawable.mutate();
        }
        this.q.setTint(this.b);
        this.t.setImageDrawable(this.q);
    }

    public void setHideScrollbar(boolean z) {
        this.f = z;
        this.J.setVisibility(z ? 8 : 0);
    }

    public void setLayoutParams(ViewGroup viewGroup) {
        RecyclerView recyclerView = this.y;
        int id = recyclerView != null ? recyclerView.getId() : -1;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.fastscroll_scrollbar_margin_top);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.fastscroll_scrollbar_margin_bottom);
        if (id == -1) {
            c6.f("RecyclerView must have a view ID");
            return;
        }
        if (viewGroup instanceof ConstraintLayout) {
            nt1 nt1Var = new nt1();
            if (this.y.getParent() != getParent()) {
                id = 0;
            }
            int id2 = getId();
            ConstraintLayout constraintLayout = (ConstraintLayout) viewGroup;
            nt1Var.b(constraintLayout);
            nt1Var.c(id2, 3, id, 3);
            nt1Var.c(id2, 4, id, 4);
            nt1Var.c(id2, 7, id, 7);
            nt1Var.a(constraintLayout);
            constraintLayout.setConstraintSet(null);
            constraintLayout.requestLayout();
            dt1 dt1Var = (dt1) getLayoutParams();
            ((ViewGroup.MarginLayoutParams) dt1Var).height = 0;
            dt1Var.setMargins(0, dimensionPixelSize, 0, dimensionPixelSize2);
            setLayoutParams(dt1Var);
        } else if (viewGroup instanceof CoordinatorLayout) {
            hw1 hw1Var = (hw1) getLayoutParams();
            ((ViewGroup.MarginLayoutParams) hw1Var).height = -1;
            hw1Var.d = 8388613;
            hw1Var.l = null;
            hw1Var.k = null;
            hw1Var.f = id;
            hw1Var.setMargins(0, dimensionPixelSize, 0, dimensionPixelSize2);
            setLayoutParams(hw1Var);
        } else if (viewGroup instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
            layoutParams.height = -1;
            layoutParams.gravity = 8388613;
            layoutParams.setMargins(0, dimensionPixelSize, 0, dimensionPixelSize2);
            setLayoutParams(layoutParams);
        } else {
            if (!(viewGroup instanceof RelativeLayout)) {
                c6.f("Parent ViewGroup must be a ConstraintLayout, CoordinatorLayout, FrameLayout, or RelativeLayout");
                return;
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) getLayoutParams();
            layoutParams2.height = 0;
            layoutParams2.addRule(6, id);
            layoutParams2.addRule(8, id);
            layoutParams2.addRule(19, id);
            layoutParams2.setMargins(0, dimensionPixelSize, 0, dimensionPixelSize2);
            setLayoutParams(layoutParams2);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.I.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        this.c = this.I.getMeasuredHeight();
        this.t.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        this.d = this.t.getMeasuredHeight();
    }

    public void setSectionIndexer(p53 p53Var) {
        this.N = p53Var;
    }

    public void setSwipeRefreshLayout(SwipeRefreshLayout swipeRefreshLayout) {
        this.H = swipeRefreshLayout;
    }

    public void setTrackColor(int i) {
        Drawable drawable;
        if (this.r == null && (drawable = getContext().getDrawable(R.drawable.fastscroll_track)) != null) {
            this.r = drawable;
            drawable.mutate();
        }
        this.r.setTint(i);
        this.x.setImageDrawable(this.r);
    }

    public void setTrackVisible(boolean z) {
        this.x.setVisibility(z ? 0 : 8);
    }

    public FastScroller(Context context) {
        this(context, q53.NORMAL);
    }

    public FastScroller(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FastScroller(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.O = new yc(this, 1);
        this.P = new k53(this);
        i(context, attributeSet, q53.NORMAL);
        setLayoutParams(generateLayoutParams(attributeSet));
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        layoutParams.width = -2;
        super.setLayoutParams(layoutParams);
    }
}
