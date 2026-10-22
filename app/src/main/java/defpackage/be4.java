package defpackage;

import android.content.Context;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class be4 implements dh5 {
    public final /* synthetic */ int a;
    public final Context b;

    public /* synthetic */ be4(Context context, int i) {
        this.a = i;
        this.b = context;
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        int i = this.a;
        Context context = this.b;
        switch (i) {
            case 1:
                return new s95(context);
            default:
                return new bm6(context, ai5Var.a(Integer.class, InputStream.class));
        }
    }
}
