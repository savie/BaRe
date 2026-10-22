package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class q64 {
    public final String a;
    public final int b;
    public final Map c;
    public int d = -1;

    public q64(String str, int i, Map map) {
        this.a = str;
        this.b = i;
        this.c = map;
    }

    public Map a() {
        return this.c;
    }

    public abstract o64 b();

    public abstract boolean c();

    public final boolean d() {
        return this.d > -1;
    }
}
