package defpackage;

import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h34 extends am8 {
    public g34 c;
    public OverScroller d;
    public boolean e;
    public int f;
    public int g;
    public int h;
    public VelocityTracker i;

    public final void A(CoordinatorLayout coordinatorLayout, View view, int i) {
        z(coordinatorLayout, view, i, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, Integer.MAX_VALUE);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0048  */
    /* JADX WARN: Code duplicated, block: B:35:0x007f  */
    /* JADX WARN: Code duplicated, block: B:37:0x008b  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a5  */
    @Override // defpackage.ew1
    public final boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int y;
        boolean z;
        OverScroller overScroller;
        View view2;
        int iFindPointerIndex;
        if (this.h < 0) {
            this.h = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.e) {
            int i = this.f;
            if (i != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i)) != -1) {
                int y2 = (int) motionEvent.getY(iFindPointerIndex);
                if (Math.abs(y2 - this.g) > this.h) {
                    this.g = y2;
                    return true;
                }
                if (motionEvent.getActionMasked() == 0) {
                    this.f = -1;
                    int x = (int) motionEvent.getX();
                    y = (int) motionEvent.getY();
                    WeakReference weakReference = ((AppBarLayout.BaseBehavior) this).n;
                    if (weakReference == null) {
                    }
                    this.e = z;
                    if (z) {
                        this.g = y;
                        this.f = motionEvent.getPointerId(0);
                        if (this.i == null) {
                            this.i = VelocityTracker.obtain();
                        }
                        overScroller = this.d;
                        if (overScroller != null) {
                            this.d.abortAnimation();
                            return true;
                        }
                    }
                }
                velocityTracker = this.i;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                }
            }
        } else {
            if (motionEvent.getActionMasked() == 0) {
                this.f = -1;
                int x2 = (int) motionEvent.getX();
                y = (int) motionEvent.getY();
                WeakReference weakReference2 = ((AppBarLayout.BaseBehavior) this).n;
                z = !(weakReference2 == null && ((view2 = (View) weakReference2.get()) == null || !view2.isShown() || view2.canScrollVertically(-1))) && coordinatorLayout.p(view, x2, y);
                this.e = z;
                if (z) {
                    this.g = y;
                    this.f = motionEvent.getPointerId(0);
                    if (this.i == null) {
                        this.i = VelocityTracker.obtain();
                    }
                    overScroller = this.d;
                    if (overScroller != null && !overScroller.isFinished()) {
                        this.d.abortAnimation();
                        return true;
                    }
                }
            }
            velocityTracker = this.i;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:42:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:45:0x00fd A[ADDED_TO_REGION] */
    @Override // defpackage.ew1
    public final boolean v(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z;
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f);
                if (iFindPointerIndex != -1) {
                    int y = (int) motionEvent.getY(iFindPointerIndex);
                    int i = this.g - y;
                    this.g = y;
                    AppBarLayout appBarLayout = (AppBarLayout) view;
                    z(coordinatorLayout, view, y() - i, appBarLayout.getTopInset() + (-appBarLayout.getDownNestedScrollRange()), 0);
                }
            }
            if (actionMasked != 3) {
                if (actionMasked == 6) {
                    int i2 = motionEvent.getActionIndex() == 0 ? 1 : 0;
                    this.f = motionEvent.getPointerId(i2);
                    this.g = (int) (motionEvent.getY(i2) + 0.5f);
                }
            }
            z = false;
            velocityTracker2 = this.i;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            return !this.e || z;
        }
        VelocityTracker velocityTracker3 = this.i;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
            this.i.computeCurrentVelocity(PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT);
            float yVelocity = this.i.getYVelocity(this.f);
            AppBarLayout appBarLayout2 = (AppBarLayout) view;
            int i3 = -appBarLayout2.getTotalScrollRange();
            Runnable runnable = this.c;
            if (runnable != null) {
                view.removeCallbacks(runnable);
                this.c = null;
            }
            if (this.d == null) {
                this.d = new OverScroller(view.getContext());
            }
            this.d.fling(0, w(), 0, Math.round(yVelocity), 0, 0, i3, 0);
            if (this.d.computeScrollOffset()) {
                g34 g34Var = new g34(this, coordinatorLayout, view);
                this.c = g34Var;
                view.postOnAnimation(g34Var);
            } else {
                ((AppBarLayout.BaseBehavior) this).G(coordinatorLayout, appBarLayout2);
                if (appBarLayout2.r) {
                    appBarLayout2.e(appBarLayout2.f(AppBarLayout.BaseBehavior.D(coordinatorLayout)), !appBarLayout2.n);
                }
            }
            z = true;
        }
        this.e = false;
        this.f = -1;
        velocityTracker = this.i;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.i = null;
        }
        velocityTracker2 = this.i;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (this.e) {
        }
        z = false;
        this.e = false;
        this.f = -1;
        velocityTracker = this.i;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.i = null;
        }
        velocityTracker2 = this.i;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (this.e) {
        }
    }

    public abstract int y();

    public abstract int z(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3);
}
