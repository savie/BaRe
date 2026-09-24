package defpackage;

import androidx.fragment.app.u;
import androidx.preference.Preference;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zn3 extends fm0 implements t36 {
    public final gv7 p = new gv7(new ah(this, 29));

    @Override // defpackage.t36
    public final boolean d(Preference preference) {
        if (!pe4.d(preference.t, "compression_level_folders")) {
            return false;
        }
        u activity = getActivity();
        activity.getClass();
        vp1.a((SettingsDetailActivity) activity, g67.s(), new v10(this, 10));
        return false;
    }

    @Override // defpackage.c46
    public final void l() {
        i(R.xml.settings_folders);
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).f = this;
        }
        q();
    }

    public final void q() {
        int i;
        Preference preference = (Preference) this.p.getValue();
        xp1 xp1VarS = g67.s();
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
}
