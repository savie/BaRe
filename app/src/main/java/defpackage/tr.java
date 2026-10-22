package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.AppItemContentLayout;
import org.swiftapps.swiftbackup.appslist.ui.AppListItemLayout;
import org.swiftapps.swiftbackup.appslist.ui.AppRowLabelsView;
import org.swiftapps.swiftbackup.appslist.ui.AppSwipeActionRevealLayout;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.AppCloudBackups;
import org.swiftapps.swiftbackup.views.MCheckBox;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tr extends kx4 {
    public static final qr n0 = new qr();
    public static final WeakHashMap o0 = new WeakHashMap();
    public static final pr p0 = new pr(512);
    public static final or q0 = new or(512);
    public final qt3 A;
    public final boolean B;
    public final boolean C;
    public final boolean D;
    public final boolean E;
    public final qt3 F;
    public final qt3 G;
    public final boolean H;
    public final boolean I;
    public final dr J;
    public ji K;
    public final SwiftListItemCardView L;
    public final ImageView M;
    public final TextView N;
    public final TextView O;
    public final TextView P;
    public final TextView Q;
    public final AppRowLabelsView R;
    public final ImageView S;
    public final MCheckBox T;
    public final ImageView U;
    public final View V;
    public final AppSwipeActionRevealLayout W;
    public final AppSwipeActionRevealLayout X;
    public final MaterialButton Y;
    public final MaterialButton Z;
    public final MaterialButton a0;
    public final MaterialButton b0;
    public final int c0;
    public final int d0;
    public final ColorStateList e0;
    public final int f0;
    public final int g0;
    public final String h0;
    public List i0;
    public float j0;
    public int k0;
    public oy l0;
    public oy m0;
    public final gm7 v;
    public final boolean w;
    public final String x;
    public final int y;
    public final qt3 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tr(View view, gm7 gm7Var, boolean z, String str, int i, qt3 qt3Var, qt3 qt3Var2, boolean z2, rs rsVar, ss ssVar, boolean z3, boolean z4, int i2) {
        super(view);
        boolean z5 = (i2 & 128) != 0;
        boolean z6 = (i2 & 512) != 0;
        ss ssVar2 = (i2 & 4096) != 0 ? null : ssVar;
        str.getClass();
        this.v = gm7Var;
        this.w = z;
        this.x = str;
        this.y = i;
        this.z = qt3Var;
        this.A = qt3Var2;
        this.B = z5;
        this.C = true;
        this.D = z6;
        this.E = z2;
        this.F = rsVar;
        this.G = ssVar2;
        this.H = z3;
        this.I = z4;
        int i3 = R.id.btn_swipe_end_primary;
        MaterialButton materialButton = (MaterialButton) ms8.u(view, R.id.btn_swipe_end_primary);
        if (materialButton != null) {
            i3 = R.id.btn_swipe_end_secondary;
            MaterialButton materialButton2 = (MaterialButton) ms8.u(view, R.id.btn_swipe_end_secondary);
            if (materialButton2 != null) {
                i3 = R.id.btn_swipe_start_primary;
                MaterialButton materialButton3 = (MaterialButton) ms8.u(view, R.id.btn_swipe_start_primary);
                if (materialButton3 != null) {
                    i3 = R.id.btn_swipe_start_secondary;
                    MaterialButton materialButton4 = (MaterialButton) ms8.u(view, R.id.btn_swipe_start_secondary);
                    if (materialButton4 != null) {
                        i3 = R.id.cb;
                        MCheckBox mCheckBox = (MCheckBox) ms8.u(view, R.id.cb);
                        if (mCheckBox != null) {
                            AppListItemLayout appListItemLayout = (AppListItemLayout) view;
                            i3 = R.id.content_container;
                            if (((AppItemContentLayout) ms8.u(view, R.id.content_container)) != null) {
                                i3 = R.id.image_icon;
                                ImageView imageView = (ImageView) ms8.u(view, R.id.image_icon);
                                if (imageView != null) {
                                    i3 = R.id.item_card;
                                    SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) ms8.u(view, R.id.item_card);
                                    if (swiftListItemCardView != null) {
                                        i3 = R.id.iv_favorite;
                                        ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_favorite);
                                        if (imageView2 != null) {
                                            i3 = R.id.iv_menu;
                                            ImageView imageView3 = (ImageView) ms8.u(view, R.id.iv_menu);
                                            if (imageView3 != null) {
                                                i3 = R.id.iv_menu_click_listener;
                                                View viewU = ms8.u(view, R.id.iv_menu_click_listener);
                                                if (viewU != null) {
                                                    i3 = R.id.reveal_end;
                                                    AppSwipeActionRevealLayout appSwipeActionRevealLayout = (AppSwipeActionRevealLayout) ms8.u(view, R.id.reveal_end);
                                                    if (appSwipeActionRevealLayout != null) {
                                                        i3 = R.id.reveal_start;
                                                        AppSwipeActionRevealLayout appSwipeActionRevealLayout2 = (AppSwipeActionRevealLayout) ms8.u(view, R.id.reveal_start);
                                                        if (appSwipeActionRevealLayout2 != null) {
                                                            i3 = R.id.rv_labels;
                                                            AppRowLabelsView appRowLabelsView = (AppRowLabelsView) ms8.u(view, R.id.rv_labels);
                                                            if (appRowLabelsView != null) {
                                                                i3 = R.id.tv_subtitle1;
                                                                TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle1);
                                                                if (textView != null) {
                                                                    i3 = R.id.tv_subtitle2;
                                                                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_subtitle2);
                                                                    if (textView2 != null) {
                                                                        i3 = R.id.tv_subtitle3;
                                                                        TextView textView3 = (TextView) ms8.u(view, R.id.tv_subtitle3);
                                                                        if (textView3 != null) {
                                                                            i3 = R.id.tv_title;
                                                                            TextView textView4 = (TextView) ms8.u(view, R.id.tv_title);
                                                                            if (textView4 != null) {
                                                                                this.J = new dr(appListItemLayout, materialButton, materialButton2, materialButton3, materialButton4, mCheckBox, appListItemLayout, imageView, swiftListItemCardView, imageView2, imageView3, viewU, appSwipeActionRevealLayout, appSwipeActionRevealLayout2, appRowLabelsView, textView, textView2, textView3, textView4);
                                                                                this.L = swiftListItemCardView;
                                                                                this.M = imageView;
                                                                                this.N = textView4;
                                                                                this.O = textView;
                                                                                this.P = textView2;
                                                                                this.Q = textView3;
                                                                                this.R = appRowLabelsView;
                                                                                this.S = imageView2;
                                                                                this.T = mCheckBox;
                                                                                this.U = imageView3;
                                                                                this.V = viewU;
                                                                                this.W = appSwipeActionRevealLayout2;
                                                                                this.X = appSwipeActionRevealLayout;
                                                                                this.Y = materialButton3;
                                                                                this.Z = materialButton4;
                                                                                this.a0 = materialButton;
                                                                                this.b0 = materialButton2;
                                                                                Context context = view.getContext();
                                                                                context.getClass();
                                                                                this.c0 = sz8.w(context);
                                                                                Context context2 = view.getContext();
                                                                                context2.getClass();
                                                                                int iR = sz8.r(context2);
                                                                                this.d0 = iR;
                                                                                Context context3 = view.getContext();
                                                                                context3.getClass();
                                                                                this.e0 = sz8.h0(io4.c(context3, context3.getColor(R.color.favorites)));
                                                                                Context context4 = view.getContext();
                                                                                context4.getClass();
                                                                                this.f0 = io4.c(context4, context4.getColor(R.color.disabled_app_indicator));
                                                                                this.g0 = iR;
                                                                                String string = view.getContext().getString(z ? R.string.no_backup_in_cloud : R.string.no_backup_on_device);
                                                                                string.getClass();
                                                                                this.h0 = string;
                                                                                this.i0 = ov2.a;
                                                                                this.j0 = -1.0f;
                                                                                this.k0 = -1;
                                                                                swiftListItemCardView.J.add(new kr(this));
                                                                                return;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i3)));
        throw null;
    }

    @Override // defpackage.kx4
    public final void r(int i, int i2) {
        int i3;
        if (i < 0 || i2 <= 0) {
            i3 = 0;
        } else {
            i3 = 1;
            if (i2 != 1) {
                if (i == 0) {
                    i3 = 2;
                } else {
                    i3 = i == i2 + (-1) ? 4 : 3;
                }
            }
        }
        if (this.k0 == i3) {
            return;
        }
        this.k0 = i3;
        super.r(i, i2);
    }

    public final void s(final ji jiVar, sx sxVar, boolean z) {
        String string;
        Long dateInstalled;
        Long dateUpdated;
        Long lValueOf;
        Long l;
        Long dateBackedUpOrUpdated;
        lr lrVar;
        AppCloudBackup latestBackup;
        jiVar.getClass();
        sxVar.getClass();
        this.K = jiVar;
        qr.d(this.M, jiVar);
        int i = 0;
        if (this.F != null) {
            this.M.setOnClickListener(new er(i, this, jiVar));
        }
        qr.g(this.O, jiVar, this.y, this.f0, this.g0);
        qr.e(this.N, jiVar);
        TextView textView = this.P;
        oy oyVar = null;
        boolean z2 = true;
        if (sz8.I(textView)) {
            if (this.w) {
                AppCloudBackups cloudBackups = jiVar.getCloudBackups();
                dateBackedUpOrUpdated = (cloudBackups == null || (latestBackup = cloudBackups.getLatestBackup()) == null) ? null : Long.valueOf(latestBackup.getDateBackedUpOrUpdated());
            } else {
                dateBackedUpOrUpdated = jiVar.getDateBackedUpOrUpdated();
            }
            String str = this.x;
            String str2 = this.h0;
            long jCurrentTimeMillis = System.currentTimeMillis() / 60000;
            if (dateBackedUpOrUpdated == null || dateBackedUpOrUpdated.longValue() <= 0) {
                lrVar = new lr(str2, false);
            } else {
                mr mrVar = new mr(dateBackedUpOrUpdated.longValue(), jCurrentTimeMillis, str);
                or orVar = q0;
                synchronized (orVar) {
                    lrVar = (lr) orVar.get(mrVar);
                    if (lrVar == null) {
                        lrVar = new lr(dj7.k(str, ": ", Const.s(dateBackedUpOrUpdated.longValue())), true);
                        synchronized (orVar) {
                        }
                    }
                }
            }
            textView.setAlpha(qr.a(jiVar));
            textView.setTextColor(lrVar.a ? this.c0 : this.y);
            textView.setText(lrVar.b);
        }
        TextView textView2 = this.Q;
        if (this.D) {
            Context context = textView2.getContext();
            context.getClass();
            switch (sr.b[sxVar.ordinal()]) {
                case 1:
                case 4:
                    string = null;
                    break;
                case 2:
                    ji jiVar2 = jiVar.isInstalled() ? jiVar : null;
                    if (jiVar2 == null || (dateInstalled = jiVar2.getDateInstalled()) == null) {
                        string = null;
                    } else {
                        if (dateInstalled.longValue() <= 0) {
                            dateInstalled = null;
                        }
                        string = dateInstalled == null ? null : context.getString(R.string.installed_time_or_duration, Const.s(dateInstalled.longValue()));
                    }
                    break;
                case 3:
                    ji jiVar3 = jiVar.isInstalled() ? jiVar : null;
                    if (jiVar3 == null || (dateUpdated = jiVar3.getDateUpdated()) == null) {
                        string = null;
                    } else {
                        if (dateUpdated.longValue() <= 0) {
                            dateUpdated = null;
                        }
                        string = dateUpdated == null ? null : dj7.k(context.getString(R.string.last_updated), ": ", Const.s(dateUpdated.longValue()));
                    }
                    break;
                case 5:
                    Long l2 = (Long) iy.c.get(jiVar.getPackageName());
                    if (l2 == null) {
                        string = null;
                    } else {
                        if (l2.longValue() <= 0) {
                            l2 = null;
                        }
                        if (l2 == null) {
                            string = null;
                        } else {
                            long jLongValue = l2.longValue();
                            String string2 = context.getString(R.string.app_size);
                            p93 p93Var = p93.a;
                            string = dj7.k(string2, ": ", p93.c(Long.valueOf(jLongValue)));
                        }
                    }
                    break;
                case 6:
                    if (this.w) {
                        AppCloudBackups cloudBackups2 = jiVar.getCloudBackups();
                        lValueOf = cloudBackups2 != null ? Long.valueOf(cloudBackups2.getTotalSize()) : null;
                    } else {
                        lValueOf = (Long) iy.d.get(jiVar.getPackageName());
                    }
                    if (lValueOf == null) {
                        string = null;
                    } else {
                        if (lValueOf.longValue() <= 0) {
                            lValueOf = null;
                        }
                        if (lValueOf == null) {
                            string = null;
                        } else {
                            long jLongValue2 = lValueOf.longValue();
                            String string3 = context.getString(R.string.backup_size);
                            p93 p93Var2 = p93.a;
                            string = dj7.k(string3, ": ", p93.c(Long.valueOf(jLongValue2)));
                        }
                    }
                    break;
                case 7:
                    if (!jiVar.isInstalled() || (l = (Long) iy.e.get(jiVar.getPackageName())) == null) {
                        string = null;
                    } else {
                        if (l.longValue() <= 0) {
                            l = null;
                        }
                        string = l == null ? null : dj7.k(context.getString(R.string.last_used), ": ", Const.s(l.longValue()));
                    }
                    break;
                default:
                    q.j();
                    return;
            }
            sz8.d0(textView2, !(string == null || string.length() == 0));
            if (sz8.I(textView2)) {
                textView2.setTextColor(this.y);
                textView2.setText(string);
            }
        } else {
            sz8.W(textView2);
        }
        Set<LabelParams> labels = jiVar.getLabels();
        AppRowLabelsView appRowLabelsView = this.R;
        sz8.d0(appRowLabelsView, (!this.E || labels == null || labels.isEmpty()) ? false : true);
        if (sz8.I(appRowLabelsView)) {
            float fA = qr.a(jiVar);
            List listB = labels != null ? qr.b(labels) : null;
            if (listB == null) {
                listB = ov2.a;
            }
            if (!pe4.d(this.i0, listB) || this.j0 != fA) {
                boolean z3 = this.I;
                if (!pe4.d(appRowLabelsView.t, listB) || appRowLabelsView.x != fA || appRowLabelsView.y != z3) {
                    appRowLabelsView.t = listB;
                    appRowLabelsView.x = fA;
                    appRowLabelsView.y = z3;
                    appRowLabelsView.H = -1;
                    appRowLabelsView.requestLayout();
                    appRowLabelsView.invalidate();
                }
                this.i0 = listB;
                this.j0 = fA;
            }
        }
        ImageView imageView = this.S;
        imageView.clearAnimation();
        sz8.d0(imageView, this.C && jiVar.isFavorite());
        if (sz8.I(imageView)) {
            imageView.setImageTintList(this.e0);
            if (z) {
                v53 v53Var = v53.a;
                v53.a(imageView);
            }
        }
        t(jiVar);
        if (this.z != null) {
            this.L.setOnClickListener(new fr(i, this, jiVar));
        }
        sz8.d0(this.U, this.A != null && this.B);
        View view = this.V;
        sz8.d0(view, sz8.I(this.U));
        if (sz8.I(view) && this.A != null) {
            view.setOnClickListener(new gr(i, this, jiVar));
            view.setOnLongClickListener(new View.OnLongClickListener() { // from class: hr
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    tr trVar = this.a;
                    trVar.A.invoke(Integer.valueOf(trVar.b()), jiVar);
                    return true;
                }
            });
        }
        if (this.A != null) {
            this.L.setOnLongClickListener(new View.OnLongClickListener() { // from class: ir
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    tr trVar = this.a;
                    trVar.A.invoke(Integer.valueOf(trVar.b()), jiVar);
                    return true;
                }
            });
        }
        qt3 qt3Var = this.G;
        qy qyVarO = ho6.o(xy.Right);
        qy qyVarO2 = ho6.o(xy.Left);
        View view2 = this.a;
        qy qyVar = view2.getLayoutDirection() == 1 ? qyVarO2 : qyVarO;
        qy qyVar2 = view2.getLayoutDirection() == 1 ? qyVarO : qyVarO2;
        oy oyVar2 = qyVar.a;
        if (oyVar2 == null || qt3Var == null || !oyVar2.isAvailable(jiVar)) {
            oyVar2 = oyVar;
        }
        this.l0 = oyVar2;
        oy oyVar3 = qyVar2.a;
        if (oyVar3 != null && qt3Var != null && oyVar3.isAvailable(jiVar)) {
            oyVar = oyVar3;
        }
        this.m0 = oyVar;
        boolean zV = v(this.W, this.Y, this.Z, qyVar, jiVar, this.l0);
        boolean zV2 = v(this.X, this.a0, this.b0, qyVar2, jiVar, this.m0);
        SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) this.J.d;
        if (!zV && !zV2) {
            z2 = false;
        }
        swiftListItemCardView.setSwipeEnabled(z2);
        try {
            ((AppListItemLayout) this.J.c).h(this.W, false);
        } catch (IllegalArgumentException unused) {
        }
    }

    public final void t(ji jiVar) {
        boolean zQ = this.v.q(jiVar);
        dr drVar = this.J;
        SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) drVar.d;
        boolean z = this.H;
        swiftListItemCardView.setCheckable(z);
        ((SwiftListItemCardView) drVar.d).setChecked(z && zQ);
        MCheckBox mCheckBox = this.T;
        sz8.d0(mCheckBox, z);
        if (mCheckBox.isChecked() != zQ) {
            mCheckBox.setChecked(zQ);
        }
    }

    public final boolean u(MaterialButton materialButton, oy oyVar, ji jiVar) {
        rr rrVar;
        rr rrVar2;
        boolean zI = sz8.I(materialButton);
        int i = 0;
        sz8.d0(materialButton, oyVar != null);
        if (oyVar == null) {
            materialButton.setOnClickListener(null);
            return zI;
        }
        int i2 = sr.a[oyVar.getTone().ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                int i3 = this.d0;
                rrVar = new rr(sz8.h0(sz8.U(i3, 18)), sz8.h0(i3), sz8.h0(sz8.U(i3, 12)));
            } else {
                if (i2 != 3) {
                    q.j();
                    return false;
                }
                Context context = this.a.getContext();
                context.getClass();
                int color = context.getColor(sz8.y(context, R.attr.colorBackgroundActivated));
                rrVar2 = new rr(sz8.h0(color), sz8.h0(sz8.x(context)), sz8.h0(color));
            }
            materialButton.setIcon(materialButton.getContext().getDrawable(oyVar.iconResFor(jiVar)));
            Context context2 = materialButton.getContext();
            context2.getClass();
            materialButton.setContentDescription(oyVar.title(context2, jiVar));
            materialButton.setBackgroundTintList(rrVar2.a);
            materialButton.setIconTint(rrVar2.b);
            materialButton.setRippleColor(rrVar2.c);
            materialButton.setOnClickListener(new jr(this, oyVar, jiVar, i));
            return !zI;
        }
        int i4 = this.c0;
        rrVar = new rr(sz8.h0(sz8.U(i4, 18)), sz8.h0(i4), sz8.h0(sz8.U(i4, 12)));
        rrVar2 = rrVar;
        materialButton.setIcon(materialButton.getContext().getDrawable(oyVar.iconResFor(jiVar)));
        Context context3 = materialButton.getContext();
        context3.getClass();
        materialButton.setContentDescription(oyVar.title(context3, jiVar));
        materialButton.setBackgroundTintList(rrVar2.a);
        materialButton.setIconTint(rrVar2.b);
        materialButton.setRippleColor(rrVar2.c);
        materialButton.setOnClickListener(new jr(this, oyVar, jiVar, i));
        return !zI;
    }

    public final boolean v(AppSwipeActionRevealLayout appSwipeActionRevealLayout, MaterialButton materialButton, MaterialButton materialButton2, qy qyVar, ji jiVar, oy oyVar) {
        int i;
        oy oyVar2 = qyVar.b;
        if (oyVar2 == null || this.G == null || !oyVar2.isAvailable(jiVar)) {
            oyVar2 = null;
        }
        boolean zU = u(materialButton2, oyVar2, jiVar) | u(materialButton, oyVar, jiVar);
        boolean z = oyVar != null;
        boolean z2 = oyVar2 != null;
        if (z) {
            i = z2 ? 1 : 2;
        } else {
            i = 0;
        }
        if (appSwipeActionRevealLayout.getPrimaryActionSwipeMode() != i) {
            appSwipeActionRevealLayout.setPrimaryActionSwipeMode(i);
        }
        if (zU) {
            appSwipeActionRevealLayout.a = -1;
            appSwipeActionRevealLayout.requestLayout();
        }
        return (oyVar == null && oyVar2 == null) ? false : true;
    }
}
