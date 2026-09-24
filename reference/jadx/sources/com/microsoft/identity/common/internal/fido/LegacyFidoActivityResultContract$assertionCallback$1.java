package com.microsoft.identity.common.internal.fido;

import com.microsoft.identity.common.logging.Logger;
import defpackage.be8;
import defpackage.gs4;
import defpackage.mt3;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class LegacyFidoActivityResultContract$assertionCallback$1 extends gs4 implements mt3 {
    final /* synthetic */ LegacyFidoActivityResultContract this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LegacyFidoActivityResultContract$assertionCallback$1(LegacyFidoActivityResultContract legacyFidoActivityResultContract) {
        super(1);
        this.this$0 = legacyFidoActivityResultContract;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        ((String) obj).getClass();
        String str = this.this$0.TAG;
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info(str, "Assertion callback not set.");
        return be8.a;
    }
}
