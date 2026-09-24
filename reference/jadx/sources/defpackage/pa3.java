package defpackage;

import java.io.File;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pa3 implements f77 {
    public final File a;
    public final ra3 b = ra3.a;

    public pa3(File file) {
        this.a = file;
    }

    @Override // defpackage.f77
    public final Iterator iterator() {
        return new na3(this);
    }
}
