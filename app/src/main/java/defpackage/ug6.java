package defpackage;

import android.util.SparseArray;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ug6 {
    public SparseArray a;
    public int b;
    public Set c;

    public final tg6 a(int i) {
        SparseArray sparseArray = this.a;
        tg6 tg6Var = (tg6) sparseArray.get(i);
        if (tg6Var != null) {
            return tg6Var;
        }
        tg6 tg6Var2 = new tg6();
        sparseArray.put(i, tg6Var2);
        return tg6Var2;
    }
}
