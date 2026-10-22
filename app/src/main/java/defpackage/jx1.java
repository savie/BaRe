package defpackage;

import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.widget.TextView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jx1 extends r4 {
    public final ArrayList a = new ArrayList(0);

    public static void j(bs2 bs2Var, String str, String str2, ws0 ws0Var) {
        bs2Var.b();
        int iG = bs2Var.g();
        wj7 wj7Var = (wj7) bs2Var.d;
        StringBuilder sb = wj7Var.a;
        sb.append((char) 160);
        sb.append('\n');
        ((sl4) ((j75) bs2Var.b).c).getClass();
        wj7Var.b(sb.length(), str2);
        sb.append((CharSequence) str2);
        bs2Var.b();
        wj7Var.a((char) 160);
        lg7.g.b((di4) bs2Var.c, str);
        bs2Var.h(ws0Var, iG);
        bs2Var.a(ws0Var);
    }

    @Override // defpackage.r4
    public final void b(TextView textView) {
        if (textView.getMovementMethod() == null) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    @Override // defpackage.r4
    public final void d(TextView textView, SpannableStringBuilder spannableStringBuilder) {
        ru5[] ru5VarArr = (ru5[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), ru5.class);
        if (ru5VarArr != null) {
            TextPaint paint = textView.getPaint();
            for (ru5 ru5Var : ru5VarArr) {
                ru5Var.d = (int) (paint.measureText(ru5Var.b) + 0.5f);
            }
        }
        y18[] y18VarArr = (y18[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), y18.class);
        if (y18VarArr != null) {
            for (y18 y18Var : y18VarArr) {
                spannableStringBuilder.removeSpan(y18Var);
            }
        }
        spannableStringBuilder.setSpan(new y18(textView), 0, spannableStringBuilder.length(), 18);
    }

    @Override // defpackage.r4
    public final void g(bb2 bb2Var) {
        ak1 ak1Var = new ak1(0);
        bb2Var.a(ar7.class, new hv2(1));
        bb2Var.a(dv2.class, new hv2(0));
        bb2Var.a(at0.class, new et0());
        bb2Var.a(yj1.class, new ck1(0));
        bb2Var.a(z53.class, ak1Var);
        bb2Var.a(ib4.class, ak1Var);
        bb2Var.a(bx4.class, new jx4());
        bb2Var.a(k34.class, new p34());
        bb2Var.a(lv4.class, new qv4());
        bb2Var.a(a28.class, new ak1(1));
    }

    @Override // defpackage.r4
    public final void i(om5 om5Var) {
        int i = 0;
        om5Var.g(r08.class, new cx1(this, i));
        om5Var.g(ar7.class, new dx1());
        om5Var.g(dv2.class, new ex1(0));
        om5Var.g(at0.class, new fx1());
        om5Var.g(yj1.class, new gx1());
        om5Var.g(z53.class, new hx1());
        om5Var.g(ib4.class, new ix1());
        int i2 = 1;
        om5Var.g(s94.class, new ww1(i2));
        om5Var.g(fx0.class, new ex1(1));
        om5Var.g(qu5.class, new ex1(1));
        om5Var.g(bx4.class, new xw1(i2));
        om5Var.g(a28.class, new ww1(i));
        om5Var.g(k34.class, new xw1(i));
        om5Var.g(aj7.class, new yw1());
        om5Var.g(u24.class, new zw1());
        om5Var.g(rw5.class, new ax1());
        om5Var.g(lv4.class, new bx1());
    }
}
