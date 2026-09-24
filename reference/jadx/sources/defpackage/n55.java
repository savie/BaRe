package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.preference.CheckBoxPreference;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import java.util.Locale;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity;
import org.swiftapps.swiftbackup.manage.ManageSpaceActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;
import org.swiftapps.swiftbackup.notice.NoticeListActivity;
import org.swiftapps.swiftbackup.password.UserPasswordActivity;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.swiftapps.swiftbackup.wifi.WifiActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class n55 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ n55(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        xp1 xp1Var;
        int i = this.a;
        int i2 = 0;
        be8 be8Var = be8.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                int i3 = ManageSpaceActivity.O;
                return (CircularProgressIndicator) ((r55) ((ManageSpaceActivity) obj).K.getValue()).c.b;
            case 1:
                int i4 = MegaSignInActivity.S;
                return ((MegaSignInActivity) obj).N().f.c;
            case 2:
                int i5 = MessagesDashActivity.T;
                return oi7.a(((MessagesDashActivity) obj).getLayoutInflater());
            case 3:
                int i6 = NoticeListActivity.N;
                return new qo5((NoticeListActivity) obj, false, false);
            case 4:
                int i7 = SLogActivity.R;
                return ((th7) ((SLogActivity) obj).L.getValue()).c;
            case 5:
                Map map = ScheduleFabMenuView.K;
                return Integer.valueOf(((ScheduleFabMenuView) obj).getResources().getDimensionPixelSize(R.dimen.fab_margin));
            case 6:
                int i8 = ScheduleFolderSelectActivity.R;
                return ((ScheduleFolderSelectActivity) obj).O().c;
            case 7:
                Integer appsCompressionLevel = ((AppSettings) obj).getAppsCompressionLevel();
                xp1.Companion.getClass();
                xp1[] xp1VarArrA = wp1.a();
                while (true) {
                    if (i2 < 2) {
                        xp1Var = xp1VarArrA[i2];
                        int level = xp1Var.getLevel();
                        if (appsCompressionLevel == null || level != appsCompressionLevel.intValue()) {
                            i2++;
                        }
                    } else {
                        xp1Var = null;
                    }
                }
                if (xp1Var == null) {
                    xp1.Companion.getClass();
                    xp1Var = xp1.DEFAULT;
                }
                xp1Var.getClass();
                int level2 = xp1Var.getLevel();
                SharedPreferences.Editor editor = cz4.k;
                if (editor != null) {
                    editor.putInt("compression_level_app_data", level2).apply();
                    return be8Var;
                }
                pe4.F("editor");
                throw null;
            case 8:
                final pa7 pa7Var = (pa7) obj;
                final boolean zB = hp0.b("org.swiftapps.swiftbackup");
                SettingsActivity settingsActivity = (SettingsActivity) pa7Var.getActivity();
                if (settingsActivity != null && !settingsActivity.isFinishing()) {
                    settingsActivity.runOnUiThread(new Runnable() { // from class: na7
                        @Override // java.lang.Runnable
                        public final void run() {
                            ((CheckBoxPreference) pa7Var.y.getValue()).G(zB);
                        }
                    });
                }
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                SwiftApp.Companion companion = SwiftApp.d;
                Context contextC = SwiftApp.Companion.c();
                Locale locale = Locale.ENGLISH;
                locale.getClass();
                return ((zn7) obj).q(sz8.u(contextC, locale));
            case 10:
                TeraBoxSignInActivity teraBoxSignInActivity = (TeraBoxSignInActivity) obj;
                int i9 = TeraBoxSignInActivity.N;
                if (!teraBoxSignInActivity.isFinishing() && !teraBoxSignInActivity.M) {
                    teraBoxSignInActivity.setResult(0);
                    teraBoxSignInActivity.finish();
                }
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return ((qa8) ((pa8) obj).K).b;
            case 12:
                int i10 = UserPasswordActivity.O;
                return ((UserPasswordActivity) obj).N().c;
            default:
                WifiActivity wifiActivity = (WifiActivity) obj;
                et8 et8Var = WifiActivity.Y;
                return new bs8(wifiActivity, wifiActivity.X().k, wifiActivity.a0());
        }
    }
}
