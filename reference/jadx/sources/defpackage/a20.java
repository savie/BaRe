package defpackage;

import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a20 implements mt3 {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ AppsBatchActivity b;

    public /* synthetic */ a20(boolean z, AppsBatchActivity appsBatchActivity) {
        this.a = z;
        this.b = appsBatchActivity;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        this.b.r0.a(new oy7(iu.getEntries(), nc8.I(this.a ? q05.CLOUD : q05.DEVICE), (ny7) obj));
        return be8.a;
    }
}
