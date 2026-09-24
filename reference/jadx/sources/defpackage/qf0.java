package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class qf0 {
    public static final HashMap a;

    static {
        HashMap map = new HashMap();
        a = map;
        map.put("DES/ECB/NoPadding", new nf0());
        map.put("RC4", new pf0());
    }
}
