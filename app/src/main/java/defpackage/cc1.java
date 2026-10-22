package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.listitem.ListItemLayout;
import org.swiftapps.swiftbackup.views.ProviderChipGroup;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cc1 implements jk8 {
    public final ListItemLayout a;
    public final MaterialButton b;
    public final SwiftListItemCardView c;
    public final ImageView d;
    public final ProviderChipGroup e;
    public final FlexboxLayout f;
    public final TextView k;
    public final TextView n;
    public final TextView p;

    public cc1(ListItemLayout listItemLayout, MaterialButton materialButton, SwiftListItemCardView swiftListItemCardView, ImageView imageView, ProviderChipGroup providerChipGroup, FlexboxLayout flexboxLayout, TextView textView, TextView textView2, TextView textView3) {
        this.a = listItemLayout;
        this.b = materialButton;
        this.c = swiftListItemCardView;
        this.d = imageView;
        this.e = providerChipGroup;
        this.f = flexboxLayout;
        this.k = textView;
        this.n = textView2;
        this.p = textView3;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
