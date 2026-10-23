package defpackage;

import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fp1 implements bw1, jk8 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;

    public fp1(ai5 ai5Var, ny1 ny1Var, s03 s03Var, vb8 vb8Var) {
        this.a = ((er4) ny1Var.d).d();
        this.c = ai5Var;
        this.d = ny1Var;
        this.e = vb8Var;
        this.b = s03Var;
    }

    @Override // defpackage.bw1
    public void a(ev5 ev5Var, Object obj) throws wt1 {
        Class<?> cls = obj.getClass();
        ny1 ny1Var = (ny1) this.d;
        uq4 uq4VarD = ((q14) ny1Var.c).d(cls);
        if (uq4VarD == null) {
            throw new wt1("Value of %s not declared in %s with annotation %s", cls, (vb8) this.e, ny1Var);
        }
        uq4VarD.q((ai5) this.c).a(ev5Var, obj);
    }

    @Override // defpackage.bw1
    public Object b(mc4 mc4Var) {
        return ((uq4) ((er4) this.a).get(((s03) this.b).b(mc4Var.getName()))).q((ai5) this.c).b(mc4Var);
    }

    @Override // defpackage.bw1
    public Object c(mc4 mc4Var, Object obj) {
        return ((uq4) ((er4) this.a).get(((s03) this.b).b(mc4Var.getName()))).q((ai5) this.c).c(mc4Var, obj);
    }

    @Override // defpackage.bw1
    public boolean d(mc4 mc4Var) {
        return ((uq4) ((er4) this.a).get(((s03) this.b).b(mc4Var.getName()))).q((ai5) this.c).d(mc4Var);
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (MaterialCardView) this.a;
    }

    public fp1(MaterialCardView materialCardView, ImageButton imageButton, MaterialCardView materialCardView2, TextView textView, TextView textView2) {
        this.a = materialCardView;
        this.b = imageButton;
        this.c = materialCardView2;
        this.d = textView;
        this.e = textView2;
    }
}
