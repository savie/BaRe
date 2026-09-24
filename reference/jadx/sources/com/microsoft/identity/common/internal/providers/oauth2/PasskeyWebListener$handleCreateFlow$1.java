package com.microsoft.identity.common.internal.providers.oauth2;

import com.jcraft.jsch.SftpATTRS;
import defpackage.kv1;
import defpackage.nd2;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@nd2(c = "com.microsoft.identity.common.internal.providers.oauth2.PasskeyWebListener", f = "PasskeyWebListener.kt", l = {223}, m = "handleCreateFlow")
final class PasskeyWebListener$handleCreateFlow$1 extends kv1 {
    PasskeyReplyChannel L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PasskeyWebListener this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PasskeyWebListener$handleCreateFlow$1(PasskeyWebListener passkeyWebListener, kv1 kv1Var) {
        super(kv1Var);
        this.this$0 = passkeyWebListener;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return PasskeyWebListener.access$handleCreateFlow(this.this$0, null, null, null, this);
    }
}
