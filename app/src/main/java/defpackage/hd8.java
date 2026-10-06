package defpackage;

import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hd8 implements i98 {
    @Override // defpackage.i98
    public final Object a(String str) {
        return new URL(str);
    }

    @Override // defpackage.i98
    public final String b(Object obj) {
        return ((URL) obj).toString();
    }
}
