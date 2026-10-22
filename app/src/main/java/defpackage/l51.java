package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l51 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Context b;

    public /* synthetic */ l51(Context context, int i) {
        this.a = i;
        this.b = context;
    }

    @Override // defpackage.bt3
    public final Object invoke() throws IOException {
        int i = this.a;
        Context context = this.b;
        switch (i) {
            case 0:
                Resources resources = context.getResources();
                resources.getClass();
                return Integer.valueOf((int) TypedValue.applyDimension(1, 48.0f, resources.getDisplayMetrics()));
            default:
                File fileI = ji8.i(context, "firebaseSessions/sessionConfigsDataStore.data");
                ge.z(fileI);
                return fileI;
        }
    }
}
