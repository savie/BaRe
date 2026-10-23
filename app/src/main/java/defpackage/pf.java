package defpackage;

import android.view.MenuItem;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.pcloud.sdk.internal.a;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Set;
import okhttp3.Response;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitItem;
import org.swiftapps.swiftbackup.slog.SLogActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pf implements g36, OnCompleteListener, h9, er5, OnSuccessListener, at5, t45, hm6, ny6 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ pf(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.hm6
    public Object a(Response response) {
        return ((hw3) ((a) this.b).f(response, hw3.class)).d();
    }

    @Override // defpackage.t45
    public void b(boolean z, boolean z2) {
        MessagesDashActivity messagesDashActivity = (MessagesDashActivity) this.b;
        int i = MessagesDashActivity.T;
        if (z2) {
            dz5.o(messagesDashActivity, (Set) dz5.d.getValue(), true);
            return;
        }
        if (!z) {
            dz5.q(messagesDashActivity, (Set) dz5.d.getValue());
            return;
        }
        CoordinatorLayout coordinatorLayout = messagesDashActivity.Y().a;
        coordinatorLayout.getClass();
        int i2 = 0;
        coordinatorLayout.setVisibility(0);
        messagesDashActivity.V().e.e(messagesDashActivity, new ps0(2, new hj(messagesDashActivity, 19)));
        messagesDashActivity.F().f.e(messagesDashActivity, new ne5(i2, new v10(messagesDashActivity, 15)));
        messagesDashActivity.F().g.e(messagesDashActivity, new ne5(i2, new px(messagesDashActivity, 12)));
    }

    @Override // defpackage.er5
    public Object construct() {
        Type type = (Type) this.b;
        if (!(type instanceof ParameterizedType)) {
            throw new ik4("Invalid EnumMap type: " + type);
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return new EnumMap((Class) type2);
        }
        throw new ik4("Invalid EnumMap type: " + type);
    }

    @Override // defpackage.at5
    public void d(Object obj) {
        sc3 sc3Var = (sc3) this.b;
        nd3 nd3Var = ((uc3) obj).b;
        nd3Var.getClass();
        sc3Var.k(((cd3) nd3Var).hasSystem(), true);
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        lr1 lr1Var = (lr1) this.b;
        List list = (List) obj;
        list.getClass();
        ArrayList arrayList = null;
        if (list.isEmpty()) {
            list = null;
        }
        if (list != null) {
            arrayList = new ArrayList();
            for (Object obj2 : list) {
                if (((AppBackupLimitItem) obj2).isValid()) {
                    arrayList.add(obj2);
                }
            }
        }
        lr1Var.r().k(ConfigSettings.copy$default(lr1Var.r().j(), 0, null, null, null, null, null, arrayList, null, null, null, null, null, null, null, null, null, 65471, null));
    }

    @Override // defpackage.ny6
    public boolean isCancellationRequested() {
        Object obj = ((ap6) this.b).b.get();
        obj.getClass();
        return ((Boolean) obj).booleanValue();
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        mt3 mt3Var = (mt3) this.b;
        task.getClass();
        if (mt3Var != null) {
            mt3Var.invoke(Boolean.TRUE);
        }
    }

    @Override // defpackage.g36
    public boolean onMenuItemClick(MenuItem menuItem) {
        ApkImportActivity apkImportActivity = (ApkImportActivity) this.b;
        int i = ApkImportActivity.Q;
        if (menuItem.getItemId() != R.id.action_swiftlogger) {
            return true;
        }
        ai8.q(apkImportActivity, SLogActivity.class);
        return true;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 4:
                ((h32) obj2).invoke(obj);
                break;
            default:
                ((tv3) obj2).invoke(obj);
                break;
        }
    }
}
