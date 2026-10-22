package defpackage;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yw2 {
    public final fu a;
    public volatile gm2 b;

    public yw2(fu fuVar) {
        this.a = fuVar;
    }

    public final gm2 a() {
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        File cacheDir = ((be4) this.a.a).b.getCacheDir();
                        sm2 sm2Var = null;
                        File file = cacheDir == null ? null : new File(cacheDir, "image_manager_disk_cache");
                        if (file != null && (file.isDirectory() || file.mkdirs())) {
                            sm2Var = new sm2(file);
                        }
                        this.b = sm2Var;
                    }
                    if (this.b == null) {
                        this.b = new us2(11);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }
}
