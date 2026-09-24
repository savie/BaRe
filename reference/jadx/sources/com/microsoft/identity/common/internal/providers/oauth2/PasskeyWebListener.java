package com.microsoft.identity.common.internal.providers.oauth2;

import android.net.Uri;
import android.webkit.WebView;
import com.jcraft.jsch.SftpATTRS;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.logging.Logger;
import defpackage.ao;
import defpackage.be8;
import defpackage.bn6;
import defpackage.bw3;
import defpackage.dv1;
import defpackage.en6;
import defpackage.eq3;
import defpackage.f22;
import defpackage.hb5;
import defpackage.kh4;
import defpackage.kv1;
import defpackage.l0;
import defpackage.l73;
import defpackage.lg7;
import defpackage.nq7;
import defpackage.oa6;
import defpackage.t40;
import defpackage.yx1;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PasskeyWebListener {
    private final dv1 coroutineScope;
    private final CredentialManagerHandler credentialManagerHandler;
    private final AtomicBoolean havePendingRequest = new AtomicBoolean(false);
    private final t40 otelContext;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class WebAuthNMessage {
        private final String request;
        private final String type;

        public WebAuthNMessage(String str, String str2) {
            this.type = str;
            this.request = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WebAuthNMessage)) {
                return false;
            }
            WebAuthNMessage webAuthNMessage = (WebAuthNMessage) obj;
            return this.type.equals(webAuthNMessage.type) && this.request.equals(webAuthNMessage.request);
        }

        public final String getRequest() {
            return this.request;
        }

        public final String getType() {
            return this.type;
        }

        public final int hashCode() {
            return this.request.hashCode() + (this.type.hashCode() * 31);
        }

        public final String toString() {
            return "WebAuthNMessage(type=" + this.type + ", request=" + this.request + ')';
        }
    }

    public PasskeyWebListener(dv1 dv1Var, CredentialManagerHandler credentialManagerHandler, t40 t40Var) {
        this.coroutineScope = dv1Var;
        this.credentialManagerHandler = credentialManagerHandler;
        this.otelContext = t40Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object access$handleCreateFlow(PasskeyWebListener passkeyWebListener, CredentialManagerHandler credentialManagerHandler, String str, PasskeyReplyChannel passkeyReplyChannel, kv1 kv1Var) {
        PasskeyWebListener$handleCreateFlow$1 passkeyWebListener$handleCreateFlow$1;
        Object bn6Var;
        if (kv1Var instanceof PasskeyWebListener$handleCreateFlow$1) {
            passkeyWebListener$handleCreateFlow$1 = (PasskeyWebListener$handleCreateFlow$1) kv1Var;
            int i = passkeyWebListener$handleCreateFlow$1.label;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                passkeyWebListener$handleCreateFlow$1.label = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                passkeyWebListener$handleCreateFlow$1 = new PasskeyWebListener$handleCreateFlow$1(passkeyWebListener, kv1Var);
            }
        } else {
            passkeyWebListener$handleCreateFlow$1 = new PasskeyWebListener$handleCreateFlow$1(passkeyWebListener, kv1Var);
        }
        Object objCreatePasskey = passkeyWebListener$handleCreateFlow$1.result;
        int i2 = passkeyWebListener$handleCreateFlow$1.label;
        try {
            if (i2 == 0) {
                lg7.H(objCreatePasskey);
                passkeyWebListener$handleCreateFlow$1.L$0 = passkeyReplyChannel;
                passkeyWebListener$handleCreateFlow$1.label = 1;
                objCreatePasskey = credentialManagerHandler.createPasskey(str, passkeyWebListener$handleCreateFlow$1);
                Object obj = yx1.a;
                if (objCreatePasskey == obj) {
                    return obj;
                }
            } else {
                if (i2 != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                passkeyReplyChannel = passkeyWebListener$handleCreateFlow$1.L$0;
                lg7.H(objCreatePasskey);
            }
            bn6Var = (f22) objCreatePasskey;
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (!(bn6Var instanceof bn6)) {
            passkeyReplyChannel.postSuccess(((f22) bn6Var).a);
        }
        Throwable thA = en6.a(bn6Var);
        if (thA != null) {
            passkeyReplyChannel.postError(thA);
        }
        return be8.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object access$handleGetFlow(PasskeyWebListener passkeyWebListener, CredentialManagerHandler credentialManagerHandler, String str, PasskeyReplyChannel passkeyReplyChannel, kv1 kv1Var) {
        PasskeyWebListener$handleGetFlow$1 passkeyWebListener$handleGetFlow$1;
        Object bn6Var;
        if (kv1Var instanceof PasskeyWebListener$handleGetFlow$1) {
            passkeyWebListener$handleGetFlow$1 = (PasskeyWebListener$handleGetFlow$1) kv1Var;
            int i = passkeyWebListener$handleGetFlow$1.label;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                passkeyWebListener$handleGetFlow$1.label = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                passkeyWebListener$handleGetFlow$1 = new PasskeyWebListener$handleGetFlow$1(passkeyWebListener, kv1Var);
            }
        } else {
            passkeyWebListener$handleGetFlow$1 = new PasskeyWebListener$handleGetFlow$1(passkeyWebListener, kv1Var);
        }
        Object passkey = passkeyWebListener$handleGetFlow$1.result;
        int i2 = passkeyWebListener$handleGetFlow$1.label;
        try {
            if (i2 == 0) {
                lg7.H(passkey);
                passkeyWebListener$handleGetFlow$1.L$0 = passkeyReplyChannel;
                passkeyWebListener$handleGetFlow$1.label = 1;
                passkey = credentialManagerHandler.getPasskey(str, passkeyWebListener$handleGetFlow$1);
                Object obj = yx1.a;
                if (passkey == obj) {
                    return obj;
                }
            } else {
                if (i2 != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                passkeyReplyChannel = passkeyWebListener$handleGetFlow$1.L$0;
                lg7.H(passkey);
            }
            bn6Var = (bw3) passkey;
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (!(bn6Var instanceof bn6)) {
            ao aoVar = ((bw3) bn6Var).a;
            oa6 oa6Var = aoVar instanceof oa6 ? (oa6) aoVar : null;
            if (oa6Var != null) {
                passkeyReplyChannel.postSuccess(oa6Var.c);
            } else {
                passkeyReplyChannel.postError(new ClientException("unsupported_operation", "Retrieved credential is not a PublicKeyCredential.", null));
            }
        }
        Throwable thA = en6.a(bn6Var);
        if (thA != null) {
            passkeyReplyChannel.postError(thA);
        }
        return be8.a;
    }

    public final void onPostMessage(WebView webView, hb5 hb5Var, Uri uri, boolean z, kh4 kh4Var) {
        String str;
        Object bn6Var;
        webView.getClass();
        uri.getClass();
        kh4Var.getClass();
        int i = hb5Var.b;
        if (i != 0) {
            StringBuilder sb = new StringBuilder("Wrong data accessor type detected. ");
            if (i != 0) {
                str = i != 1 ? "Unknown" : "ArrayBuffer";
            } else {
                str = "String";
            }
            throw new IllegalStateException(eq3.n(sb, str, " expected, but got ", "String"));
        }
        String str2 = hb5Var.a;
        t40 t40Var = this.otelContext;
        PasskeyReplyChannel passkeyReplyChannel = new PasskeyReplyChannel(kh4Var, null, t40Var, 10);
        if (str2 != null) {
            try {
                if (!nq7.j0(str2)) {
                    JSONObject jSONObject = new JSONObject(str2);
                    String strOptString = jSONObject.optString("type");
                    strOptString.getClass();
                    if (nq7.j0(strOptString)) {
                        strOptString = null;
                    }
                    String strOptString2 = jSONObject.optString("request");
                    strOptString2.getClass();
                    if (nq7.j0(strOptString2)) {
                        strOptString2 = null;
                    }
                    if (strOptString == null) {
                        throw new ClientException("missing_parameter", "Missing required key: type", null);
                    }
                    if (strOptString2 == null) {
                        throw new ClientException("missing_parameter", "Missing required key: request", null);
                    }
                    bn6Var = new WebAuthNMessage(strOptString, strOptString2);
                    Throwable thA = en6.a(bn6Var);
                    if (thA != null) {
                        passkeyReplyChannel.postError(thA);
                    }
                    if (bn6Var instanceof bn6) {
                        bn6Var = null;
                    }
                    WebAuthNMessage webAuthNMessage = (WebAuthNMessage) bn6Var;
                    if (webAuthNMessage != null) {
                        String str3 = "Received WebAuthN request of type: " + webAuthNMessage.getType() + " from origin: " + uri;
                        int i2 = Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.info("PasskeyWebListener:onRequest", str3);
                        PasskeyReplyChannel passkeyReplyChannel2 = new PasskeyReplyChannel(kh4Var, webAuthNMessage.getType(), t40Var, 8);
                        AtomicBoolean atomicBoolean = this.havePendingRequest;
                        if (atomicBoolean.get()) {
                            passkeyReplyChannel2.postError(new ClientException("request_in_progress", "A WebAuthN request is already in progress.", null));
                            return;
                        }
                        atomicBoolean.set(true);
                        if (!z) {
                            passkeyReplyChannel2.postError(new ClientException("unsupported_operation", "WebAuthN requests from iframes are not supported.", null));
                            atomicBoolean.set(false);
                            return;
                        }
                        String type = webAuthNMessage.getType();
                        boolean zEquals = type.equals("create");
                        dv1 dv1Var = this.coroutineScope;
                        if (zEquals) {
                            l73.v(dv1Var, null, new PasskeyWebListener$onRequest$1(this, webAuthNMessage, passkeyReplyChannel2, null), 3);
                            return;
                        } else if (type.equals("get")) {
                            l73.v(dv1Var, null, new PasskeyWebListener$onRequest$2(this, webAuthNMessage, passkeyReplyChannel2, null), 3);
                            return;
                        } else {
                            passkeyReplyChannel2.postError(new ClientException("unsupported_operation", "Unsupported WebAuthN request type: ".concat(webAuthNMessage.getType()), null));
                            atomicBoolean.set(false);
                            return;
                        }
                    }
                    return;
                }
            } catch (Throwable th) {
                bn6Var = new bn6(th);
            }
        }
        throw new ClientException("missing_parameter", "Message data is null or blank", null);
    }
}
