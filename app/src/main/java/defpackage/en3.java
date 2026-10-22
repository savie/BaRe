package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class en3 extends gm7 {
    public final FolderPickerActivity l;

    public en3(FolderPickerActivity folderPickerActivity) {
        super(null);
        this.l = folderPickerActivity;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0024  */
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        dn3 dn3Var = (dn3) fh6Var;
        fn3 fn3Var = (fn3) m(i);
        fn3Var.getClass();
        boolean z = fn3Var.b;
        vq vqVar = dn3Var.u;
        TextView textView = (TextView) vqVar.d;
        en3 en3Var = dn3Var.v;
        String str = fn3Var.f;
        if (str == null) {
            str = fn3Var.e;
        } else {
            if (str.length() <= 0) {
                str = null;
            }
            if (str == null) {
                str = fn3Var.e;
            }
        }
        textView.setText(str);
        FolderPickerActivity folderPickerActivity = en3Var.l;
        textView.setTextColor(z ? sz8.x(folderPickerActivity) : sz8.A(folderPickerActivity));
        textView.setAlpha(z ? 1.0f : 0.8f);
        ((LinearLayout) vqVar.c).setOnClickListener(new cn3(0, en3Var, fn3Var, dn3Var));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.folder_picker_navigation_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.cv;
        if (((MaterialCardView) ms8.u(view, R.id.cv)) != null) {
            i2 = R.id.iv_chevron;
            if (((ImageView) ms8.u(view, R.id.iv_chevron)) != null) {
                i2 = R.id.tv_divider;
                if (((TextView) ms8.u(view, R.id.tv_divider)) != null) {
                    i2 = R.id.tv_title;
                    TextView textView = (TextView) ms8.u(view, R.id.tv_title);
                    if (textView != null) {
                        return new dn3(this, new vq(6, linearLayout, linearLayout, textView));
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
