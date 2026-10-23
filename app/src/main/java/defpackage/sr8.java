package defpackage;

import android.content.Context;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.wifi.WifiActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class sr8 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ WifiActivity b;

    public /* synthetic */ sr8(WifiActivity wifiActivity, int i) {
        this.a = i;
        this.b = wifiActivity;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        WifiActivity wifiActivity = this.b;
        switch (i) {
            case 0:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                et8 et8Var = WifiActivity.Y;
                if (zBooleanValue) {
                    Context applicationContext = wifiActivity.getApplicationContext();
                    applicationContext.getClass();
                    String string = applicationContext.getString(R.string.password_copied_to_clipboard);
                    string.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.e(new cv(14, applicationContext, string));
                    zn4.f(1000L, new us5(wifiActivity, 13));
                }
                return be8Var;
            default:
                ct8 ct8Var = (ct8) obj;
                et8 et8Var2 = WifiActivity.Y;
                ct8Var.getClass();
                if (ct8Var instanceof at8) {
                    wifiActivity.W().k(true);
                    w45 w45VarW = wifiActivity.W();
                    String string2 = wifiActivity.getString(R.string.restoring);
                    string2.getClass();
                    w45VarW.i(string2);
                    wifiActivity.W().l(100);
                    wifiActivity.W().m(0);
                    WifiActivity.f0(wifiActivity);
                    return be8Var;
                }
                if (!(ct8Var instanceof bt8)) {
                    if (ct8Var.equals(zs8.a)) {
                        sz8.m(wifiActivity.W());
                        return be8Var;
                    }
                    q.j();
                    return null;
                }
                wifiActivity.W().k(false);
                String string3 = wifiActivity.getString(R.string.restoring);
                bt8 bt8Var = (bt8) ct8Var;
                int i2 = bt8Var.c;
                int i3 = bt8Var.b;
                String ssid = bt8Var.a.getSSID();
                StringBuilder sb = new StringBuilder();
                sb.append(string3);
                sb.append(TokenAuthenticationScheme.SCHEME_DELIMITER);
                sb.append(i3);
                sb.append(" / ");
                sb.append(i2);
                wifiActivity.W().i(dj7.n(sb, "\n\n", ssid));
                wifiActivity.W().l(i2);
                wifiActivity.W().m(i3);
                WifiActivity.f0(wifiActivity);
                return be8Var;
        }
    }
}
