package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import com.microsoft.identity.common.java.ui.AuthorizationAgent;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class bs4 {
    public static AuthorizationAgent a() {
        String string;
        AuthorizationAgent authorizationAgentValueOf = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("onedrive_auth_agent", null);
            if (string != null && string.length() != 0) {
                try {
                    authorizationAgentValueOf = AuthorizationAgent.valueOf(string);
                } catch (Exception unused) {
                }
                if (authorizationAgentValueOf != null) {
                    return authorizationAgentValueOf;
                }
            }
            return AuthorizationAgent.BROWSER;
        } catch (ClassCastException unused2) {
            string = null;
        }
    }

    public static void b() {
        boolean z = q63.d;
        boolean zC = c();
        q63.e = zC;
        String strM = dj7.m("SAF Usage allowed: ", zC);
        if (c()) {
            vr6.i$default(vr6.INSTANCE, "LabsSettingsFragment", strM, null, 4, null);
        } else {
            Log.i("LabsSettingsFragment", strM);
        }
    }

    public static boolean c() {
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean("use_saf", false);
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            return false;
        }
    }
}
