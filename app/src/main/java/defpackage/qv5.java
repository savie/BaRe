package defpackage;

import android.content.res.ColorStateList;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qv5 implements es5, zt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ qv5(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.zt3
    public final yt3 a() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return (mt3) obj;
            case 1:
                return (mt3) obj;
            default:
                return new cu3(1, (x92) obj, x92.class, "onRootInfoUI", "onRootInfoUI(Lorg/swiftapps/swiftbackup/model/RootInfo;)V", 0);
        }
    }

    @Override // defpackage.es5
    public final void b(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((mt3) obj2).invoke(obj);
                break;
            case 1:
                ((mt3) obj2).invoke(obj);
                break;
            default:
                np6 np6Var = (np6) obj;
                x92 x92Var = (x92) obj2;
                if (np6Var == null) {
                    np6Var = np6.c.INSTANCE;
                }
                boolean z = true;
                boolean z2 = (np6Var instanceof np6.b) || (np6Var instanceof np6.d);
                boolean z3 = (z2 || mp6.g) ? false : true;
                int iW = sz8.w(x92Var.l());
                int iZ = sz8.z(x92Var.l());
                np6Var.getClass();
                boolean z4 = np6Var instanceof np6.b;
                if (!z4) {
                    iW = iZ;
                }
                int iX = z2 ? iW : sz8.x(x92Var.l());
                jk8 jk8Var = x92Var.b;
                jk8Var.getClass();
                ImageView imageView = (ImageView) ((y92) jk8Var).f.b;
                imageView.setImageResource((z4 || (np6Var instanceof np6.d)) ? R.drawable.ic_verified_24px : R.drawable.ic_refresh);
                imageView.setImageTintList(ColorStateList.valueOf(iX));
                imageView.setClickable(z3);
                imageView.setFocusable(z3);
                imageView.setOnClickListener(null);
                if (z3) {
                    imageView.setOnClickListener(new xd1(x92Var, 3));
                }
                jk8 jk8Var2 = x92Var.b;
                jk8Var2.getClass();
                TextView textView = (TextView) ((y92) jk8Var2).f.f;
                textView.setTextColor(iW);
                textView.setText(np6Var.getRootAccessValueString());
                jk8 jk8Var3 = x92Var.b;
                jk8Var3.getClass();
                TextView textView2 = (TextView) ((y92) jk8Var3).f.k;
                if (!z4 && !(np6Var instanceof np6.d)) {
                    z = false;
                }
                sz8.d0(textView2, z);
                textView2.setTextColor(sz8.A(x92Var.l()));
                textView2.setText(np6Var.getRootProviderValueString());
                if (x92Var.f) {
                    x92Var.f = false;
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                    alphaAnimation.setDuration(500L);
                    jk8 jk8Var4 = x92Var.b;
                    jk8Var4.getClass();
                    ((TextView) ((y92) jk8Var4).f.f).startAnimation(alphaAnimation);
                    jk8 jk8Var5 = x92Var.b;
                    jk8Var5.getClass();
                    ((TextView) ((y92) jk8Var5).f.k).startAnimation(alphaAnimation);
                }
                break;
        }
    }

    public final boolean equals(Object obj) {
        switch (this.a) {
            case 0:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
            case 1:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
            default:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
        }
    }

    public final int hashCode() {
        switch (this.a) {
            case 0:
                break;
            case 1:
                break;
        }
        return a().hashCode();
    }
}
