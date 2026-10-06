package defpackage;

import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.listitem.ListItemLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class du0 extends ly8 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    public /* synthetic */ du0(Object obj, int i) {
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.ly8
    public void H(int i) {
        switch (this.f) {
            case 0:
                if (i == 1) {
                    BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.g;
                    if (bottomSheetBehavior.L) {
                        bottomSheetBehavior.M(1);
                    }
                }
                break;
        }
    }

    @Override // defpackage.ly8
    public final void I(View view, int i, int i2) {
        ix4 ix4Var;
        int i3 = this.f;
        Object obj = this.g;
        switch (i3) {
            case 0:
                ((BottomSheetBehavior) obj).A(i2);
                break;
            default:
                ListItemLayout listItemLayout = (ListItemLayout) obj;
                if (listItemLayout.b != null && listItemLayout.f != null && listItemLayout.k()) {
                    listItemLayout.n(i);
                    if (listItemLayout.b.a == 1 && (ix4Var = listItemLayout.p) != null) {
                        listItemLayout.i(1, lg7.w(ix4Var) ? 5 : 3);
                        break;
                    }
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003a  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:85:0x0112  */
    @Override // defpackage.ly8
    public final void J(View view, float f, float f2) {
        int left;
        int i;
        int i2 = this.f;
        int i3 = 4;
        Object obj = this.g;
        switch (i2) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) obj;
                if (f2 < 0.0f) {
                    if (!bottomSheetBehavior.b) {
                        int top = view.getTop();
                        SystemClock.uptimeMillis();
                        if (top > bottomSheetBehavior.F) {
                            i3 = 6;
                        }
                    }
                    i3 = 3;
                } else if (bottomSheetBehavior.J && bottomSheetBehavior.N(view, f2)) {
                    if (Math.abs(f) >= Math.abs(f2) || f2 <= bottomSheetBehavior.d) {
                        if (view.getTop() <= (bottomSheetBehavior.E() + bottomSheetBehavior.X) / 2) {
                            if (!bottomSheetBehavior.b && Math.abs(view.getTop() - bottomSheetBehavior.E()) >= Math.abs(view.getTop() - bottomSheetBehavior.F)) {
                                i3 = 6;
                            } else {
                                i3 = 3;
                            }
                        }
                    }
                    i3 = 5;
                } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                    int top2 = view.getTop();
                    if (!bottomSheetBehavior.b) {
                        int i4 = bottomSheetBehavior.F;
                        if (top2 < i4) {
                            if (top2 < Math.abs(top2 - bottomSheetBehavior.H)) {
                                i3 = 3;
                            }
                        } else if (Math.abs(top2 - i4) < Math.abs(top2 - bottomSheetBehavior.H)) {
                        }
                        i3 = 6;
                    } else if (Math.abs(top2 - bottomSheetBehavior.E) < Math.abs(top2 - bottomSheetBehavior.H)) {
                        i3 = 3;
                    }
                } else if (!bottomSheetBehavior.b) {
                    int top3 = view.getTop();
                    if (Math.abs(top3 - bottomSheetBehavior.F) < Math.abs(top3 - bottomSheetBehavior.H)) {
                        i3 = 6;
                    }
                }
                bottomSheetBehavior.O(view, i3, true);
                break;
            default:
                ListItemLayout listItemLayout = (ListItemLayout) obj;
                if (listItemLayout.f != null && listItemLayout.k() && (left = view.getLeft()) != (i = listItemLayout.e)) {
                    int i5 = left > i ? 3 : 5;
                    ix4 ix4Var = i5 == 3 ? listItemLayout.k : listItemLayout.n;
                    if (ix4Var != null) {
                        int[] iArr = ListItemLayout.G;
                        if (listItemLayout.l(i5)) {
                            if (i5 != 3) {
                                f = -f;
                            }
                            int iD = listItemLayout.d(i5);
                            int iE = listItemLayout.e(i5);
                            boolean z = ix4Var.getPrimaryActionSwipeMode() != 0;
                            boolean z2 = ix4Var.getPrimaryActionSwipeMode() == 2;
                            if (f > 500.0f) {
                                if (z && (listItemLayout.x != 3 || z2)) {
                                    i3 = 5;
                                }
                            } else if (f < -500.0f) {
                                if (z2 || listItemLayout.x != 5) {
                                    i3 = 3;
                                }
                            } else if (!z || Math.abs(left - iE) >= Math.abs(left - iD)) {
                                if (z && z2) {
                                    iD = iE;
                                }
                                if (Math.abs(left - iD) >= Math.abs(left - listItemLayout.getSwipeViewClosedOffset())) {
                                    i3 = 3;
                                } else if (z && z2) {
                                    i3 = 5;
                                }
                            } else {
                                i3 = 5;
                            }
                        } else {
                            i3 = 3;
                        }
                        listItemLayout.j(listItemLayout.f, i3, i5);
                        break;
                    }
                }
                break;
        }
    }

    @Override // defpackage.ly8
    public final boolean Q(View view, int i) {
        cx4 cx4Var;
        int i2 = this.f;
        Object obj = this.g;
        switch (i2) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) obj;
                int i3 = bottomSheetBehavior.P;
                if (i3 == 1 || bottomSheetBehavior.g0) {
                    return false;
                }
                if (i3 == 3 && bottomSheetBehavior.d0 == i) {
                    View view2 = null;
                    if (bottomSheetBehavior.e) {
                        WeakReference weakReference = bottomSheetBehavior.f0;
                        if (weakReference != null) {
                            view2 = (View) weakReference.get();
                        }
                    } else {
                        ArrayList arrayList = bottomSheetBehavior.Z;
                        if (!arrayList.isEmpty()) {
                            view2 = (View) ((WeakReference) arrayList.get(0)).get();
                        }
                    }
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                SystemClock.uptimeMillis();
                WeakReference weakReference2 = bottomSheetBehavior.Y;
                return weakReference2 != null && weakReference2.get() == view;
            default:
                ListItemLayout listItemLayout = (ListItemLayout) obj;
                cx4 cx4Var2 = listItemLayout.f;
                if ((cx4Var2 == null || cx4Var2.I) && listItemLayout.k() && (cx4Var = listItemLayout.f) != null) {
                    listItemLayout.b.b(cx4Var, i);
                }
                return false;
        }
    }

    public int d0(ix4 ix4Var) {
        int marginStart;
        int marginEnd;
        ListItemLayout listItemLayout = (ListItemLayout) this.g;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) ix4Var.getLayoutParams();
        if (ix4Var.getPrimaryActionSwipeMode() != 0) {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) listItemLayout.f.getLayoutParams();
            marginStart = lg7.w(ix4Var) ? marginLayoutParams2.leftMargin : marginLayoutParams2.rightMargin;
            marginEnd = listItemLayout.f.getMeasuredWidth();
        } else {
            marginStart = marginLayoutParams.getMarginStart() + ix4Var.getIntrinsicWidth();
            marginEnd = marginLayoutParams.getMarginEnd();
        }
        return marginEnd + marginStart;
    }

    @Override // defpackage.ly8
    public final int l(View view, int i) {
        int swipeMaxOvershoot;
        switch (this.f) {
            case 0:
                return view.getLeft();
            default:
                ListItemLayout listItemLayout = (ListItemLayout) this.g;
                if (listItemLayout.f == null || !listItemLayout.k()) {
                    return 0;
                }
                cx4 cx4Var = listItemLayout.f;
                int swipeMaxOvershoot2 = listItemLayout.e;
                ix4 ix4Var = listItemLayout.n;
                if (ix4Var != null) {
                    swipeMaxOvershoot = listItemLayout.e - (cx4Var.getSwipeMaxOvershoot() + d0(ix4Var));
                } else {
                    swipeMaxOvershoot = swipeMaxOvershoot2;
                }
                ix4 ix4Var2 = listItemLayout.k;
                if (ix4Var2 != null) {
                    int iD0 = d0(ix4Var2);
                    swipeMaxOvershoot2 = cx4Var.getSwipeMaxOvershoot() + iD0 + listItemLayout.e;
                }
                return Math.max(swipeMaxOvershoot, Math.min(i, swipeMaxOvershoot2));
        }
    }

    @Override // defpackage.ly8
    public int m(View view, int i) {
        switch (this.f) {
            case 0:
                return iz1.d(i, ((BottomSheetBehavior) this.g).E(), z());
            default:
                return super.m(view, i);
        }
    }

    @Override // defpackage.ly8
    public int y(View view) {
        switch (this.f) {
            case 1:
                ListItemLayout listItemLayout = (ListItemLayout) this.g;
                cx4 cx4Var = listItemLayout.f;
                if (cx4Var == null) {
                    return 0;
                }
                ix4 ix4Var = listItemLayout.k;
                int intrinsicWidth = ix4Var != null ? ix4Var.getIntrinsicWidth() + cx4Var.getSwipeMaxOvershoot() : 0;
                ix4 ix4Var2 = listItemLayout.n;
                if (ix4Var2 != null) {
                    return intrinsicWidth + cx4Var.getSwipeMaxOvershoot() + ix4Var2.getIntrinsicWidth();
                }
                return intrinsicWidth;
            default:
                return super.y(view);
        }
    }

    @Override // defpackage.ly8
    public int z() {
        switch (this.f) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.g;
                return bottomSheetBehavior.J ? bottomSheetBehavior.X : bottomSheetBehavior.H;
            default:
                return super.z();
        }
    }
}
