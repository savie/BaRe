package defpackage;

import org.swiftapps.swiftbackup.cloud.connect.CsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class u42 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ CsActivity b;

    public /* synthetic */ u42(CsActivity csActivity, int i) {
        this.a = i;
        this.b = csActivity;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        CsActivity csActivity = this.b;
        switch (i) {
            case 0:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int i2 = CsActivity.P0;
                csActivity.setResult(zBooleanValue ? -1 : 0);
                if (zBooleanValue) {
                    csActivity.finish();
                }
                break;
            default:
                tn2 tn2Var = (tn2) obj;
                int i3 = CsActivity.P0;
                tn2Var.getClass();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new ig1(csActivity, tn2Var, null, 1));
                break;
        }
        return be8Var;
    }
}
