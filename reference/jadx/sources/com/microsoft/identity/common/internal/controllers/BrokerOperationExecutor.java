package com.microsoft.identity.common.internal.controllers;

import android.os.Bundle;
import com.microsoft.identity.common.exception.BrokerCommunicationException;
import com.microsoft.identity.common.internal.broker.ipc.BrokerOperationBundle;
import com.microsoft.identity.common.internal.broker.ipc.IIpcStrategy;
import com.microsoft.identity.common.internal.cache.ActiveBrokerCacheUpdater;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.telemetry.events.ApiEndEvent;
import com.microsoft.identity.common.internal.telemetry.events.ApiStartEvent;
import com.microsoft.identity.common.java.commands.parameters.CommandParameters;
import com.microsoft.identity.common.java.exception.BaseException;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.marker.CodeMarkerManager;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.telemetry.Telemetry;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.f6;
import defpackage.v57;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BrokerOperationExecutor {
    private final ActiveBrokerCacheUpdater mCacheUpdaterManager;
    private final List<IIpcStrategy> mStrategies;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public interface BrokerOperation<T> {
        T extractResultBundle(Bundle bundle) throws BaseException;

        BrokerOperationBundle getBundle() throws ClientException;

        String getMethodName();

        String getTelemetryApiId();

        void performPrerequisites(IIpcStrategy iIpcStrategy) throws BaseException;

        void putValueInSuccessEvent(ApiEndEvent apiEndEvent, T t);
    }

    public BrokerOperationExecutor(List<IIpcStrategy> list, ActiveBrokerCacheUpdater activeBrokerCacheUpdater) {
        if (list == null) {
            f6.n("strategies is marked non-null but is null");
            throw null;
        }
        this.mStrategies = list;
        this.mCacheUpdaterManager = activeBrokerCacheUpdater;
    }

    private static void emitOperationFailureEvent(BrokerOperation brokerOperation, BaseException baseException) {
        String telemetryApiId = brokerOperation.getTelemetryApiId();
        if (StringUtil.isNullOrEmpty(telemetryApiId)) {
            return;
        }
        ApiEndEvent apiEndEvent = new ApiEndEvent();
        apiEndEvent.putException(baseException);
        apiEndEvent.putApiId(telemetryApiId);
        Telemetry.emit(apiEndEvent);
    }

    private <T> T performStrategy(IIpcStrategy iIpcStrategy, BrokerOperation<T> brokerOperation) throws Exception {
        if (iIpcStrategy == null) {
            f6.n("strategy is marked non-null but is null");
            return null;
        }
        Logger.info("BrokerOperationExecutor".concat(brokerOperation.getMethodName()), "Executing with IIpcStrategy: ".concat(iIpcStrategy.getClass().getSimpleName()));
        v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(LibraryInfoHelper.createSpan("MSAL_PerformIpcStrategy"));
        try {
            int type = iIpcStrategy.getType();
            if (type != 1 && type != 2 && type != 3 && type != 4) {
                throw null;
            }
            brokerOperation.performPrerequisites(iIpcStrategy);
            Bundle bundleCommunicateToBroker = iIpcStrategy.communicateToBroker(brokerOperation.getBundle());
            this.mCacheUpdaterManager.updateCachedActiveBrokerFromResultBundle(bundleCommunicateToBroker);
            T tExtractResultBundle = brokerOperation.extractResultBundle(bundleCommunicateToBroker);
            v57VarMakeCurrentSpan.close();
            return tExtractResultBundle;
        } catch (Throwable th) {
            try {
                v57VarMakeCurrentSpan.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final <T extends CommandParameters, U> U execute(T t, BrokerOperation<U> brokerOperation) throws BaseException {
        CodeMarkerManager.getInstance().getClass();
        String telemetryApiId = brokerOperation.getTelemetryApiId();
        if (!StringUtil.isNullOrEmpty(telemetryApiId)) {
            ApiStartEvent apiStartEvent = new ApiStartEvent();
            apiStartEvent.putProperties(t);
            apiStartEvent.putApiId$1(telemetryApiId);
            Telemetry.emit(apiStartEvent);
        }
        List<IIpcStrategy> list = this.mStrategies;
        if (list.size() == 0) {
            ClientException clientException = new ClientException("Failed to bind the service in broker app", "No strategies can be used to connect to the broker.", null);
            emitOperationFailureEvent(brokerOperation, clientException);
            throw clientException;
        }
        ArrayList<BrokerCommunicationException> arrayList = new ArrayList();
        Iterator<IIpcStrategy> it = list.iterator();
        while (it.hasNext()) {
            try {
                U u = (U) performStrategy(it.next(), brokerOperation);
                String telemetryApiId2 = brokerOperation.getTelemetryApiId();
                if (telemetryApiId2 != null) {
                    ApiEndEvent apiEndEvent = new ApiEndEvent();
                    apiEndEvent.putApiId(telemetryApiId2);
                    apiEndEvent.isApiCallSuccessful();
                    brokerOperation.putValueInSuccessEvent(apiEndEvent, u);
                    Telemetry.emit(apiEndEvent);
                }
                return u;
            } catch (BrokerCommunicationException e) {
                arrayList.add(e);
            } catch (BaseException e2) {
                emitOperationFailureEvent(brokerOperation, e2);
                throw e2;
            }
        }
        ClientException clientException2 = new ClientException("Failed to bind the service in broker app", "Unable to connect to the broker. Please refer to MSAL/Broker logs or suppressed exception (API 19+) for more details.", null);
        for (BrokerCommunicationException brokerCommunicationException : arrayList) {
            String message = brokerCommunicationException.getMessage();
            int i = com.microsoft.identity.common.logging.Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("BrokerOperationExecutor:execute", message, brokerCommunicationException);
            clientException2.addSuppressedException(brokerCommunicationException);
        }
        emitOperationFailureEvent(brokerOperation, clientException2);
        throw clientException2;
    }
}
