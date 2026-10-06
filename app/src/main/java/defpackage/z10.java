package defpackage;

import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z10 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Object d;

    public /* synthetic */ z10(Object obj, boolean z, boolean z2, int i) {
        this.a = i;
        this.d = obj;
        this.b = z;
        this.c = z2;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        be8 be8Var = be8.a;
        boolean z = this.c;
        boolean z2 = this.b;
        Object obj = this.d;
        switch (i) {
            case 0:
                AppsBatchActivity appsBatchActivity = (AppsBatchActivity) obj;
                new fh2(appsBatchActivity, z2, new a20(z, appsBatchActivity)).F(appsBatchActivity, false, false);
                return be8Var;
            default:
                np3 np3Var = (np3) obj;
                dv dvVar = np3Var.i;
                if (dvVar != null) {
                    dvVar.g(z2, np3Var.j, z2 || z, false);
                    return be8Var;
                }
                pe4.F("repo");
                throw null;
        }
    }
}
