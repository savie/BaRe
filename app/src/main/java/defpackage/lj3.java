package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lj3 implements jk8, z23 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;

    public lj3(ut9 ut9Var) {
        this.a = new HashMap(ut9Var.a);
        this.b = new HashMap(ut9Var.b);
        this.c = new HashMap(ut9Var.c);
        this.d = new HashMap(ut9Var.d);
    }

    public static lj3 a(View view) {
        int i = R.id.iv_dropdown;
        if (((ImageView) ms8.u(view, R.id.iv_dropdown)) != null) {
            i = R.id.iv_icon;
            ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
            if (imageView != null) {
                i = R.id.tv_subtitle;
                TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle);
                if (textView != null) {
                    i = R.id.tv_title;
                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                    if (textView2 != null) {
                        return new lj3((MaterialCardView) view, imageView, textView, textView2);
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public tl8 b(n81 n81Var, String str) {
        tl8 tl8Var;
        tl8 tl8VarA;
        synchronized (((us2) this.d)) {
            try {
                yl8 yl8Var = (yl8) this.a;
                yl8Var.getClass();
                tl8Var = (tl8) yl8Var.a.get(str);
                if (n81Var.d(tl8Var)) {
                    wl8 wl8Var = (wl8) this.b;
                    if (wl8Var instanceof xx6) {
                        xx6 xx6Var = (xx6) wl8Var;
                        tl8Var.getClass();
                        hu4 hu4Var = xx6Var.d;
                        if (hu4Var != null) {
                            ot9 ot9Var = xx6Var.e;
                            ot9Var.getClass();
                            pe4.e(tl8Var, ot9Var, hu4Var);
                        }
                    }
                    tl8Var.getClass();
                } else {
                    ej5 ej5Var = new ej5((n22) this.c);
                    ej5Var.a.put(g67.f, str);
                    wl8 wl8Var2 = (wl8) this.b;
                    wl8Var2.getClass();
                    try {
                        try {
                            tl8VarA = wl8Var2.c(n81Var, ej5Var);
                        } catch (AbstractMethodError unused) {
                            Class cls = n81Var.a;
                            cls.getClass();
                            tl8VarA = wl8Var2.b(cls, ej5Var);
                        }
                    } catch (AbstractMethodError unused2) {
                        Class cls2 = n81Var.a;
                        cls2.getClass();
                        tl8VarA = wl8Var2.a(cls2);
                    }
                    tl8Var = tl8VarA;
                    yl8 yl8Var2 = (yl8) this.a;
                    yl8Var2.getClass();
                    tl8Var.getClass();
                    tl8 tl8Var2 = (tl8) yl8Var2.a.put(str, tl8Var);
                    if (tl8Var2 != null) {
                        tl8Var2.a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return tl8Var;
    }

    public void c(ds9 ds9Var) throws GeneralSecurityException {
        ds9Var.getClass();
        wt9 wt9Var = new wt9(pt9.class, ds9Var.a);
        HashMap map = (HashMap) this.b;
        if (!map.containsKey(wt9Var)) {
            map.put(wt9Var, ds9Var);
            return;
        }
        ds9 ds9Var2 = (ds9) map.get(wt9Var);
        if (!ds9Var2.equals(ds9Var) || ds9Var != ds9Var2) {
            throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(String.valueOf(wt9Var)));
        }
    }

    public void d(fs9 fs9Var) throws GeneralSecurityException {
        xt9 xt9Var = new xt9(fs9Var.a, pt9.class);
        HashMap map = (HashMap) this.a;
        if (!map.containsKey(xt9Var)) {
            map.put(xt9Var, fs9Var);
            return;
        }
        fs9 fs9Var2 = (fs9) map.get(xt9Var);
        if (!fs9Var2.equals(fs9Var) || fs9Var != fs9Var2) {
            throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(String.valueOf(xt9Var)));
        }
    }

    public void e(ft9 ft9Var) throws GeneralSecurityException {
        ft9Var.getClass();
        wt9 wt9Var = new wt9(ot9.class, ft9Var.a);
        HashMap map = (HashMap) this.d;
        if (!map.containsKey(wt9Var)) {
            map.put(wt9Var, ft9Var);
            return;
        }
        ft9 ft9Var2 = (ft9) map.get(wt9Var);
        if (!ft9Var2.equals(ft9Var) || ft9Var != ft9Var2) {
            throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(String.valueOf(wt9Var)));
        }
    }

    public void f(ht9 ht9Var) throws GeneralSecurityException {
        xt9 xt9Var = new xt9(ht9Var.a, ot9.class);
        HashMap map = (HashMap) this.c;
        if (!map.containsKey(xt9Var)) {
            map.put(xt9Var, ht9Var);
            return;
        }
        ht9 ht9Var2 = (ht9) map.get(xt9Var);
        if (!ht9Var2.equals(ht9Var) || ht9Var != ht9Var2) {
            throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(String.valueOf(xt9Var)));
        }
    }

    @Override // defpackage.ea6
    public Object get() {
        return new e38((Executor) ((ea6) this.a).get(), (mw6) ((ea6) this.b).get(), (e41) ((l22) this.c).get(), (mw6) ((ea6) this.d).get(), 6);
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (MaterialCardView) this.a;
    }

    public lj3(yl8 yl8Var, wl8 wl8Var, n22 n22Var) {
        yl8Var.getClass();
        wl8Var.getClass();
        n22Var.getClass();
        this.a = yl8Var;
        this.b = wl8Var;
        this.c = n22Var;
        this.d = new us2(27);
    }

    public lj3() {
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new HashMap();
        this.d = new HashMap();
    }

    public /* synthetic */ lj3(Object obj, Object obj2, Object obj3, Object obj4) {
        this.a = obj;
        this.b = obj2;
        this.c = obj3;
        this.d = obj4;
    }
}
