package defpackage;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.views.ProviderChipGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class nq1 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ nq1(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        String str = null;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                ConfigSettings configSettings = (ConfigSettings) obj2;
                oq1 oq1Var = (oq1) obj;
                qt3 qt3Var = ((pq1) obj3).j;
                if (qt3Var != null) {
                    qt3Var.invoke(configSettings, Integer.valueOf(oq1Var.b()));
                }
                break;
            case 1:
                qj2 qj2Var = (qj2) obj3;
                tu0.y(qj2Var.a, (String) obj2, new xs(3, qj2Var, (zj2) obj));
                break;
            case 2:
                h56 h56Var = (h56) obj3;
                f56 f56Var = (f56) obj;
                Context context = ((r14) obj2).a.getContext();
                context.getClass();
                View viewInflate = LayoutInflater.from(context).inflate(R.layout.premium_cloud_group_dialog, (ViewGroup) null, false);
                ProviderChipGroup providerChipGroup = (ProviderChipGroup) viewInflate.findViewById(R.id.provider_chips);
                ArrayList<g56> arrayList = f56Var.b;
                ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
                for (g56 g56Var : arrayList) {
                    arrayList2.add(new ha6(g56Var.a, g56Var.b));
                }
                providerChipGroup.setChips(arrayList2);
                il0 il0Var = h56Var.u;
                hv1 hv1Var = new hv1(il0Var, R.style.M3AlertDialogTheme);
                il0Var.getClass();
                s35 s35Var = new s35(il0Var, R.style.M3AlertDialogTheme, hv1Var, null);
                String str2 = f56Var.a;
                ra raVar = (ra) s35Var.b;
                raVar.d = str2;
                raVar.s = viewInflate;
                s35Var.s(R.string.close, null);
                s35Var.m();
                break;
            default:
                rh3 rh3Var = (rh3) obj3;
                us5 us5Var = (us5) obj2;
                wa waVar = (wa) obj;
                String strO = rh3Var.o();
                if (strO != null && strO.length() != 0) {
                    String string = nq7.H0(strO).toString();
                    if (string != null && string.length() > 0 && !nq7.j0(string)) {
                        str = string;
                    }
                    if (str != null && str.length() != 0) {
                        V.INSTANCE.getZ().edit().putStringSet("saved_old_user_passwords_set", el1.z1(el1.g1(yx5.i(), nc8.I(str)))).apply();
                    }
                    Log.i("UserOldPasswordsDialog", "Old passwords updated");
                }
                rh3Var.y();
                us5Var.invoke();
                waVar.dismiss();
                break;
        }
    }
}
