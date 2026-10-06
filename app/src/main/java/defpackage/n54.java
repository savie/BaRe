package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class n54 implements Comparator {
    public final /* synthetic */ m54 a;

    public n54(m54 m54Var) {
        this.a = m54Var;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int iCompare = this.a.compare(obj, obj2);
        if (iCompare != 0) {
            return iCompare;
        }
        String str = ((s54) obj).d;
        if (str == null) {
            str = "";
        }
        String str2 = ((s54) obj2).d;
        return String.CASE_INSENSITIVE_ORDER.compare(str, str2 != null ? str2 : "");
    }
}
