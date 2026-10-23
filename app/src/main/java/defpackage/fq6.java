package defpackage;

import android.os.FileObserver;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fq6 extends FileObserver {
    public final String a;

    public fq6(iq6 iq6Var, File file) {
        super(file.getParent(), 1984);
        file.getParent();
        this.a = file.getName();
    }

    @Override // android.os.FileObserver
    public final void onEvent(int i, String str) {
        if (i == 1024 || this.a.equals(str)) {
            System.exit(0);
        }
    }
}
