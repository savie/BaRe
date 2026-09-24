package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import android.os.PowerManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yn extends ao {
    public final PowerManager c;
    public final /* synthetic */ fo d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yn(fo foVar, Context context) {
        super(foVar);
        this.d = foVar;
        this.c = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    @Override // defpackage.ao
    public final IntentFilter f() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
        return intentFilter;
    }

    @Override // defpackage.ao
    public final int g() {
        return tn.a(this.c) ? 2 : 1;
    }

    @Override // defpackage.ao
    public final void k() {
        this.d.n(true, true);
    }
}
