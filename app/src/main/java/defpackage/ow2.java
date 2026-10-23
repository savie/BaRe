package defpackage;

import android.content.res.TypedArray;
import android.util.SparseArray;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ow2 {
    public final SparseArray a = new SparseArray();
    public final pw2 b;
    public final int c;
    public final int d;

    public ow2(pw2 pw2Var, u94 u94Var) {
        this.b = pw2Var;
        TypedArray typedArray = (TypedArray) u94Var.b;
        this.c = typedArray.getResourceId(28, 0);
        this.d = typedArray.getResourceId(53, 0);
    }
}
