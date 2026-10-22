package defpackage;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o70 implements i98 {
    public final /* synthetic */ int a;

    @Override // defpackage.i98
    public final Object a(String str) throws bg4 {
        switch (this.a) {
            case 0:
                return new AtomicLong(Long.valueOf(str).longValue());
            default:
                if (str.length() == 1) {
                    return Character.valueOf(str.charAt(0));
                }
                throw new bg4("Cannot convert '%s' to a character", str);
        }
    }

    @Override // defpackage.i98
    public final String b(Object obj) {
        switch (this.a) {
            case 0:
                return ((AtomicLong) obj).toString();
            default:
                return ((Character) obj).toString();
        }
    }
}
