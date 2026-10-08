package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class t27 {
    public static final boolean a(boolean z, boolean z2, boolean z3, ji jiVar) {
        if (z && !jiVar.isBundled()) {
            return true;
        }
        if (z2 && jiVar.isBundled()) {
            return true;
        }
        return z3 && jiVar.isFavorite();
    }
}
