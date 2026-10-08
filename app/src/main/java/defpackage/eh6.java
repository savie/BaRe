package defpackage;

import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.jcraft.jsch.SftpATTRS;
import java.util.Arrays;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eh6 implements Runnable {
    public int a;
    public int b;
    public OverScroller c;
    public Interpolator d;
    public boolean e;
    public boolean f;
    public final /* synthetic */ RecyclerView k;

    public eh6(RecyclerView recyclerView) {
        this.k = recyclerView;
        gg6 gg6Var = RecyclerView.Z0;
        this.d = gg6Var;
        this.e = false;
        this.f = false;
        this.c = new OverScroller(recyclerView.getContext(), gg6Var);
    }

    public final void a(int i, int i2) {
        RecyclerView recyclerView = this.k;
        recyclerView.setScrollState(2);
        this.b = 0;
        this.a = 0;
        Interpolator interpolator = this.d;
        gg6 gg6Var = RecyclerView.Z0;
        if (interpolator != gg6Var) {
            this.d = gg6Var;
            this.c = new OverScroller(recyclerView.getContext(), gg6Var);
        }
        this.c.fling(0, 0, i, i2, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, Integer.MAX_VALUE, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, Integer.MAX_VALUE);
        b();
    }

    public final void b() {
        if (this.e) {
            this.f = true;
            return;
        }
        RecyclerView recyclerView = this.k;
        recyclerView.removeCallbacks(this);
        WeakHashMap weakHashMap = dl8.a;
        recyclerView.postOnAnimation(this);
    }

    public final void c(int i, int i2, int i3, Interpolator interpolator) {
        RecyclerView recyclerView = this.k;
        if (i3 == Integer.MIN_VALUE) {
            int iAbs = Math.abs(i);
            int iAbs2 = Math.abs(i2);
            boolean z = iAbs > iAbs2;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z) {
                iAbs = iAbs2;
            }
            i3 = Math.min((int) (((iAbs / width) + 1.0f) * 300.0f), 2000);
        }
        int i4 = i3;
        if (interpolator == null) {
            interpolator = RecyclerView.Z0;
        }
        if (this.d != interpolator) {
            this.d = interpolator;
            this.c = new OverScroller(recyclerView.getContext(), interpolator);
        }
        this.b = 0;
        this.a = 0;
        recyclerView.setScrollState(2);
        this.c.startScroll(0, 0, i, i2, i4);
        b();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        RecyclerView recyclerView = this.k;
        int[] iArr = recyclerView.J0;
        if (recyclerView.y == null) {
            recyclerView.removeCallbacks(this);
            this.c.abortAnimation();
            return;
        }
        this.f = false;
        this.e = true;
        recyclerView.o();
        OverScroller overScroller = this.c;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i6 = currX - this.a;
            int i7 = currY - this.b;
            this.a = currX;
            this.b = currY;
            int iN = RecyclerView.n(i6, recyclerView.c0, recyclerView.e0, recyclerView.getWidth());
            int iN2 = RecyclerView.n(i7, recyclerView.d0, recyclerView.f0, recyclerView.getHeight());
            int[] iArr2 = recyclerView.J0;
            iArr2[0] = 0;
            iArr2[1] = 0;
            if (recyclerView.t(iN, iN2, 1, iArr2, null)) {
                iN -= iArr[0];
                iN2 -= iArr[1];
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.m(iN, iN2);
            }
            if (recyclerView.x != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                recyclerView.e0(iN, iN2, iArr);
                int i8 = iArr[0];
                int i9 = iArr[1];
                int i10 = iN - i8;
                int i11 = iN2 - i9;
                av4 av4Var = recyclerView.y.e;
                if (av4Var != null && !av4Var.d && av4Var.e) {
                    int iB = recyclerView.x0.b();
                    if (iB == 0) {
                        av4Var.h();
                    } else if (av4Var.a >= iB) {
                        av4Var.a = iB - 1;
                        av4Var.g(i8, i9);
                    } else {
                        av4Var.g(i8, i9);
                    }
                }
                i = i10;
                i3 = i8;
                i2 = i11;
                i4 = i9;
            } else {
                i = iN;
                i2 = iN2;
                i3 = 0;
                i4 = 0;
            }
            if (!recyclerView.H.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr3 = recyclerView.J0;
            iArr3[0] = 0;
            iArr3[1] = 0;
            recyclerView.u(i3, i4, i, i2, null, 1, iArr3);
            int i12 = i - iArr[0];
            int i13 = i2 - iArr[1];
            if (i3 != 0 || i4 != 0) {
                recyclerView.v(i3, i4);
            }
            if (!recyclerView.awakenScrollBars()) {
                recyclerView.invalidate();
            }
            boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i12 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i13 != 0));
            av4 av4Var2 = recyclerView.y.e;
            if ((av4Var2 == null || !av4Var2.d) && z) {
                if (recyclerView.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    if (i12 < 0) {
                        i5 = -currVelocity;
                    } else {
                        i5 = i12 > 0 ? currVelocity : 0;
                    }
                    if (i13 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i13 <= 0) {
                        currVelocity = 0;
                    }
                    if (i5 < 0) {
                        recyclerView.x();
                        if (recyclerView.c0.isFinished()) {
                            recyclerView.c0.onAbsorb(-i5);
                        }
                    } else if (i5 > 0) {
                        recyclerView.y();
                        if (recyclerView.e0.isFinished()) {
                            recyclerView.e0.onAbsorb(i5);
                        }
                    }
                    if (currVelocity < 0) {
                        recyclerView.z();
                        if (recyclerView.d0.isFinished()) {
                            recyclerView.d0.onAbsorb(-currVelocity);
                        }
                    } else if (currVelocity > 0) {
                        recyclerView.w();
                        if (recyclerView.f0.isFinished()) {
                            recyclerView.f0.onAbsorb(currVelocity);
                        }
                    }
                    if (i5 != 0 || currVelocity != 0) {
                        recyclerView.postInvalidateOnAnimation();
                    }
                }
                if (RecyclerView.X0) {
                    ru3 ru3Var = recyclerView.w0;
                    int[] iArr4 = (int[]) ru3Var.e;
                    if (iArr4 != null) {
                        Arrays.fill(iArr4, -1);
                    }
                    ru3Var.d = 0;
                }
            } else {
                b();
                tu3 tu3Var = recyclerView.v0;
                if (tu3Var != null) {
                    tu3Var.a(recyclerView, i3, i4);
                }
            }
            if (Build.VERSION.SDK_INT >= 35) {
                jg6.a(recyclerView, Math.abs(overScroller.getCurrVelocity()));
            }
        }
        av4 av4Var3 = recyclerView.y.e;
        if (av4Var3 != null && av4Var3.d) {
            av4Var3.g(0, 0);
        }
        this.e = false;
        if (!this.f) {
            recyclerView.setScrollState(0);
            recyclerView.m0(1);
        } else {
            recyclerView.removeCallbacks(this);
            WeakHashMap weakHashMap = dl8.a;
            recyclerView.postOnAnimation(this);
        }
    }
}
