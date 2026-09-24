package defpackage;

import android.text.Editable;
import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r38 extends z18 {
    public final /* synthetic */ v38 a;

    public r38(v38 v38Var) {
        this.a = v38Var;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        v38 v38Var = this.a;
        j38 j38Var = v38Var.b;
        try {
            if (TextUtils.isEmpty(editable)) {
                j38Var.g(0);
                v38Var.d();
                return;
            }
            if (editable.length() > 2) {
                editable.delete(2, editable.length());
                v38.i(v38Var.n);
                return;
            }
            int i = Integer.parseInt(editable.toString());
            int i2 = j38Var.a;
            if ((i2 != 0 || i <= 12) && (i2 != 1 || i <= 23)) {
                v38Var.d();
            } else {
                v38.a(v38Var);
            }
            j38Var.g(i);
        } catch (NumberFormatException unused) {
            v38.a(v38Var);
        }
    }
}
