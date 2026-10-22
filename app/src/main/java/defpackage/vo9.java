package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vo9 implements bj9 {
    public static final vo9 b = new vo9(0);
    public static final vo9 c = new vo9(1);
    public final /* synthetic */ int a;

    public /* synthetic */ vo9(int i) {
        this.a = i;
    }

    @Override // defpackage.bj9
    public final boolean zza(int i) {
        wo9 wo9Var;
        switch (this.a) {
            case 0:
                if (i == 0) {
                    wo9Var = wo9.BROADCAST_ACTION_UNSPECIFIED;
                } else if (i == 1) {
                    wo9Var = wo9.PURCHASES_UPDATED_ACTION;
                } else if (i != 2) {
                    wo9Var = i != 3 ? null : wo9.ALTERNATIVE_BILLING_ACTION;
                } else {
                    wo9Var = wo9.LOCAL_PURCHASES_UPDATED_ACTION;
                }
                return wo9Var != null;
            default:
                return i == 0 || i == 1;
        }
    }
}
