package defpackage;

import android.content.DialogInterface;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vf3 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ vf3(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Object obj = this.b;
        switch (i2) {
            case 0:
                bt3 bt3Var = (bt3) obj;
                if (bt3Var != null) {
                    bt3Var.invoke();
                }
                break;
            case 1:
                hq0 hq0Var = (hq0) obj;
                dialogInterface.dismiss();
                hq0Var.invoke(Boolean.valueOf(i == 0));
                break;
            default:
                TaskActivity taskActivity = (TaskActivity) obj;
                int i3 = TaskActivity.c0;
                vr6.i$default(vr6.INSTANCE, taskActivity.r(), "Force stopped by user", null, 4, null);
                Const.E(taskActivity.r().concat(": Force stopped by user"));
                break;
        }
    }
}
