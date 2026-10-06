package defpackage;

import java.util.Date;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jk6 {
    public final m86 a;
    public final ev6 b;
    public final long c;
    public final UUID d;
    public final Date e = new Date();
    public long f;

    public jk6(ev6 ev6Var, long j, UUID uuid) {
        this.b = ev6Var;
        this.c = j;
        this.d = uuid;
        this.a = new m86(String.valueOf(j));
    }
}
