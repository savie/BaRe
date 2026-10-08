package com.microsoft.identity.common.internal.ui.webview.switchbrowser;

import android.net.Uri;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.logging.Logger;
import defpackage.gv7;
import defpackage.q;
import defpackage.qj7;
import defpackage.u48;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class SwitchBrowserUriHelper {
    private static final gv7 STATE_VALIDATION_REQUIRED$delegate = new gv7(SwitchBrowserUriHelper$STATE_VALIDATION_REQUIRED$2.INSTANCE);
    public static final /* synthetic */ int a = 0;

    public static Uri buildProcessUri(Uri uri) throws UnsupportedOperationException, IllegalArgumentException, NullPointerException, ClientException {
        String queryParameter = uri.getQueryParameter("code");
        if (queryParameter == null || queryParameter.length() == 0) {
            ClientException clientException = new ClientException("malformed_url", "switch browser code is null or empty", null);
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("SwitchBrowserUriHelper:buildProcessUri", "switch browser code is null or empty", clientException);
            throw clientException;
        }
        String queryParameter2 = uri.getQueryParameter("action_uri");
        if (queryParameter2 == null || queryParameter2.length() == 0) {
            ClientException clientException2 = new ClientException("malformed_url", "switch browser action uri is null or empty", null);
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("SwitchBrowserUriHelper:buildProcessUri", "switch browser action uri is null or empty", clientException2);
            throw clientException2;
        }
        try {
            AzureActiveDirectory.ensureCloudDiscoveryForAuthority(new URL(queryParameter2));
            try {
                URL url = new URL(queryParameter2);
                if (!AzureActiveDirectory.isValidCloudHost(url)) {
                    String str = "Authority '" + url.getHost() + "' is not a valid AAD authority";
                    ClientException clientException3 = new ClientException("unknown_authority", str, null);
                    int i3 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.error("SwitchBrowserUriHelper:validateActionUri", str, clientException3);
                    throw clientException3;
                }
            } catch (MalformedURLException e) {
                String strJ = u48.j('\'', "Malformed action URI: '", queryParameter2);
                int i4 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("SwitchBrowserUriHelper:validateActionUri", strJ, e);
                q.i("malformed_url", strJ, e);
            }
        } catch (Exception e2) {
            int i5 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("SwitchBrowserUriHelper:validateActionUri", "Failed to perform cloud discovery for AAD authorities.", e2);
            q.i("io_error", "Failed to perform cloud discovery for AAD authorities.", e2);
        }
        String queryParameter3 = uri.getQueryParameter("state");
        HashMap map = new HashMap();
        map.put("code", queryParameter);
        if (((Boolean) STATE_VALIDATION_REQUIRED$delegate.getValue()).booleanValue()) {
            if (queryParameter3 == null || queryParameter3.length() == 0) {
                ClientException clientException4 = new ClientException("missing_parameter", "State is null or empty", null);
                int i6 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("SwitchBrowserUriHelper:buildProcessUri", "State is null or empty", clientException4);
                throw clientException4;
            }
            map.put("state", queryParameter3);
        }
        Uri.Builder builderBuildUpon = Uri.parse(queryParameter2).buildUpon();
        for (Map.Entry entry : map.entrySet()) {
            entry.getClass();
            builderBuildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        Uri uriBuild = builderBuildUpon.build();
        uriBuild.getClass();
        return uriBuild;
    }

    public static void statesMatch(String str, String str2) throws ClientException {
        str.getClass();
        if (!((Boolean) STATE_VALIDATION_REQUIRED$delegate.getValue()).booleanValue()) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("SwitchBrowserUriHelper:statesMatch", "State validation is not required.");
            return;
        }
        qj7 qj7VarCurrent = SpanExtension.current();
        if (str2 == null || str2.length() == 0) {
            ClientException clientException = new ClientException("state_mismatch", "State is null.", null);
            qj7VarCurrent.getClass();
            throw clientException;
        }
        String queryParameter = Uri.parse(str).getQueryParameter("state");
        if (queryParameter == null || queryParameter.length() == 0) {
            ClientException clientException2 = new ClientException("state_mismatch", "Authorization request state is null.", null);
            qj7VarCurrent.getClass();
            throw clientException2;
        }
        if (str2.equals(queryParameter)) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("SwitchBrowserUriHelper:statesMatch", "States match.");
        } else {
            ClientException clientException3 = new ClientException("state_mismatch", "State does not match with the auth request state.", null);
            qj7VarCurrent.getClass();
            throw clientException3;
        }
    }
}
