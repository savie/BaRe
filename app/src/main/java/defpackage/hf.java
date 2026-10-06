package defpackage;

import java.util.LinkedHashMap;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hf implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ hf(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                zf zfVar = (zf) obj2;
                cw5 cw5Var = (cw5) obj;
                int i2 = ApkImportActivity.Q;
                cw5Var.getClass();
                mg mgVarO = ((ApkImportActivity) obj3).U();
                zfVar.getClass();
                mgVarO.j(zfVar);
                mgVarO.o(new eg(mgVarO.l(), cw5Var));
                break;
            case 1:
                SyncOption syncOption = (SyncOption) obj;
                syncOption.getClass();
                ScheduleItem scheduleItem = (ScheduleItem) ((mt3) obj3).invoke(syncOption);
                u10 u10Var = ((j57) obj2).o;
                if (u10Var != null) {
                    u10Var.invoke(scheduleItem);
                }
                break;
            default:
                String str = (String) obj3;
                LinkedHashMap linkedHashMap = (LinkedHashMap) obj2;
                wm2 wm2Var = (wm2) obj;
                wm2Var.getClass();
                try {
                    r63 r63VarU = wm2Var.u(str, sz8.Y(s5.DELETE), null, x50.A0(new ju6[]{ju6.FILE_SHARE_DELETE, ju6.FILE_SHARE_READ, ju6.FILE_SHARE_WRITE}), 2, null);
                    r63VarU.u();
                    r63VarU.close();
                } catch (Exception e) {
                    linkedHashMap.put("Error deleting file with share modes file.deleteOnClose() at " + str, e);
                }
                break;
        }
        return be8Var;
    }
}
