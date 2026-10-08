package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.util.Log;
import android.view.MenuItem;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class iq0 implements w76, mo1, OnCompleteListener, g36, dv7 {
    public final /* synthetic */ Object a;
    public final /* synthetic */ Object b;

    public /* synthetic */ iq0(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    @Override // defpackage.w76
    public void a(yq0 yq0Var, ib ibVar) {
        ArrayList arrayList = (ArrayList) this.a;
        CountDownLatch countDownLatch = (CountDownLatch) this.b;
        yq0Var.getClass();
        List list = (List) ibVar.b;
        list.getClass();
        vr6.d$default(vr6.INSTANCE, "BillingManager", xs1.h(list.size(), "Fetched subscription SKU details: Total: (", ")"), null, 4, null);
        if (yq0Var.a != 0 || list.isEmpty()) {
            wq0 wq0Var = wq0.a;
            wq0.d("_queryProductDetailsFromGooglePlay", "Error when querying subscription skus: " + yq0Var);
        } else {
            arrayList.addAll(list);
        }
        countDownLatch.countDown();
    }

    @Override // defpackage.dv7
    public Object g() {
        fg8 fg8Var = (fg8) this.a;
        oe0 oe0Var = (oe0) this.b;
        mw6 mw6Var = fg8Var.c;
        mw6Var.getClass();
        return (Iterable) mw6Var.g(new vf1(mw6Var, oe0Var));
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        return new wd0((String) this.a, ((kt4) this.b).a((Context) pp0Var.b(Context.class)));
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        d45 d45Var = (d45) this.a;
        mt3 mt3Var = (mt3) this.b;
        task.getClass();
        Log.d("d45", "clearAnonymousSignIn");
        V.INSTANCE.setNon(null);
        mt3Var.invoke(task);
        d45Var.b();
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    @Override // defpackage.g36
    public boolean onMenuItemClick(MenuItem menuItem) {
        final je5 je5Var = (je5) this.a;
        final vd5 vd5Var = (vd5) this.b;
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_restore_sms_backup) {
            je5Var.V(vd5Var);
            return true;
        }
        if (itemId == R.id.action_sync_sms_backup) {
            sa1.R(je5Var, null, new cv(12, je5Var, vd5Var), 1);
            return true;
        }
        if (itemId == R.id.action_delete_sms_backup) {
            if (!vd5Var.isCloudItem()) {
                s35 s35Var = new s35(je5Var, R.style.M3AlertDialogTheme, new hv1(je5Var, R.style.M3AlertDialogTheme), null);
                s35Var.v(R.string.delete_backup);
                s35Var.n(R.string.sure_to_proceed);
                s35Var.s(R.string.yes, new DialogInterface.OnClickListener() { // from class: ie5
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        me5 me5VarV = je5Var.V();
                        vd5 vd5Var2 = vd5Var;
                        me5VarV.j(nc8.I(vd5Var2), vd5Var2.isCloudItem());
                    }
                });
                s35Var.q(R.string.no, null);
                s35Var.m();
            } else if (Const.d(je5Var)) {
                tb1 tb1Var = tb1.a;
                if (qb1.m()) {
                    s35 s35Var2 = new s35(je5Var, R.style.M3AlertDialogTheme, new hv1(je5Var, R.style.M3AlertDialogTheme), null);
                    s35Var2.v(R.string.delete_backup);
                    s35Var2.n(R.string.sure_to_proceed);
                    s35Var2.s(R.string.yes, new DialogInterface.OnClickListener() { // from class: ie5
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            me5 me5VarV = je5Var.V();
                            vd5 vd5Var2 = vd5Var;
                            me5VarV.j(nc8.I(vd5Var2), vd5Var2.isCloudItem());
                        }
                    });
                    s35Var2.q(R.string.no, null);
                    s35Var2.m();
                }
            }
        }
        return true;
    }
}
