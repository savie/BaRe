package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class r54 extends gm7 {
    public static final PathInterpolator n = new PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f);
    public final il0 l;
    public String m;

    public r54(il0 il0Var) {
        super(null);
        this.l = il0Var;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00c7  */
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        ColorStateList colorStateListH0;
        float f;
        q54 q54Var = (q54) fh6Var;
        s54 s54Var = (s54) m(i);
        p54 p54Var = q54Var.u;
        s54Var.getClass();
        String str = s54Var.d;
        zc6 zc6Var = s54Var.r;
        if (zc6Var == null) {
            return;
        }
        boolean z = zc6Var.n;
        int i2 = 1;
        boolean z2 = pe4.d(s54Var.a, q54Var.v.m) && zc6Var.k;
        ImageView imageView = p54Var.f;
        ConstraintLayout constraintLayout = p54Var.e;
        imageView.setImageResource(s54Var.e);
        if (s54Var.k) {
            Context context = imageView.getContext();
            context.getClass();
            colorStateListH0 = sz8.h0(io4.d(context, R.attr.colorPrimary));
        } else {
            colorStateListH0 = null;
        }
        imageView.setImageTintList(colorStateListH0);
        p54Var.n.setText(s54Var.c);
        TextView textView = p54Var.k;
        sz8.d0(textView, !(str == null || str.length() == 0));
        textView.setText(str);
        MaterialButton materialButton = p54Var.c;
        boolean zG = zc6Var.g();
        int i3 = R.style.M3ButtonTonal;
        sz8.a0(materialButton, zG ? 2132017510 : R.style.M3ButtonTonal);
        materialButton.setText(z ? R.string.from_device : R.string.to_device);
        materialButton.setOnClickListener(new fr(7, q54Var, zc6Var));
        MaterialButton materialButton2 = p54Var.b;
        if (zc6Var.g()) {
            i3 = 2132017510;
        }
        sz8.a0(materialButton2, i3);
        materialButton2.setText(z ? R.string.from_cloud : R.string.to_cloud);
        materialButton2.setOnClickListener(new gr(2, q54Var, zc6Var));
        sz8.d0(p54Var.d, z2);
        if (zc6Var.f) {
            mp6 mp6Var = mp6.a;
            if (mp6.f()) {
                f = 1.0f;
            } else {
                f = 0.6f;
            }
        } else {
            f = 1.0f;
        }
        constraintLayout.setAlpha(f);
        constraintLayout.setOnClickListener(new hp2(zc6Var, q54Var, s54Var, i2));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.home_search_quick_action_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.barrier_bottom;
        if (((Barrier) ms8.u(view, R.id.barrier_bottom)) != null) {
            i2 = R.id.barrier_content;
            if (((Barrier) ms8.u(view, R.id.barrier_content)) != null) {
                i2 = R.id.btn_cloud;
                MaterialButton materialButton = (MaterialButton) ms8.u(view, R.id.btn_cloud);
                if (materialButton != null) {
                    i2 = R.id.btn_local;
                    MaterialButton materialButton2 = (MaterialButton) ms8.u(view, R.id.btn_local);
                    if (materialButton2 != null) {
                        i2 = R.id.container_actions;
                        LinearLayout linearLayout = (LinearLayout) ms8.u(view, R.id.container_actions);
                        if (linearLayout != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) view;
                            i2 = R.id.iv_icon;
                            ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
                            if (imageView != null) {
                                i2 = R.id.space_bottom;
                                if (((Space) ms8.u(view, R.id.space_bottom)) != null) {
                                    i2 = R.id.tv_subtitle;
                                    TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle);
                                    if (textView != null) {
                                        i2 = R.id.tv_title;
                                        TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                                        if (textView2 != null) {
                                            return new q54(this, new p54(constraintLayout, materialButton, materialButton2, linearLayout, constraintLayout, imageView, textView, textView2));
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

    @Override // defpackage.gm7
    public final void w(fm7 fm7Var, boolean z) {
        fm7Var.getClass();
        List list = fm7Var.a;
        if (list == null || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (pe4.d(((s54) it.next()).a, this.m)) {
                }
            }
            this.m = null;
        } else {
            this.m = null;
        }
        super.w(fm7Var, false);
    }
}
