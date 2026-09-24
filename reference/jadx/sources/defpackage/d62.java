package defpackage;

import android.view.View;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class d62 implements jk8 {
    public final /* synthetic */ int a;
    public final TextInputLayout b;
    public final TextInputEditText c;
    public final TextInputLayout d;

    public /* synthetic */ d62(TextInputLayout textInputLayout, TextInputEditText textInputEditText, TextInputLayout textInputLayout2, int i) {
        this.a = i;
        this.b = textInputLayout;
        this.c = textInputEditText;
        this.d = textInputLayout2;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        int i = this.a;
        return this.b;
    }
}
