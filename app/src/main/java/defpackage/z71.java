package defpackage;

import java.lang.reflect.Constructor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z71 extends sz8 {
    public final /* synthetic */ Constructor f;
    public final /* synthetic */ Class g;

    public z71(Constructor constructor, Class cls) {
        this.f = constructor;
        this.g = cls;
    }

    @Override // defpackage.sz8
    public final Object M() {
        return this.f.newInstance(null);
    }

    public final String toString() {
        return this.g.getName();
    }
}
