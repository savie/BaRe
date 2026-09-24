package defpackage;

import java.text.Collator;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fy implements Comparator {
    public final /* synthetic */ Comparator a;
    public final /* synthetic */ Collator b;

    public fy(Comparator comparator, Collator collator) {
        this.a = comparator;
        this.b = collator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int iCompare = this.a.compare(obj, obj2);
        if (iCompare != 0) {
            return iCompare;
        }
        return this.b.compare(((ji) obj).getName(), ((ji) obj2).getName());
    }
}
