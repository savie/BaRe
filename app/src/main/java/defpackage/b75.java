package defpackage;

import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b75 extends MetricAffectingSpan {
    public final /* synthetic */ f75 a;

    public b75(f75 f75Var) {
        this.a = f75Var;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        textPaint.getClass();
        f75 f75Var = this.a;
        textPaint.setTypeface((Typeface) f75Var.d.getValue());
        textPaint.setColor(f75Var.b);
        textPaint.setAlpha(255);
    }

    @Override // android.text.style.MetricAffectingSpan
    public final void updateMeasureState(TextPaint textPaint) {
        textPaint.getClass();
        f75 f75Var = this.a;
        textPaint.setTypeface((Typeface) f75Var.d.getValue());
        textPaint.setColor(f75Var.b);
        textPaint.setAlpha(255);
    }
}
