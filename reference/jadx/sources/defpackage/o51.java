package defpackage;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.o;
import androidx.fragment.app.u;
import androidx.fragment.app.z;
import com.bumptech.glide.a;
import com.google.android.material.card.MaterialCardView;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o51 extends gm7 {
    public final gv7 l;
    public final gv7 m;

    public o51(Context context) {
        super(null);
        this.l = new gv7(new dl(3));
        this.m = new gv7(new l51(context, 0));
    }

    /* JADX WARN: Code duplicated, block: B:89:0x019d  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        boolean zIsInbox;
        int iZ;
        int i2;
        String cachedFileName;
        yk6 yk6VarC;
        Object next;
        String cachedFileName2;
        n51 n51Var = (n51) fh6Var;
        jl0 jl0VarM = m(i);
        ImageView imageView = n51Var.y;
        o51 o51Var = n51Var.z;
        gv7 gv7Var = o51Var.m;
        TextView textView = n51Var.w;
        TextView textView2 = n51Var.v;
        jl0VarM.getClass();
        boolean z = jl0VarM instanceof ki7;
        if (z) {
            zIsInbox = ((ki7) jl0VarM).isInbox();
        } else {
            if (!(jl0VarM instanceof wg5)) {
                g84.h("Unknown type to determine isInbox item!");
                return;
            }
            zIsInbox = ((wg5) jl0VarM).isInbox();
        }
        View view = n51Var.a;
        MaterialCardView materialCardView = n51Var.x;
        MaterialCardView materialCardView2 = n51Var.u;
        for (MaterialCardView materialCardView3 : fl1.A0(materialCardView, materialCardView2)) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            int iIntValue = zIsInbox ? 0 : ((Number) gv7Var.getValue()).intValue();
            int iIntValue2 = zIsInbox ? ((Number) gv7Var.getValue()).intValue() : 0;
            ViewGroup.LayoutParams layoutParams2 = materialCardView3.getLayoutParams();
            gv7 gv7Var2 = gv7Var;
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
            int i3 = marginLayoutParams != null ? marginLayoutParams.topMargin : 0;
            ViewGroup.LayoutParams layoutParams3 = materialCardView3.getLayoutParams();
            boolean z2 = z;
            ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
            layoutParams.setMargins(iIntValue, i3, iIntValue2, marginLayoutParams2 != null ? marginLayoutParams2.bottomMargin : 0);
            layoutParams.gravity = zIsInbox ? 8388611 : 8388613;
            materialCardView3.setLayoutParams(layoutParams);
            z = z2;
            gv7Var = gv7Var2;
        }
        boolean z3 = z;
        int i4 = zIsInbox ? R.attr.dividerColor : R.attr.colorAccent;
        Context context = view.getContext();
        context.getClass();
        materialCardView2.setCardBackgroundColor(context.getColor(sz8.y(context, i4)));
        if (zIsInbox) {
            Context context2 = view.getContext();
            context2.getClass();
            iZ = sz8.z(context2);
        } else {
            iZ = -1;
        }
        textView2.setTextColor(iZ);
        textView.setTextColor(iZ);
        if (z3) {
            ki7 ki7Var = (ki7) jl0VarM;
            String body = ki7Var.getBody();
            sz8.d0(textView2, !(body == null || body.length() == 0));
            if (sz8.I(textView2)) {
                textView2.setText(ki7Var.getBody());
            }
            textView.setVisibility(8);
            if (sz8.I(textView)) {
                textView.setText(ki7Var.toString());
            }
            sz8.W(imageView);
            return;
        }
        if (!(jl0VarM instanceof wg5)) {
            g84.h("Unknown type for binding views!");
            return;
        }
        wg5 wg5Var = (wg5) jl0VarM;
        textView2.setOnClickListener(null);
        String text = wg5Var.getText();
        q63 file = wg5Var.getFile();
        if (text == null || text.length() == 0) {
            i2 = 0;
            if (file != null) {
                textView2.setVisibility(0);
                textView2.setText("File: " + wg5Var.getProperFileName());
                textView2.setOnClickListener(new m51(i2, wg5Var, textView2));
            } else {
                textView2.setVisibility(8);
            }
        } else {
            i2 = 0;
            textView2.setVisibility(0);
            textView2.setText(text);
        }
        List<xg5> partItems = wg5Var.getPartItems();
        if (partItems != null) {
            Iterator<T> it = partItems.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                xg5 xg5Var = (xg5) next;
                if (xg5Var.isImage() && (cachedFileName2 = xg5Var.getCachedFileName()) != null && cachedFileName2.length() != 0) {
                    break;
                }
            }
            xg5 xg5Var2 = (xg5) next;
            if (xg5Var2 != null) {
                cachedFileName = xg5Var2.getCachedFileName();
            } else {
                cachedFileName = null;
            }
        } else {
            cachedFileName = null;
        }
        q63 q63VarJ = cachedFileName != null ? ((q63) o51Var.l.getValue()).J(cachedFileName) : null;
        sz8.d0(imageView, (q63VarJ == null || !q63VarJ.j()) ? i2 : 1);
        if (sz8.I(imageView)) {
            Context context3 = imageView.getContext();
            ms8.j(context3, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
            zk6 zk6Var = a.a(context3).e;
            zk6Var.getClass();
            if ((Looper.myLooper() == Looper.getMainLooper() ? 1 : i2) == 0) {
                yk6VarC = zk6Var.c(imageView.getContext().getApplicationContext());
            } else {
                ms8.j(imageView.getContext(), "Unable to obtain a request manager for a view without a Context");
                Activity activityA = zk6.a(imageView.getContext());
                if (activityA != null && (activityA instanceof u)) {
                    u uVar = (u) activityA;
                    k50 k50Var = zk6Var.b;
                    k50Var.clear();
                    zk6.b(uVar.getSupportFragmentManager().c.f(), k50Var);
                    View viewFindViewById = uVar.findViewById(android.R.id.content);
                    o oVar = null;
                    for (View view2 = imageView; !view2.equals(viewFindViewById) && (oVar = (o) k50Var.get(view2)) == null && (view2.getParent() instanceof View); view2 = (View) view2.getParent()) {
                    }
                    k50Var.clear();
                    if (oVar != null) {
                        ms8.j(oVar.getContext(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
                        if ((Looper.myLooper() == Looper.getMainLooper() ? 1 : i2) == 0) {
                            yk6VarC = zk6Var.c(oVar.getContext().getApplicationContext());
                        } else {
                            if (oVar.getActivity() != null) {
                                zk6Var.c.c(oVar.getActivity());
                            }
                            z childFragmentManager = oVar.getChildFragmentManager();
                            Context context4 = oVar.getContext();
                            yk6VarC = zk6Var.d.m(context4, a.a(context4.getApplicationContext()), oVar.getLifecycle(), childFragmentManager, oVar.isVisible());
                        }
                    } else {
                        yk6VarC = zk6Var.d(uVar);
                    }
                } else {
                    yk6VarC = zk6Var.c(imageView.getContext().getApplicationContext());
                }
            }
            yk6VarC.f(Drawable.class).D(q63VarJ).B(imageView);
        }
        textView.setVisibility(8);
        if (sz8.I(textView)) {
            textView.setText(wg5Var.toString());
        }
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.chat_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.cv_iv;
        MaterialCardView materialCardView = (MaterialCardView) ms8.u(view, R.id.cv_iv);
        if (materialCardView != null) {
            i2 = R.id.cv_tv;
            MaterialCardView materialCardView2 = (MaterialCardView) ms8.u(view, R.id.cv_tv);
            if (materialCardView2 != null) {
                i2 = R.id.iv;
                ImageView imageView = (ImageView) ms8.u(view, R.id.iv);
                if (imageView != null) {
                    i2 = R.id.tv;
                    TextView textView = (TextView) ms8.u(view, R.id.tv);
                    if (textView != null) {
                        i2 = R.id.tv_debug;
                        TextView textView2 = (TextView) ms8.u(view, R.id.tv_debug);
                        if (textView2 != null) {
                            return new n51(this, new p51((LinearLayout) view, materialCardView, materialCardView2, imageView, textView, textView2));
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
