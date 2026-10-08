package defpackage;

import org.swiftapps.swiftbackup.tasks.TaskService;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class wx7 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ TaskActivity b;

    public /* synthetic */ wx7(TaskActivity taskActivity, int i) {
        this.a = i;
        this.b = taskActivity;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        TaskActivity taskActivity = this.b;
        switch (i) {
            case 0:
                be8 be8Var = be8.a;
                if (taskActivity.a0) {
                    taskActivity.P(false);
                } else {
                    hy7 hy7Var = hy7.a;
                    gz7 gz7Var = TaskService.b;
                    gz7 gz7Var2 = TaskService.b;
                    if (!gz7Var2.isRunning() && !gz7Var2.isCancelling()) {
                        gz7Var2.isWaiting();
                    }
                }
                return be8Var;
            default:
                int i2 = TaskActivity.c0;
                return taskActivity.N().d;
        }
    }
}
