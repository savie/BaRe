package defpackage;

import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tq implements jk8 {
    public final ScrollView a;
    public final ScrollView b;
    public final TextView c;

    public tq(ScrollView scrollView, ScrollView scrollView2, TextView textView) {
        this.a = scrollView;
        this.b = scrollView2;
        this.c = textView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
