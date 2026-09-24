package com.microsoft.identity.common.internal.broker.ipc;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Base64;
import com.microsoft.identity.common.exception.BrokerCommunicationException;
import com.microsoft.identity.common.java.interfaces.PlatformComponents;
import com.microsoft.identity.common.logging.Logger;
import defpackage.dj7;
import defpackage.eq3;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ContentProviderStrategy extends AbstractIpcStrategyWithServiceValidation {
    public static final /* synthetic */ int a = 0;
    private final ContentProviderStatusLoader mCache;
    private final Context mContext;

    public ContentProviderStrategy(Context context, PlatformComponents platformComponents) {
        this.mContext = context;
        this.mCache = new ContentProviderStatusLoader(context, platformComponents);
    }

    @Override // com.microsoft.identity.common.internal.broker.ipc.AbstractIpcStrategyWithServiceValidation
    public final Bundle communicateToBrokerAfterValidation(BrokerOperationBundle brokerOperationBundle) throws BrokerCommunicationException {
        String strEncodeToString;
        StringBuilder sbU = dj7.u("Broker operation name: ", brokerOperationBundle.operation.name(), " brokerPackage: ");
        String str = brokerOperationBundle.targetBrokerAppPackageName;
        sbU.append(str);
        String string = sbU.toString();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("ContentProviderStrategy:communicateToBroker", string);
        String contentProviderPath = brokerOperationBundle.getContentProviderPath();
        Uri uri = Uri.parse("content://" + eq3.j(str, ".microsoft.identity.broker") + contentProviderPath);
        StringBuilder sb = new StringBuilder("Request to BrokerContentProvider for uri path ");
        sb.append(brokerOperationBundle.getContentProviderPath());
        com.microsoft.identity.common.java.logging.Logger.info("ContentProviderStrategy:communicateToBroker", sb.toString());
        Bundle bundle = brokerOperationBundle.bundle;
        if (bundle != null) {
            Parcel parcelObtain = Parcel.obtain();
            bundle.writeToParcel(parcelObtain, 0);
            byte[] bArrMarshall = parcelObtain.marshall();
            parcelObtain.recycle();
            strEncodeToString = Base64.encodeToString(bArrMarshall, 0);
        } else {
            strEncodeToString = null;
        }
        Cursor cursorQuery = this.mContext.getContentResolver().query(uri, null, strEncodeToString, null, null);
        try {
            if (cursorQuery == null) {
                com.microsoft.identity.common.java.logging.Logger.error("ContentProviderStrategy:communicateToBroker", "Failed to get result from Broker Content Provider, cursor is null", null);
                throw new BrokerCommunicationException(5, 3, "Failed to get result from Broker Content Provider, cursor is null", null);
            }
            try {
                Bundle extras = cursorQuery.getExtras();
                if (extras == null) {
                    com.microsoft.identity.common.java.logging.Logger.error("ContentProviderStrategy:communicateToBroker", "Received an empty bundle. This means the operation is not supported on the other side. If you're using a newer feature, please bump the minimum protocol version.", null);
                    throw new BrokerCommunicationException(2, 3, "Received an empty bundle. This means the operation is not supported on the other side. If you're using a newer feature, please bump the minimum protocol version.", null);
                }
                com.microsoft.identity.common.java.logging.Logger.info("ContentProviderStrategy:communicateToBroker", "Received successful result from Broker Content Provider.");
                cursorQuery.close();
                return extras;
            } catch (RuntimeException e) {
                com.microsoft.identity.common.java.logging.Logger.error("ContentProviderStrategy:communicateToBroker", "Failed to get result from Broker Content Provider", e);
                throw new BrokerCommunicationException(3, 3, "Failed to get result from Broker Content Provider", null);
            }
        } catch (Throwable th) {
            cursorQuery.close();
            throw th;
        }
    }

    @Override // com.microsoft.identity.common.internal.broker.ipc.IIpcStrategy
    public final int getType() {
        return 3;
    }

    @Override // com.microsoft.identity.common.internal.broker.ipc.IIpcStrategy
    public final boolean isSupportedByTargetedBroker(String str) {
        return this.mCache.supportsContentProvider(str);
    }
}
