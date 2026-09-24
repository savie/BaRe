package com.microsoft.identity.common.internal.activebrokerdiscovery;

import com.microsoft.identity.common.internal.broker.BrokerData;
import com.microsoft.identity.common.internal.broker.ipc.IIpcStrategy;
import defpackage.be8;
import defpackage.jv1;
import defpackage.lg7;
import defpackage.nd2;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@nd2(c = "com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1", f = "BrokerDiscoveryClient.kt", l = {}, m = "invokeSuspend")
final class BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1 extends ws7 implements qt3 {
    final /* synthetic */ BrokerData $candidate;
    final /* synthetic */ IIpcStrategy $ipcStrategy;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1(BrokerData brokerData, IIpcStrategy iIpcStrategy, jv1 jv1Var) {
        super(2, jv1Var);
        this.$candidate = brokerData;
        this.$ipcStrategy = iIpcStrategy;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1(this.$candidate, this.$ipcStrategy, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        int i = BrokerDiscoveryClient.a;
        return BrokerDiscoveryClient.Companion.access$makeRequest(this.$candidate, this.$ipcStrategy);
    }
}
