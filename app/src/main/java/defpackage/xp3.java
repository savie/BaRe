package defpackage;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.card.MaterialCardView;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xp3 implements jk8, n59 {
    public final /* synthetic */ int a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;

    public xp3(Drawable.Callback callback) {
        this.a = 0;
        this.b = new dz3();
        this.c = new HashMap();
        this.d = new HashMap();
        this.f = ".ttf";
        if (callback instanceof View) {
            this.e = ((View) callback).getContext().getAssets();
        } else {
            m15.b("LottieDrawable must be inside of a view for images to work.");
            this.e = null;
        }
    }

    public static xp3 a(View view) {
        int i = R.id.error_layout;
        View viewU = ms8.u(view, R.id.error_layout);
        if (viewU != null) {
            zx2 zx2VarA = zx2.a(viewU);
            i = R.id.iv_shortcut;
            if (((ImageView) ms8.u(view, R.id.iv_shortcut)) != null) {
                i = R.id.loading_helper;
                if (ms8.u(view, R.id.loading_helper) != null) {
                    i = R.id.main_view;
                    if (((ConstraintLayout) ms8.u(view, R.id.main_view)) != null) {
                        i = R.id.recycler_view;
                        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(view, R.id.recycler_view);
                        if (quickRecyclerView != null) {
                            i = R.id.shortcuts_container;
                            RelativeLayout relativeLayout = (RelativeLayout) ms8.u(view, R.id.shortcuts_container);
                            if (relativeLayout != null) {
                                i = R.id.tv_card_title;
                                TextView textView = (TextView) ms8.u(view, R.id.tv_card_title);
                                if (textView != null) {
                                    i = R.id.tv_shortcut;
                                    if (((TextView) ms8.u(view, R.id.tv_shortcut)) != null) {
                                        return new xp3((MaterialCardView) view, zx2VarA, quickRecyclerView, relativeLayout, textView, 2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 1:
                return (ConstraintLayout) obj;
            default:
                return (MaterialCardView) obj;
        }
    }

    @Override // defpackage.n59
    public void h(f59 f59Var) {
        u94 u94Var = (u94) this.b;
        List list = (List) ((w59) f59Var).a.b;
        if (list == null || list.isEmpty()) {
            u94Var.zza("No users");
            return;
        }
        ke keVar = (ke) this.f;
        yf1 yf1Var = (yf1) this.c;
        b69 b69Var = (b69) this.d;
        x59 x59Var = (x59) list.get(0);
        as2 as2Var = (as2) this.e;
        ly8.h(b69Var);
        ly8.h(x59Var);
        g59 g59Var = (g59) keVar.b;
        gp1 gp1Var = new gp1(keVar, as2Var, x59Var, yf1Var, b69Var, u94Var);
        g59Var.getClass();
        d59 d59Var = g59Var.a;
        ms8.U(d59Var.r("/setAccountInfo", g59Var.f), as2Var, gp1Var, new f69(), (xt1) d59Var.b);
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((u94) this.b).zza(str);
    }

    public xp3(ke keVar, u94 u94Var, yf1 yf1Var, b69 b69Var, as2 as2Var) {
        this.a = 3;
        this.b = u94Var;
        this.c = yf1Var;
        this.d = b69Var;
        this.e = as2Var;
        Objects.requireNonNull(keVar);
        this.f = keVar;
    }

    public /* synthetic */ xp3(ViewGroup viewGroup, Object obj, View view, View view2, TextView textView, int i) {
        this.a = i;
        this.b = viewGroup;
        this.c = obj;
        this.d = view;
        this.e = view2;
        this.f = textView;
    }
}
