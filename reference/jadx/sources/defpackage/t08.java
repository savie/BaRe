package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t08 extends jb9 {
    public final /* synthetic */ Context M;
    public final /* synthetic */ TextPaint N;
    public final /* synthetic */ jb9 O;
    public final /* synthetic */ u08 P;

    public t08(u08 u08Var, Context context, TextPaint textPaint, jb9 jb9Var) {
        this.P = u08Var;
        this.M = context;
        this.N = textPaint;
        this.O = jb9Var;
    }

    @Override // defpackage.jb9
    public final void J(int i) {
        this.O.J(i);
    }

    @Override // defpackage.jb9
    public final void K(Typeface typeface, boolean z) {
        this.P.f(this.M, this.N, typeface);
        this.O.K(typeface, z);
    }
}
