package defpackage;

import android.content.res.AssetManager;
import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j60 implements ch5 {
    public final AssetManager a;
    public final i60 b;

    public j60(AssetManager assetManager, i60 i60Var) {
        this.a = assetManager;
        this.b = i60Var;
    }

    @Override // defpackage.ch5
    public final boolean a(Object obj) {
        Uri uri = (Uri) obj;
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        Uri uri = (Uri) obj;
        return new bh5(new nr5(uri), this.b.t(this.a, uri.toString().substring(22)));
    }
}
