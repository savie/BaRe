package defpackage;

import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.SettingsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ij implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ij(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:60:0x01b4  */
    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        boolean z = true;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                rj rjVar = (rj) obj3;
                ji jiVar = rjVar.f;
                k28 k28Var = rjVar.e;
                pi piVar = (pi) obj;
                ((Integer) obj2).getClass();
                piVar.getClass();
                int iA = piVar.a();
                boolean z2 = false;
                z2 = false;
                z2 = false;
                z2 = false;
                z2 = false;
                z2 = false;
                z2 = false;
                z2 = false;
                z2 = false;
                z2 = false;
                z2 = false;
                z2 = false;
                z2 = false;
                z2 = false;
                z2 = false;
                jv1 jv1Var = null;
                if (iA != 21) {
                    if (iA == 22) {
                        mp6 mp6Var = mp6.a;
                        if (mp6.f() && hp0.a) {
                            zn4 zn4Var = zn4.a;
                            zn4.b(null, new nj(rjVar, jv1Var, z2 ? 1 : 0));
                        } else if (b67.b()) {
                            g00 g00Var = g00.a;
                            g00.D(k28Var, jiVar);
                        } else {
                            Const.A(k28Var);
                        }
                    } else if (iA == 31) {
                        bt3 bt3Var = rjVar.t;
                        if (bt3Var != null) {
                            bt3Var.invoke();
                        }
                    } else if (iA != 32) {
                        switch (iA) {
                            case 1:
                                g00 g00Var2 = g00.a;
                                g00.B(k28Var, jiVar);
                                break;
                            case 2:
                                zn4 zn4Var2 = zn4.a;
                                zn4.b(null, new lj(rjVar, null, 0));
                                break;
                            case 3:
                                String packageName = jiVar.getPackageName();
                                k28Var.getClass();
                                packageName.getClass();
                                Intent intent = new Intent("android.intent.action.DELETE");
                                intent.setData(Uri.parse("package:".concat(packageName)));
                                io4.j("Util", null, true, new d11(14, k28Var, intent), 10);
                                z2 = true;
                                break;
                            case 4:
                                zn4 zn4Var3 = zn4.a;
                                zn4.b(null, new mj(rjVar, jv1Var, z2 ? 1 : 0));
                                break;
                            case 5:
                                ai8.l(k28Var, jiVar.getPackageName());
                                z2 = true;
                                break;
                            case 6:
                                Const.J(k28Var, R.string.clear_data, new ej(rjVar, z2 ? 1 : 0));
                                break;
                            case 7:
                                g00 g00Var3 = g00.a;
                                g00.D(k28Var, jiVar);
                                z2 = true;
                                break;
                            case 8:
                                new nh(k28Var).n(new xh(jiVar));
                                break;
                            default:
                                switch (iA) {
                                    case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                        int i2 = LabelsActivity.Z;
                                        k28Var.getClass();
                                        jiVar.getClass();
                                        if (V.INSTANCE.getA()) {
                                            lr4 lr4Var = lr4.a;
                                            if (lr4.g()) {
                                                Intent intentPutExtra = new Intent(k28Var, (Class<?>) LabelsActivity.class).putExtra("labels_activity_mode", 1).putExtra("labels_extra_app", jiVar);
                                                intentPutExtra.getClass();
                                                k28Var.startActivity(intentPutExtra);
                                            } else {
                                                us2.D(k28Var);
                                            }
                                        } else {
                                            int i3 = PremiumActivity.V;
                                            rs9.u(k28Var);
                                        }
                                        break;
                                    case 12:
                                        lr4 lr4Var2 = lr4.a;
                                        Set<String> setF = lr4.f();
                                        if (setF != null) {
                                            ArrayList arrayList = new ArrayList();
                                            for (String str : setF) {
                                                lr4 lr4Var3 = lr4.a;
                                                LabelParams labelParamsC = lr4.c(str);
                                                if (labelParamsC != null) {
                                                    arrayList.add(labelParamsC);
                                                }
                                            }
                                            Set setZ1 = el1.z1(arrayList);
                                            lr4 lr4Var4 = lr4.a;
                                            jiVar.getClass();
                                            zn4.c(new ir4(jiVar, setZ1, z2));
                                        }
                                        break;
                                    case 13:
                                        v53.a.f(jiVar, false);
                                        rjVar.I();
                                        break;
                                    case 14:
                                        int i4 = DetailActivity.b0;
                                        k28Var.getClass();
                                        jiVar.getClass();
                                        Intent intentPutExtra2 = new Intent(k28Var, (Class<?>) DetailActivity.class).putExtra(ji.PARCEL_KEY, jiVar);
                                        intentPutExtra2.getClass();
                                        k28Var.startActivity(intentPutExtra2);
                                        z2 = true;
                                        break;
                                }
                                break;
                        }
                    } else {
                        int i5 = SettingsActivity.Z;
                        bb9.I(k28Var);
                    }
                    if (z) {
                        rjVar.j(z2);
                    }
                } else {
                    zn4 zn4Var4 = zn4.a;
                    zn4.b(null, new pj(rjVar, jv1Var, z2 ? 1 : 0));
                }
                z = false;
                if (z) {
                    rjVar.j(z2);
                }
                break;
            default:
                vq4 vq4Var = (vq4) obj;
                ((Integer) obj2).getClass();
                int i6 = ScheduleLabelsSelectActivity.X;
                vq4Var.getClass();
                ((ScheduleLabelsSelectActivity) obj3).V().j(vq4Var.a.getId(), true);
                break;
        }
        return be8Var;
    }
}
