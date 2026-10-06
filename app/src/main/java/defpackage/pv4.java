package defpackage;

import android.text.TextPaint;
import android.text.style.URLSpan;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pv4 extends URLSpan {
    public final o75 a;
    public final String b;
    public final hx0 c;

    public pv4(o75 o75Var, String str, hx0 hx0Var) {
        super(str);
        this.a = o75Var;
        this.b = str;
        this.c = hx0Var;
    }

    @Override // android.text.style.URLSpan, android.text.style.ClickableSpan
    public final void onClick(View view) {
        this.c.k(view, this.b);
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        o75 o75Var = this.a;
        o75Var.getClass();
        textPaint.setUnderlineText(true);
        int i = o75Var.a;
        if (i != 0) {
            textPaint.setColor(i);
        } else {
            textPaint.setColor(textPaint.linkColor);
        }
    }
}
