package defpackage;

import android.content.Context;
import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r95 implements ch5 {
    public final Context a;

    public r95(Context context) {
        this.a = context;
    }

    @Override // defpackage.ch5
    public final boolean a(Object obj) {
        return od2.q((Uri) obj);
    }

    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        Uri uri = (Uri) obj;
        return new bh5(new nr5(uri), new q95(this.a, uri));
    }
}
