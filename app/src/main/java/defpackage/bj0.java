package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class bj0 implements bt3 {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ Object b;
    public final /* synthetic */ List c;
    public final /* synthetic */ Object d;

    public /* synthetic */ bj0(ln5 ln5Var, cj0 cj0Var, List list, mj0 mj0Var) {
        this.b = ln5Var;
        this.c = list;
        this.d = mj0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        be8 be8Var = be8.a;
        List list = this.c;
        Object obj = this.d;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ln5 ln5Var = (ln5) obj2;
                ArrayList arrayList = new ArrayList();
                for (jj0 jj0Var : ((mj0) obj).f) {
                    if (pe4.d(jj0Var.a, "locations")) {
                        ArrayList arrayListA = jj0Var.a();
                        ArrayList<String> arrayList2 = new ArrayList(hl1.G0(arrayListA, 10));
                        Iterator it = arrayListA.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(((li0) it.next()).a);
                        }
                        for (String str : arrayList2) {
                            q05.Companion.getClass();
                            q05 q05VarA = o05.a(str);
                            if (q05VarA != null) {
                                arrayList.add(q05VarA);
                            }
                        }
                        for (li0 li0Var : jj0Var.c) {
                            o05 o05Var = q05.Companion;
                            String str2 = li0Var.a;
                            o05Var.getClass();
                            q05 q05VarA2 = o05.a(str2);
                            if (!li0Var.b() && q05VarA2 != null) {
                                q05VarA2.setCheckedInExpansion(4, li0Var.a());
                            }
                        }
                    }
                }
                az7 az7Var = new az7(list, arrayList);
                boolean zContains = arrayList.contains(q05.CLOUD);
                WallsDashActivity wallsDashActivity = (WallsDashActivity) ln5Var.b;
                if (zContains) {
                    sa1.R(wallsDashActivity, null, new o20(13, wallsDashActivity, az7Var), 1);
                } else {
                    pp8 pp8VarY = wallsDashActivity.a0();
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new z72(az7Var, pp8VarY, null));
                }
                return be8Var;
            case 1:
                int i2 = FoldersBatchActivity.Y;
                ((FoldersBatchActivity) obj2).a0().j((ArrayList) list, (wy7) obj);
                return be8Var;
            default:
                ScheduleItem.Messages messages = (ScheduleItem.Messages) obj;
                String str3 = ScheduleService.p;
                xy7 xy7VarC = ((ScheduleService) obj2).c(messages.getItemId(), messages.getLocations(), messages.getSyncOption());
                if (xy7VarC == null) {
                    return null;
                }
                return new ff5(list, xy7VarC);
        }
    }

    public /* synthetic */ bj0(FoldersBatchActivity foldersBatchActivity, ArrayList arrayList, wy7 wy7Var) {
        this.b = foldersBatchActivity;
        this.c = arrayList;
        this.d = wy7Var;
    }

    public /* synthetic */ bj0(ScheduleService scheduleService, ScheduleItem.Messages messages, List list) {
        this.b = scheduleService;
        this.d = messages;
        this.c = list;
    }
}
