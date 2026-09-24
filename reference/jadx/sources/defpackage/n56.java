package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.listitem.ListItemLayout;
import java.util.LinkedHashSet;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class n56 extends gm7 {
    public final LinkedHashSet l;
    public boolean m;

    public n56() {
        super(null);
        this.l = new LinkedHashSet();
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        m56 m56Var = (m56) fh6Var;
        j56 j56Var = (j56) m(i);
        j56Var.getClass();
        mt3 mt3Var = j56Var.f;
        String str = j56Var.d;
        String str2 = j56Var.c;
        String str3 = j56Var.b;
        n56 n56Var = m56Var.E;
        boolean z = n56Var.m;
        LinkedHashSet linkedHashSet = n56Var.l;
        if (!z && m56Var.b() == 0) {
            linkedHashSet.add(str3);
            n56Var.m = true;
        }
        boolean zContains = linkedHashSet.contains(str3);
        m56Var.w.setImageResource(j56Var.a);
        m56Var.x.setText(str3);
        TextView textView = m56Var.B;
        int i2 = 0;
        sz8.d0(textView, (!zContains || str2 == null || str2.length() == 0) ? false : true);
        if (sz8.I(textView)) {
            textView.setText(str2);
        }
        String str4 = j56Var.e;
        if (str4 == null) {
            str4 = "";
        }
        TextView textView2 = m56Var.C;
        sz8.d0(textView2, zContains && str4.length() > 0);
        textView2.setOnClickListener(sz8.I(textView2) ? new ll3(2, textView2, str4) : null);
        MaterialCardView materialCardView = m56Var.z;
        if (!zContains || str == null || str.length() == 0) {
            sz8.W(materialCardView);
        } else {
            sz8.c0(materialCardView);
            m56Var.A.setText(str);
        }
        RecyclerView recyclerView = m56Var.D;
        if (!zContains || mt3Var == null) {
            sz8.W(recyclerView);
        } else {
            sz8.c0(recyclerView);
            mt3Var.invoke(recyclerView);
        }
        m56Var.y.setRotation(zContains ? 180.0f : 0.0f);
        m56Var.v.setOnClickListener(new l56(n56Var, str3, m56Var, i2));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.premium_features_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        ListItemLayout listItemLayout = (ListItemLayout) view;
        int i2 = R.id.content_container;
        if (((ConstraintLayout) ms8.u(view, R.id.content_container)) != null) {
            i2 = R.id.expanded_text_bottom_barrier;
            if (((Barrier) ms8.u(view, R.id.expanded_text_bottom_barrier)) != null) {
                i2 = R.id.item_card;
                SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) ms8.u(view, R.id.item_card);
                if (swiftListItemCardView != null) {
                    i2 = R.id.iv_expand;
                    ImageView imageView = (ImageView) ms8.u(view, R.id.iv_expand);
                    if (imageView != null) {
                        i2 = R.id.iv_icon;
                        ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_icon);
                        if (imageView2 != null) {
                            i2 = R.id.rv_demo;
                            RecyclerView recyclerView = (RecyclerView) ms8.u(view, R.id.rv_demo);
                            if (recyclerView != null) {
                                i2 = R.id.tv_help_link;
                                TextView textView = (TextView) ms8.u(view, R.id.tv_help_link);
                                if (textView != null) {
                                    i2 = R.id.tv_highlight;
                                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_highlight);
                                    if (textView2 != null) {
                                        i2 = R.id.tv_highlight_container;
                                        MaterialCardView materialCardView = (MaterialCardView) ms8.u(view, R.id.tv_highlight_container);
                                        if (materialCardView != null) {
                                            i2 = R.id.tv_subtitle;
                                            TextView textView3 = (TextView) ms8.u(view, R.id.tv_subtitle);
                                            if (textView3 != null) {
                                                i2 = R.id.tv_title;
                                                TextView textView4 = (TextView) ms8.u(view, R.id.tv_title);
                                                if (textView4 != null) {
                                                    jd0 jd0Var = new jd0();
                                                    jd0Var.a = listItemLayout;
                                                    jd0Var.b = swiftListItemCardView;
                                                    jd0Var.c = imageView;
                                                    jd0Var.d = imageView2;
                                                    jd0Var.e = recyclerView;
                                                    jd0Var.f = textView;
                                                    jd0Var.k = textView2;
                                                    jd0Var.n = materialCardView;
                                                    jd0Var.p = textView3;
                                                    jd0Var.q = textView4;
                                                    return new m56(this, jd0Var);
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
