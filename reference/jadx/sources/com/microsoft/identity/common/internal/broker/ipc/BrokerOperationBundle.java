package com.microsoft.identity.common.internal.broker.ipc;

import android.os.Bundle;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.microsoft.identity.common.exception.BrokerCommunicationException;
import com.microsoft.identity.common.logging.Logger;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BrokerOperationBundle {
    public final Bundle bundle;
    public final Operation operation;
    public final String targetBrokerAppPackageName;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum Operation {
        MSAL_HELLO(1, "HELLO"),
        MSAL_GET_INTENT_FOR_INTERACTIVE_REQUEST(2, "GET_INTENT_FOR_INTERACTIVE_REQUEST"),
        MSAL_ACQUIRE_TOKEN_SILENT(3, "ACQUIRE_TOKEN_SILENT"),
        MSAL_GET_ACCOUNTS(4, "GET_ACCOUNTS"),
        MSAL_REMOVE_ACCOUNT(5, "REMOVE_ACCOUNT"),
        MSAL_GET_DEVICE_MODE(7, "GET_DEVICE_MODE"),
        MSAL_GET_CURRENT_ACCOUNT_IN_SHARED_DEVICE(6, "GET_CURRENT_ACCOUNT"),
        MSAL_SIGN_OUT_FROM_SHARED_DEVICE(8, "REMOVE_ACCOUNT_FROM_SHARED_DEVICE"),
        /* JADX INFO: Fake field, exist only in values array */
        MSAL_GENERATE_SHR(9, "GENERATE_SHR"),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_GET_KEY_FROM_INACTIVE_BROKER(0, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_API_HELLO(10, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_API_GET_BROKER_ACCOUNTS(11, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_API_REMOVE_BROKER_ACCOUNT(12, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_API_UPDATE_BRT(13, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_GET_FLIGHTS(15, null),
        /* JADX INFO: Fake field, exist only in values array */
        MSAL_ACQUIRE_TOKEN_DCF(14, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_DISCOVERY_METADATA_RETRIEVAL(16, null),
        /* JADX INFO: Fake field, exist only in values array */
        MSAL_FETCH_DCF_AUTH_RESULT(17, null),
        /* JADX INFO: Fake field, exist only in values array */
        MSAL_ACQUIRE_TOKEN_DCF(19, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_DISCOVERY_METADATA_RETRIEVAL(20, null),
        /* JADX INFO: Fake field, exist only in values array */
        MSAL_FETCH_DCF_AUTH_RESULT(21, null),
        /* JADX INFO: Fake field, exist only in values array */
        MSAL_ACQUIRE_TOKEN_DCF(22, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_DISCOVERY_METADATA_RETRIEVAL(23, null),
        BROKER_DISCOVERY_FROM_SDK(24, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_DISCOVERY_SET_ACTIVE_BROKER(25, null),
        /* JADX INFO: Fake field, exist only in values array */
        PASSTHROUGH(26, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_READ_RESTRICTIONS_MANAGER(27, null),
        /* JADX INFO: Fake field, exist only in values array */
        MSAL_GET_PREFERRED_AUTH_METHOD(28, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_INDIVIDUAL_LOGS_UPLOAD(29, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_API_RESTORE_MSA_ACCOUNTS_WITH_TRANSFER_TOKENS(30, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_WEBAPPS_API_GET_SUPPORTED_WEB_APPS_CONTRACTS(31, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_WEBAPPS_API_EXECUTE_WEB_APPS_REQUEST(32, null),
        /* JADX INFO: Fake field, exist only in values array */
        PROVISION_RESOURCE_ACCOUNT(33, null),
        /* JADX INFO: Fake field, exist only in values array */
        GET_AAD_DEVICE_ID(34, null),
        /* JADX INFO: Fake field, exist only in values array */
        BROKER_GET_NUMBER_MATCH(35, null);

        final String mAccountManagerOperation;
        final int mContentApi;

        Operation(int i, String str) {
            this.mContentApi = i;
            this.mAccountManagerOperation = str;
        }
    }

    public BrokerOperationBundle(Operation operation, String str, Bundle bundle) {
        this.operation = operation;
        this.targetBrokerAppPackageName = str;
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        this.bundle = bundle2;
        bundle2.putBoolean("com.microsoft.identity.request.broker.data", true);
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("BrokerOperationBundle", "Requested Active Broker Data");
    }

    public final Bundle getAccountManagerBundle() throws BrokerCommunicationException {
        Bundle bundle = this.bundle;
        if (bundle == null) {
            bundle = new Bundle();
        }
        Operation operation = this.operation;
        String str = operation.mAccountManagerOperation;
        if (str != null) {
            bundle.putString("com.microsoft.broker_accountmanager_operation_key", str);
            return bundle;
        }
        String str2 = "Operation " + operation.name() + " is not supported by AccountManager addAccount().";
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.warn("BrokerOperationBundle:getAccountManagerAddAccountOperationKey", str2);
        throw new BrokerCommunicationException(1, 2, str2, null);
    }

    public final String getContentProviderPath() throws BrokerCommunicationException {
        Operation operation = this.operation;
        int i = operation.mContentApi;
        if (i == 0) {
            String str = "Operation " + operation.name() + " is not supported by ContentProvider.";
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("BrokerOperationBundle:getContentProviderUriPath", str);
            throw new BrokerCommunicationException(1, 3, str, null);
        }
        switch (i) {
            case 1:
                return "/hello";
            case 2:
                return "/acquireTokenInteractive";
            case 3:
                return "/acquireTokenSilent";
            case 4:
                return "/getAccounts";
            case 5:
                return "/removeAccounts";
            case 6:
                return "/getCurrentAccountSharedDevice";
            case 7:
                return "/getDeviceMode";
            case 8:
                return "/signOutFromSharedDevice";
            case XmlPullParser.COMMENT /* 9 */:
                return "/generateShr";
            case 10:
                return "/brokerApi/hello";
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return "/brokerApi/getBrokerAccounts";
            case 12:
                return "/brokerApi/removeBrokerAccount";
            case 13:
                return "/brokerApi/updateBrt";
            case 14:
                return "/brokerApi/setFlights";
            case 15:
                return "/brokerApi/getFlights";
            case Argon2.V10 /* 16 */:
                return "/ssoToken";
            case 17:
                return "/allSsoTokens";
            case 18:
                return null;
            case Argon2.V13 /* 19 */:
                return "/multipledeviceRegistration/protocols";
            case 20:
                return "/brokerApi/uploadBrokerLogs";
            case 21:
                return "/fetchDCFAuthResult";
            case 22:
                return "/acquireTokenDCF";
            case 23:
                return "/brokerElection/brokerDiscoveryMetadataRetrieval";
            case 24:
                return "/brokerElection/brokerDiscoveryFromSdk";
            case 25:
                return "/brokerElection/setActiveBroker";
            case 26:
                return "/passthrough";
            case 27:
                return "/readRestrictionsManager";
            case 28:
                return "/getPreferredAuthMethod";
            case 29:
                return "/brokerIndividualLogsUpload";
            case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                return "/brokerApi/restoreMsaAccountsWithTransferTokens";
            case 31:
                return "/webapp/getSupportedWebAppsContracts";
            case 32:
                return "/webapp/executeWebAppsRequest";
            case 33:
                return "/provisionResourceAccount";
            case 34:
                return "/getAadDeviceId";
            case 35:
                return "/brokerApi/getNumberMatch";
            default:
                throw null;
        }
    }
}
