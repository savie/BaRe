package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class rk7 extends ArrayList {
    public final Object c() {
        int size = size();
        if (size <= 0) {
            return null;
        }
        return get(size - 1);
    }

    public final Object pop() {
        int size = size();
        if (size <= 0) {
            return null;
        }
        return remove(size - 1);
    }
}
