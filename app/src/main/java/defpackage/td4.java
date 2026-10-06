package defpackage;

import android.content.pm.PackageInstaller;
import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class td4 implements Closeable {
    public final PackageInstaller.Session a;

    public td4(PackageInstaller.Session session) {
        this.a = session;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.a.close();
    }
}
