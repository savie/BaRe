package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.notice.NoticeItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qo5 extends gm7 {
    public final boolean l;
    public final boolean m;
    public mt3 n;
    public nu o;
    public final bp0 p;

    public qo5(k28 k28Var, boolean z, boolean z2) {
        super(null);
        this.l = z;
        this.m = z2;
        this.p = new f75(k28Var, 60).e;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        po5 po5Var = (po5) fh6Var;
        NoticeItem noticeItem = (NoticeItem) m(i);
        noticeItem.getClass();
        sz8.c0(po5Var.u);
        TextView textView = po5Var.v;
        qo5 qo5Var = po5Var.A;
        sz8.d0(textView, qo5Var.l);
        po5Var.w.setText(noticeItem.getTitle());
        po5Var.x.setText(qo5Var.p.e(noticeItem.getSubtitle()).toString());
        po5Var.y.setOnClickListener(new i10(7, qo5Var, noticeItem));
        ImageView imageView = po5Var.z;
        sz8.d0(imageView, qo5Var.m);
        imageView.setOnClickListener(new rf4(2, qo5Var, noticeItem));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.notice_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.btn_dismiss;
        ImageView imageView = (ImageView) ms8.u(view, R.id.btn_dismiss);
        if (imageView != null) {
            i2 = R.id.btn_learn_more;
            MaterialButton materialButton = (MaterialButton) ms8.u(view, R.id.btn_learn_more);
            if (materialButton != null) {
                MaterialCardView materialCardView = (MaterialCardView) view;
                i2 = R.id.tv_caption;
                TextView textView = (TextView) ms8.u(view, R.id.tv_caption);
                if (textView != null) {
                    i2 = R.id.tv_subtitle;
                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_subtitle);
                    if (textView2 != null) {
                        i2 = R.id.tv_title;
                        TextView textView3 = (TextView) ms8.u(view, R.id.tv_title);
                        if (textView3 != null) {
                            return new po5(this, new ya4(materialCardView, imageView, materialButton, materialCardView, textView, textView2, textView3));
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
