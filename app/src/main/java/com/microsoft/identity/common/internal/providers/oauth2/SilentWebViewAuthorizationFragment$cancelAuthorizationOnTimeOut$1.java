package com.microsoft.identity.common.internal.providers.oauth2;

import com.microsoft.identity.common.java.providers.RawAuthorizationResult;
import com.microsoft.identity.common.logging.Logger;
import defpackage.be8;
import defpackage.jv1;
import defpackage.l0;
import defpackage.lg7;
import defpackage.nd2;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;
import defpackage.yc9;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@nd2(c = "com.microsoft.identity.common.internal.providers.oauth2.SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1", f = "SilentWebViewAuthorizationFragment.kt", l = {92}, m = "invokeSuspend")
final class SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1 extends ws7 implements qt3 {
    final /* synthetic */ long $timeOutInMs;
    String L$0;
    int label;
    final /* synthetic */ SilentWebViewAuthorizationFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1(long j, SilentWebViewAuthorizationFragment silentWebViewAuthorizationFragment, jv1 jv1Var) {
        super(2, jv1Var);
        this.$timeOutInMs = j;
        this.this$0 = silentWebViewAuthorizationFragment;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1(this.$timeOutInMs, this.this$0, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        String str;
        int i = this.label;
        if (i == 0) {
            lg7.H(obj);
            str = "SilentWebViewAuthorizationFragment:cancelAuthorizationOnTimeOut";
            this.L$0 = "SilentWebViewAuthorizationFragment:cancelAuthorizationOnTimeOut";
            this.label = 1;
            Object objJ = yc9.j(this.$timeOutInMs, this);
            yx1 yx1Var = yx1.a;
            if (objJ == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str = this.L$0;
            lg7.H(obj);
        }
        int i2 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info(str, "Received Authorization flow cancel request from SDK");
        RawAuthorizationResult rawAuthorizationResultFromResultCode = RawAuthorizationResult.fromResultCode(10);
        SilentWebViewAuthorizationFragment silentWebViewAuthorizationFragment = this.this$0;
        silentWebViewAuthorizationFragment.sendResult(rawAuthorizationResultFromResultCode);
        silentWebViewAuthorizationFragment.finish();
        return be8.a;
    }
}
