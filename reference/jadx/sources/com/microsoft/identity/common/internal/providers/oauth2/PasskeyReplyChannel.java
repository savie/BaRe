package com.microsoft.identity.common.internal.providers.oauth2;

import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.internal.fido.WebAuthnJsonUtil;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.opentelemetry.AttributeName;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.logging.Logger;
import defpackage.a12;
import defpackage.an5;
import defpackage.be8;
import defpackage.bn6;
import defpackage.cn2;
import defpackage.cp4;
import defpackage.cw3;
import defpackage.dv1;
import defpackage.e12;
import defpackage.en6;
import defpackage.fl1;
import defpackage.g12;
import defpackage.gs4;
import defpackage.jr8;
import defpackage.k55;
import defpackage.kh4;
import defpackage.l12;
import defpackage.l73;
import defpackage.mt3;
import defpackage.pe4;
import defpackage.r86;
import defpackage.rf2;
import defpackage.rj7;
import defpackage.se2;
import defpackage.sv3;
import defpackage.t40;
import defpackage.v57;
import defpackage.xv3;
import defpackage.xx1;
import defpackage.yv3;
import defpackage.zk0;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PasskeyReplyChannel {
    private static final ArrayList<AttributeName> parentAttributeNames = fl1.x0(AttributeName.correlation_id, AttributeName.tenant_id, AttributeName.account_type, AttributeName.calling_package_name);
    private final t40 otelContext;
    private final kh4 replyProxy;
    private final String requestType;
    private final xx1 telemetryScope;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.providers.oauth2.PasskeyReplyChannel$postSuccess$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 extends gs4 implements mt3 {
        @Override // defpackage.mt3
        public final Object invoke(Object obj) {
            return be8.a;
        }
    }

    public PasskeyReplyChannel(kh4 kh4Var, String str, t40 t40Var, int i) {
        str = (i & 2) != 0 ? "unknown" : str;
        rf2 rf2Var = cn2.a;
        dv1 dv1VarC = l73.c(se2.c);
        kh4Var.getClass();
        str.getClass();
        this.replyProxy = kh4Var;
        this.requestType = str;
        this.otelContext = t40Var;
        this.telemetryScope = dv1VarC;
    }

    public static final void access$recordPostSuccessTelemetry(PasskeyReplyChannel passkeyReplyChannel, r86 r86Var, String str, zk0 zk0Var) {
        String str2 = passkeyReplyChannel.requestType;
        try {
            v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(r86Var);
            try {
                for (AttributeName attributeName : parentAttributeNames) {
                    if (zk0Var != null && zk0Var.getEntryValue(attributeName.name()) != null) {
                        attributeName.name();
                    }
                }
                if (pe4.d(str2, "create")) {
                    WebAuthnJsonUtil.extractAaguidFromRegistrationResponse(str);
                    WebAuthnJsonUtil.extractOriginFromRegistrationResponse(str);
                }
                k55.d(v57VarMakeCurrentSpan, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    k55.d(v57VarMakeCurrentSpan, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            String str3 = "Failed to record post-success passkey telemetry for requestType: " + str2 + ", " + e.getMessage();
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("PasskeyReplyChannel", str3);
        } catch (Throwable th3) {
            throw th3;
        }
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [com.microsoft.identity.common.internal.providers.oauth2.PasskeyReplyChannel$ReplyMessage$Error] */
    private final PasskeyReplyChannel$ReplyMessage$Error throwableToErrorMessage(Throwable th) {
        final String message = th.getMessage();
        if (message == null) {
            message = "Unknown error (empty message)";
        }
        final String str = "NotAllowedError";
        if (!(th instanceof a12 ? true : th instanceof sv3 ? true : th instanceof an5)) {
            if (th instanceof e12 ? true : th instanceof xv3) {
                str = "AbortError";
            } else {
                if (th instanceof g12 ? true : th instanceof yv3) {
                    str = "NotSupportedError";
                } else {
                    if (th instanceof l12 ? true : th instanceof cw3) {
                        str = "UnknownError";
                    }
                }
            }
        }
        final String str2 = this.requestType;
        return new LibraryInfoHelper(message, str, str2) { // from class: com.microsoft.identity.common.internal.providers.oauth2.PasskeyReplyChannel$ReplyMessage$Error
            private final String domExceptionMessage;
            private final String domExceptionName;
            private final String type;

            {
                str2.getClass();
                this.domExceptionMessage = message;
                this.domExceptionName = str;
                this.type = str2;
            }

            @Override // com.microsoft.identity.common.java.logging.LibraryInfoHelper
            public final JSONObject getData() throws JSONException {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("domExceptionMessage", this.domExceptionMessage);
                jSONObject.put("domExceptionName", this.domExceptionName);
                return jSONObject;
            }

            @Override // com.microsoft.identity.common.java.logging.LibraryInfoHelper
            public final String getStatus() {
                return "error";
            }

            @Override // com.microsoft.identity.common.java.logging.LibraryInfoHelper
            public final String getType() {
                return this.type;
            }
        };
    }

    public final void postError(Throwable th) {
        rj7 spanContext;
        t40 t40Var = this.otelContext;
        if (t40Var == null) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("PasskeyReplyChannel:postError", "No OpenTelemetry context provided. Telemetry will not be recorded for this operation.");
            spanContext = null;
        } else {
            spanContext = SpanExtension.fromContext(t40Var).getSpanContext();
        }
        try {
            v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(PropertyBagUtil.createSpanFromParent("PasskeyWebListener", spanContext));
            try {
                PasskeyReplyChannel$ReplyMessage$Error passkeyReplyChannel$ReplyMessage$ErrorThrowableToErrorMessage = throwableToErrorMessage(th);
                kh4 kh4Var = this.replyProxy;
                String string = passkeyReplyChannel$ReplyMessage$ErrorThrowableToErrorMessage.toString();
                kh4Var.getClass();
                if (!jr8.c.b()) {
                    throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
                }
                kh4Var.a.postMessage(string);
                String str = "RequestType: " + this.requestType + " failed with error: " + passkeyReplyChannel$ReplyMessage$ErrorThrowableToErrorMessage;
                int i2 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("PasskeyReplyChannel:postError", str, th);
                k55.d(v57VarMakeCurrentSpan, null);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    k55.d(v57VarMakeCurrentSpan, th2);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            int i3 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("PasskeyReplyChannel:postError", "Reply message failed", th4);
            throw th4;
        }
    }

    public final void postSuccess(final String str) {
        rj7 spanContext;
        str.getClass();
        t40 t40Var = this.otelContext;
        if (t40Var == null) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("PasskeyReplyChannel:postSuccess", "No OpenTelemetry context provided. Telemetry will not be recorded for this operation.");
            spanContext = null;
        } else {
            spanContext = SpanExtension.fromContext(t40Var).getSpanContext();
        }
        r86 r86VarCreateSpanFromParent = PropertyBagUtil.createSpanFromParent("PasskeyWebListener", spanContext);
        try {
            final String str2 = this.requestType;
            String string = new LibraryInfoHelper(str, str2) { // from class: com.microsoft.identity.common.internal.providers.oauth2.PasskeyReplyChannel$ReplyMessage$Success
                private final JSONObject data;
                private final String type;

                {
                    Object bn6Var;
                    str.getClass();
                    str2.getClass();
                    this.type = str2;
                    try {
                        bn6Var = new JSONObject(str);
                    } catch (Throwable th) {
                        bn6Var = new bn6(th);
                    }
                    this.data = (JSONObject) (en6.a(bn6Var) != null ? new JSONObject() : bn6Var);
                }

                @Override // com.microsoft.identity.common.java.logging.LibraryInfoHelper
                public final JSONObject getData() {
                    return this.data;
                }

                @Override // com.microsoft.identity.common.java.logging.LibraryInfoHelper
                public final String getStatus() {
                    return "success";
                }

                @Override // com.microsoft.identity.common.java.logging.LibraryInfoHelper
                public final String getType() {
                    return this.type;
                }
            }.toString();
            kh4 kh4Var = this.replyProxy;
            kh4Var.getClass();
            if (!jr8.c.b()) {
                throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
            }
            kh4Var.a.postMessage(string);
            l73.v(this.telemetryScope, new cp4(r86VarCreateSpanFromParent.a(t40.a())), new PasskeyReplyChannel$postSuccess$job$1(this, r86VarCreateSpanFromParent, str, PropertyBagUtil.fromContext(t40Var), null), 2).invokeOnCompletion(new AnonymousClass1(1));
        } catch (Throwable th) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("PasskeyReplyChannel:postSuccess", "Immediate execution failed", th);
            throw th;
        }
    }
}
