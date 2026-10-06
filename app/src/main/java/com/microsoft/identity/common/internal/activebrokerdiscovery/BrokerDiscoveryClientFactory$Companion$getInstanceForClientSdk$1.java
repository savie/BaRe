package com.microsoft.identity.common.internal.activebrokerdiscovery;

import android.content.Context;
import com.microsoft.identity.common.components.AndroidStorageSupplier;
import com.microsoft.identity.common.internal.cache.ClientActiveBrokerCache;
import com.microsoft.identity.common.internal.util.AbstractSharedPrefNameValueStorage;
import com.microsoft.identity.common.java.interfaces.PlatformComponents;
import defpackage.be8;
import defpackage.jv1;
import defpackage.l0;
import defpackage.lg7;
import defpackage.mj5;
import defpackage.nd2;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@nd2(c = "com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1", f = "BrokerDiscoveryClientFactory.kt", l = {109}, m = "invokeSuspend")
final class BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1 extends ws7 implements qt3 {
    final /* synthetic */ Context $context;
    final /* synthetic */ PlatformComponents $platformComponents;
    mj5 L$0;
    Context L$1;
    PlatformComponents L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1(Context context, PlatformComponents platformComponents, jv1 jv1Var) {
        super(2, jv1Var);
        this.$context = context;
        this.$platformComponents = platformComponents;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1(this.$context, this.$platformComponents, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        mj5 mj5Var;
        Context context;
        PlatformComponents platformComponents;
        int i = this.label;
        if (i == 0) {
            lg7.H(obj);
            mj5 mj5Var2 = BrokerDiscoveryClientFactory.lock;
            this.L$0 = mj5Var2;
            Context context2 = this.$context;
            this.L$1 = context2;
            PlatformComponents platformComponents2 = this.$platformComponents;
            this.L$2 = platformComponents2;
            this.label = 1;
            Object objA = mj5Var2.a(this);
            yx1 yx1Var = yx1.a;
            if (objA == yx1Var) {
                return yx1Var;
            }
            mj5Var = mj5Var2;
            context = context2;
            platformComponents = platformComponents2;
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            platformComponents = this.L$2;
            context = this.L$1;
            mj5Var = this.L$0;
            lg7.H(obj);
        }
        try {
            if (BrokerDiscoveryClientFactory.clientSdkInstance == null) {
                int i2 = ClientActiveBrokerCache.a;
                AndroidStorageSupplier storageSupplier = platformComponents.getStorageSupplier();
                storageSupplier.getClass();
                AbstractSharedPrefNameValueStorage encryptedNameValueStore = storageSupplier.getEncryptedNameValueStore("BROKER_METADATA_CACHE_STORE_ON_CLIENT_SDK_SIDE");
                mj5 mj5Var3 = ClientActiveBrokerCache.sClientSdkSideLock;
                mj5Var3.getClass();
                BrokerDiscoveryClientFactory.clientSdkInstance = new BrokerDiscoveryClient(context, platformComponents, new ClientActiveBrokerCache(encryptedNameValueStore, mj5Var3));
            }
            return be8.a;
        } finally {
            mj5Var.b(null);
        }
    }
}
