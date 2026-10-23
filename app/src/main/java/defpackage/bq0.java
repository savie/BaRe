package defpackage;

import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bq0 implements i98 {
    public final /* synthetic */ int a;

    @Override // defpackage.i98
    public final Object a(String str) {
        switch (this.a) {
            case 0:
                return new BigInteger(str);
            case 1:
                return Long.valueOf(str);
            case 2:
                return Short.valueOf(str);
            default:
                return str;
        }
    }

    @Override // defpackage.i98
    public final String b(Object obj) {
        switch (this.a) {
            case 0:
                return ((BigInteger) obj).toString();
            case 1:
                return ((Long) obj).toString();
            case 2:
                return ((Short) obj).toString();
            default:
                return (String) obj;
        }
    }
}
