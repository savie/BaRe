package defpackage;

import android.widget.Toast;
import androidx.fragment.app.u;
import androidx.preference.Preference;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.notice.NoticeListActivity;
import org.swiftapps.swiftbackup.settings.LicensesActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class a3 extends fm0 implements t36 {
    public int q;
    public long r;
    public Toast x;
    public final String p = a3.class.getSimpleName();
    public final int t = 7;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // defpackage.t36
    public final boolean d(Preference preference) {
        String str = preference.t;
        if (str != null) {
            int i = 0;
            switch (str.hashCode()) {
                case -653487437:
                    if (str.equals("notes_from_developer")) {
                        ai8.q(q(), NoticeListActivity.class);
                    }
                    break;
                case 115032:
                    if (str.equals("tos")) {
                        Const.B(q(), "https://www.swiftapps.org/tos");
                        return true;
                    }
                    break;
                case 351608024:
                    if (str.equals("version")) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        boolean z = jCurrentTimeMillis - this.r <= 1000;
                        this.r = jCurrentTimeMillis;
                        if (z) {
                            this.q++;
                        } else {
                            this.q = 1;
                        }
                        int i2 = this.q;
                        int i3 = this.t;
                        if (i2 >= 3) {
                            Toast toastMakeText = Toast.makeText(q().getApplicationContext(), "You are " + (i3 - i2) + " steps away from " + (V.INSTANCE.getT() ? "disabling" : "enabling") + " test options", 0);
                            Toast toast = this.x;
                            if (toast != null) {
                                toast.cancel();
                            }
                            this.x = toastMakeText;
                            toastMakeText.show();
                        }
                        if (this.q >= i3) {
                            this.q = 0;
                            this.r = 0L;
                            V v = V.INSTANCE;
                            v.setT(!v.getT());
                            String str2 = v.getT() ? "Enabled test options" : "Disabled test options";
                            vr6 vr6Var = vr6.INSTANCE;
                            String str3 = this.p;
                            str3.getClass();
                            vr6Var.i(str3, str2, vr6.a.YELLOW);
                            Toast toast2 = this.x;
                            if (toast2 != null) {
                                toast2.cancel();
                            }
                            Const.G(q(), str2.concat(", Restarting app..."), str2);
                            return true;
                        }
                    }
                    break;
                case 926873033:
                    if (str.equals("privacy_policy")) {
                        Const.B(q(), "https://www.swiftapps.org/privacy-policy");
                        return true;
                    }
                    break;
                case 1455272340:
                    if (str.equals("changelog")) {
                        zn4 zn4Var = zn4.a;
                        zn4.b(null, new z2(this, null, i));
                        return true;
                    }
                    break;
                case 2129347739:
                    if (str.equals("notices")) {
                        ai8.q(q(), LicensesActivity.class);
                        return true;
                    }
                    break;
            }
        }
        return true;
    }

    @Override // defpackage.c46
    public final void l() {
        i(R.xml.settings_about);
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).f = this;
        }
        Preference preferenceJ = j("version");
        if (preferenceJ != null) {
            preferenceJ.B("5.1.0 (620)");
        }
    }

    public final SettingsDetailActivity q() {
        u activity = getActivity();
        activity.getClass();
        return (SettingsDetailActivity) activity;
    }
}
