package defpackage;

import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gq1 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ ConfigEditActivity b;

    public /* synthetic */ gq1(ConfigEditActivity configEditActivity, int i) {
        this.a = i;
        this.b = configEditActivity;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        ConfigEditActivity configEditActivity = this.b;
        switch (i) {
            case 0:
                int i2 = ConfigEditActivity.V;
                br1 br1Var = br1.a;
                zn4.c(new dk(configEditActivity.V().j().getId(), 19));
                configEditActivity.finish();
                return be8.a;
            default:
                int i3 = ConfigEditActivity.V;
                return new pq1(configEditActivity.v());
        }
    }
}
