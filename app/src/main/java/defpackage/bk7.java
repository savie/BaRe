package defpackage;

import android.content.Context;
import android.util.DisplayMetrics;
import org.swiftapps.swiftbackup.views.SpeedyLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bk7 extends av4 {
    public final /* synthetic */ SpeedyLinearLayoutManager q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bk7(SpeedyLinearLayoutManager speedyLinearLayoutManager, Context context) {
        super(context);
        this.q = speedyLinearLayoutManager;
    }

    @Override // defpackage.av4
    public final float d(DisplayMetrics displayMetrics) {
        displayMetrics.getClass();
        return this.q.W / displayMetrics.densityDpi;
    }
}
