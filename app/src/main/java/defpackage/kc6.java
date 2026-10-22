package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kc6 implements ch5 {
    public final Context a;
    public final ch5 b;
    public final ch5 c;
    public final Class d;

    public kc6(Context context, ch5 ch5Var, ch5 ch5Var2, Class cls) {
        this.a = context.getApplicationContext();
        this.b = ch5Var;
        this.c = ch5Var2;
        this.d = cls;
    }

    @Override // defpackage.ch5
    public final boolean a(Object obj) {
        return Build.VERSION.SDK_INT >= 29 && od2.q((Uri) obj);
    }

    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        Uri uri = (Uri) obj;
        return new bh5(new nr5(uri), new jc6(this.a, this.b, this.c, uri, i, i2, ou5Var, this.d));
    }
}
