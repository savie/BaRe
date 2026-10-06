package defpackage;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import org.greenrobot.eventbus.ThreadMode;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rj extends ol1 {
    public static Long Q;
    public final gv7 G;
    public final gv7 H;
    public final gv7 I;
    public final gv7 J;
    public final gv7 K;
    public final gv7 L;
    public final gv7 M;
    public final gv7 N;
    public final hj O;
    public final ij P;
    public final k28 e;
    public final ji f;
    public ArrayList k;
    public ArrayList n;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final bt3 t;
    public final gv7 x;
    public final gv7 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rj(k28 k28Var, ji jiVar, ArrayList arrayList, ArrayList arrayList2, boolean z, boolean z2, boolean z3, bt3 bt3Var) {
        super(11, false);
        final int i = 0;
        this.e = k28Var;
        this.f = jiVar;
        this.k = arrayList;
        this.n = arrayList2;
        this.p = z;
        this.q = z2;
        this.r = z3;
        this.t = bt3Var;
        this.x = new gv7(new xi(this, i));
        final int i2 = 1;
        this.y = new gv7(new xi(this, i2));
        this.G = new gv7(new bt3(this) { // from class: yi
            public final /* synthetic */ rj b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                rj rjVar = this.b;
                switch (i3) {
                    case 0:
                        return rjVar.H().f;
                    default:
                        return rjVar.H().d;
                }
            }
        });
        this.H = new gv7(new bt3(this) { // from class: zi
            public final /* synthetic */ rj b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                rj rjVar = this.b;
                switch (i3) {
                    case 0:
                        wi wiVar = new wi(rjVar.e);
                        wiVar.e = rjVar.P;
                        wiVar.g = rjVar.O;
                        return wiVar;
                    default:
                        return rjVar.H().e;
                }
            }
        });
        this.I = new gv7(new aj(this, i2));
        this.J = new gv7(new bh(this, i2));
        this.K = new gv7(new bj(this, i2));
        this.L = new gv7(new cj(this, i2));
        this.M = new gv7(new bt3(this) { // from class: yi
            public final /* synthetic */ rj b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i;
                rj rjVar = this.b;
                switch (i3) {
                    case 0:
                        return rjVar.H().f;
                    default:
                        return rjVar.H().d;
                }
            }
        });
        this.N = new gv7(new bt3(this) { // from class: zi
            public final /* synthetic */ rj b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i;
                rj rjVar = this.b;
                switch (i3) {
                    case 0:
                        wi wiVar = new wi(rjVar.e);
                        wiVar.e = rjVar.P;
                        wiVar.g = rjVar.O;
                        return wiVar;
                    default:
                        return rjVar.H().e;
                }
            }
        });
        this.O = new hj(this, i);
        this.P = new ij(this, i);
    }

    @Override // defpackage.ol1
    public final void F(k28 k28Var, boolean z, boolean z2) {
        k28Var.getClass();
        Long l = Q;
        if (l != null) {
            if (System.currentTimeMillis() - l.longValue() < 1000) {
                return;
            }
        }
        Q = Long.valueOf(System.currentTimeMillis());
        super.F(k28Var, z, false);
    }

    @Override // defpackage.ol1
    public final void G(zm zmVar, Integer num) {
        zmVar.getClass();
        Long l = Q;
        if (l != null) {
            if (System.currentTimeMillis() - l.longValue() < 1000) {
                return;
            }
        }
        Q = Long.valueOf(System.currentTimeMillis());
        ((ImageView) H().b.c).setVisibility(8);
        super.G(zmVar, num);
    }

    public final sj H() {
        return (sj) this.x.getValue();
    }

    public final void I() {
        zn4 zn4Var = zn4.a;
        zn4.c(new fj(this, 0));
    }

    public final void J() {
        gv7 gv7Var = this.y;
        sz8.d0((ConstraintLayout) gv7Var.getValue(), this.p);
        if (sz8.I((ConstraintLayout) gv7Var.getValue())) {
            qr qrVar = tr.n0;
            gv7 gv7Var2 = this.G;
            ImageView imageView = (ImageView) gv7Var2.getValue();
            ji jiVar = this.f;
            qr.d(imageView, jiVar);
            ((ImageView) gv7Var2.getValue()).setOnClickListener(new dj(this, 0));
            ImageView imageView2 = (ImageView) this.H.getValue();
            imageView2.clearAnimation();
            sz8.d0(imageView2, jiVar.isFavorite());
            if (sz8.I(imageView2)) {
                imageView2.setBackgroundTintList(sz8.h0(vs7.SURFACE_3.a(imageView2.getContext())));
                Context context = imageView2.getContext();
                context.getClass();
                imageView2.setImageTintList(sz8.h0(io4.c(context, context.getColor(R.color.favorites))));
                v53 v53Var = v53.a;
                v53.a(imageView2);
            }
            qr.h((TextView) this.J.getValue(), jiVar, qr.c(this.e));
            qr.e((TextView) this.I.getValue(), jiVar);
        }
    }

    public final void K(boolean z) {
        if (z) {
            zn4 zn4Var = zn4.a;
            zn4.c(new aj(this, 0));
        } else {
            J();
            r35.m((wi) this.L.getValue(), this.k);
            r35.m((wi) this.N.getValue(), this.n);
        }
    }

    @Override // defpackage.ol1
    public final jk8 i() {
        K(false);
        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) this.K.getValue();
        k28 k28Var = this.e;
        quickRecyclerView.setLayoutManager(new PreCachingLinearLayoutManager(k28Var, 0));
        quickRecyclerView.setAdapter((wi) this.L.getValue());
        QuickRecyclerView quickRecyclerView2 = (QuickRecyclerView) this.M.getValue();
        quickRecyclerView2.setLayoutManager(new PreCachingLinearLayoutManager(k28Var));
        quickRecyclerView2.setAdapter((wi) this.N.getValue());
        return H();
    }

    @qr7(threadMode = ThreadMode.BACKGROUND)
    public final void onAppEvent(oq oqVar) {
        oqVar.getClass();
        zn4 zn4Var = zn4.a;
        zn4.c(new y2(1, this, oqVar));
    }

    @Override // defpackage.ol1
    public final void w(ho hoVar) {
    }
}
