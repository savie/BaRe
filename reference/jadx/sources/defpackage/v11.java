package defpackage;

import androidx.fragment.app.u;
import androidx.preference.Preference;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class v11 extends fm0 implements t36 {
    public final gv7 p = new gv7(new ej(this, 11));
    public final gv7 q = new gv7(new fj(this, 14));

    @Override // defpackage.t36
    public final boolean d(Preference preference) {
        String string;
        String str = preference.t;
        int i = 7;
        if (!pe4.d(str, "max_call_backups")) {
            if (pe4.d(str, "compression_level_calls")) {
                vp1.a(requireActivity(), ho6.p(), new c7(this, i));
            }
            return false;
        }
        Integer[] numArr = {null, 1, 5, 10, 20, 50, 100};
        ArrayList arrayList = new ArrayList(7);
        for (int i2 = 0; i2 < 7; i2++) {
            Integer num = numArr[i2];
            if (num == null || (string = String.valueOf(num.intValue())) == null) {
                u activity = getActivity();
                activity.getClass();
                string = ((SettingsDetailActivity) activity).getString(R.string.no_limit);
                string.getClass();
            }
            arrayList.add(string);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        int iR0 = x50.r0(numArr, ho6.s());
        jh6 jh6Var = new jh6();
        jh6Var.a = iR0;
        u uVarRequireActivity = requireActivity();
        s35 s35Var = new s35(uVarRequireActivity, R.style.M3AlertDialogTheme, new hv1(uVarRequireActivity, R.style.M3AlertDialogTheme), null);
        ((ra) s35Var.b).d = getString(R.string.max_number_backups_to_keep);
        s35Var.u(strArr, iR0, new t11(jh6Var, 0));
        s35Var.s(R.string.ok, new u11(numArr, jh6Var, this));
        s35Var.q(R.string.cancel, null);
        s35Var.m();
        return false;
    }

    @Override // defpackage.c46
    public final void l() {
        i(R.xml.settings_calls);
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).f = this;
        }
        r();
        q();
    }

    public final void q() {
        int i;
        Preference preference = (Preference) this.q.getValue();
        xp1 xp1VarP = ho6.p();
        xp1VarP.getClass();
        switch (up1.a[xp1VarP.ordinal()]) {
            case 1:
                i = R.string.compression_level_type_store;
                break;
            case 2:
                i = R.string.compression_level_type_fastest;
                break;
            case 3:
                i = R.string.compression_level_type_fast;
                break;
            case 4:
                i = R.string.compression_level_type_normal;
                break;
            case 5:
                i = R.string.compression_level_type_maximum;
                break;
            case 6:
                i = R.string.compression_level_type_ultra;
                break;
            default:
                q.j();
                return;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(i);
        string.getClass();
        preference.B(string);
    }

    public final void r() {
        String string;
        Preference preference = (Preference) this.p.getValue();
        Integer numS = ho6.s();
        if (numS == null || (string = String.valueOf(numS.intValue())) == null) {
            u activity = getActivity();
            activity.getClass();
            string = ((SettingsDetailActivity) activity).getString(R.string.no_limit);
            string.getClass();
        }
        preference.B(string);
    }
}
