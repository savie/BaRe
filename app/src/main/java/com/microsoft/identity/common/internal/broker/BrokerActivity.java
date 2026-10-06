package com.microsoft.identity.common.internal.broker;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.internal.request.AuthenticationSchemeTypeAdapter;
import com.microsoft.identity.common.internal.util.GzipUtil;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.util.FileUtil;
import com.microsoft.identity.common.java.util.ported.LocalBroadcaster;
import com.microsoft.identity.common.java.util.ported.PropertyBag;
import defpackage.dj7;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BrokerActivity extends Activity {
    private Boolean mBrokerIntentStarted;
    private Intent mBrokerInteractiveRequestIntent;
    private Boolean mBrokerResultReceived;

    public BrokerActivity() {
        Boolean bool = Boolean.FALSE;
        this.mBrokerIntentStarted = bool;
        this.mBrokerResultReceived = bool;
    }

    private static void returnsExceptionOnActivityUnexpectedlyKilled() {
        Logger.verbose("BrokerResultAdapterFactory", "Using MsalBrokerResultAdapter");
        ClientException clientException = new ClientException("Broker request cancelled", "The activity is killed unexpectedly.", null);
        int i = com.microsoft.identity.common.logging.Logger.a;
        Logger.info("MsalBrokerResultAdapter:bundleFromBaseException", "Constructing result bundle from ClientException");
        BrokerResult.Builder builder = new BrokerResult.Builder();
        builder.errorCode(clientException.getErrorCode());
        builder.subErrorCode(clientException.getSubErrorCode());
        builder.errorMessage(clientException.getMessage());
        builder.exceptionType("com.microsoft.identity.common.exception.ClientException");
        builder.correlationId(clientException.getCorrelationId());
        builder.cliTelemErrorCode(clientException.getCliTelemErrorCode());
        builder.cliTelemSubErrorCode(clientException.getCliTelemSubErrorCode());
        builder.speRing(clientException.getSpeRing());
        builder.refreshTokenAge(clientException.getRefreshTokenAge());
        CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ADD_USERNAME_IN_UI_REQUIRED_EXCEPTION_BROKER_RESULT);
        BrokerResult brokerResult = new BrokerResult(builder);
        Bundle bundle = new Bundle();
        String strJ = AuthenticationSchemeTypeAdapter.getGsonInstance().j(brokerResult, BrokerResult.class);
        if (FileUtil.isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(null, "5.0")) {
            try {
                byte[] bArrCompressString = GzipUtil.compressString(strJ);
                Logger.info("MsalBrokerResultAdapter:bundleFromBrokerResult", "Broker Result, raw payload size:" + strJ.getBytes(AuthenticationConstants.CHARSET_UTF8).length + " ,compressed bytes " + bArrCompressString.length);
                bundle.putByteArray("broker_result_v2_compressed", bArrCompressString);
            } catch (IOException e) {
                int i2 = com.microsoft.identity.common.logging.Logger.a;
                Logger.error("MsalBrokerResultAdapter:bundleFromBrokerResult", "Failed to compress Broker Result, sending as jsonString ", e);
                bundle.putString("broker_result_v2", strJ);
            }
        } else {
            Logger.info("MsalBrokerResultAdapter:bundleFromBrokerResult", "Broker protocol version: null lower than compression changes, sending as string");
            bundle.putString("broker_result_v2", strJ);
        }
        bundle.putBoolean("broker_request_v2_success", false);
        PropertyBag propertyBagFromBundle = PropertyBagUtil.fromBundle(bundle);
        propertyBagFromBundle.put("com.microsoft.identity.client.request.code", 1003);
        propertyBagFromBundle.put("com.microsoft.identity.client.result.code", 2001);
        LocalBroadcaster.INSTANCE.broadcast("return_broker_interactive_acquire_token_result", propertyBagFromBundle);
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        String strI = dj7.i("Result received from Broker Request code: ", i, i2, " Result code: ");
        int i3 = com.microsoft.identity.common.logging.Logger.a;
        Logger.info("BrokerActivity:onActivityResult", strI);
        this.mBrokerResultReceived = Boolean.TRUE;
        if (i2 == 2004 || i2 == 2001 || i2 == 2002) {
            Logger.verbose("BrokerActivity:onActivityResult", "Completing interactive request ");
            PropertyBag propertyBagFromBundle = PropertyBagUtil.fromBundle(intent.getExtras());
            propertyBagFromBundle.put("com.microsoft.identity.client.request.code", 1003);
            propertyBagFromBundle.put("com.microsoft.identity.client.result.code", Integer.valueOf(i2));
            LocalBroadcaster.INSTANCE.broadcast("return_broker_interactive_acquire_token_result", propertyBagFromBundle);
        } else {
            returnsExceptionOnActivityUnexpectedlyKilled();
        }
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.mBrokerInteractiveRequestIntent = (Intent) bundle.getParcelable("broker_intent");
            this.mBrokerIntentStarted = Boolean.valueOf(bundle.getBoolean("broker_intent_started"));
            return;
        }
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.mBrokerInteractiveRequestIntent = (Intent) extras.getParcelable("broker_intent");
        } else {
            int i = com.microsoft.identity.common.logging.Logger.a;
            Logger.warn("BrokerActivity:onCreate", "Extras is null.");
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        if (!this.mBrokerResultReceived.booleanValue()) {
            returnsExceptionOnActivityUnexpectedlyKilled();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.mBrokerIntentStarted.booleanValue()) {
            return;
        }
        this.mBrokerIntentStarted = Boolean.TRUE;
        startActivityForResult(this.mBrokerInteractiveRequestIntent, 1001);
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("broker_intent", this.mBrokerInteractiveRequestIntent);
        bundle.putBoolean("broker_intent_started", this.mBrokerIntentStarted.booleanValue());
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
    }
}
