package defpackage;

import android.content.Context;
import android.net.Uri;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v83 implements ch5 {
    public final /* synthetic */ int a = 1;
    public final Object b;

    public v83(Context context) {
        this.b = context.getApplicationContext();
    }

    @Override // defpackage.ch5
    public final boolean a(Object obj) {
        switch (this.a) {
            case 0:
                return true;
            default:
                Uri uri = (Uri) obj;
                return od2.q(uri) && !uri.getPathSegments().contains("video");
        }
    }

    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        int i3 = this.a;
        Object obj2 = this.b;
        switch (i3) {
            case 0:
                File file = (File) obj;
                return new bh5(new nr5(file), new s83(file, (t83) obj2));
            default:
                Uri uri = (Uri) obj;
                if (i == Integer.MIN_VALUE || i2 == Integer.MIN_VALUE || i > 512 || i2 > 384) {
                    return null;
                }
                Context context = (Context) obj2;
                return new bh5(new nr5(uri), b38.b(context, uri, new z28(context.getContentResolver(), 0)));
        }
    }

    public v83(t83 t83Var) {
        this.b = t83Var;
    }
}
