package defpackage;

import android.content.Context;
import android.database.SQLException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s10 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s10(Object obj, Object obj2, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                return new s10((t10) this.c, (List) obj2, jv1Var, 0);
            case 1:
                return new s10((String) this.c, (CloudDiagnosticsActivity) obj2, jv1Var, 1);
            case 2:
                s10 s10Var = new s10((dj6) obj2, jv1Var, 2);
                s10Var.c = obj;
                return s10Var;
            default:
                s10 s10Var2 = new s10((mb8) obj2, jv1Var, 3);
                s10Var2.c = obj;
                return s10Var2;
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                return ((s10) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
            case 1:
                return ((s10) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
            case 2:
                return ((s10) create((JSONObject) obj, (jv1) obj2)).invokeSuspend(be8Var);
            default:
                return ((s10) create((g98) obj, (jv1) obj2)).invokeSuspend(be8Var);
        }
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws JSONException {
        Boolean bool;
        Double d;
        Integer num;
        Integer num2;
        Double d2;
        Boolean bool2;
        g98 g98Var;
        Object objB;
        Object objA;
        int i = this.a;
        int i2 = 2;
        be8 be8Var = be8.a;
        Object obj2 = this.d;
        yx1 yx1Var = yx1.a;
        int i3 = 1;
        String string = null;
        num = null;
        num = null;
        Integer num3 = null;
        string = null;
        switch (i) {
            case 0:
                t10 t10Var = (t10) this.c;
                int i4 = this.b;
                if (i4 != 0) {
                    if (i4 == 1) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                List<ji> list = (List) obj2;
                AppListActivity appListActivity = t10Var.Q;
                ArrayList arrayList = new ArrayList();
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                int i8 = 0;
                for (ji jiVar : list) {
                    if (jiVar.isInstalled()) {
                        i5++;
                        if (!jiVar.isBundled()) {
                            i8++;
                        }
                    }
                    if (jiVar.hasBackup(appListActivity.b0())) {
                        i7++;
                        if (jiVar.hasRestorableBackup(appListActivity.b0())) {
                            i6++;
                        }
                    }
                }
                arrayList.add(new n10("Backup", 1, R.string.backup, null, R.drawable.ic_check_circle_outline, i5, appListActivity.b0(), false, R.string.backup_options, R.drawable.ic_edit_pencil));
                if (i7 > 0 && i6 == 0) {
                    string = appListActivity.getString(R.string.no_apk_backup);
                }
                String str = string;
                boolean zB0 = appListActivity.b0();
                arrayList.add(new n10("Restore", 1, zB0 ? R.string.restore_from_cloud : R.string.restore, str, R.drawable.ic_restore, i6, zB0, true, R.string.restore_options, R.drawable.ic_edit_pencil));
                if (appListActivity.Y().isLocalSection()) {
                    arrayList.add(new n10("Sync backups", 1, R.string.sync_device_backup_to_cloud, null, R.drawable.ic_cloud, i7, false, false, R.string.sync_options, R.drawable.ic_edit_pencil));
                }
                boolean zB1 = appListActivity.b0();
                arrayList.add(new n10("Delete backups", 1, zB1 ? R.string.delete_cloud_backup : R.string.delete_local_backup, null, R.drawable.ic_delete_sweep, i7, zB1, false, R.string.delete_backup, R.drawable.ic_delete_sweep));
                arrayList.add(new n10("Export apps list", 2, R.string.export_apps_list, null, R.drawable.ic_format_list_bulleted, list.size(), appListActivity.b0(), false, R.string.export_apps_list, R.drawable.ic_check));
                arrayList.add(new n10("Apply labels", 2, R.string.set_app_labels, null, R.drawable.ic_label_outline, list.size(), appListActivity.b0(), false, R.string.batch_actions, R.drawable.ic_edit_pencil));
                arrayList.add(new n10("Enable/Disable apps", 2, R.string.enable_disable_apps, null, R.drawable.ic_disable, i5, appListActivity.b0(), true, R.string.enable_disable_apps, R.drawable.ic_edit_pencil));
                if (appListActivity.Y().isLocalSection()) {
                    arrayList.add(new n10("Uninstall", 2, R.string.uninstall_user_apps, null, R.drawable.ic_delete, i8, appListActivity.b0(), true, R.string.uninstall, R.drawable.ic_delete));
                }
                zn4 zn4Var = zn4.a;
                kg kgVar = new kg(i2, t10Var, arrayList);
                this.b = 1;
                return zn4.g(kgVar, this) == yx1Var ? yx1Var : be8Var;
            case 1:
                CloudDiagnosticsActivity cloudDiagnosticsActivity = (CloudDiagnosticsActivity) obj2;
                int i9 = this.b;
                if (i9 != 0) {
                    if (i9 == 1) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                String str2 = (String) this.c;
                if (str2 == null) {
                    ef1 ef1Var = cloudDiagnosticsActivity.U().h;
                    if (ef1Var == null) {
                        str2 = "";
                    } else {
                        List list2 = ef1Var.g;
                        ArrayList arrayList2 = new ArrayList();
                        for (Object obj3 : list2) {
                            md1 md1Var = (md1) obj3;
                            if (md1Var.a.d && md1Var.b) {
                                arrayList2.add(obj3);
                            }
                        }
                        ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList2, 10));
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            arrayList3.add(((md1) it.next()).a.a);
                        }
                        str2 = hf1.k(ef1Var, el1.z1(arrayList3)).a;
                    }
                }
                Context applicationContext = cloudDiagnosticsActivity.getApplicationContext();
                applicationContext.getClass();
                vr6 vr6Var = vr6.INSTANCE;
                q63 q63VarA = dt7.a(applicationContext, true, vr6.filterLogs$default(vr6Var, vr6Var.getMessages(), false, false, false, 14, null));
                zn4 zn4Var2 = zn4.a;
                y10 y10Var = new y10(i3, cloudDiagnosticsActivity, q63VarA, str2);
                this.b = 1;
                return zn4.g(y10Var, this) == yx1Var ? yx1Var : be8Var;
            case 2:
                dj6 dj6Var = (dj6) obj2;
                int i10 = this.b;
                if (i10 != 0) {
                    if (i10 == 1) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                JSONObject jSONObject = (JSONObject) this.c;
                Log.d("FirebaseSessions", "Fetched settings: " + jSONObject);
                if (jSONObject.has("app_quality")) {
                    Object obj4 = jSONObject.get("app_quality");
                    obj4.getClass();
                    JSONObject jSONObject2 = (JSONObject) obj4;
                    try {
                        bool2 = jSONObject2.has("sessions_enabled") ? (Boolean) jSONObject2.get("sessions_enabled") : null;
                        try {
                            d2 = jSONObject2.has("sampling_rate") ? (Double) jSONObject2.get("sampling_rate") : null;
                            try {
                                num2 = jSONObject2.has("session_timeout_seconds") ? (Integer) jSONObject2.get("session_timeout_seconds") : null;
                                try {
                                    if (jSONObject2.has("cache_duration")) {
                                        num3 = (Integer) jSONObject2.get("cache_duration");
                                    }
                                } catch (JSONException e) {
                                    e = e;
                                    x13.d(Log.e("FirebaseSessions", "Error parsing the configs remotely fetched: ", e));
                                }
                            } catch (JSONException e2) {
                                e = e2;
                                num2 = null;
                            }
                        } catch (JSONException e3) {
                            e = e3;
                            num2 = null;
                            d2 = null;
                        }
                    } catch (JSONException e4) {
                        e = e4;
                        num2 = null;
                        d2 = null;
                        bool2 = null;
                    }
                    num = num2;
                    d = d2;
                    bool = bool2;
                    break;
                } else {
                    bool = null;
                    d = null;
                    num = null;
                }
                ka7 ka7Var = dj6Var.e;
                int iIntValue = num3 != null ? num3.intValue() : dj6.g;
                dj6Var.a.getClass();
                m87 m87Var = new m87(bool, d, num, new Integer(iIntValue), new Long(a48.a().c));
                this.b = 1;
                return ka7Var.c(m87Var, this) == yx1Var ? yx1Var : be8Var;
            default:
                int i11 = this.b;
                try {
                    if (i11 != 0) {
                        if (i11 == 1) {
                            g98Var = (g98) this.c;
                            lg7.H(obj);
                            objB = obj;
                        } else {
                            if (i11 != 2) {
                                l0.e("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            lg7.H(obj);
                            objA = obj;
                        }
                        return (Set) objA;
                    }
                    lg7.H(obj);
                    g98Var = (g98) this.c;
                    this.c = g98Var;
                    this.b = 1;
                    objB = g98Var.b(this);
                    if (objB == yx1Var) {
                        return yx1Var;
                    }
                    if (!((Boolean) objB).booleanValue()) {
                        f98 f98Var = f98.b;
                        xg3 xg3Var = new xg3((mb8) obj2, null);
                        this.c = null;
                        this.b = 2;
                        objA = g98Var.a(f98Var, xg3Var, this);
                        if (objA == yx1Var) {
                            return yx1Var;
                        }
                        return (Set) objA;
                    }
                } catch (SQLException unused) {
                }
                return sv2.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s10(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.d = obj;
    }
}
