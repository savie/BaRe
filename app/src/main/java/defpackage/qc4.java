package defpackage;

import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qc4 implements ya2 {
    public final m35 a;

    public qc4(m35 m35Var) {
        this.a = m35Var;
    }

    @Override // defpackage.ya2
    public final Class a() {
        return InputStream.class;
    }

    @Override // defpackage.ya2
    public final za2 b(Object obj) {
        return new rb((InputStream) obj, this.a);
    }
}
