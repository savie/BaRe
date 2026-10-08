package defpackage;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.a;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mo8 extends gm7 {
    public final oo8 l;
    public final boolean m;

    public mo8(oo8 oo8Var, boolean z) {
        super(null);
        this.l = oo8Var;
        this.m = z;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        pk6 pk6VarD;
        lo8 lo8Var = (lo8) fh6Var;
        final yn8 yn8Var = (yn8) m(i);
        final mo8 mo8Var = lo8Var.x;
        yn8Var.getClass();
        String str = yn8Var.e;
        boolean z = yn8Var.k;
        ImageView imageView = lo8Var.u;
        boolean z2 = false;
        imageView.setVisibility(yn8Var.n ? 4 : 0);
        if (yn8Var.n) {
            imageView.setOnClickListener(null);
            return;
        }
        boolean zIsEmpty = TextUtils.isEmpty(str);
        e66 e66Var = e66.d;
        if (zIsEmpty) {
            jm1.d(yn8Var, imageView, false, e66Var);
        } else {
            q63 q63Var = yn8Var.a;
            if (!yn8Var.n && q63Var.v().length() != 0) {
                if (!TextUtils.isEmpty(str)) {
                    if (z && q63Var.j()) {
                        long j = yn8Var.c;
                        if (j <= 0 || j == q63Var.A()) {
                        }
                    }
                }
                jm1.d(yn8Var, imageView, false, e66Var);
            }
            tb1 tb1Var = tb1.a;
            if (qb1.f() == dd1.GoogleDrive) {
                pk6VarD = a.c(imageView.getContext()).f(Drawable.class).D(yn8Var.f);
            } else {
                pk6VarD = a.c(imageView.getContext()).f(Drawable.class).D(new zx3(yn8Var));
            }
            pk6VarD.getClass();
            jm1.e(pk6VarD, imageView, false, e66Var);
        }
        boolean zIsEmpty2 = TextUtils.isEmpty(str);
        ImageView imageView2 = lo8Var.v;
        int i2 = 1;
        if (zIsEmpty2) {
            sz8.W(imageView2);
        } else {
            sz8.d0(imageView2, !z);
        }
        ImageView imageView3 = lo8Var.w;
        if (mo8Var.e.c && mo8Var.q(yn8Var)) {
            z2 = true;
        }
        sz8.d0(imageView3, z2);
        imageView.setOnClickListener(new xr0(i2, lo8Var, mo8Var, yn8Var));
        if (!mo8Var.m || mo8Var.e.c) {
            imageView.setOnLongClickListener(null);
        } else {
            imageView.setOnLongClickListener(new View.OnLongClickListener() { // from class: ko8
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    mo8 mo8Var2 = this.a;
                    mo8Var2.u(true);
                    gm7.x(mo8Var2, yn8Var);
                    return true;
                }
            });
        }
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.wall_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.iv_download_indicator;
        ImageView imageView = (ImageView) ms8.u(view, R.id.iv_download_indicator);
        if (imageView != null) {
            i2 = R.id.iv_placeholder;
            if (((ImageView) ms8.u(view, R.id.iv_placeholder)) != null) {
                i2 = R.id.iv_selected_indicator;
                ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_selected_indicator);
                if (imageView2 != null) {
                    i2 = R.id.iv_wall;
                    ImageView imageView3 = (ImageView) ms8.u(view, R.id.iv_wall);
                    if (imageView3 != null) {
                        bx5 bx5Var = new bx5();
                        bx5Var.a = (MaterialCardView) view;
                        bx5Var.b = imageView;
                        bx5Var.c = imageView2;
                        bx5Var.d = imageView3;
                        return new lo8(this, bx5Var);
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }

    @Override // defpackage.gm7
    public final void w(fm7 fm7Var, boolean z) {
        fm7Var.getClass();
        super.w(fm7Var, true);
    }
}
