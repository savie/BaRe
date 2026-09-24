package defpackage;

import android.R;
import android.content.res.ColorStateList;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.wifi.WifiActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class h71 extends hg6 {
    public final WifiActivity d;
    public final ArrayList e;
    public final hz4 f = new hz4();
    public qt3 g;
    public boolean h;

    public h71(WifiActivity wifiActivity, ArrayList arrayList) {
        this.d = wifiActivity;
        this.e = arrayList;
    }

    @Override // defpackage.hg6
    public final int b() {
        return this.e.size();
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, final int i) {
        g71 g71Var = (g71) fh6Var;
        d71 d71Var = (d71) this.e.get(i);
        TextView textView = g71Var.y;
        TextView textView2 = g71Var.x;
        ImageView imageView = g71Var.w;
        ImageView imageView2 = g71Var.v;
        final h71 h71Var = g71Var.z;
        WifiActivity wifiActivity = h71Var.d;
        d71Var.getClass();
        int i2 = d71Var.d;
        if (i2 > 0) {
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(wifiActivity.getColor(i2));
            colorStateListValueOf.getClass();
            imageView2.setImageTintList(colorStateListValueOf);
            imageView.setImageTintList(colorStateListValueOf);
        }
        imageView.setImageResource(d71Var.c);
        textView2.setText(d71Var.b);
        boolean zIsEmpty = TextUtils.isEmpty(null);
        textView.setVisibility(!zIsEmpty ? 0 : 8);
        if (!zIsEmpty) {
            textView.setText((CharSequence) null);
        }
        if (h71Var.g != null) {
            g71Var.u.setOnClickListener(new View.OnClickListener() { // from class: f71
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    qt3 qt3Var = this.a.g;
                    if (qt3Var != null) {
                        view.getClass();
                        qt3Var.invoke(view, Integer.valueOf(i));
                    }
                }
            });
        }
        hz4 hz4Var = h71Var.f;
        ArrayList arrayList = hz4Var.a;
        arrayList.clear();
        el1.L0(arrayList, new View[]{imageView2});
        hz4Var.d = Integer.valueOf(sz8.q(wifiActivity, R.attr.colorBackground));
        w18[] w18VarArr = {new w18(textView2, textView2.getCurrentTextColor())};
        ArrayList arrayList2 = hz4Var.b;
        arrayList2.clear();
        el1.L0(arrayList2, w18VarArr);
        hz4Var.a(h71Var.h);
    }

    @Override // defpackage.hg6
    public final fh6 j(ViewGroup viewGroup, int i) {
        View viewInflate = LayoutInflater.from(this.d).inflate(org.swiftapps.swiftbackup.R.layout.circle_item_backups, viewGroup, false);
        ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
        int i2 = org.swiftapps.swiftbackup.R.id.image_background;
        ImageView imageView = (ImageView) ms8.u(viewInflate, org.swiftapps.swiftbackup.R.id.image_background);
        if (imageView != null) {
            i2 = org.swiftapps.swiftbackup.R.id.image_icon;
            ImageView imageView2 = (ImageView) ms8.u(viewInflate, org.swiftapps.swiftbackup.R.id.image_icon);
            if (imageView2 != null) {
                i2 = org.swiftapps.swiftbackup.R.id.tv_subtitle1;
                TextView textView = (TextView) ms8.u(viewInflate, org.swiftapps.swiftbackup.R.id.tv_subtitle1);
                if (textView != null) {
                    i2 = org.swiftapps.swiftbackup.R.id.tv_title;
                    TextView textView2 = (TextView) ms8.u(viewInflate, org.swiftapps.swiftbackup.R.id.tv_title);
                    if (textView2 != null) {
                        return new g71(this, new e71(constraintLayout, constraintLayout, imageView, imageView2, textView, textView2));
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
        return null;
    }
}
