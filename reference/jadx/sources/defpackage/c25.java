package defpackage;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c25 extends cd {
    public final /* synthetic */ xx7 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c25(xx7 xx7Var) {
        super(9);
        this.d = xx7Var;
    }

    @Override // defpackage.cd
    public final Object e(oe oeVar) {
        int i = this.d.a;
        int i2 = TaskActivity.c0;
        return new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
    }
}
