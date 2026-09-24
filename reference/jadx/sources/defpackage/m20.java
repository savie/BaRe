package defpackage;

import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class m20 implements bt3 {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ m20(r20 r20Var, zc6 zc6Var, boolean z) {
        this.b = z;
        this.c = r20Var;
        this.d = zc6Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                kz4 kz4Var = kz4.g;
                boolean z = this.b;
                dv.i(kz4Var, z, null, false, true, 6);
                dv.i(ua1.g, z, null, false, true, 6);
                zn4.c(new n20((r20) obj2, (zc6) obj, true));
                return be8Var;
            default:
                AppCloudBackup appCloudBackup = (AppCloudBackup) obj2;
                mk2 mk2Var = (mk2) obj;
                CloudMetadata metadata = appCloudBackup.getMetadata();
                vr6 vr6Var = vr6.INSTANCE;
                String str = mk2Var.b;
                boolean z2 = this.b;
                String str2 = z2 ? "Protecting" : "Unprotecting";
                ji jiVar = mk2Var.e;
                if (jiVar == null) {
                    pe4.F("app");
                    throw null;
                }
                vr6.i$default(vr6Var, str, str2 + " cloud backup for " + jiVar.asString() + " with backup id: " + appCloudBackup.getBackupId(), null, 4, null);
                metadata.updateProtection(z2);
                ji jiVar2 = mk2Var.e;
                if (jiVar2 == null) {
                    pe4.F("app");
                    throw null;
                }
                String appId = jiVar2.getAppId();
                zc2 zc2Var = re3.a;
                af3 af3VarC = cf3.c(re3.a(appId, appCloudBackup.getBackupId()), metadata);
                if (pe4.d(af3VarC, ze3.b)) {
                    vr6.i$default(vr6Var, mk2Var.b, (z2 ? "Protection" : "Unprotection").concat(" successful"), null, 4, null);
                    return be8Var;
                }
                if (!(af3VarC instanceof ye3)) {
                    q.j();
                    return null;
                }
                String str3 = mk2Var.b;
                String str4 = z2 ? "Protection" : "Unprotection";
                vr6.e$default(vr6Var, str3, str4 + " failed: " + ((ye3) af3VarC).b, null, 4, null);
                return be8Var;
        }
    }

    public /* synthetic */ m20(AppCloudBackup appCloudBackup, mk2 mk2Var, boolean z) {
        this.c = appCloudBackup;
        this.d = mk2Var;
        this.b = z;
    }
}
