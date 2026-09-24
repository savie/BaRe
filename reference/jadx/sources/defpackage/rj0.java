package defpackage;

import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rj0 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ rj0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                sj0 sj0Var = (sj0) obj3;
                Long l = (Long) obj;
                l.getClass();
                ((Integer) obj2).getClass();
                if (sj0Var.c.isRunning()) {
                    ag8.g(sj0Var, l);
                }
                break;
            case 1:
                rz0 rz0Var = (rz0) obj;
                ((Integer) obj2).getClass();
                int i2 = CallsDashActivity.T;
                rz0Var.getClass();
                ((CallsDashActivity) obj3).V(rz0Var);
                break;
            case 2:
                FoldersBatchActivity foldersBatchActivity = (FoldersBatchActivity) obj3;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                ((Boolean) obj2).getClass();
                int i3 = FoldersBatchActivity.Y;
                foldersBatchActivity.b0();
                foldersBatchActivity.Z(zBooleanValue);
                break;
            default:
                LabelParams labelParams = (LabelParams) obj;
                ((Integer) obj2).getClass();
                int i4 = LabelsActivity.Z;
                labelParams.getClass();
                zr4 zr4VarV = ((LabelsActivity) obj3).V();
                String id = labelParams.getId();
                if (id != null) {
                    zr4VarV.h = sz8.K(zr4VarV.h, id);
                }
                zr4VarV.k(lr4.e);
                break;
        }
        return be8Var;
    }
}
