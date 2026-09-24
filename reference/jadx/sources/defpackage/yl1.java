package defpackage;

import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yl1 extends CharacterStyle implements UpdateAppearance {
    public final int a;

    public yl1(int i) {
        this.a = i;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        textPaint.getClass();
        textPaint.underlineColor = this.a;
        float f = textPaint.density;
        if (f <= 0.0f) {
            f = 1.0f;
        }
        textPaint.underlineThickness = f * 1.5f;
    }
}
