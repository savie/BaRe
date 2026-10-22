package defpackage;

import android.content.Context;
import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s95 implements ch5 {
    public final Context a;

    public s95(Context context) {
        this.a = context.getApplicationContext();
    }

    @Override // defpackage.ch5
    public final boolean a(Object obj) {
        Uri uri = (Uri) obj;
        return od2.q(uri) && uri.getPathSegments().contains("video");
    }

    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        Long l;
        Uri uri = (Uri) obj;
        if (i == Integer.MIN_VALUE || i2 == Integer.MIN_VALUE || i > 512 || i2 > 384 || (l = (Long) ou5Var.c(hk8.d)) == null || l.longValue() != -1) {
            return null;
        }
        nr5 nr5Var = new nr5(uri);
        Context context = this.a;
        return new bh5(nr5Var, b38.b(context, uri, new a38(context.getContentResolver())));
    }
}
