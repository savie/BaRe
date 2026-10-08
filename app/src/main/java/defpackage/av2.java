package defpackage;

import android.widget.EditText;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class av2 extends hu2 {
    public final WeakReference a;

    public av2(EditText editText) {
        this.a = new WeakReference(editText);
    }

    @Override // defpackage.hu2
    public final void b() {
        bv2.a((EditText) this.a.get(), 1);
    }
}
