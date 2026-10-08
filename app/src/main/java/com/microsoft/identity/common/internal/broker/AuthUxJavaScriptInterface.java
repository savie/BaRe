package com.microsoft.identity.common.internal.broker;

import android.webkit.JavascriptInterface;
import com.google.gson.a;
import com.microsoft.identity.common.internal.numberMatch.NumberMatchHelper;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.logging.Logger;
import defpackage.gl4;
import defpackage.km4;
import defpackage.m55;
import defpackage.pe4;
import defpackage.qj7;
import defpackage.t14;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AuthUxJavaScriptInterface {
    @JavascriptInterface
    public final void receiveAuthUxMessage(String str) {
        str.getClass();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("AuthUxJavaScriptInterface:receiveAuthUxMessage", "Received a payload from AuthUX through JavaScript API.");
        try {
            t14 t14Var = new t14();
            t14Var.c(new AuthUxJsonPayloadKTDeserializer(), AuthUxJsonPayload.class);
            Object objC = new a(t14Var).c(str, AuthUxJsonPayload.class);
            objC.getClass();
            AuthUxJsonPayload authUxJsonPayload = (AuthUxJsonPayload) objC;
            com.microsoft.identity.common.java.logging.Logger.info("AuthUxJavaScriptInterface:receiveAuthUxMessage", "Correlation ID during JavaScript Call: [" + authUxJsonPayload.getCorrelationId() + ']');
            qj7 qj7VarCurrent = SpanExtension.current();
            authUxJsonPayload.getActionName();
            qj7VarCurrent.getClass();
            authUxJsonPayload.getActionComponent();
            AuthUxParams params = authUxJsonPayload.getParams();
            if (params == null) {
                com.microsoft.identity.common.java.logging.Logger.warn("AuthUxJavaScriptInterface:receiveAuthUxMessage", "Payload from AuthUX contained no \"params\" field.");
                return;
            }
            String operation = params.getOperation();
            com.microsoft.identity.common.java.logging.Logger.info("AuthUxJavaScriptInterface:receiveAuthUxMessage", "Function name: [" + operation + ']');
            if (!pe4.d(operation, "number_matching")) {
                com.microsoft.identity.common.java.logging.Logger.warn("AuthUxJavaScriptInterface:receiveAuthUxMessage", "Payload from AuthUX contained an unknown function name.");
            } else {
                int i2 = NumberMatchHelper.a;
                LibraryInfoHelper.storeNumberMatch(params.getSessionId(), params.getCodeMatch());
            }
        } catch (Exception e) {
            if (e instanceof NullPointerException) {
                com.microsoft.identity.common.java.logging.Logger.error("AuthUxJavaScriptInterface:receiveAuthUxMessage", "Payload with missing mandatory fields sent through JavaScriptInterface", e);
                return;
            }
            if (e instanceof m55 ? true : e instanceof km4 ? true : e instanceof gl4) {
                com.microsoft.identity.common.java.logging.Logger.error("AuthUxJavaScriptInterface:receiveAuthUxMessage", "Error Parsing JSON payload sent through JavaScriptInterface", e);
            } else {
                com.microsoft.identity.common.java.logging.Logger.error("AuthUxJavaScriptInterface:receiveAuthUxMessage", "Unknown error occurred while processing the payload.", e);
            }
        }
    }
}
