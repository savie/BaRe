package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class a14 extends ol1 {
    public final k28 e;
    public final boolean f;
    public final boolean k;
    public final qt3 n;
    public final gv7 p;
    public final gv7 q;
    public final gv7 r;
    public final gv7 t;
    public final gv7 x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a14(k28 k28Var, boolean z, boolean z2, qt3 qt3Var) {
        super(11, false);
        k28Var.getClass();
        this.e = k28Var;
        this.f = z;
        this.k = z2;
        this.n = qt3Var;
        this.p = new gv7(new dk(this, 29));
        this.q = new gv7(new kn3(this, 3));
        this.r = new gv7(new mo3(this, 4));
        this.t = new gv7(new bh(this, 28));
        this.x = new gv7(new d76(this, 26));
    }

    @Override // defpackage.ol1
    public final jk8 i() {
        Boolean boolValueOf;
        d45 d45Var = d45.b;
        d45Var.getClass();
        if (d45.a() != null) {
            try {
                d45Var.getClass();
                MFirebaseUser mFirebaseUserA = d45.a();
                boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
            } catch (Exception unused) {
            }
            if (!pe4.d(boolValueOf, Boolean.TRUE)) {
                l0.e("Check failed.");
                return null;
            }
        }
        sz8.d0((LinearLayout) this.q.getValue(), this.f);
        gv7 gv7Var = this.x;
        sz8.d0((MaterialButton) gv7Var.getValue(), this.k);
        gv7 gv7Var2 = this.r;
        k55.a(((v04) gv7Var2.getValue()).a);
        ((v04) gv7Var2.getValue()).a.setOnClickListener(new gs(this, 5));
        ((v04) gv7Var2.getValue()).a.setOnLongClickListener(new View.OnLongClickListener() { // from class: z04
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                a14 a14Var = this.a;
                a14Var.n.invoke(Boolean.FALSE, Boolean.TRUE);
                a14Var.j(false);
                return false;
            }
        });
        int i = 7;
        ((fe) this.t.getValue()).a.setOnClickListener(new hs(this, i));
        ((MaterialButton) gv7Var.getValue()).setOnClickListener(new mf(this, i));
        return (b14) this.p.getValue();
    }
}
