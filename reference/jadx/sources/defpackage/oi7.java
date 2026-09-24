package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oi7 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final ExtendedFloatingActionButton c;
    public final ScrollView d;
    public final pi7 e;
    public final m86 f;

    public oi7(CoordinatorLayout coordinatorLayout, w00 w00Var, ExtendedFloatingActionButton extendedFloatingActionButton, ScrollView scrollView, pi7 pi7Var, m86 m86Var) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = extendedFloatingActionButton;
        this.d = scrollView;
        this.e = pi7Var;
        this.f = m86Var;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0139 A[PHI: r6
      0x0139: PHI (r6v2 int) = (r6v1 int), (r6v3 int), (r6v4 int) binds: [B:15:0x005e, B:17:0x006a, B:19:0x0077] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:59:0x0153 A[PHI: r1
      0x0153: PHI (r1v2 int) = (r1v1 int), (r1v4 int), (r1v5 int), (r1v6 int) binds: [B:3:0x0014, B:5:0x0024, B:7:0x0030, B:9:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    public static oi7 a(LayoutInflater layoutInflater) {
        oi7 oi7Var;
        int i;
        View viewInflate = layoutInflater.inflate(R.layout.smscalls_dash_activity, (ViewGroup) null, false);
        int i2 = R.id.appbar_layout;
        View viewU = ms8.u(viewInflate, R.id.appbar_layout);
        if (viewU != null) {
            w00 w00VarB = w00.b(viewU);
            i2 = R.id.btn_create_backup;
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate, R.id.btn_create_backup);
            if (extendedFloatingActionButton != null) {
                i2 = R.id.scroll_view;
                ScrollView scrollView = (ScrollView) ms8.u(viewInflate, R.id.scroll_view);
                if (scrollView != null) {
                    i2 = R.id.smscalls_dash_cloud_card;
                    View viewU2 = ms8.u(viewInflate, R.id.smscalls_dash_cloud_card);
                    if (viewU2 != null) {
                        int i3 = R.id.error_container_parent;
                        View viewU3 = ms8.u(viewU2, R.id.error_container_parent);
                        if (viewU3 != null) {
                            zx2 zx2VarA = zx2.a(viewU3);
                            ImageView imageView = (ImageView) ms8.u(viewU2, R.id.iv_shortcut);
                            if (imageView != null) {
                                int i4 = R.id.main_view;
                                ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(viewU2, R.id.main_view);
                                if (constraintLayout != null) {
                                    i4 = R.id.progress_bar;
                                    CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(viewU2, R.id.progress_bar);
                                    if (circularProgressIndicator != null) {
                                        i4 = R.id.recycler_view;
                                        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewU2, R.id.recycler_view);
                                        if (quickRecyclerView != null) {
                                            RelativeLayout relativeLayout = (RelativeLayout) ms8.u(viewU2, R.id.shortcuts_container);
                                            if (relativeLayout != null) {
                                                TextView textView = (TextView) ms8.u(viewU2, R.id.text_title);
                                                if (textView != null) {
                                                    oi7Var = null;
                                                    i = R.id.tv_shortcut;
                                                    TextView textView2 = (TextView) ms8.u(viewU2, R.id.tv_shortcut);
                                                    if (textView2 != null) {
                                                        pi7 pi7Var = new pi7((MaterialCardView) viewU2, zx2VarA, imageView, constraintLayout, circularProgressIndicator, quickRecyclerView, relativeLayout, textView, textView2);
                                                        View viewU4 = ms8.u(viewInflate, R.id.smscalls_dash_local_card);
                                                        if (viewU4 != null) {
                                                            if (((FrameLayout) ms8.u(viewU4, R.id.error_container_parent)) != null) {
                                                                i3 = R.id.error_layout;
                                                                View viewU5 = ms8.u(viewU4, R.id.error_layout);
                                                                if (viewU5 != null) {
                                                                    zx2 zx2VarA2 = zx2.a(viewU5);
                                                                    ImageView imageView2 = (ImageView) ms8.u(viewU4, R.id.iv_shortcut);
                                                                    if (imageView2 != null) {
                                                                        MaterialCardView materialCardView = (MaterialCardView) viewU4;
                                                                        QuickRecyclerView quickRecyclerView2 = (QuickRecyclerView) ms8.u(viewU4, R.id.recycler_view);
                                                                        if (quickRecyclerView2 != null) {
                                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ms8.u(viewU4, R.id.shortcuts_container);
                                                                            if (relativeLayout2 != null) {
                                                                                TextView textView3 = (TextView) ms8.u(viewU4, R.id.text_title);
                                                                                if (textView3 != null) {
                                                                                    i3 = R.id.tv_shortcut;
                                                                                    TextView textView4 = (TextView) ms8.u(viewU4, R.id.tv_shortcut);
                                                                                    if (textView4 != null) {
                                                                                        return new oi7((CoordinatorLayout) viewInflate, w00VarB, extendedFloatingActionButton, scrollView, pi7Var, new m86(materialCardView, zx2VarA2, imageView2, quickRecyclerView2, relativeLayout2, textView3, textView4, 2));
                                                                                    }
                                                                                } else {
                                                                                    i3 = R.id.text_title;
                                                                                }
                                                                            } else {
                                                                                i3 = R.id.shortcuts_container;
                                                                            }
                                                                        } else {
                                                                            i3 = R.id.recycler_view;
                                                                        }
                                                                    } else {
                                                                        i3 = R.id.iv_shortcut;
                                                                    }
                                                                }
                                                            }
                                                            f6.n("Missing required view with ID: ".concat(viewU4.getResources().getResourceName(i3)));
                                                            return null;
                                                        }
                                                        i2 = R.id.smscalls_dash_local_card;
                                                    }
                                                } else {
                                                    oi7Var = null;
                                                    i3 = R.id.text_title;
                                                }
                                            } else {
                                                oi7Var = null;
                                                i = R.id.shortcuts_container;
                                            }
                                            i3 = i;
                                        } else {
                                            oi7Var = null;
                                            i3 = i4;
                                        }
                                    } else {
                                        oi7Var = null;
                                        i3 = i4;
                                    }
                                } else {
                                    oi7Var = null;
                                    i3 = i4;
                                }
                            } else {
                                oi7Var = null;
                                i3 = R.id.iv_shortcut;
                            }
                        } else {
                            oi7Var = null;
                        }
                        f6.n("Missing required view with ID: ".concat(viewU2.getResources().getResourceName(i3)));
                        return oi7Var;
                    }
                    oi7Var = null;
                } else {
                    oi7Var = null;
                }
            } else {
                oi7Var = null;
            }
        } else {
            oi7Var = null;
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
        return oi7Var;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
