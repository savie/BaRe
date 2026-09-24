package com.microsoft.identity.common.internal.activebrokerdiscovery;

import android.accounts.AccountManager;
import android.accounts.AuthenticatorDescription;
import android.content.Context;
import com.microsoft.identity.common.internal.broker.BrokerData;
import com.microsoft.identity.common.internal.broker.BrokerValidator;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.Logger;
import defpackage.bt3;
import defpackage.dj7;
import defpackage.el1;
import defpackage.gs4;
import defpackage.mt3;
import defpackage.nq7;
import defpackage.ph6;
import defpackage.uq7;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AccountManagerBrokerDiscoveryUtil {
    private static final String TAG = ph6.a(AccountManagerBrokerDiscoveryUtil.class).c();
    private final bt3 getAccountManagerApps;
    private final mt3 isSignedByKnownKeys;
    private final Set<BrokerData> knownBrokerApps;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.activebrokerdiscovery.AccountManagerBrokerDiscoveryUtil$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass2 extends gs4 implements mt3 {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Context context) {
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

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.activebrokerdiscovery.AccountManagerBrokerDiscoveryUtil$3, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass3 extends gs4 implements bt3 {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Context context) {
            super(0);
            this.$context = context;
        }

        @Override // defpackage.bt3
        public final Object invoke() {
            AuthenticatorDescription[] authenticatorTypes = AccountManager.get(this.$context).getAuthenticatorTypes();
            authenticatorTypes.getClass();
            return authenticatorTypes;
        }
    }

    public AccountManagerBrokerDiscoveryUtil(Context context) {
        context.getClass();
        Set set = BrokerData.prodBrokers;
        ArrayList arrayList = new ArrayList();
        for (Object obj : set) {
            int i = BrokerData.a;
            String packageName = ((BrokerData) obj).getPackageName();
            packageName.getClass();
            if (BrokerData.accountManagerBrokers.contains(packageName)) {
                arrayList.add(obj);
            }
        }
        Set<BrokerData> setZ1 = el1.z1(arrayList);
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(context);
        AnonymousClass3 anonymousClass3 = new AnonymousClass3(context);
        this.knownBrokerApps = setZ1;
        this.isSignedByKnownKeys = anonymousClass2;
        this.getAccountManagerApps = anonymousClass3;
    }

    public final BrokerData getActiveBrokerFromAccountManager() throws ClientException {
        Object next;
        String strN = dj7.n(new StringBuilder(), TAG, ":getActiveBrokerFromAccountManager");
        try {
            for (AuthenticatorDescription authenticatorDescription : (AuthenticatorDescription[]) this.getAccountManagerApps.invoke()) {
                String str = authenticatorDescription.packageName;
                if (str != null && authenticatorDescription.type != null) {
                    str.getClass();
                    String string = nq7.H0(str).toString();
                    String str2 = authenticatorDescription.type;
                    str2.getClass();
                    if ("com.microsoft.workaccount".equalsIgnoreCase(nq7.H0(str2).toString())) {
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : this.knownBrokerApps) {
                            if (uq7.P(((BrokerData) obj).getPackageName(), string, true)) {
                                arrayList.add(obj);
                            }
                        }
                        Iterator it = arrayList.iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                        } while (!((Boolean) this.isSignedByKnownKeys.invoke(next)).booleanValue());
                        BrokerData brokerData = (BrokerData) next;
                        if (brokerData != null) {
                            Logger.info(strN, brokerData + " is the active AccountManager broker.");
                            return brokerData;
                        }
                    } else {
                        continue;
                    }
                }
            }
            Logger.info(strN, "No valid AccountManager broker is found");
            return null;
        } catch (Throwable th) {
            throw new ClientException("account_manager_failed", th.getMessage(), null);
        }
    }
}
