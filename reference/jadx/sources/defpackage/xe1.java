package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.listitem.ListItemLayout;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import org.swiftapps.swiftbackup.views.MCheckBox;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xe1 implements jk8 {
    public final ListItemLayout a;
    public final MCheckBox b;
    public final SwiftListItemCardView c;
    public final ImageView d;
    public final CircularProgressIndicator e;
    public final TextView f;
    public final TextView k;
    public final TextView n;
    public final TextView p;

    public xe1(ListItemLayout listItemLayout, MCheckBox mCheckBox, SwiftListItemCardView swiftListItemCardView, ImageView imageView, CircularProgressIndicator circularProgressIndicator, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.a = listItemLayout;
        this.b = mCheckBox;
        this.c = swiftListItemCardView;
        this.d = imageView;
        this.e = circularProgressIndicator;
        this.f = textView;
        this.k = textView2;
        this.n = textView3;
        this.p = textView4;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
