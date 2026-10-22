package defpackage;

import android.util.Base64;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gn9 {
    public static final yd9 a;
    public static final rd9 b;

    static {
        ea3 ea3Var = new ea3(fd9.a(), true, true);
        Double dValueOf = Double.valueOf(0.0d);
        new xd9(ea3Var, "getTokenRefactor__account_data_service_sample_percentage", dValueOf);
        ea3Var.b("getTokenRefactor__account_data_service_tokenAPI_usable", true);
        ea3Var.a(20L, "getTokenRefactor__account_manager_timeout_seconds");
        ea3Var.a(0L, "getTokenRefactor__android_id_shift");
        try {
            a = new yd9(ea3Var, "getTokenRefactor__blocked_packages", wm9.j(Base64.decode("ChNjb20uYW5kcm9pZC52ZW5kaW5nCiBjb20uZ29vZ2xlLmFuZHJvaWQuYXBwcy5tZWV0aW5ncwohY29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWVzc2FnaW5n", 3)));
            ea3Var.b("getTokenRefactor__chimera_get_token_evolved", true);
            ea3Var.a(20L, "getTokenRefactor__clear_token_timeout_seconds");
            ea3Var.a(20L, "getTokenRefactor__default_task_timeout_seconds");
            ea3Var.b("getTokenRefactor__gaul_accounts_api_evolved", false);
            b = ea3Var.b("getTokenRefactor__gaul_token_api_evolved", false);
            ea3Var.a(120L, "getTokenRefactor__get_token_timeout_seconds");
            ea3Var.b("getTokenRefactor__gms_account_authenticator_evolved", true);
            new xd9(ea3Var, "getTokenRefactor__gms_account_authenticator_sample_percentage", dValueOf);
        } catch (Exception e) {
            e6.e(e);
        }
    }
}
