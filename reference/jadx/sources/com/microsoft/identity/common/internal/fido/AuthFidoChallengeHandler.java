package com.microsoft.identity.common.internal.fido;

import android.webkit.WebView;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.internal.fido.AuthFidoChallengeHandler;
import com.microsoft.identity.common.internal.platform.AndroidPlatformUtil;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.IChallengeHandler;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.opentelemetry.AttributeName;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.logging.Logger;
import defpackage.be8;
import defpackage.dj7;
import defpackage.fl1;
import defpackage.fu4;
import defpackage.jv1;
import defpackage.l0;
import defpackage.l73;
import defpackage.lg7;
import defpackage.nd2;
import defpackage.nq7;
import defpackage.ph6;
import defpackage.pw5;
import defpackage.qt3;
import defpackage.r86;
import defpackage.t40;
import defpackage.ws7;
import defpackage.x65;
import defpackage.xx1;
import defpackage.yx1;
import defpackage.z85;
import defpackage.zk0;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AuthFidoChallengeHandler implements IChallengeHandler<FidoChallenge, Void> {
    private static final ArrayList<AttributeName> parentAttributeNames = fl1.x0(AttributeName.correlation_id, AttributeName.tenant_id, AttributeName.account_type, AttributeName.calling_package_name);
    private final String TAG;
    private final CredManFidoManager fidoManager;
    private final fu4 lifecycleOwner;
    private final t40 oTelContext;
    private final WebView webView;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.fido.AuthFidoChallengeHandler$processChallenge$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @nd2(c = "com.microsoft.identity.common.internal.fido.AuthFidoChallengeHandler$processChallenge$2", f = "AuthFidoChallengeHandler.kt", l = {130}, m = "invokeSuspend")
    final class AnonymousClass2 extends ws7 implements qt3 {
        final /* synthetic */ List<String> $allowedCredentials;
        final /* synthetic */ String $authChallenge;
        final /* synthetic */ String $context;
        final /* synthetic */ String $methodTag;
        final /* synthetic */ String $relyingPartyIdentifier;
        final /* synthetic */ r86 $span;
        final /* synthetic */ String $submitUrl;
        final /* synthetic */ String $userVerificationPolicy;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(String str, String str2, List list, String str3, r86 r86Var, String str4, String str5, String str6, jv1 jv1Var) {
            super(2, jv1Var);
            this.$authChallenge = str;
            this.$relyingPartyIdentifier = str2;
            this.$allowedCredentials = list;
            this.$userVerificationPolicy = str3;
            this.$span = r86Var;
            this.$submitUrl = str4;
            this.$context = str5;
            this.$methodTag = str6;
        }

        @Override // defpackage.ml0
        public final jv1 create(Object obj, jv1 jv1Var) {
            return AuthFidoChallengeHandler.this.new AnonymousClass2(this.$authChallenge, this.$relyingPartyIdentifier, this.$allowedCredentials, this.$userVerificationPolicy, this.$span, this.$submitUrl, this.$context, this.$methodTag, jv1Var);
        }

        @Override // defpackage.qt3
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
        }

        @Override // defpackage.ml0
        public final Object invokeSuspend(Object obj) {
            Object objAuthenticate;
            int i = this.label;
            String str = this.$methodTag;
            r86 r86Var = this.$span;
            AuthFidoChallengeHandler authFidoChallengeHandler = AuthFidoChallengeHandler.this;
            try {
                if (i == 0) {
                    lg7.H(obj);
                    IFidoManager iFidoManager = authFidoChallengeHandler.fidoManager;
                    String str2 = this.$authChallenge;
                    String str3 = this.$relyingPartyIdentifier;
                    List<String> list = this.$allowedCredentials;
                    try {
                        String str4 = this.$userVerificationPolicy;
                        this.label = 1;
                        objAuthenticate = ((CredManFidoManager) iFidoManager).authenticate(str2, str3, list, str4, r86Var, this);
                        r86Var = r86Var;
                        yx1 yx1Var = yx1.a;
                        if (objAuthenticate == yx1Var) {
                            return yx1Var;
                        }
                    } catch (CancellationException e) {
                        e = e;
                        r86Var = r86Var;
                        authFidoChallengeHandler.respondToChallengeWithError(this.$submitUrl, this.$context, r86Var, "Coroutine job of FIDO API calls cancelled.", e, str);
                    } catch (Exception e2) {
                        e = e2;
                        r86Var = r86Var;
                        authFidoChallengeHandler.respondToChallengeWithError(this.$submitUrl, this.$context, r86Var, String.valueOf(e.getMessage()), e, str);
                    }
                } else {
                    if (i != 1) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    lg7.H(obj);
                    objAuthenticate = obj;
                }
                authFidoChallengeHandler.respondToChallenge(this.$submitUrl, (String) objAuthenticate, this.$context, r86Var);
            } catch (CancellationException e3) {
                e = e3;
            } catch (Exception e4) {
                e = e4;
            }
            return be8.a;
        }
    }

    public AuthFidoChallengeHandler(CredManFidoManager credManFidoManager, WebView webView, t40 t40Var, fu4 fu4Var) {
        webView.getClass();
        this.fidoManager = credManFidoManager;
        this.webView = webView;
        this.oTelContext = t40Var;
        this.lifecycleOwner = fu4Var;
        this.TAG = String.valueOf(ph6.a(AuthFidoChallengeHandler.class).c());
    }

    public static void a(String str, AuthFidoChallengeHandler authFidoChallengeHandler, String str2, Map map) {
        str2.getClass();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info(str, "Responding to Fido challenge.");
        authFidoChallengeHandler.webView.loadUrl(str2, map);
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.challengehandlers.IChallengeHandler
    public final /* bridge */ /* synthetic */ Void processChallenge(FidoChallenge fidoChallenge) {
        throw null;
    }

    /* JADX INFO: renamed from: processChallenge, reason: avoid collision after fix types in other method */
    public final void processChallenge2(FidoChallenge fidoChallenge) {
        r86 r86VarCreateSpan;
        String strN = dj7.n(new StringBuilder(), this.TAG, ":processChallenge");
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info(strN, "Processing FIDO challenge.");
        t40 t40Var = this.oTelContext;
        if (t40Var != null) {
            r86VarCreateSpan = PropertyBagUtil.createSpanFromParent("Fido", SpanExtension.fromContext(t40Var).getSpanContext());
            zk0 zk0VarFromContext = PropertyBagUtil.fromContext(t40Var);
            for (AttributeName attributeName : parentAttributeNames) {
                if (zk0VarFromContext.getEntryValue(attributeName.name()) != null) {
                    attributeName.name();
                }
            }
        } else {
            r86VarCreateSpan = LibraryInfoHelper.createSpan("Fido");
        }
        r86 r86Var = r86VarCreateSpan;
        com.microsoft.identity.common.java.logging.Logger.info(strN, "Is app in work profile?: " + AndroidPlatformUtil.isInManagedProfile(this.webView.getContext()));
        String orThrow = fidoChallenge.getSubmitUrl().getOrThrow();
        String orThrow2 = fidoChallenge.getContext().getOrThrow();
        try {
            String orThrow3 = fidoChallenge.getChallenge().getOrThrow();
            String orThrow4 = fidoChallenge.getRelyingPartyIdentifier().getOrThrow();
            String orThrow5 = fidoChallenge.getUserVerificationPolicy().getOrThrow();
            List<String> orThrow6 = fidoChallenge.getAllowedCredentials().getOrThrow();
            fidoChallenge.getVersion().getOrThrow();
            fidoChallenge.getKeyTypes().getOrThrow();
            fu4 fu4Var = this.lifecycleOwner;
            if (fu4Var == null) {
                respondToChallengeWithError(orThrow, orThrow2, r86Var, "Cannot get lifecycle owner needed for FIDO API calls.", null, strN);
            } else {
                l73.v(z85.t(fu4Var), null, new AnonymousClass2(orThrow3, orThrow4, orThrow6, orThrow5, r86Var, orThrow, orThrow2, strN, null), 3);
            }
        } catch (Exception e) {
            respondToChallengeWithError(orThrow, orThrow2, r86Var, String.valueOf(e.getMessage()), e, strN);
        }
    }

    public final void respondToChallenge(final String str, String str2, String str3, r86 r86Var) {
        String str4;
        String str5;
        str.getClass();
        str2.getClass();
        str3.getClass();
        final String strN = dj7.n(new StringBuilder(), this.TAG, ":respondToChallenge");
        List listX0 = nq7.x0(str3, new String[]{TokenAuthenticationScheme.SCHEME_DELIMITER}, 6);
        if (listX0.size() == 2) {
            str4 = (String) listX0.get(0);
            str5 = (String) listX0.get(1);
        } else {
            str4 = (String) listX0.get(0);
            str5 = "";
        }
        final Map mapR0 = x65.r0(new pw5("Assertion", str2), new pw5("x-ms-ctx", str4), new pw5("x-ms-flowToken", str5));
        this.webView.post(new Runnable() { // from class: e80
            @Override // java.lang.Runnable
            public final void run() {
                AuthFidoChallengeHandler.a(strN, this, str, mapR0);
            }
        });
    }

    public final void respondToChallengeWithError(String str, String str2, r86 r86Var, String str3, Exception exc, String str4) {
        String strConcat;
        str.getClass();
        str2.getClass();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.error(str4, str3, exc);
        if (exc != null) {
            strConcat = "ERROR: " + exc.getClass().getName() + ": " + exc.getMessage();
        } else {
            strConcat = "ERROR: ".concat(str3);
        }
        respondToChallenge(str, strConcat, str2, r86Var);
    }
}
