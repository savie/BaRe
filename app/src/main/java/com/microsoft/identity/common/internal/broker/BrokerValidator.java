package com.microsoft.identity.common.internal.broker;

import android.content.Context;
import com.microsoft.identity.common.internal.apps.ICallingAppValidator;
import com.microsoft.identity.common.internal.util.PackageUtils;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.logging.Logger;
import defpackage.fz5;
import defpackage.ph6;
import defpackage.sz8;
import java.util.ArrayList;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BrokerValidator implements ICallingAppValidator {
    private final Context context;

    static {
        ph6.a(BrokerValidator.class).c();
    }

    public BrokerValidator(Context context) {
        Set set = BrokerData.prodBrokers;
        context.getClass();
        set.getClass();
        this.context = context;
    }

    public final boolean isSignedByKnownKeys(BrokerData brokerData) {
        brokerData.getClass();
        String packageName = brokerData.getPackageName();
        Set setY = sz8.Y(brokerData.getSigningCertificateThumbprint());
        packageName.getClass();
        String str = ICallingAppValidator.Companion.TAG + ":isSignedByKnownKeys";
        try {
            ArrayList certDataForApp = PackageUtils.readCertDataForApp(this.context, packageName);
            PackageUtils.verifySignatureHash(certDataForApp, setY.iterator());
            if (!CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.RE_ENABLE_VALIDATE_SIGNING_CERT_CHAIN_BROKER_APPS) || certDataForApp.size() <= 1) {
                return true;
            }
            PackageUtils.verifyCertificateChain(certDataForApp);
            return true;
        } catch (Throwable th) {
            StringBuilder sbN = fz5.n(packageName, " signature validation failed. ");
            sbN.append(th.getMessage());
            String string = sbN.toString();
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose(str, string);
            return false;
        }
    }
}
