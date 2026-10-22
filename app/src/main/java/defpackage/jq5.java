package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import com.microsoft.identity.client.PublicClientApplication;
import com.microsoft.identity.client.SingleAccountPublicClientApplication;
import com.microsoft.identity.common.java.ui.AuthorizationAgent;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jq5 {
    public static void a() {
        File[] fileArrListFiles;
        SharedPreferences.Editor editor = cz4.k;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.remove("onedrive_access_token").apply();
        SharedPreferences.Editor editor2 = cz4.k;
        if (editor2 == null) {
            pe4.F("editor");
            throw null;
        }
        editor2.remove("onedrive_access_token_expiry").apply();
        cz4.i("onedrive_conformance_credential_mode");
        cz4.i("onedrive_conformance_client_id");
        cz4.i("onedrive_conformance_refresh_token");
        cz4.i("onedrive_conformance_msal_token_share_mode");
        SwiftApp.Companion companion = SwiftApp.d;
        File parentFile = SwiftApp.Companion.c().getFilesDir().getParentFile();
        if (parentFile != null && (fileArrListFiles = nc3.U(parentFile, "shared_prefs").listFiles()) != null) {
            ArrayList arrayList = new ArrayList();
            for (File file : fileArrListFiles) {
                String name = file.getName();
                name.getClass();
                if (uq7.V(name, "com.microsoft", false)) {
                    arrayList.add(file);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((File) it.next()).delete();
            }
        }
        zn4 zn4Var = zn4.a;
        zn4.c(new qm(16));
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0027 A[Catch: all -> 0x0025, TryCatch #0 {all -> 0x0025, blocks: (B:14:0x001b, B:19:0x0027, B:22:0x0030), top: B:27:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    /* JADX WARN: Code duplicated, block: B:22:0x0030 A[Catch: all -> 0x0025, TRY_LEAVE, TryCatch #0 {all -> 0x0025, blocks: (B:14:0x001b, B:19:0x0027, B:22:0x0030), top: B:27:0x001b }] */
    public static boolean b(jq5 jq5Var, boolean z, int i) {
        SingleAccountPublicClientApplication singleAccountPublicClientApplicationC;
        boolean zA = false;
        if ((i & 2) != 0) {
            z = false;
        }
        if (z) {
            jq5Var.getClass();
        } else {
            jq5Var.getClass();
            if (d()) {
                return true;
            }
        }
        synchronized (nq5.k) {
            if (z) {
                singleAccountPublicClientApplicationC = nq5.i.c();
                if (singleAccountPublicClientApplicationC == null) {
                    zA = oq5.a(singleAccountPublicClientApplicationC, z);
                }
            } else {
                try {
                    jq5 jq5Var2 = nq5.i;
                    if (d()) {
                        zA = true;
                    } else {
                        singleAccountPublicClientApplicationC = nq5.i.c();
                        if (singleAccountPublicClientApplicationC == null) {
                            zA = oq5.a(singleAccountPublicClientApplicationC, z);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zA;
    }

    public static boolean d() {
        String string;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("onedrive_access_token", null);
            long j = 0;
            try {
                SharedPreferences sharedPreferences2 = cz4.f;
                if (sharedPreferences2 != null) {
                    j = sharedPreferences2.getLong("onedrive_access_token_expiry", 0L);
                    return (string == null || string.length() == 0 || System.currentTimeMillis() >= j) ? false : true;
                }
                pe4.F("prefs");
                throw null;
            } catch (ClassCastException unused) {
            }
        } catch (ClassCastException unused2) {
            string = null;
        }
    }

    public static void e(String str, Date date) {
        vr6.d$default(vr6.INSTANCE, "OClient", dj7.l("saveAccessToken: token=", nq7.G0(6, str), ", expiry=", Const.s(date.getTime())), null, 4, null);
        SharedPreferences.Editor editor = cz4.k;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.putString("onedrive_access_token", str).apply();
        long time = date.getTime();
        SharedPreferences.Editor editor2 = cz4.k;
        if (editor2 != null) {
            editor2.putLong("onedrive_access_token_expiry", time).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0034 A[Catch: all -> 0x0039, TRY_ENTER, TryCatch #2 {all -> 0x0039, blocks: (B:4:0x0003, B:6:0x0008, B:7:0x0012, B:9:0x0016, B:14:0x0024, B:17:0x002b, B:38:0x0080, B:22:0x0034, B:10:0x001b, B:11:0x0020, B:27:0x003b, B:28:0x0055, B:32:0x006a, B:37:0x007e, B:36:0x0071), top: B:47:0x0003, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0063  */
    /* JADX WARN: Code duplicated, block: B:31:0x0067  */
    public final synchronized SingleAccountPublicClientApplication c() {
        int i;
        String string;
        AuthorizationAgent authorizationAgentValueOf;
        try {
            SingleAccountPublicClientApplication singleAccountPublicClientApplication = nq5.j;
            SingleAccountPublicClientApplication singleAccountPublicClientApplicationCreateSingleAccountPublicClientApplication = null;
            if (singleAccountPublicClientApplication != null) {
                AuthorizationAgent authorizationAgent = singleAccountPublicClientApplication.getConfiguration().getAuthorizationAgent();
                try {
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    string = sharedPreferences.getString("onedrive_auth_agent", null);
                    if (string == null || string.length() == 0) {
                        authorizationAgentValueOf = AuthorizationAgent.BROWSER;
                    } else {
                        try {
                            authorizationAgentValueOf = AuthorizationAgent.valueOf(string);
                        } catch (Exception unused) {
                            authorizationAgentValueOf = null;
                        }
                        if (authorizationAgentValueOf == null) {
                            authorizationAgentValueOf = AuthorizationAgent.BROWSER;
                        }
                    }
                    if (authorizationAgent != authorizationAgentValueOf) {
                        vr6.i$default(vr6.INSTANCE, "OClient", "Setting OneDrive client application with Authorization Agent: " + bs4.a(), null, 4, null);
                        try {
                            SwiftApp.Companion companion = SwiftApp.d;
                            Context contextC = SwiftApp.Companion.c();
                            if (bs4.a() == AuthorizationAgent.WEBVIEW) {
                                i = R.raw.odrive_webview;
                            } else {
                                i = R.raw.odrive_browser;
                            }
                            singleAccountPublicClientApplicationCreateSingleAccountPublicClientApplication = PublicClientApplication.createSingleAccountPublicClientApplication(contextC, i);
                        } catch (Exception e) {
                            vr6.e$default(vr6.INSTANCE, "OClient", "getClientApplication", e, null, 8, null);
                        }
                        nq5.j = singleAccountPublicClientApplicationCreateSingleAccountPublicClientApplication;
                    }
                } catch (ClassCastException unused2) {
                    string = null;
                }
            } else {
                vr6.i$default(vr6.INSTANCE, "OClient", "Setting OneDrive client application with Authorization Agent: " + bs4.a(), null, 4, null);
                SwiftApp.Companion companion2 = SwiftApp.d;
                Context contextC2 = SwiftApp.Companion.c();
                if (bs4.a() == AuthorizationAgent.WEBVIEW) {
                    i = R.raw.odrive_webview;
                } else {
                    i = R.raw.odrive_browser;
                }
                singleAccountPublicClientApplicationCreateSingleAccountPublicClientApplication = PublicClientApplication.createSingleAccountPublicClientApplication(contextC2, i);
                nq5.j = singleAccountPublicClientApplicationCreateSingleAccountPublicClientApplication;
            }
        } catch (Throwable th) {
            throw th;
        }
        return nq5.j;
    }
}
