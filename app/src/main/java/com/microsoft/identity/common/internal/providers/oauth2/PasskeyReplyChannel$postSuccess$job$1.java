package com.microsoft.identity.common.internal.providers.oauth2;

import defpackage.be8;
import defpackage.jv1;
import defpackage.lg7;
import defpackage.nd2;
import defpackage.qt3;
import defpackage.r86;
import defpackage.ws7;
import defpackage.xx1;
import defpackage.zk0;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@nd2(c = "com.microsoft.identity.common.internal.providers.oauth2.PasskeyReplyChannel$postSuccess$job$1", f = "PasskeyReplyChannel.kt", l = {}, m = "invokeSuspend")
final class PasskeyReplyChannel$postSuccess$job$1 extends ws7 implements qt3 {
    final /* synthetic */ zk0 $baggage;
    final /* synthetic */ String $json;
    final /* synthetic */ r86 $span;
    final /* synthetic */ PasskeyReplyChannel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PasskeyReplyChannel$postSuccess$job$1(PasskeyReplyChannel passkeyReplyChannel, r86 r86Var, String str, zk0 zk0Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.this$0 = passkeyReplyChannel;
        this.$span = r86Var;
        this.$json = str;
        this.$baggage = zk0Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new PasskeyReplyChannel$postSuccess$job$1(this.this$0, this.$span, this.$json, this.$baggage, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        PasskeyReplyChannel$postSuccess$job$1 passkeyReplyChannel$postSuccess$job$1 = (PasskeyReplyChannel$postSuccess$job$1) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        passkeyReplyChannel$postSuccess$job$1.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        PasskeyReplyChannel.access$recordPostSuccessTelemetry(this.this$0, this.$span, this.$json, this.$baggage);
        return be8.a;
    }
}
