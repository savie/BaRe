package defpackage;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ap7 extends h60 {
    @Override // defpackage.ra2
    public final Class a() {
        return InputStream.class;
    }

    @Override // defpackage.h60
    public final void g(Object obj) throws IOException {
        ((InputStream) obj).close();
    }

    @Override // defpackage.h60
    public final Object i(AssetManager assetManager, String str) {
        return assetManager.open(str);
    }
}
