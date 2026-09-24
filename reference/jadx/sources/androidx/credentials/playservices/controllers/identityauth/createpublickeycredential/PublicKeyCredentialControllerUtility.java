package androidx.credentials.playservices.controllers.identityauth.createpublickeycredential;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.fido.common.Transport;
import defpackage.a12;
import defpackage.at1;
import defpackage.az0;
import defpackage.c12;
import defpackage.cg4;
import defpackage.cw3;
import defpackage.cy0;
import defpackage.d14;
import defpackage.d22;
import defpackage.d63;
import defpackage.d80;
import defpackage.e22;
import defpackage.el6;
import defpackage.ew2;
import defpackage.i80;
import defpackage.ig4;
import defpackage.ih8;
import defpackage.j80;
import defpackage.ja2;
import defpackage.jf7;
import defpackage.jo5;
import defpackage.ly8;
import defpackage.lz3;
import defpackage.m80;
import defpackage.mz3;
import defpackage.n80;
import defpackage.na6;
import defpackage.nq7;
import defpackage.o80;
import defpackage.p80;
import defpackage.pa6;
import defpackage.pw5;
import defpackage.qa6;
import defpackage.r44;
import defpackage.r70;
import defpackage.ra6;
import defpackage.sa6;
import defpackage.sa8;
import defpackage.sv3;
import defpackage.t2;
import defpackage.t70;
import defpackage.tp0;
import defpackage.ua6;
import defpackage.up0;
import defpackage.vw3;
import defpackage.wk9;
import defpackage.wv3;
import defpackage.ww3;
import defpackage.x65;
import defpackage.xa6;
import defpackage.xf4;
import defpackage.xs1;
import defpackage.xx2;
import defpackage.zn2;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PublicKeyCredentialControllerUtility {
    private static final long AUTH_MIN_VERSION_JSON_CREATE = 241217000;
    private static final int FLAGS = 11;
    private static final String TAG = "PublicKeyUtility";
    private static final LinkedHashMap<xx2, zn2> orderedErrorCodeToExceptions;
    public static final Companion Companion = new Companion(null);
    private static final String JSON_KEY_CLIENT_DATA = "clientDataJSON";
    private static final String JSON_KEY_ATTESTATION_OBJ = "attestationObject";
    private static final String JSON_KEY_AUTH_DATA = "authenticatorData";
    private static final String JSON_KEY_SIGNATURE = "signature";
    private static final String JSON_KEY_USER_HANDLE = "userHandle";
    private static final String JSON_KEY_RESPONSE = "response";
    private static final String JSON_KEY_ID = "id";
    private static final String JSON_KEY_RAW_ID = "rawId";
    private static final String JSON_KEY_TYPE = "type";
    private static final String JSON_KEY_RPID = "rpId";
    private static final String JSON_KEY_CHALLENGE = "challenge";
    private static final String JSON_KEY_APPID = "appid";
    private static final String JSON_KEY_THIRD_PARTY_PAYMENT = "thirdPartyPayment";
    private static final String JSON_KEY_AUTH_SELECTION = "authenticatorSelection";
    private static final String JSON_KEY_REQUIRE_RES_KEY = "requireResidentKey";
    private static final String JSON_KEY_RES_KEY = "residentKey";
    private static final String JSON_KEY_AUTH_ATTACHMENT = "authenticatorAttachment";
    private static final String JSON_KEY_TIMEOUT = "timeout";
    private static final String JSON_KEY_EXCLUDE_CREDENTIALS = "excludeCredentials";
    private static final String JSON_KEY_TRANSPORTS = "transports";
    private static final String JSON_KEY_RP = "rp";
    private static final String JSON_KEY_NAME = "name";
    private static final String JSON_KEY_ICON = "icon";
    private static final String JSON_KEY_ALG = "alg";
    private static final String JSON_KEY_USER = "user";
    private static final String JSON_KEY_DISPLAY_NAME = "displayName";
    private static final String JSON_KEY_USER_VERIFICATION_METHOD = "userVerificationMethod";
    private static final String JSON_KEY_KEY_PROTECTION_TYPE = "keyProtectionType";
    private static final String JSON_KEY_MATCHER_PROTECTION_TYPE = "matcherProtectionType";
    private static final String JSON_KEY_EXTENSTIONS = "extensions";
    private static final String JSON_KEY_ATTESTATION = "attestation";
    private static final String JSON_KEY_PUB_KEY_CRED_PARAMS = "pubKeyCredParams";
    private static final String JSON_KEY_CLIENT_EXTENSION_RESULTS = "clientExtensionResults";
    private static final String JSON_KEY_RK = "rk";
    private static final String JSON_KEY_CRED_PROPS = "credProps";

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class GetGMSVersion {
        public static final GetGMSVersion INSTANCE = new GetGMSVersion();

        private GetGMSVersion() {
        }

        public static final long getVersionLong(PackageInfo packageInfo) {
            packageInfo.getClass();
            return packageInfo.getLongVersionCode();
        }
    }

    static {
        pw5[] pw5VarArr = {new pw5(xx2.UNKNOWN_ERR, new cg4(2)), new pw5(xx2.ABORT_ERR, new t2(0)), new pw5(xx2.ATTESTATION_NOT_PRIVATE_ERR, new jo5(0)), new pw5(xx2.CONSTRAINT_ERR, new at1()), new pw5(xx2.DATA_ERR, new t2(1)), new pw5(xx2.INVALID_STATE_ERR, new ig4(0)), new pw5(xx2.ENCODING_ERR, new ew2(0)), new pw5(xx2.NETWORK_ERR, new r44(1)), new pw5(xx2.NOT_ALLOWED_ERR, new ig4(1)), new pw5(xx2.NOT_SUPPORTED_ERR, new ja2(1)), new pw5(xx2.SECURITY_ERR, new xf4(1)), new pw5(xx2.TIMEOUT_ERR, new ew2(2))};
        LinkedHashMap<xx2, zn2> linkedHashMap = new LinkedHashMap<>(x65.q0(12));
        x65.s0(linkedHashMap, pw5VarArr);
        orderedErrorCodeToExceptions = linkedHashMap;
    }

    public static final qa6 convert(e22 e22Var, Context context) {
        return Companion.convert(e22Var, context);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final byte[] getChallenge(JSONObject jSONObject) throws JSONException {
            String strOptString = jSONObject.optString(getJSON_KEY_CHALLENGE$credentials_play_services_auth(), "");
            strOptString.getClass();
            if (strOptString.length() != 0) {
                return b64Decode(strOptString);
            }
            throw new JSONException("Challenge not found in request or is unexpectedly empty");
        }

        private final boolean isDeviceGMSVersionOlderThan(Context context, long j) throws PackageManager.NameNotFoundException {
            long versionLong;
            if (lz3.d.c(context, mz3.a) != 0) {
                return false;
            }
            PackageManager packageManager = context.getPackageManager();
            packageManager.getClass();
            if (Build.VERSION.SDK_INT >= 28) {
                PackageInfo packageInfo = packageManager.getPackageInfo("com.google.android.gms", 0);
                packageInfo.getClass();
                versionLong = GetGMSVersion.getVersionLong(packageInfo);
            } else {
                versionLong = packageManager.getPackageInfo("com.google.android.gms", 0).versionCode;
            }
            return versionLong > j;
        }

        public final void addAuthenticatorAttestationResponse$credentials_play_services_auth(byte[] bArr, byte[] bArr2, String[] strArr, JSONObject jSONObject) throws JSONException {
            bArr.getClass();
            bArr2.getClass();
            strArr.getClass();
            jSONObject.getClass();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(getJSON_KEY_CLIENT_DATA$credentials_play_services_auth(), b64Encode(bArr));
            jSONObject2.put(getJSON_KEY_ATTESTATION_OBJ$credentials_play_services_auth(), b64Encode(bArr2));
            jSONObject2.put(getJSON_KEY_TRANSPORTS$credentials_play_services_auth(), new JSONArray(strArr));
            jSONObject.put(getJSON_KEY_RESPONSE$credentials_play_services_auth(), jSONObject2);
        }

        public final byte[] b64Decode(String str) {
            str.getClass();
            byte[] bArrDecode = Base64.decode(str, 11);
            bArrDecode.getClass();
            return bArrDecode;
        }

        public final String b64Encode(byte[] bArr) {
            bArr.getClass();
            String strEncodeToString = Base64.encodeToString(bArr, 11);
            strEncodeToString.getClass();
            return strEncodeToString;
        }

        public final wv3 beginSignInPublicKeyCredentialResponseContainsError$credentials_play_services_auth(xx2 xx2Var, String str) {
            xx2Var.getClass();
            zn2 zn2Var = getOrderedErrorCodeToExceptions$credentials_play_services_auth().get(xx2Var);
            if (zn2Var == null) {
                return new vw3(new cg4(2), xs1.j("unknown fido gms exception - ", str));
            }
            return (xx2Var == xx2.NOT_ALLOWED_ERR && str != null && nq7.Z(str, "Unable to get sync account", false)) ? new sv3("Passkey retrieval was cancelled by the user.") : new vw3(zn2Var, str);
        }

        public final boolean checkAlgSupported(int i) {
            try {
                az0.c(i);
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }

        public final qa6 convert(e22 e22Var, Context context) {
            e22Var.getClass();
            context.getClass();
            return isDeviceGMSVersionOlderThan(context, PublicKeyCredentialControllerUtility.AUTH_MIN_VERSION_JSON_CREATE) ? new qa6() : convertJSON$credentials_play_services_auth(new JSONObject((String) null));
        }

        public final qa6 convertJSON$credentials_play_services_auth(JSONObject jSONObject) throws JSONException, d22 {
            jSONObject.getClass();
            pa6 pa6Var = new pa6();
            parseRequiredChallengeAndUser$credentials_play_services_auth(jSONObject, pa6Var);
            parseRequiredRpAndParams$credentials_play_services_auth(jSONObject, pa6Var);
            parseOptionalWithRequiredDefaultsAttestationAndExcludeCredentials$credentials_play_services_auth(jSONObject, pa6Var);
            parseOptionalTimeout$credentials_play_services_auth(jSONObject, pa6Var);
            parseOptionalAuthenticatorSelection$credentials_play_services_auth(jSONObject, pa6Var);
            parseOptionalExtensions$credentials_play_services_auth(jSONObject, pa6Var);
            ua6 ua6Var = pa6Var.a;
            xa6 xa6Var = pa6Var.b;
            byte[] bArr = pa6Var.c;
            ArrayList arrayList = pa6Var.d;
            Double d = pa6Var.e;
            ArrayList arrayList2 = pa6Var.f;
            p80 p80Var = pa6Var.g;
            t70 t70Var = pa6Var.h;
            return new qa6(ua6Var, xa6Var, bArr, arrayList, d, arrayList2, p80Var, null, null, t70Var == null ? null : t70Var.a, pa6Var.i, null, null);
        }

        public final tp0 convertToPlayAuthPasskeyJsonRequest(ww3 ww3Var) {
            ww3Var.getClass();
            return new tp0(ww3Var.f, true);
        }

        public final up0 convertToPlayAuthPasskeyRequest(ww3 ww3Var) throws JSONException {
            ww3Var.getClass();
            JSONObject jSONObject = new JSONObject(ww3Var.f);
            String strOptString = jSONObject.optString(getJSON_KEY_RPID$credentials_play_services_auth(), "");
            strOptString.getClass();
            if (strOptString.length() != 0) {
                return new up0(true, getChallenge(jSONObject), strOptString);
            }
            throw new JSONException("GetPublicKeyCredentialOption - rpId not specified in the request or is unexpectedly empty");
        }

        public final String getJSON_KEY_ALG$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ALG;
        }

        public final String getJSON_KEY_APPID$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_APPID;
        }

        public final String getJSON_KEY_ATTESTATION$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ATTESTATION;
        }

        public final String getJSON_KEY_ATTESTATION_OBJ$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ATTESTATION_OBJ;
        }

        public final String getJSON_KEY_AUTH_ATTACHMENT$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_AUTH_ATTACHMENT;
        }

        public final String getJSON_KEY_AUTH_DATA$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_AUTH_DATA;
        }

        public final String getJSON_KEY_AUTH_SELECTION$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_AUTH_SELECTION;
        }

        public final String getJSON_KEY_CHALLENGE$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_CHALLENGE;
        }

        public final String getJSON_KEY_CLIENT_DATA$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_CLIENT_DATA;
        }

        public final String getJSON_KEY_CLIENT_EXTENSION_RESULTS$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_CLIENT_EXTENSION_RESULTS;
        }

        public final String getJSON_KEY_CRED_PROPS$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_CRED_PROPS;
        }

        public final String getJSON_KEY_DISPLAY_NAME$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_DISPLAY_NAME;
        }

        public final String getJSON_KEY_EXCLUDE_CREDENTIALS$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_EXCLUDE_CREDENTIALS;
        }

        public final String getJSON_KEY_EXTENSTIONS$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_EXTENSTIONS;
        }

        public final String getJSON_KEY_ICON$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ICON;
        }

        public final String getJSON_KEY_ID$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ID;
        }

        public final String getJSON_KEY_KEY_PROTECTION_TYPE$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_KEY_PROTECTION_TYPE;
        }

        public final String getJSON_KEY_MATCHER_PROTECTION_TYPE$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_MATCHER_PROTECTION_TYPE;
        }

        public final String getJSON_KEY_NAME$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_NAME;
        }

        public final String getJSON_KEY_PUB_KEY_CRED_PARAMS$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_PUB_KEY_CRED_PARAMS;
        }

        public final String getJSON_KEY_RAW_ID$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RAW_ID;
        }

        public final String getJSON_KEY_REQUIRE_RES_KEY$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_REQUIRE_RES_KEY;
        }

        public final String getJSON_KEY_RESPONSE$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RESPONSE;
        }

        public final String getJSON_KEY_RES_KEY$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RES_KEY;
        }

        public final String getJSON_KEY_RK$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RK;
        }

        public final String getJSON_KEY_RP$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RP;
        }

        public final String getJSON_KEY_RPID$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RPID;
        }

        public final String getJSON_KEY_SIGNATURE$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_SIGNATURE;
        }

        public final String getJSON_KEY_THIRD_PARTY_PAYMENT$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_THIRD_PARTY_PAYMENT;
        }

        public final String getJSON_KEY_TIMEOUT$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_TIMEOUT;
        }

        public final String getJSON_KEY_TRANSPORTS$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_TRANSPORTS;
        }

        public final String getJSON_KEY_TYPE$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_TYPE;
        }

        public final String getJSON_KEY_USER$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_USER;
        }

        public final String getJSON_KEY_USER_HANDLE$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_USER_HANDLE;
        }

        public final String getJSON_KEY_USER_VERIFICATION_METHOD$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_USER_VERIFICATION_METHOD;
        }

        public final LinkedHashMap<xx2, zn2> getOrderedErrorCodeToExceptions$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.orderedErrorCodeToExceptions;
        }

        public final void parseOptionalAuthenticatorSelection$credentials_play_services_auth(JSONObject jSONObject, pa6 pa6Var) throws JSONException {
            jSONObject.getClass();
            pa6Var.getClass();
            if (jSONObject.has(getJSON_KEY_AUTH_SELECTION$credentials_play_services_auth())) {
                JSONObject jSONObject2 = jSONObject.getJSONObject(getJSON_KEY_AUTH_SELECTION$credentials_play_services_auth());
                boolean zOptBoolean = jSONObject2.optBoolean(getJSON_KEY_REQUIRE_RES_KEY$credentials_play_services_auth(), false);
                String strOptString = jSONObject2.optString(getJSON_KEY_RES_KEY$credentials_play_services_auth(), "");
                strOptString.getClass();
                el6 el6VarC = strOptString.length() > 0 ? el6.c(strOptString) : null;
                Boolean boolValueOf = Boolean.valueOf(zOptBoolean);
                String strOptString2 = jSONObject2.optString(getJSON_KEY_AUTH_ATTACHMENT$credentials_play_services_auth(), "");
                strOptString2.getClass();
                r70 r70VarC = strOptString2.length() > 0 ? r70.c(strOptString2) : null;
                pa6Var.g = new p80(r70VarC == null ? null : r70VarC.a, boolValueOf, null, el6VarC == null ? null : el6VarC.a);
            }
        }

        public final void parseOptionalExtensions$credentials_play_services_auth(JSONObject jSONObject, pa6 pa6Var) throws JSONException {
            jSONObject.getClass();
            pa6Var.getClass();
            if (jSONObject.has(getJSON_KEY_EXTENSTIONS$credentials_play_services_auth())) {
                JSONObject jSONObject2 = jSONObject.getJSONObject(getJSON_KEY_EXTENSTIONS$credentials_play_services_auth());
                String strOptString = jSONObject2.optString(getJSON_KEY_APPID$credentials_play_services_auth(), "");
                strOptString.getClass();
                pa6Var.i = new i80(strOptString.length() > 0 ? new d63(strOptString) : null, null, jSONObject2.optBoolean("uvm", false) ? new ih8(true) : null, null, null, null, null, null, jSONObject2.optBoolean(getJSON_KEY_THIRD_PARTY_PAYMENT$credentials_play_services_auth(), false) ? new d14(true) : null, null, null, null);
            }
        }

        public final void parseOptionalTimeout$credentials_play_services_auth(JSONObject jSONObject, pa6 pa6Var) {
            jSONObject.getClass();
            pa6Var.getClass();
            if (jSONObject.has(getJSON_KEY_TIMEOUT$credentials_play_services_auth())) {
                pa6Var.e = Double.valueOf(jSONObject.getLong(getJSON_KEY_TIMEOUT$credentials_play_services_auth()) / 1000.0d);
            }
        }

        public final void parseOptionalWithRequiredDefaultsAttestationAndExcludeCredentials$credentials_play_services_auth(JSONObject jSONObject, pa6 pa6Var) throws JSONException, d22 {
            ArrayList arrayList;
            jSONObject.getClass();
            pa6Var.getClass();
            ArrayList arrayList2 = new ArrayList();
            if (jSONObject.has(getJSON_KEY_EXCLUDE_CREDENTIALS$credentials_play_services_auth())) {
                JSONArray jSONArray = jSONObject.getJSONArray(getJSON_KEY_EXCLUDE_CREDENTIALS$credentials_play_services_auth());
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String string = jSONObject2.getString(getJSON_KEY_ID$credentials_play_services_auth());
                    string.getClass();
                    byte[] bArrB64Decode = b64Decode(string);
                    String string2 = jSONObject2.getString(getJSON_KEY_TYPE$credentials_play_services_auth());
                    string2.getClass();
                    if (string2.length() == 0) {
                        throw new JSONException("PublicKeyCredentialDescriptor type value is not found or unexpectedly empty");
                    }
                    if (bArrB64Decode.length == 0) {
                        throw new JSONException("PublicKeyCredentialDescriptor id value is not found or unexpectedly empty");
                    }
                    if (jSONObject2.has(getJSON_KEY_TRANSPORTS$credentials_play_services_auth())) {
                        arrayList = new ArrayList();
                        JSONArray jSONArray2 = jSONObject2.getJSONArray(getJSON_KEY_TRANSPORTS$credentials_play_services_auth());
                        int length2 = jSONArray2.length();
                        for (int i2 = 0; i2 < length2; i2++) {
                            try {
                                arrayList.add(Transport.c(jSONArray2.getString(i2)));
                            } catch (sa8 e) {
                                throw new d22(new ew2(0), e.getMessage());
                            }
                        }
                    } else {
                        arrayList = null;
                    }
                    arrayList2.add(new ra6(string2, bArrB64Decode, arrayList));
                }
            }
            pa6Var.f = arrayList2;
            String strOptString = jSONObject.optString(getJSON_KEY_ATTESTATION$credentials_play_services_auth(), "none");
            strOptString.getClass();
            pa6Var.h = t70.c(strOptString.length() != 0 ? strOptString : "none");
        }

        public final void parseRequiredChallengeAndUser$credentials_play_services_auth(JSONObject jSONObject, pa6 pa6Var) throws JSONException {
            jSONObject.getClass();
            pa6Var.getClass();
            byte[] challenge = getChallenge(jSONObject);
            ly8.h(challenge);
            pa6Var.c = challenge;
            JSONObject jSONObject2 = jSONObject.getJSONObject(getJSON_KEY_USER$credentials_play_services_auth());
            String string = jSONObject2.getString(getJSON_KEY_ID$credentials_play_services_auth());
            string.getClass();
            byte[] bArrB64Decode = b64Decode(string);
            String string2 = jSONObject2.getString(getJSON_KEY_NAME$credentials_play_services_auth());
            String string3 = jSONObject2.getString(getJSON_KEY_DISPLAY_NAME$credentials_play_services_auth());
            String strOptString = jSONObject2.optString(getJSON_KEY_ICON$credentials_play_services_auth(), "");
            string3.getClass();
            if (string3.length() == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing displayName or they are unexpectedly empty");
            }
            if (bArrB64Decode.length == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing user id or they are unexpectedly empty");
            }
            string2.getClass();
            if (string2.length() == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing user name or they are unexpectedly empty");
            }
            pa6Var.b = new xa6(bArrB64Decode, string2, strOptString, string3);
        }

        public final void parseRequiredRpAndParams$credentials_play_services_auth(JSONObject jSONObject, pa6 pa6Var) throws JSONException {
            jSONObject.getClass();
            pa6Var.getClass();
            JSONObject jSONObject2 = jSONObject.getJSONObject(getJSON_KEY_RP$credentials_play_services_auth());
            String string = jSONObject2.getString(getJSON_KEY_ID$credentials_play_services_auth());
            String strOptString = jSONObject2.optString(getJSON_KEY_NAME$credentials_play_services_auth(), "");
            String strOptString2 = jSONObject2.optString(getJSON_KEY_ICON$credentials_play_services_auth(), "");
            strOptString2.getClass();
            if (strOptString2.length() == 0) {
                strOptString2 = null;
            }
            strOptString.getClass();
            if (strOptString.length() == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions rp name is missing or unexpectedly empty");
            }
            string.getClass();
            if (string.length() == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions rp ID is missing or unexpectedly empty");
            }
            pa6Var.a = new ua6(string, strOptString, strOptString2);
            JSONArray jSONArray = jSONObject.getJSONArray(getJSON_KEY_PUB_KEY_CRED_PARAMS$credentials_play_services_auth());
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                int i2 = (int) jSONObject3.getLong(getJSON_KEY_ALG$credentials_play_services_auth());
                String strOptString3 = jSONObject3.optString(getJSON_KEY_TYPE$credentials_play_services_auth(), "");
                strOptString3.getClass();
                if (strOptString3.length() == 0) {
                    throw new JSONException("PublicKeyCredentialCreationOptions PublicKeyCredentialParameter type missing or unexpectedly empty");
                }
                if (checkAlgSupported(i2)) {
                    arrayList.add(new sa6(strOptString3, i2));
                }
            }
            pa6Var.d = arrayList;
        }

        public final c12 publicKeyCredentialResponseContainsError(na6 na6Var) {
            na6Var.getClass();
            d80 d80VarN = na6Var.n();
            if (!(d80VarN instanceof o80)) {
                return null;
            }
            o80 o80Var = (o80) d80VarN;
            xx2 xx2Var = o80Var.a;
            xx2Var.getClass();
            zn2 zn2Var = getOrderedErrorCodeToExceptions$credentials_play_services_auth().get(xx2Var);
            String str = o80Var.b;
            if (zn2Var == null) {
                return new d22(new cg4(2), xs1.j("unknown fido gms exception - ", str));
            }
            return (xx2Var == xx2.NOT_ALLOWED_ERR && str != null && nq7.Z(str, "Unable to get sync account", false)) ? new a12("Passkey registration was cancelled by the user.") : new d22(zn2Var, str);
        }

        public final String toAssertPasskeyResponse(jf7 jf7Var) {
            jf7Var.getClass();
            JSONObject jSONObject = new JSONObject();
            na6 na6Var = jf7Var.p;
            JSONObject jSONObject2 = null;
            d80 d80VarN = na6Var != null ? na6Var.n() : null;
            d80VarN.getClass();
            if (d80VarN instanceof o80) {
                o80 o80Var = (o80) d80VarN;
                xx2 xx2Var = o80Var.a;
                xx2Var.getClass();
                throw beginSignInPublicKeyCredentialResponseContainsError$credentials_play_services_auth(xx2Var, o80Var.b);
            }
            if (!(d80VarN instanceof m80)) {
                Log.e(PublicKeyCredentialControllerUtility.TAG, "AuthenticatorResponse expected assertion response but got: ".concat(d80VarN.getClass().getName()));
                String string = jSONObject.toString();
                string.getClass();
                return string;
            }
            try {
                o80 o80Var2 = na6Var.f;
                wk9 wk9Var = na6Var.c;
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    if (wk9Var != null && wk9Var.o().length > 0) {
                        jSONObject3.put("rawId", cy0.t(wk9Var.o()));
                    }
                    String str = na6Var.n;
                    if (str != null) {
                        jSONObject3.put("authenticatorAttachment", str);
                    }
                    String str2 = na6Var.b;
                    if (str2 != null && o80Var2 == null) {
                        jSONObject3.put("type", str2);
                    }
                    String str3 = na6Var.a;
                    if (str3 != null) {
                        jSONObject3.put("id", str3);
                    }
                    String str4 = "response";
                    m80 m80Var = na6Var.e;
                    boolean z = true;
                    if (m80Var != null) {
                        jSONObject2 = m80Var.u();
                    } else {
                        n80 n80Var = na6Var.d;
                        if (n80Var != null) {
                            jSONObject2 = n80Var.u();
                        } else {
                            z = false;
                            if (o80Var2 != null) {
                                try {
                                    jSONObject2 = new JSONObject();
                                    jSONObject2.put("code", o80Var2.a.a);
                                    String str5 = o80Var2.b;
                                    if (str5 != null) {
                                        jSONObject2.put("message", str5);
                                    }
                                    str4 = "error";
                                } catch (JSONException e) {
                                    throw new RuntimeException("Error encoding AuthenticatorErrorResponse to JSON object", e);
                                }
                            }
                        }
                    }
                    if (jSONObject2 != null) {
                        jSONObject3.put(str4, jSONObject2);
                    }
                    j80 j80Var = na6Var.k;
                    if (j80Var != null) {
                        jSONObject3.put("clientExtensionResults", j80Var.n());
                    } else if (z) {
                        jSONObject3.put("clientExtensionResults", new JSONObject());
                    }
                    String string2 = jSONObject3.toString();
                    string2.getClass();
                    return string2;
                } catch (JSONException e2) {
                    throw new RuntimeException("Error encoding PublicKeyCredential to JSON object", e2);
                }
            } catch (Throwable th) {
                throw new cw3("The PublicKeyCredential response json had an unexpected exception when parsing: " + th.getMessage());
            }
        }

        private Companion() {
        }
    }
}
