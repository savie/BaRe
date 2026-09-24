package defpackage;

import android.text.Editable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lw2 extends z18 {
    public final /* synthetic */ pw2 a;

    public lw2(pw2 pw2Var) {
        this.a = pw2Var;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.a.a().a();
    }

    @Override // defpackage.z18, android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.a.a().b();
    }
}
