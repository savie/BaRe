package defpackage;

import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kr4 implements aj8 {
    @Override // defpackage.aj8
    public final void onCancelled(wc2 wc2Var) {
        wc2Var.getClass();
        vr6 vr6Var = vr6.INSTANCE;
        String str = wc2Var.b;
        str.getClass();
        vr6.e$default(vr6Var, "LabelRepo", str, null, 4, null);
    }

    @Override // defpackage.aj8
    public final void onDataChange(eb2 eb2Var) {
        LabelsData labelsData = (LabelsData) eb2Var.c(LabelsData.class);
        lr4.a.l(labelsData);
        zn4.c(new d76(labelsData, "fetchFromLocalOrCloud"));
    }
}
