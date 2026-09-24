package defpackage;

import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class hq1 implements Runnable {
    public final /* synthetic */ ConfigEditActivity a;
    public final /* synthetic */ int b;

    public /* synthetic */ hq1(ConfigEditActivity configEditActivity, int i) {
        this.a = configEditActivity;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = ConfigEditActivity.V;
        this.a.U().k.i0(this.b);
    }
}
