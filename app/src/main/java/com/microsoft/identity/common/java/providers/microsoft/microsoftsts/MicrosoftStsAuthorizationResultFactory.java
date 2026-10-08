package com.microsoft.identity.common.java.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.java.exception.BaseException;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.providers.RawAuthorizationResult;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationStatus;
import com.microsoft.identity.common.java.telemetry.ClientDataInfo;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.java.util.UrlUtil;
import defpackage.dj7;
import defpackage.f6;
import defpackage.fz5;
import java.net.URI;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MicrosoftStsAuthorizationResultFactory {
    public static MicrosoftStsAuthorizationResult createAuthorizationResultWithErrorResponse(AuthorizationStatus authorizationStatus, String str, String str2) {
        if (str == null) {
            f6.n("error is marked non-null but is null");
            return null;
        }
        Logger.info("MicrosoftStsAuthorizationResultFactory:createAuthorizationResultWithErrorResponse", "Error is returned from webview redirect");
        Logger.infoPII("MicrosoftStsAuthorizationResultFactory:createAuthorizationResultWithErrorResponse", "error: " + str + " errorDescription: " + str2);
        return new MicrosoftStsAuthorizationResult(authorizationStatus, new MicrosoftStsAuthorizationErrorResponse(str, str2));
    }

    public final MicrosoftStsAuthorizationResult createAuthorizationResult(RawAuthorizationResult rawAuthorizationResult, MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest) {
        ClientDataInfo clientDataInfoFromPipeDelimited;
        if (microsoftStsAuthorizationRequest == null) {
            f6.n("request is marked non-null but is null");
            return null;
        }
        URI authorizationFinalUri = rawAuthorizationResult.getAuthorizationFinalUri();
        int iA = dj7.A(rawAuthorizationResult.getResultCode());
        AuthorizationStatus authorizationStatus = AuthorizationStatus.FAIL;
        switch (iA) {
            case 1:
                Logger.info("AuthorizationResultFactory:createAuthorizationResult", null, "The authorization request was intentionally cancelled.");
                return createAuthorizationResultWithErrorResponse(AuthorizationStatus.USER_CANCEL, "user_cancelled", "User pressed device back button to cancel the flow.");
            case 2:
                BaseException exception = rawAuthorizationResult.getException();
                if (exception != null) {
                    return createAuthorizationResultWithErrorResponse(authorizationStatus, exception.getErrorCode(), exception.getMessage());
                }
                break;
            case 3:
                if (authorizationFinalUri == null) {
                    Logger.warn("AuthorizationResultFactory:createAuthorizationResult", null, "returned URL is null or empty.");
                    return createAuthorizationResultWithErrorResponse(authorizationStatus, "authorization_failed", "The authorization server returned an invalid response.");
                }
                String state = microsoftStsAuthorizationRequest.getState();
                Map<String, String> parameters = UrlUtil.getParameters(authorizationFinalUri);
                if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_SERVER_CLIENT_DATA_TELEMETRY) && (clientDataInfoFromPipeDelimited = ClientDataInfo.fromPipeDelimited(parameters.get("clientdata"))) != null) {
                    clientDataInfoFromPipeDelimited.emitToSpan();
                }
                if (parameters.isEmpty()) {
                    Logger.warn("MicrosoftStsAuthorizationResultFactory:parseUrlAndCreateAuthorizationResponse", "Invalid server response, empty query string from the webview redirect.");
                    return createAuthorizationResultWithErrorResponse(authorizationStatus, "authorization_failed", "The authorization server returned an invalid response.");
                }
                if (!parameters.containsKey("code")) {
                    if (!parameters.containsKey("error")) {
                        return createAuthorizationResultWithErrorResponse(authorizationStatus, "authorization_failed", "The authorization server returned an invalid response.");
                    }
                    String str = parameters.get("error");
                    String str2 = parameters.get("error_subcode");
                    String str3 = parameters.get("error_description");
                    Logger.info("MicrosoftStsAuthorizationResultFactory:createAuthorizationResultWithErrorResponse", "Error is returned from webview redirect");
                    Logger.infoPII("MicrosoftStsAuthorizationResultFactory:createAuthorizationResultWithErrorResponse", "error: " + str + "error subcode:" + str2 + " errorDescription: " + str3);
                    return new MicrosoftStsAuthorizationResult(authorizationStatus, new MicrosoftStsAuthorizationErrorResponse(str, str3));
                }
                String str4 = parameters.get("state");
                String str5 = parameters.get("code");
                if (StringUtil.isNullOrEmpty(str4)) {
                    Logger.warn("MicrosoftStsAuthorizationResultFactory:validateAndCreateAuthorizationResult", "State parameter is not returned from the webview redirect.");
                    return createAuthorizationResultWithErrorResponse(authorizationStatus, "state_mismatch", "State is not returned");
                }
                if (StringUtil.isNullOrEmpty(state) || !state.equals(str4)) {
                    Logger.warn("MicrosoftStsAuthorizationResultFactory:validateAndCreateAuthorizationResult", "State parameter returned from the redirect is not same as the one sent in request.");
                    return createAuthorizationResultWithErrorResponse(authorizationStatus, "state_mismatch", "Returned state from authorize endpoint is not the same as the one sent");
                }
                Logger.info("MicrosoftStsAuthorizationResultFactory:validateAndCreateAuthorizationResult", "Auth code is successfully returned from webview redirect.");
                MicrosoftStsAuthorizationResponse microsoftStsAuthorizationResponse = new MicrosoftStsAuthorizationResponse(str5, str4, parameters);
                MicrosoftStsAuthorizationResult microsoftStsAuthorizationResult = new MicrosoftStsAuthorizationResult(microsoftStsAuthorizationResponse, (MicrosoftStsAuthorizationErrorResponse) null);
                microsoftStsAuthorizationResult.setAuthorizationStatus(AuthorizationStatus.SUCCESS);
                microsoftStsAuthorizationResult.setAuthorizationResponse(microsoftStsAuthorizationResponse);
                return microsoftStsAuthorizationResult;
            case 4:
                break;
            case 5:
                Logger.info("AuthorizationResultFactory:createAuthorizationResult", "Device Registration needed, need to start WPJ");
                MicrosoftStsAuthorizationResult microsoftStsAuthorizationResultCreateAuthorizationResultWithErrorResponse = createAuthorizationResultWithErrorResponse(authorizationStatus, "device_registration_needed", "Device needs to be registered to access the resource");
                Map<String, String> parameters2 = UrlUtil.getParameters(authorizationFinalUri);
                microsoftStsAuthorizationResultCreateAuthorizationResultWithErrorResponse.getAuthorizationErrorResponse().setUpnToWpj(parameters2.get("username"));
                microsoftStsAuthorizationResultCreateAuthorizationResultWithErrorResponse.getAuthorizationErrorResponse().setTokenProtectionRequired(Boolean.parseBoolean(parameters2.get("token_protection_required")));
                return microsoftStsAuthorizationResultCreateAuthorizationResultWithErrorResponse;
            case 6:
                Logger.info("AuthorizationResultFactory:createAuthorizationResult", null, "SDK cancelled the authorization request.");
                return createAuthorizationResultWithErrorResponse(AuthorizationStatus.SDK_CANCEL, "auth_cancelled_by_sdk", "Sdk cancelled the auth flow as the app launched a new interactive auth request.");
            case 7:
                Logger.info("AuthorizationResultFactory:createAuthorizationResult", "MDM required. Launching Intune MDM link on browser.");
                return createAuthorizationResultWithErrorResponse(authorizationStatus, "device_needs_to_be_managed", "Device needs to be managed to access the resource");
            case 8:
                Logger.info("AuthorizationResultFactory:createAuthorizationResult", "Insufficient Device Registration, need to perform update WPJ with hardware backed keys");
                MicrosoftStsAuthorizationResult microsoftStsAuthorizationResultCreateAuthorizationResultWithErrorResponse2 = createAuthorizationResultWithErrorResponse(authorizationStatus, "insufficient_device_registration", "Device registration needs to be upgraded with strong keys");
                microsoftStsAuthorizationResultCreateAuthorizationResultWithErrorResponse2.getAuthorizationErrorResponse().setUpnToWpj(UrlUtil.getParameters(authorizationFinalUri).get("username"));
                return microsoftStsAuthorizationResultCreateAuthorizationResultWithErrorResponse2;
            case XmlPullParser.COMMENT /* 9 */:
                Logger.info("AuthorizationResultFactory:createAuthorizationResult", null, "The authorization request was intentionally cancelled.");
                return createAuthorizationResultWithErrorResponse(AuthorizationStatus.TIMED_OUT, "authorization_timed_out", "The authorization request timed out.");
            default:
                return createAuthorizationResultWithErrorResponse(authorizationStatus, "Unknown error", "Unknown result code returned [" + fz5.v(rawAuthorizationResult.getResultCode()) + "]");
        }
        Logger.info("AuthorizationResultFactory:createAuthorizationResult", "Device needs to have broker installed, we expect the apps to call usback when the broker is installed");
        MicrosoftStsAuthorizationResult microsoftStsAuthorizationResultCreateAuthorizationResultWithErrorResponse3 = createAuthorizationResultWithErrorResponse(authorizationStatus, "broker_needs_to_be_installed", "Device needs to have broker installed");
        microsoftStsAuthorizationResultCreateAuthorizationResultWithErrorResponse3.getAuthorizationErrorResponse().setUpnToWpj(UrlUtil.getParameters(authorizationFinalUri).get("username"));
        return microsoftStsAuthorizationResultCreateAuthorizationResultWithErrorResponse3;
    }
}
