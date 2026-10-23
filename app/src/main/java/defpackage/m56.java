package defpackage;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.listitem.ListItemLayout;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m56 extends kx4 {
    public final TextView A;
    public final TextView B;
    public final TextView C;
    public final RecyclerView D;
    public final /* synthetic */ n56 E;
    public final SwiftListItemCardView v;
    public final ImageView w;
    public final TextView x;
    public final ImageView y;
    public final MaterialCardView z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m56(n56 n56Var, jd0 jd0Var) {
        super((ListItemLayout) jd0Var.a);
        this.E = n56Var;
        this.v = (SwiftListItemCardView) jd0Var.b;
        this.w = (ImageView) jd0Var.d;
        this.x = (TextView) jd0Var.q;
        this.y = (ImageView) jd0Var.c;
        this.z = (MaterialCardView) jd0Var.n;
        this.A = (TextView) jd0Var.k;
        this.B = (TextView) jd0Var.p;
        this.C = (TextView) jd0Var.f;
        this.D = (RecyclerView) jd0Var.e;
    }
}
