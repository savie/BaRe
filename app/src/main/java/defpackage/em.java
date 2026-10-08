package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class em {
    public final gv7 a;

    public em() {
        new ArrayList();
        this.a = new gv7(new gj(this, 4));
    }

    public abstract List a();

    public abstract long b();

    public final long c() {
        return ((Number) this.a.getValue()).longValue();
    }
}
