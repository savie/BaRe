package defpackage;

import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qu implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ qu(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
                g00 g00Var = g00.a;
                Integer numN = g00.n(str);
                return Integer.valueOf(numN != null ? numN.intValue() : -1);
            default:
                return ConfigSettings.getLocations$lambda$1$0(str);
        }
    }
}
