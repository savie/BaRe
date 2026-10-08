package defpackage;

import android.text.Editable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qu2 extends Editable.Factory {
    public static final Object a = new Object();
    public static volatile qu2 b;
    public static Class c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = c;
        return cls != null ? new xj7(cls, charSequence) : super.newEditable(charSequence);
    }
}
