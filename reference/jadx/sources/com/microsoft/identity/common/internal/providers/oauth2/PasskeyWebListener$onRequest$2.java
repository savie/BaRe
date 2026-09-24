package com.microsoft.identity.common.internal.providers.oauth2;

import defpackage.be8;
import defpackage.jv1;
import defpackage.l0;
import defpackage.lg7;
import defpackage.nd2;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@nd2(c = "com.microsoft.identity.common.internal.providers.oauth2.PasskeyWebListener$onRequest$2", f = "PasskeyWebListener.kt", l = {161}, m = "invokeSuspend")
final class PasskeyWebListener$onRequest$2 extends ws7 implements qt3 {
    final /* synthetic */ PasskeyReplyChannel $passkeyReplyChannel;
    final /* synthetic */ PasskeyWebListener.WebAuthNMessage $webAuthNMessage;
    int label;
    final /* synthetic */ PasskeyWebListener this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PasskeyWebListener$onRequest$2(PasskeyWebListener passkeyWebListener, PasskeyWebListener.WebAuthNMessage webAuthNMessage, PasskeyReplyChannel passkeyReplyChannel, jv1 jv1Var) {
        super(2, jv1Var);
        this.this$0 = passkeyWebListener;
        this.$webAuthNMessage = webAuthNMessage;
        this.$passkeyReplyChannel = passkeyReplyChannel;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new PasskeyWebListener$onRequest$2(this.this$0, this.$webAuthNMessage, this.$passkeyReplyChannel, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((PasskeyWebListener$onRequest$2) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        PasskeyWebListener passkeyWebListener = this.this$0;
        if (i == 0) {
            lg7.H(obj);
            CredentialManagerHandler credentialManagerHandler = passkeyWebListener.credentialManagerHandler;
            String request = this.$webAuthNMessage.getRequest();
            this.label = 1;
            Object objAccess$handleGetFlow = PasskeyWebListener.access$handleGetFlow(passkeyWebListener, credentialManagerHandler, request, this.$passkeyReplyChannel, this);
            yx1 yx1Var = yx1.a;
            if (objAccess$handleGetFlow == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        passkeyWebListener.havePendingRequest.set(false);
        return be8.a;
    }
}
