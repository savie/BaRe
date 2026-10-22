package defpackage;

import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vi2 implements bt3 {
    public final /* synthetic */ q05 a;
    public final /* synthetic */ DetailActivity b;
    public final /* synthetic */ iz4 c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ AppCloudBackup e;

    public /* synthetic */ vi2(q05 q05Var, DetailActivity detailActivity, iz4 iz4Var, boolean z, AppCloudBackup appCloudBackup) {
        this.a = q05Var;
        this.b = detailActivity;
        this.c = iz4Var;
        this.d = z;
        this.e = appCloudBackup;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = DetailActivity.b0;
        int i2 = zi2.b[this.a.ordinal()];
        DetailActivity detailActivity = this.b;
        final boolean z = this.d;
        if (i2 == 1) {
            final mk2 mk2VarA0 = detailActivity.a0();
            iz4 iz4Var = this.c;
            final gm backup = iz4Var != null ? iz4Var.getBackup() : null;
            if (backup != null) {
                zn4 zn4Var = zn4.a;
                zn4.c(new bt3() { // from class: ik2
                    @Override // defpackage.bt3
                    public final Object invoke() throws Exception {
                        gm gmVar = backup;
                        LocalMetadata localMetadata = gmVar.b;
                        hk hkVar = gmVar.a;
                        vr6 vr6Var = vr6.INSTANCE;
                        mk2 mk2Var = mk2VarA0;
                        String str = mk2Var.b;
                        boolean z2 = z;
                        String str2 = z2 ? "Protecting" : "Unprotecting";
                        ji jiVar = mk2Var.e;
                        if (jiVar == null) {
                            pe4.F("app");
                            throw null;
                        }
                        vr6.i$default(vr6Var, str, str2 + " local backup for " + jiVar.asString() + " with backup id: " + hkVar.a, null, 4, null);
                        localMetadata.updateProtection(z2);
                        cu.a.f(localMetadata, hkVar.v());
                        vr6.i$default(vr6Var, mk2Var.b, (z2 ? "Protection" : "Unprotection").concat(" successful"), null, 4, null);
                        g00 g00Var = g00.a;
                        ji jiVar2 = mk2Var.e;
                        if (jiVar2 != null) {
                            g00.F(jiVar2.getPackageName());
                            return be8.a;
                        }
                        pe4.F("app");
                        throw null;
                    }
                });
            }
        } else {
            if (i2 != 2) {
                q.j();
                return null;
            }
            if (Const.d(detailActivity)) {
                mk2 mk2VarA1 = detailActivity.a0();
                AppCloudBackup appCloudBackup = this.e;
                if (appCloudBackup != null) {
                    zn4 zn4Var2 = zn4.a;
                    zn4.c(new m20(appCloudBackup, mk2VarA1, z));
                }
            }
        }
        return be8.a;
    }
}
