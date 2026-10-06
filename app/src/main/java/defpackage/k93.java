package defpackage;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k93 implements ll6 {
    public final File a;

    public k93(File file) {
        ms8.j(file, "Argument must not be null");
        this.a = file;
    }

    @Override // defpackage.ll6
    public final int c() {
        return 1;
    }

    @Override // defpackage.ll6
    public final Class d() {
        return this.a.getClass();
    }

    @Override // defpackage.ll6
    public final Object get() {
        return this.a;
    }

    @Override // defpackage.ll6
    public final void b() {
    }
}
