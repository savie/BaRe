package com.microsoft.identity.common.internal.cache;

import android.content.Context;
import android.os.Bundle;
import com.microsoft.identity.common.internal.broker.BrokerData;
import com.microsoft.identity.common.internal.broker.BrokerValidator;
import com.microsoft.identity.common.logging.Logger;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.gs4;
import defpackage.mt3;
import defpackage.ph6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ActiveBrokerCacheUpdater {
    private static final String TAG = ph6.a(ActiveBrokerCacheUpdater.class).c();
    private final ClientActiveBrokerCache cache;
    private final mt3 isValidBroker;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.cache.ActiveBrokerCacheUpdater$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 extends gs4 implements mt3 {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context) {
            super(1);
            this.$context = context;
        }

        @Override // defpackage.mt3
        public final Object invoke(Object obj) {
            BrokerData brokerData = (BrokerData) obj;
            brokerData.getClass();
            return Boolean.valueOf(new BrokerValidator(this.$context).isSignedByKnownKeys(brokerData));
        }
    }

    public ActiveBrokerCacheUpdater(Context context, ClientActiveBrokerCache clientActiveBrokerCache) {
        context.getClass();
        this.isValidBroker = new AnonymousClass1(context);
        this.cache = clientActiveBrokerCache;
    }

    public final void updateCachedActiveBrokerFromResultBundle(Bundle bundle) {
        String strN = dj7.n(new StringBuilder(), TAG, ":updateCachedActiveBrokerFromResultBundle");
        if (bundle == null) {
            return;
        }
        boolean z = bundle.getBoolean("broker.discovery.disabled", false);
        ClientActiveBrokerCache clientActiveBrokerCache = this.cache;
        if (z) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info(strN, "Got a response indicating that the broker discovery is disabled.Will also wipe the local active broker cache,and skip broker discovery via IPC (only fall back to AccountManager) for the next 60 minutes.");
            clientActiveBrokerCache.clearCachedActiveBroker();
            clientActiveBrokerCache.setShouldUseAccountManagerForTheNextMilliseconds();
            return;
        }
        String string = bundle.getString("active.broker.package.name");
        String string2 = bundle.getString("active.broker.signing.certificate.thumbprint");
        if (string == null || string.length() == 0 || string2 == null || string2.length() == 0) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info(strN, "A response was received without active broker information.");
            return;
        }
        BrokerData brokerData = new BrokerData(string, string2, null);
        if (((Boolean) ((AnonymousClass1) this.isValidBroker).invoke(brokerData)).booleanValue()) {
            clientActiveBrokerCache.setCachedActiveBroker(brokerData);
            return;
        }
        String strK = eq3.k("Cannot find an installed ", string, " with a matching signing certificate thumbprint.");
        int i3 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.warn(strN, strK);
    }
}
