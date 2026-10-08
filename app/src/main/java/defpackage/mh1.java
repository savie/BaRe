package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.listitem.ListItemLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.views.MCheckBox;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mh1 extends gm7 {
    public final il0 l;
    public boolean m;

    public mh1(il0 il0Var) {
        super(null);
        this.l = il0Var;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        int i2;
        int i3;
        lh1 lh1Var = (lh1) fh6Var;
        fi1 fi1Var = (fi1) m(i);
        boolean zQ = q(fi1Var);
        boolean z = this.m;
        lh lhVar = new lh(2, this, fi1Var, lh1Var);
        il0 il0Var = lh1Var.v;
        wa1 wa1Var = fi1Var.a;
        yz0 yz0Var = lh1Var.w;
        SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) yz0Var.d;
        TextView textView = (TextView) yz0Var.f;
        MCheckBox mCheckBox = (MCheckBox) yz0Var.c;
        swiftListItemCardView.setCheckable(true);
        SwiftListItemCardView swiftListItemCardView2 = (SwiftListItemCardView) yz0Var.d;
        swiftListItemCardView2.setChecked(zQ);
        boolean z2 = !z;
        swiftListItemCardView2.setEnabled(z2);
        swiftListItemCardView2.setOnClickListener(z ? null : new nf(lhVar, 3));
        mCheckBox.setChecked(zQ);
        mCheckBox.setEnabled(z2);
        mCheckBox.setOnClickListener(z ? null : new g7(lhVar, 7));
        ImageView imageView = (ImageView) yz0Var.e;
        va1 va1Var = wa1Var.d;
        int[] iArr = kh1.a;
        int i4 = iArr[va1Var.ordinal()];
        if (i4 == 1) {
            i2 = R.drawable.ic_app;
        } else {
            if (i4 != 2) {
                q.j();
                return;
            }
            i2 = R.drawable.ic_folder;
        }
        imageView.setImageResource(i2);
        ((TextView) yz0Var.n).setText(wa1Var.a);
        TextView textView2 = (TextView) yz0Var.k;
        int i5 = iArr[wa1Var.d.ordinal()];
        if (i5 == 1) {
            i3 = R.string.cloud_orphan_feature_app;
        } else {
            if (i5 != 2) {
                q.j();
                return;
            }
            i3 = R.string.cloud_orphan_feature_folder;
        }
        String string = il0Var.getString(i3);
        p93 p93Var = p93.a;
        long j = wa1Var.e;
        if (j < 0) {
            j = 0;
        }
        textView2.setText(string + " · " + p93.c(Long.valueOf(j)));
        long j2 = wa1Var.g;
        if (j2 <= 0) {
            j2 = 0;
        } else if (j2 < 100000000000L) {
            j2 *= 1000;
        }
        sz8.d0(textView, j2 > 0);
        if (j2 > 0) {
            textView.setText(il0Var.getString(R.string.cloud_orphan_modified, Const.s(j2)));
        }
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.cloud_orphan_file_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.cb;
        MCheckBox mCheckBox = (MCheckBox) ms8.u(view, R.id.cb);
        if (mCheckBox != null) {
            i2 = R.id.content;
            if (((LinearLayout) ms8.u(view, R.id.content)) != null) {
                i2 = R.id.item_card;
                SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) ms8.u(view, R.id.item_card);
                if (swiftListItemCardView != null) {
                    i2 = R.id.iv_feature;
                    ImageView imageView = (ImageView) ms8.u(view, R.id.iv_feature);
                    if (imageView != null) {
                        i2 = R.id.tv_modified;
                        TextView textView = (TextView) ms8.u(view, R.id.tv_modified);
                        if (textView != null) {
                            i2 = R.id.tv_subtitle;
                            TextView textView2 = (TextView) ms8.u(view, R.id.tv_subtitle);
                            if (textView2 != null) {
                                i2 = R.id.tv_title;
                                TextView textView3 = (TextView) ms8.u(view, R.id.tv_title);
                                if (textView3 != null) {
                                    return new lh1(this.l, new yz0((ListItemLayout) view, mCheckBox, swiftListItemCardView, imageView, textView, textView2, textView3, 1));
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
