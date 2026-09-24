package defpackage;

import android.util.Property;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v03 extends Property {
    @Override // android.util.Property
    public final Object get(Object obj) {
        return Float.valueOf(((View) obj).getLayoutParams().height);
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        View view = (View) obj;
        view.getLayoutParams().height = ((Float) obj2).intValue();
        view.requestLayout();
    }
}
