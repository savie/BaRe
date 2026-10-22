package defpackage;

import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ar1 implements aj8 {
    @Override // defpackage.aj8
    public final void onCancelled(wc2 wc2Var) {
        wc2Var.getClass();
        vr6 vr6Var = vr6.INSTANCE;
        String str = wc2Var.b;
        str.getClass();
        vr6.e$default(vr6Var, "ConfigRepo", str, null, 4, null);
    }

    @Override // defpackage.aj8
    public final void onDataChange(eb2 eb2Var) {
        ConfigsData configsData = (ConfigsData) eb2Var.c(ConfigsData.class);
        br1.a.d(configsData);
        zn4.c(new bh(configsData, 14));
    }
}
