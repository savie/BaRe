package com.microsoft.identity.common.internal.activebrokerdiscovery;

import com.jcraft.jsch.SftpATTRS;
import defpackage.kv1;
import defpackage.nd2;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@nd2(c = "com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClient", f = "BrokerDiscoveryClient.kt", l = {403}, m = "getActiveBrokerAsync")
final class BrokerDiscoveryClient$getActiveBrokerAsync$1 extends kv1 {
    BrokerDiscoveryClient L$0;
    String L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ BrokerDiscoveryClient this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BrokerDiscoveryClient$getActiveBrokerAsync$1(BrokerDiscoveryClient brokerDiscoveryClient, kv1 kv1Var) {
        super(kv1Var);
        this.this$0 = brokerDiscoveryClient;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return BrokerDiscoveryClient.access$getActiveBrokerAsync(this.this$0, false, this);
    }
}
