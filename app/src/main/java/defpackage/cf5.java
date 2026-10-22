package defpackage;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import androidx.fragment.app.u;
import androidx.preference.Preference;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cf5 extends fm0 implements t36 {
    public final gv7 p = new gv7(new xq4(this, 4));
    public final gv7 q = new gv7(new as4(this, 3));
    public final gv7 r = new gv7(new pr4(this, 4));

    @Override // defpackage.t36
    public final boolean d(Preference preference) {
        String string;
        String str = preference.t;
        if (str != null) {
            int iHashCode = str.hashCode();
            if (iHashCode != -824231578) {
                if (iHashCode != 872703913) {
                    if (iHashCode == 2020232112 && str.equals("max_sms_backups")) {
                        final Integer[] numArr = {null, 1, 5, 10, 20, 50, 100};
                        ArrayList arrayList = new ArrayList(7);
                        for (int i = 0; i < 7; i++) {
                            Integer num = numArr[i];
                            if (num == null || (string = String.valueOf(num.intValue())) == null) {
                                u activity = getActivity();
                                activity.getClass();
                                string = ((SettingsDetailActivity) activity).getString(R.string.no_limit);
                                string.getClass();
                            }
                            arrayList.add(string);
                        }
                        String[] strArr = (String[]) arrayList.toArray(new String[0]);
                        int iR0 = x50.r0(numArr, z85.u());
                        final jh6 jh6Var = new jh6();
                        jh6Var.a = iR0;
                        u uVarRequireActivity = requireActivity();
                        s35 s35Var = new s35(uVarRequireActivity, R.style.M3AlertDialogTheme, new hv1(uVarRequireActivity, R.style.M3AlertDialogTheme), null);
                        ((ra) s35Var.b).d = getString(R.string.max_number_backups_to_keep);
                        s35Var.u(strArr, iR0, new wi2(jh6Var, 3));
                        s35Var.s(R.string.ok, new DialogInterface.OnClickListener() { // from class: bf5
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i2) {
                                Integer num2 = numArr[jh6Var.a];
                                int iIntValue = num2 != null ? num2.intValue() : -1;
                                SharedPreferences.Editor editor = cz4.k;
                                if (editor == null) {
                                    pe4.F("editor");
                                    throw null;
                                }
                                editor.putInt("max_sms_backups", iIntValue).apply();
                                this.r();
                            }
                        });
                        s35Var.q(R.string.cancel, null);
                        s35Var.m();
                        return false;
                    }
                } else if (str.equals("messages_backup_mms")) {
                    boolean z = ((MSwitchPreference) this.r.getValue()).f0;
                    SharedPreferences.Editor editor = cz4.k;
                    if (editor != null) {
                        editor.putBoolean("messages_backup_mms", z).apply();
                        return false;
                    }
                    pe4.F("editor");
                    throw null;
                }
            } else if (str.equals("compression_level_msgs")) {
                vp1.a(requireActivity(), z85.s(), new c7(this, 22));
            }
        }
        return false;
    }

    @Override // defpackage.c46
    public final void l() {
        i(R.xml.settings_messages);
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).f = this;
        }
        r();
        q();
        MSwitchPreference mSwitchPreference = (MSwitchPreference) this.r.getValue();
        boolean z = true;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("messages_backup_mms", true);
            mSwitchPreference.G(z);
        } catch (ClassCastException unused) {
        }
    }

    public final void q() {
        int i;
        Preference preference = (Preference) this.q.getValue();
        xp1 xp1VarS = z85.s();
        xp1VarS.getClass();
        switch (up1.a[xp1VarS.ordinal()]) {
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
        Integer numU = z85.u();
        if (numU == null || (string = String.valueOf(numU.intValue())) == null) {
            u activity = getActivity();
            activity.getClass();
            string = ((SettingsDetailActivity) activity).getString(R.string.no_limit);
            string.getClass();
        }
        preference.B(string);
    }
}
