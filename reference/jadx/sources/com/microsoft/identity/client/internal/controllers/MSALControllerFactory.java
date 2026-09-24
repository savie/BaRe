package com.microsoft.identity.client.internal.controllers;

import android.content.Context;
import android.os.PowerManager;
import com.microsoft.identity.client.PublicClientApplicationConfiguration;
import com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClient;
import com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClientFactory;
import com.microsoft.identity.common.internal.broker.BrokerData;
import com.microsoft.identity.common.internal.controllers.BrokerMsalController;
import com.microsoft.identity.common.internal.controllers.LocalMSALController;
import com.microsoft.identity.common.java.authorities.Authority;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryAuthority;
import com.microsoft.identity.common.java.controllers.BaseController;
import com.microsoft.identity.common.java.interfaces.PlatformComponents;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.logging.Logger;
import defpackage.dj7;
import defpackage.el1;
import defpackage.eq3;
import defpackage.ph6;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MSALControllerFactory {
    private static final String TAG = ph6.a(MSALControllerFactory.class).c();
    private final PublicClientApplicationConfiguration applicationConfiguration;
    private final Context applicationContext;
    private final Authority authority;
    private final BrokerDiscoveryClient discoveryClient;
    private final PlatformComponents platformComponents;

    public MSALControllerFactory(PublicClientApplicationConfiguration publicClientApplicationConfiguration, Authority authority) {
        authority.getClass();
        Context appContext = publicClientApplicationConfiguration.getAppContext();
        appContext.getClass();
        PlatformComponents platformComponentsCreateFromContext = LibraryInfoHelper.createFromContext(publicClientApplicationConfiguration.getAppContext());
        this.applicationContext = appContext;
        this.platformComponents = platformComponentsCreateFromContext;
        this.authority = authority;
        this.applicationConfiguration = publicClientApplicationConfiguration;
        int i = BrokerDiscoveryClientFactory.a;
        this.discoveryClient = BrokerDiscoveryClientFactory.Companion.getInstanceForClientSdk(appContext, platformComponentsCreateFromContext);
    }

    private final boolean brokerEligible() {
        StringBuilder sb = new StringBuilder();
        String str = TAG;
        String strN = dj7.n(sb, str, ":brokerEligible");
        if (!this.applicationConfiguration.getUseBroker().booleanValue() || !(this.authority instanceof AzureActiveDirectoryAuthority)) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose(strN, "Eligible to call broker? [false]. App does not ask for Broker or the authority is not AAD authority.");
            return false;
        }
        String strJ = eq3.j(str, ":powerOptimizationEnabled");
        Context context = this.applicationContext;
        String packageName = context.getPackageName();
        Object systemService = context.getSystemService("power");
        systemService.getClass();
        boolean zIsIgnoringBatteryOptimizations = ((PowerManager) systemService).isIgnoringBatteryOptimizations(packageName);
        int i2 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose(strJ, "Is power optimization on? [" + zIsIgnoringBatteryOptimizations + ']');
        if (!zIsIgnoringBatteryOptimizations) {
            return true;
        }
        com.microsoft.identity.common.java.logging.Logger.verbose(strN, "Is the power optimization enabled? [true]");
        return true;
    }

    private final String getActiveBrokerPackageName() {
        String strN = dj7.n(new StringBuilder(), TAG, ":getActiveBrokerPackageName");
        BrokerData activeBroker = this.discoveryClient.getActiveBroker();
        if (activeBroker != null) {
            return activeBroker.getPackageName();
        }
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info(strN, "Broker application is not installed.");
        return null;
    }

    public final List<BaseController> getAllControllers() {
        String activeBrokerPackageName = getActiveBrokerPackageName();
        ArrayList arrayList = new ArrayList();
        if (activeBrokerPackageName != null && activeBrokerPackageName.length() != 0 && brokerEligible()) {
            arrayList.add(new BrokerMsalController(this.applicationContext, this.platformComponents, activeBrokerPackageName));
        }
        arrayList.add(new LocalMSALController());
        return el1.v1(arrayList);
    }

    public final BaseController getDefaultController() {
        String activeBrokerPackageName = getActiveBrokerPackageName();
        return (activeBrokerPackageName == null || activeBrokerPackageName.length() == 0 || !brokerEligible()) ? new LocalMSALController() : new BrokerMsalController(this.applicationContext, this.platformComponents, activeBrokerPackageName);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MSALControllerFactory(PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        Authority defaultAuthority = publicClientApplicationConfiguration.getDefaultAuthority();
        defaultAuthority.getClass();
        this(publicClientApplicationConfiguration, defaultAuthority);
    }
}
