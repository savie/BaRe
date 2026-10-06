package defpackage;

import androidx.fragment.app.u;
import androidx.preference.Preference;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eu1 extends fm0 implements t36 {
    @Override // defpackage.t36
    public final boolean d(Preference preference) {
        String str = preference.t;
        int i = 0;
        if (pe4.d(str, "email")) {
            zn4 zn4Var = zn4.a;
            zn4.b(null, new du1(this, null, i));
        } else if (pe4.d(str, "telegram_group")) {
            u activity = getActivity();
            activity.getClass();
            if (!ai8.k((SettingsDetailActivity) activity, "https://t.me/swiftbackupsupport")) {
                u activity2 = getActivity();
                activity2.getClass();
                String string = getString(R.string.no_browser_found_error);
                string.getClass();
                ai8.n((SettingsDetailActivity) activity2, string);
            }
        }
        return false;
    }

    @Override // defpackage.c46
    public final void l() {
        i(R.xml.settings_contact);
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).f = this;
        }
    }
}
