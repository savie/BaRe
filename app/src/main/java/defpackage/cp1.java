package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import java.util.Collection;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cp1 implements bw1, jk8 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;

    public cp1(ai5 ai5Var, vb8 vb8Var, ln5 ln5Var, String str) {
        this.a = new xk1(ai5Var, vb8Var, null);
        this.b = new ro(ai5Var);
        this.d = ln5Var;
        this.e = vb8Var;
        this.c = str;
    }

    public static cp1 e(View view) {
        MaterialCardView materialCardView = (MaterialCardView) view;
        int i = R.id.iv_icon;
        ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
        if (imageView != null) {
            i = R.id.tv_subtitle;
            TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle);
            if (textView != null) {
                i = R.id.tv_title;
                TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                if (textView2 != null) {
                    return new cp1(materialCardView, materialCardView, imageView, textView, textView2);
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    @Override // defpackage.bw1
    public void a(ev5 ev5Var, Object obj) throws kd5 {
        ln5 ln5Var = (ln5) this.d;
        for (Object obj2 : (Collection) obj) {
            if (obj2 != null) {
                Class cls = (Class) ln5Var.b;
                Class<?> cls2 = obj2.getClass();
                if (!cls.isAssignableFrom(cls2)) {
                    throw new kd5("Entry %s does not match %s for %s", cls2, ln5Var, (vb8) this.e);
                }
                ((ro) this.b).w(ev5Var, obj2, cls, (String) this.c);
            }
        }
    }

    @Override // defpackage.bw1
    public Object b(mc4 mc4Var) {
        gd4 gd4VarG = ((xk1) this.a).g(mc4Var);
        Object objD = gd4VarG.d();
        if (gd4VarG.c()) {
            return objD;
        }
        Collection collection = (Collection) objD;
        while (true) {
            mc4 mc4VarD = mc4Var.d();
            Class cls = (Class) ((ln5) this.d).b;
            if (mc4VarD == null) {
                return collection;
            }
            collection.add(((ro) this.b).r(mc4VarD, cls));
        }
    }

    @Override // defpackage.bw1
    public Object c(mc4 mc4Var, Object obj) {
        gd4 gd4VarG = ((xk1) this.a).g(mc4Var);
        if (gd4VarG.c()) {
            return gd4VarG.d();
        }
        gd4VarG.e(obj);
        if (obj == null) {
            return obj;
        }
        Collection collection = (Collection) obj;
        while (true) {
            mc4 mc4VarD = mc4Var.d();
            Class cls = (Class) ((ln5) this.d).b;
            if (mc4VarD == null) {
                return collection;
            }
            collection.add(((ro) this.b).r(mc4VarD, cls));
        }
    }

    @Override // defpackage.bw1
    public boolean d(mc4 mc4Var) throws sf5 {
        gd4 gd4VarG = ((xk1) this.a).g(mc4Var);
        if (gd4VarG.c()) {
            return true;
        }
        gd4VarG.e(null);
        while (true) {
            mc4 mc4VarD = mc4Var.d();
            Class cls = (Class) ((ln5) this.d).b;
            if (mc4VarD == null) {
                return true;
            }
            ((ro) this.b).v(mc4VarD, cls);
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (MaterialCardView) this.a;
    }

    public cp1(MaterialCardView materialCardView, MaterialCardView materialCardView2, ImageView imageView, TextView textView, TextView textView2) {
        this.a = materialCardView;
        this.b = materialCardView2;
        this.c = imageView;
        this.d = textView;
        this.e = textView2;
    }
}
