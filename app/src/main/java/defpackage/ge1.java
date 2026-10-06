package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.listitem.ListItemLayout;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import java.util.Arrays;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.MCheckBox;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ge1 extends gm7 {
    public final il0 l;
    public boolean m;

    public ge1(il0 il0Var) {
        super(null);
        this.l = il0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        int i2;
        ce1 ce1Var;
        String string;
        int i3;
        int iA;
        int iA2;
        String str;
        fe1 fe1Var = (fe1) fh6Var;
        md1 md1Var = (md1) m(i);
        boolean zQ = q(md1Var);
        boolean z = this.m;
        jf jfVar = new jf(3, fe1Var, this);
        il0 il0Var = fe1Var.v;
        SwiftListItemCardView swiftListItemCardView = fe1Var.x;
        xe1 xe1Var = fe1Var.w;
        qd1 qd1Var = md1Var.a;
        rd1 rd1Var = md1Var.c;
        boolean z2 = md1Var.b() && !z;
        boolean z3 = qd1Var.d;
        int i4 = qd1Var.c;
        boolean z4 = z3 && !z;
        ListItemLayout listItemLayout = xe1Var.a;
        ImageView imageView = xe1Var.d;
        TextView textView = xe1Var.k;
        listItemLayout.setEnabled(z3 && !z);
        swiftListItemCardView.setEnabled(true);
        swiftListItemCardView.setCheckable(true);
        swiftListItemCardView.setChecked(zQ);
        swiftListItemCardView.setEnabled(z4);
        swiftListItemCardView.setAlpha(z3 ? 1.0f : 0.55f);
        String strConcat = null;
        if (z2) {
            i2 = 0;
            ce1Var = new ce1(i2, jfVar, md1Var);
        } else {
            i2 = 0;
            ce1Var = null;
        }
        swiftListItemCardView.setOnClickListener(ce1Var);
        MCheckBox mCheckBox = xe1Var.b;
        mCheckBox.setChecked(zQ);
        mCheckBox.setEnabled(z2);
        sz8.d0(mCheckBox, !z);
        mCheckBox.setOnClickListener(new de1(z2, jfVar, md1Var, i2));
        xe1Var.p.setText(qd1Var.b);
        TextView textView2 = xe1Var.n;
        if (z3) {
            string = il0Var.getString(i4);
        } else {
            il0Var.getClass();
            Integer num = qd1Var.g;
            if (num != null) {
                int iIntValue = num.intValue();
                dd1 dd1Var = qd1Var.h;
                if (dd1Var != null) {
                    string = il0Var.getString(iIntValue, dd1Var.getDisplayName());
                    string.getClass();
                } else {
                    string = il0Var.getString(iIntValue);
                    string.getClass();
                }
            } else {
                string = il0Var.getString(i4);
                string.getClass();
            }
        }
        textView2.setText(string);
        int[] iArr = ee1.a;
        switch (iArr[rd1Var.ordinal()]) {
            case 1:
                i3 = R.string.cloud_diagnostics_status_not_run;
                break;
            case 2:
                i3 = R.string.cloud_diagnostics_status_running;
                break;
            case 3:
                i3 = R.string.cloud_diagnostics_status_passed;
                break;
            case 4:
                i3 = R.string.cloud_diagnostics_status_failed;
                break;
            case 5:
                i3 = R.string.cloud_diagnostics_status_action_required;
                break;
            case 6:
                i3 = R.string.cloud_diagnostics_status_skipped;
                break;
            default:
                q.j();
                return;
        }
        String string2 = il0Var.getString(i3);
        string2.getClass();
        Long l = md1Var.f;
        if (l != null) {
            long jLongValue = l.longValue();
            if (jLongValue < 1000) {
                str = jLongValue + " ms";
            } else {
                str = String.format(Locale.US, "%.1f s", Arrays.copyOf(new Object[]{Double.valueOf(jLongValue / 1000.0d)}, 1));
            }
            strConcat = " - ".concat(str);
        }
        if (strConcat == null) {
            strConcat = "";
        }
        textView.setText(string2.concat(strConcat));
        switch (iArr[rd1Var.ordinal()]) {
            case 1:
                iA = sz8.A(il0Var);
                break;
            case 2:
                iA = il0Var.getColor(R.color.ambrdark);
                break;
            case 3:
                iA = sz8.w(il0Var);
                break;
            case 4:
                iA = sz8.r(il0Var);
                break;
            case 5:
                iA = il0Var.getColor(R.color.ambrdark);
                break;
            case 6:
                iA = il0Var.getColor(R.color.ambrdark);
                break;
            default:
                q.j();
                return;
        }
        textView.setTextColor(iA);
        String str2 = md1Var.e;
        if (str2 == null) {
            str2 = md1Var.d;
        }
        TextView textView3 = xe1Var.f;
        textView3.setText(str2);
        sz8.d0(textView3, ((str2 == null || nq7.j0(str2)) ? 1 : i2) ^ 1);
        CircularProgressIndicator circularProgressIndicator = xe1Var.e;
        boolean z5 = (z == 0 || rd1Var != rd1.RUNNING) ? i2 : 1;
        if ((circularProgressIndicator.getVisibility() == 0 ? 1 : i2) != z5) {
            sz8.d0(circularProgressIndicator, z5);
        }
        boolean z6 = (z == 0 || rd1Var == rd1.RUNNING) ? i2 : 1;
        if (imageView.getVisibility() == 0) {
            i2 = 1;
        }
        if (i2 != z6) {
            sz8.d0(imageView, z6);
        }
        if (!z || rd1Var == rd1.RUNNING) {
            return;
        }
        int i5 = iArr[rd1Var.ordinal()];
        int i6 = R.drawable.ic_error;
        switch (i5) {
            case 1:
                i6 = R.drawable.ic_circle_radio;
                break;
            case 2:
                i6 = R.drawable.ic_sync;
                break;
            case 3:
                i6 = R.drawable.ic_check_circle_outline;
                break;
            case 4:
            case 5:
                break;
            case 6:
                i6 = R.drawable.ic_close_circle;
                break;
            default:
                q.j();
                return;
        }
        switch (iArr[rd1Var.ordinal()]) {
            case 1:
                Context context = imageView.getContext();
                context.getClass();
                iA2 = sz8.A(context);
                break;
            case 2:
                Context context2 = imageView.getContext();
                context2.getClass();
                iA2 = sz8.A(context2);
                break;
            case 3:
                Context context3 = imageView.getContext();
                context3.getClass();
                iA2 = sz8.w(context3);
                break;
            case 4:
                Context context4 = imageView.getContext();
                context4.getClass();
                iA2 = sz8.r(context4);
                break;
            case 5:
                Context context5 = imageView.getContext();
                context5.getClass();
                iA2 = context5.getColor(R.color.ambrdark);
                break;
            case 6:
                Context context6 = imageView.getContext();
                context6.getClass();
                iA2 = context6.getColor(R.color.ambrdark);
                break;
            default:
                q.j();
                return;
        }
        imageView.setImageResource(i6);
        imageView.setColorFilter(iA2);
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.cloud_diagnostics_test_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.cb;
        MCheckBox mCheckBox = (MCheckBox) ms8.u(view, R.id.cb);
        if (mCheckBox != null) {
            ListItemLayout listItemLayout = (ListItemLayout) view;
            i2 = R.id.content;
            if (((LinearLayout) ms8.u(view, R.id.content)) != null) {
                i2 = R.id.content_container;
                if (((ConstraintLayout) ms8.u(view, R.id.content_container)) != null) {
                    i2 = R.id.item_card;
                    SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) ms8.u(view, R.id.item_card);
                    if (swiftListItemCardView != null) {
                        i2 = R.id.iv_status;
                        ImageView imageView = (ImageView) ms8.u(view, R.id.iv_status);
                        if (imageView != null) {
                            i2 = R.id.progress;
                            CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(view, R.id.progress);
                            if (circularProgressIndicator != null) {
                                i2 = R.id.status_container;
                                if (((FrameLayout) ms8.u(view, R.id.status_container)) != null) {
                                    i2 = R.id.tv_detail;
                                    TextView textView = (TextView) ms8.u(view, R.id.tv_detail);
                                    if (textView != null) {
                                        i2 = R.id.tv_status;
                                        TextView textView2 = (TextView) ms8.u(view, R.id.tv_status);
                                        if (textView2 != null) {
                                            i2 = R.id.tv_subtitle;
                                            TextView textView3 = (TextView) ms8.u(view, R.id.tv_subtitle);
                                            if (textView3 != null) {
                                                i2 = R.id.tv_title;
                                                TextView textView4 = (TextView) ms8.u(view, R.id.tv_title);
                                                if (textView4 != null) {
                                                    return new fe1(this.l, new xe1(listItemLayout, mCheckBox, swiftListItemCardView, imageView, circularProgressIndicator, textView, textView2, textView3, textView4));
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
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
