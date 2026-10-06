package com.microsoft.identity.common.internal.activebrokerdiscovery;

import com.microsoft.identity.common.internal.broker.BrokerData;
import com.microsoft.identity.common.internal.broker.ipc.IIpcStrategy;
import defpackage.be8;
import defpackage.el1;
import defpackage.hl1;
import defpackage.jg2;
import defpackage.jv1;
import defpackage.l0;
import defpackage.l73;
import defpackage.lg7;
import defpackage.mt3;
import defpackage.nd2;
import defpackage.ov2;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;
import defpackage.yx1;
import defpackage.ze0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@nd2(c = "com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClient$Companion$queryFromBroker$2", f = "BrokerDiscoveryClient.kt", l = {134}, m = "invokeSuspend")
final class BrokerDiscoveryClient$Companion$queryFromBroker$2 extends ws7 implements qt3 {
    final /* synthetic */ Set<BrokerData> $brokerCandidates;
    final /* synthetic */ IIpcStrategy $ipcStrategy;
    final /* synthetic */ mt3 $isPackageInstalled;
    final /* synthetic */ mt3 $isValidBroker;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BrokerDiscoveryClient$Companion$queryFromBroker$2(Set<BrokerData> set, mt3 mt3Var, mt3 mt3Var2, IIpcStrategy iIpcStrategy, jv1 jv1Var) {
        super(2, jv1Var);
        this.$brokerCandidates = set;
        this.$isPackageInstalled = mt3Var;
        this.$isValidBroker = mt3Var2;
        this.$ipcStrategy = iIpcStrategy;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        BrokerDiscoveryClient$Companion$queryFromBroker$2 brokerDiscoveryClient$Companion$queryFromBroker$2 = new BrokerDiscoveryClient$Companion$queryFromBroker$2(this.$brokerCandidates, this.$isPackageInstalled, this.$isValidBroker, this.$ipcStrategy, jv1Var);
        brokerDiscoveryClient$Companion$queryFromBroker$2.L$0 = obj;
        return brokerDiscoveryClient$Companion$queryFromBroker$2;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((BrokerDiscoveryClient$Companion$queryFromBroker$2) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i == 0) {
            lg7.H(obj);
            xx1 xx1Var = (xx1) this.L$0;
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : this.$brokerCandidates) {
                if (((Boolean) this.$isPackageInstalled.invoke(obj2)).booleanValue()) {
                    arrayList.add(obj2);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj3 : arrayList) {
                if (((Boolean) this.$isValidBroker.invoke(obj3)).booleanValue()) {
                    arrayList2.add(obj3);
                }
            }
            ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(l73.e(xx1Var, BrokerDiscoveryClient.dispatcher, new BrokerDiscoveryClient$Companion$queryFromBroker$2$deferredResults$1$1((BrokerData) it.next(), this.$ipcStrategy, null), 2));
            }
            this.label = 1;
            obj = arrayList3.isEmpty() ? ov2.a : new ze0((jg2[]) arrayList3.toArray(new jg2[0])).a(this);
            yx1 yx1Var = yx1.a;
            if (obj == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        return el1.U0(el1.Q0((Iterable) obj));
    }
}
