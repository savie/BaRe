package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.home.schedule.data.b;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class g57 extends fh6 {
    public final MaterialButton A;
    public final View B;
    public final QuickRecyclerView C;
    public final kb2 D;
    public final kb2 E;
    public final /* synthetic */ j57 F;
    public final ImageView u;
    public final ImageView v;
    public final TextView w;
    public final TextView x;
    public final TextView y;
    public final MaterialButton z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g57(j57 j57Var, z27 z27Var) {
        super(z27Var.a);
        this.F = j57Var;
        this.u = z27Var.e;
        this.v = z27Var.d;
        this.w = z27Var.r;
        this.x = z27Var.q;
        this.y = z27Var.p;
        this.z = z27Var.c;
        this.A = z27Var.b;
        this.B = z27Var.n;
        this.C = z27Var.k;
        kb2 kb2Var = z27Var.f;
        this.D = kb2Var;
        this.E = kb2Var;
    }

    public abstract void r(b bVar);

    public final void s(final b bVar) {
        int I;
        bVar.getClass();
        List list = bVar.n;
        boolean z = bVar.k;
        CharSequence charSequence = bVar.f;
        String str = bVar.b;
        boolean z2 = bVar.d;
        int iB = b();
        Integer numValueOf = Integer.valueOf(iB);
        if (iB == -1) {
            numValueOf = null;
        }
        if (numValueOf != null) {
            I = numValueOf.intValue();
        } else {
            RecyclerView recyclerView = this.r;
            I = recyclerView == null ? -1 : recyclerView.I(this);
        }
        boolean z3 = false;
        int i = 1;
        boolean z4 = I != -1;
        float f = z2 ? 1.0f : 0.6f;
        TextView textView = this.w;
        textView.setAlpha(f);
        textView.setText(z4 ? String.valueOf(I + 1) : "");
        final boolean z5 = z4 && I > 0;
        ImageView imageView = this.u;
        imageView.setEnabled(z5);
        imageView.setAlpha(z5 ? 1.0f : 0.6f);
        final j57 j57Var = this.F;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: f57
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                px pxVar;
                if (!z5 || (pxVar = j57Var.q) == null) {
                    return;
                }
                pxVar.invoke(bVar.q.getItemId());
            }
        });
        boolean z6 = z4 && I < j57Var.b() - 1;
        ImageView imageView2 = this.v;
        imageView2.setEnabled(z6);
        imageView2.setAlpha(z6 ? 1.0f : 0.6f);
        imageView2.setOnClickListener(new de1(z6, j57Var, bVar, i));
        float f2 = z2 ? 1.0f : 0.6f;
        TextView textView2 = this.x;
        textView2.setAlpha(f2);
        textView2.setText(bVar.a);
        boolean z7 = str == null || str.length() == 0;
        TextView textView3 = this.y;
        sz8.d0(textView3, !z7);
        if (sz8.I(textView3)) {
            textView3.setAlpha(z2 ? 0.8f : 0.5f);
            textView3.setText(str);
        }
        boolean zIsEmpty = list.isEmpty();
        boolean z8 = !zIsEmpty;
        sz8.d0(this.B, z8);
        QuickRecyclerView quickRecyclerView = this.C;
        sz8.d0(quickRecyclerView, z8);
        if (!zIsEmpty) {
            Context context = quickRecyclerView.getContext();
            context.getClass();
            quickRecyclerView.setLayoutManager(new PreCachingLinearLayoutManager(context));
            quickRecyclerView.setItemAnimator(null);
            ee5 ee5Var = new ee5(j57Var.l);
            ee5Var.j = new mu3(2, j57Var, bVar);
            ee5Var.w(new fm7(list, (Set) null, false, (String) null, 30), false);
            quickRecyclerView.setAdapter(ee5Var);
        }
        this.z.setText(bVar.c);
        this.A.setOnClickListener(new za4(j57Var, bVar, this, i));
        kb2 kb2Var = this.E;
        ConstraintLayout constraintLayout = (ConstraintLayout) kb2Var.a;
        ConstraintLayout constraintLayout2 = (ConstraintLayout) kb2Var.a;
        if (z2 && charSequence != null && charSequence.length() != 0) {
            z3 = true;
        }
        sz8.d0(constraintLayout, z3);
        if (sz8.I(constraintLayout2)) {
            sz8.d0((View) kb2Var.b, !z);
            sz8.d0((ImageView) kb2Var.c, z);
            ((TextView) kb2Var.d).setText(charSequence);
        }
        sz8.d0((ConstraintLayout) this.D.a, sz8.I(constraintLayout2));
    }
}
