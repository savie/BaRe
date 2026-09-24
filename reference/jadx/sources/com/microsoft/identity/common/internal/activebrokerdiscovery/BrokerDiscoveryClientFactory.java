package com.microsoft.identity.common.internal.activebrokerdiscovery;

import android.content.Context;
import com.microsoft.identity.common.java.interfaces.PlatformComponents;
import defpackage.l73;
import defpackage.mj5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class BrokerDiscoveryClientFactory {
    public static final /* synthetic */ int a = 0;
    private static volatile BrokerDiscoveryClient clientSdkInstance;
    private static final mj5 lock = new mj5();

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public abstract class Companion {
        public static BrokerDiscoveryClient getInstanceForClientSdk(Context context, PlatformComponents platformComponents) {
            if (BrokerDiscoveryClientFactory.clientSdkInstance == null) {
                l73.A(new BrokerDiscoveryClientFactory$Companion$getInstanceForClientSdk$1(context, platformComponents, null));
            }
            BrokerDiscoveryClient brokerDiscoveryClient = BrokerDiscoveryClientFactory.clientSdkInstance;
            brokerDiscoveryClient.getClass();
            return brokerDiscoveryClient;
        }
    }
}
