package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mb7 implements Comparator {
    public final /* synthetic */ String a;

    public mb7(String str) {
        this.a = str;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001b  */
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        String strE;
        char[] cArr = (char[]) obj2;
        String strE2 = null;
        if (cArr == null || cArr.length == 0) {
            strE = null;
        } else {
            String str = new String(cArr);
            if (str.length() == 0 || nq7.j0(str)) {
                strE = null;
            } else {
                strE = sz8.E(str);
            }
        }
        String str2 = this.a;
        Boolean boolValueOf = Boolean.valueOf(pe4.d(strE, str2));
        char[] cArr2 = (char[]) obj;
        if (cArr2 != null && cArr2.length != 0) {
            String str3 = new String(cArr2);
            if (str3.length() != 0 && !nq7.j0(str3)) {
                strE2 = sz8.E(str3);
            }
        }
        return ms8.n(boolValueOf, Boolean.valueOf(pe4.d(strE2, str2)));
    }
}
