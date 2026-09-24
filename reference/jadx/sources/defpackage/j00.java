package defpackage;

import org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class j00 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ j00(Object obj, int i, int i2) {
        this.a = i2;
        this.c = obj;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        int i2 = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                int i3 = AppVisibilityDiagnosticsActivity.O;
                ((AppVisibilityDiagnosticsActivity) obj).N().p.scrollTo(0, i2);
                break;
            default:
                kp3 kp3Var = (kp3) obj;
                kp3Var.k().f0(i2);
                kp3Var.k().postDelayed(new ip3(kp3Var, i2), 100L);
                break;
        }
    }
}
