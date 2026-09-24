package com.microsoft.identity.common.java.controllers;

import android.os.Handler;
import android.os.Looper;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.internal.platform.AndroidPlatformUtil;
import com.microsoft.identity.common.java.commands.BaseCommand;
import com.microsoft.identity.common.java.commands.ICommandResult$ResultStatus;
import com.microsoft.identity.common.java.commands.InteractiveTokenCommand;
import com.microsoft.identity.common.java.commands.SilentTokenCommand;
import com.microsoft.identity.common.java.commands.parameters.CommandParameters;
import com.microsoft.identity.common.java.configuration.LibraryConfiguration;
import com.microsoft.identity.common.java.exception.BaseException;
import com.microsoft.identity.common.java.exception.UserCancelException;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.logging.DiagnosticContext;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.logging.RequestContext;
import com.microsoft.identity.common.java.marker.CodeMarkerManager;
import com.microsoft.identity.common.java.net.CancellationSignal;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.request.SdkType;
import com.microsoft.identity.common.java.result.AcquireTokenResult;
import com.microsoft.identity.common.java.result.FinalizableResultFuture;
import com.microsoft.identity.common.java.result.LocalAuthenticationResult;
import com.microsoft.identity.common.java.result.VoidResult;
import com.microsoft.identity.common.java.telemetry.Telemetry;
import com.microsoft.identity.common.java.util.BiConsumer;
import com.microsoft.identity.common.java.util.IPlatformUtil;
import com.microsoft.identity.common.java.util.ObjectMapper;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.java.util.ported.LocalBroadcaster;
import com.microsoft.identity.common.java.util.ported.PropertyBag;
import defpackage.f6;
import defpackage.fz5;
import defpackage.qj7;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class CommandDispatcher {
    public static final int SILENT_REQUEST_THREAD_POOL_SIZE;
    private static final Object mapAccessLock;
    private static InteractiveTokenCommand sCommand;
    private static final ExecutorService sDCFExecutor;
    private static ConcurrentHashMap sExecutingCommandMap;
    private static ExecutorService sInteractiveExecutor;
    private static final Object sLock;
    private static final ConcurrentHashMap sRequestStateMap;
    private static final ExecutorService sSilentExecutor;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class RequestState {
        private static final /* synthetic */ RequestState[] $VALUES;
        public static final RequestState EXECUTING;
        public static final RequestState QUEUED;
        public static final RequestState WAITING_FOR_LOCK;

        static {
            RequestState requestState = new RequestState("WAITING_FOR_LOCK", 0);
            WAITING_FOR_LOCK = requestState;
            RequestState requestState2 = new RequestState("QUEUED", 1);
            QUEUED = requestState2;
            RequestState requestState3 = new RequestState("EXECUTING", 2);
            EXECUTING = requestState3;
            $VALUES = new RequestState[]{requestState, requestState2, requestState3};
        }

        public static RequestState valueOf(String str) {
            return (RequestState) Enum.valueOf(RequestState.class, str);
        }

        public static RequestState[] values() {
            return (RequestState[]) $VALUES.clone();
        }
    }

    static {
        Runtime.getRuntime().availableProcessors();
        int i = CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.getBooleanValue(CommonFlight.USE_INCREASED_DEFAULT_SILENT_REQUEST_THREAD_POOL_SIZE) ? 12 : 5;
        SILENT_REQUEST_THREAD_POOL_SIZE = i;
        sInteractiveExecutor = Executors.newSingleThreadExecutor();
        sSilentExecutor = Executors.newFixedThreadPool(i);
        sDCFExecutor = Executors.newFixedThreadPool(5);
        sLock = new Object();
        sCommand = null;
        new CommandResultCache$1(251, 0.75f, true);
        mapAccessLock = new Object();
        sExecutingCommandMap = new ConcurrentHashMap();
        sRequestStateMap = new ConcurrentHashMap();
    }

    public static void access$1300(PropertyBag propertyBag) {
        int iIntValue = ((Integer) propertyBag.getOrDefault("com.microsoft.identity.client.request.code", -1)).intValue();
        int iIntValue2 = ((Integer) propertyBag.getOrDefault("com.microsoft.identity.client.result.code", -1)).intValue();
        InteractiveTokenCommand interactiveTokenCommand = sCommand;
        if (interactiveTokenCommand != null) {
            interactiveTokenCommand.onFinishAuthorizationSession(iIntValue, iIntValue2, propertyBag);
        } else {
            Logger.warn("CommandDispatcher:completeInteractive", "sCommand is null, No interactive call in progress to complete.");
        }
    }

    public static CommandResult access$300(BaseCommand baseCommand) throws Exception {
        BaseException baseExceptionBaseExceptionFromException;
        Object objExecute;
        CommandResult<Void> commandResultOfNull;
        try {
            objExecute = baseCommand.execute();
            baseExceptionBaseExceptionFromException = null;
        } catch (Exception e) {
            baseExceptionBaseExceptionFromException = e instanceof BaseException ? (BaseException) e : PropertyBagUtil.baseExceptionFromException(e);
            objExecute = null;
        }
        String correlationId = baseCommand.getParameters().getCorrelationId();
        ICommandResult$ResultStatus iCommandResult$ResultStatus = ICommandResult$ResultStatus.ERROR;
        ICommandResult$ResultStatus iCommandResult$ResultStatus2 = ICommandResult$ResultStatus.CANCEL;
        if (baseExceptionBaseExceptionFromException != null) {
            commandResultOfNull = baseExceptionBaseExceptionFromException instanceof UserCancelException ? CommandResult.ofNull(iCommandResult$ResultStatus2, correlationId) : new CommandResult<>(iCommandResult$ResultStatus, baseExceptionBaseExceptionFromException, correlationId);
        } else {
            ICommandResult$ResultStatus iCommandResult$ResultStatus3 = ICommandResult$ResultStatus.COMPLETED;
            if (objExecute != null && (objExecute instanceof AcquireTokenResult)) {
                AcquireTokenResult acquireTokenResult = (AcquireTokenResult) objExecute;
                CommandParameters parameters = baseCommand.getParameters();
                if (parameters == null) {
                    f6.n("commandParameters is marked non-null but is null");
                    return null;
                }
                if (acquireTokenResult.getSucceeded().booleanValue()) {
                    commandResultOfNull = new CommandResult<>(iCommandResult$ResultStatus3, acquireTokenResult.getLocalAuthenticationResult(), parameters.getCorrelationId());
                } else {
                    BaseException baseExceptionExceptionFromAcquireTokenResult = PropertyBagUtil.exceptionFromAcquireTokenResult(acquireTokenResult);
                    commandResultOfNull = baseExceptionExceptionFromAcquireTokenResult instanceof UserCancelException ? CommandResult.ofNull(iCommandResult$ResultStatus2, parameters.getCorrelationId()) : new CommandResult<>(iCommandResult$ResultStatus, baseExceptionExceptionFromAcquireTokenResult, parameters.getCorrelationId());
                }
            } else if (objExecute instanceof VoidResult) {
                commandResultOfNull = new CommandResult<>(ICommandResult$ResultStatus.VOID, objExecute, baseCommand.getParameters().getCorrelationId());
            } else {
                commandResultOfNull = objExecute == null ? CommandResult.ofNull(iCommandResult$ResultStatus3, correlationId) : new CommandResult<>(iCommandResult$ResultStatus3, objExecute, correlationId);
            }
        }
        if (correlationId == null) {
            f6.n("correlationId is marked non-null but is null");
            return null;
        }
        if (commandResultOfNull.getResult() != null && (commandResultOfNull.getResult() instanceof LocalAuthenticationResult)) {
            ((LocalAuthenticationResult) commandResultOfNull.getResult()).setCorrelationId(correlationId);
        }
        List<Map<String, String>> map = Telemetry.getInstance().getMap(correlationId);
        commandResultOfNull.setTelemetryMap(map);
        if (commandResultOfNull.getResult() instanceof LocalAuthenticationResult) {
            ((LocalAuthenticationResult) commandResultOfNull.getResult()).setTelemetry(map);
        } else if (commandResultOfNull.getResult() instanceof BaseException) {
            ((BaseException) commandResultOfNull.getResult()).setTelemetry(map);
        } else if (commandResultOfNull.getResult() != null) {
            Logger.verbose("CommandDispatcher:setTelemetryOnResult", "Not setting telemetry on result as result type is " + commandResultOfNull.getResult().getClass().getCanonicalName() + " and doesn't support telemetry at this time.");
        }
        Telemetry.getInstance().flush(correlationId);
        return commandResultOfNull;
    }

    public static void access$600(BaseCommand baseCommand) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        for (Map.Entry entry : sExecutingCommandMap.entrySet()) {
            if (baseCommand != entry.getKey()) {
                concurrentHashMap.put((BaseCommand) entry.getKey(), (FinalizableResultFuture) entry.getValue());
            }
        }
        sExecutingCommandMap = concurrentHashMap;
    }

    public static void access$900(final BaseCommand baseCommand, final CommandResult commandResult) {
        if (commandResult == null) {
            f6.n("result is marked non-null but is null");
            return;
        }
        ((AndroidPlatformUtil) baseCommand.getParameters().getPlatformComponents().getPlatformUtil()).onReturnCommandResult(baseCommand);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.microsoft.identity.common.java.controllers.CommandDispatcher.4
            @Override // java.lang.Runnable
            public final void run() {
                CommandResult commandResult2 = commandResult;
                int iOrdinal = commandResult2.getStatus().ordinal();
                BaseCommand baseCommand2 = baseCommand;
                if (iOrdinal == 0) {
                    baseCommand2.getCallback().onCancel();
                } else if (iOrdinal == 1) {
                    baseCommand2.getCallback().onTaskCompleted(commandResult2.getResult());
                } else {
                    if (iOrdinal != 2) {
                        return;
                    }
                    baseCommand2.getCallback().onError(PropertyBagUtil.baseExceptionFromException((Throwable) commandResult2.getResult()));
                }
            }
        });
    }

    public static void beginInteractive(final InteractiveTokenCommand interactiveTokenCommand) {
        synchronized (sLock) {
            try {
                if (LibraryConfiguration.getInstance().isAuthorizationInCurrentTask()) {
                    LocalBroadcaster localBroadcaster = LocalBroadcaster.INSTANCE;
                    if (localBroadcaster.hasReceivers("cancel_authorization_request")) {
                        localBroadcaster.broadcast("cancel_authorization_request", new PropertyBag());
                    } else if (localBroadcaster.hasReceivers("return_authorization_request_result")) {
                        Logger.info("CommandDispatcher:beginInteractive", "The previous interactive request was queued but never got processed and is blocking the interactive thread. Restarting the interactive executor service to enable processing interactive requests again.");
                        List<Runnable> listShutdownNow = sInteractiveExecutor.shutdownNow();
                        sInteractiveExecutor = Executors.newSingleThreadExecutor();
                        Logger.info("CommandDispatcher:beginInteractive", "Cancelled execution of " + listShutdownNow.size() + " interactive requests.");
                    }
                }
                sInteractiveExecutor.execute(LibraryInfoHelper.wrap(new Runnable() { // from class: com.microsoft.identity.common.java.controllers.CommandDispatcher.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        InteractiveTokenCommand interactiveTokenCommand2 = interactiveTokenCommand;
                        CommandParameters parameters = interactiveTokenCommand2.getParameters();
                        String strInitializeDiagnosticContext = CommandDispatcher.initializeDiagnosticContext(parameters.getCorrelationId(), (parameters.getSdkType() == null ? SdkType.UNKNOWN : parameters.getSdkType()).getProductName(), parameters.getSdkVersion());
                        try {
                            parameters.setCorrelationId(strInitializeDiagnosticContext);
                            CommandDispatcher.logParameters("CommandDispatcher:beginInteractive", strInitializeDiagnosticContext, parameters, interactiveTokenCommand2.getPublicApiId());
                            final BaseException[] baseExceptionArr = new BaseException[1];
                            LocalBroadcaster.IReceiverCallback iReceiverCallback = new LocalBroadcaster.IReceiverCallback() { // from class: com.microsoft.identity.common.java.controllers.CommandDispatcher.5.1
                                @Override // com.microsoft.identity.common.java.util.ported.LocalBroadcaster.IReceiverCallback
                                public final void onReceive(PropertyBag propertyBag) {
                                    try {
                                        CommandDispatcher.access$1300(propertyBag);
                                    } catch (Exception e) {
                                        baseExceptionArr[0] = PropertyBagUtil.baseExceptionFromException(e);
                                    }
                                }
                            };
                            LocalBroadcaster localBroadcaster2 = LocalBroadcaster.INSTANCE;
                            localBroadcaster2.registerCallback("return_authorization_request_result", iReceiverCallback);
                            CommandDispatcher.sCommand = interactiveTokenCommand2;
                            CommandResult commandResultAccess$300 = CommandDispatcher.access$300(interactiveTokenCommand2);
                            CommandDispatcher.sCommand = null;
                            localBroadcaster2.unregisterCallback("return_authorization_request_result");
                            BaseException baseException = baseExceptionArr[0];
                            if (baseException != null) {
                                commandResultAccess$300 = new CommandResult(ICommandResult$ResultStatus.ERROR, baseException, strInitializeDiagnosticContext);
                            }
                            StringBuilder sb = new StringBuilder("Completed interactive request for correlation id : **");
                            sb.append(strInitializeDiagnosticContext);
                            sb.append(", with the status : " + commandResultAccess$300.getStatus().name());
                            Logger.info("CommandDispatcher:beginInteractive", sb.toString());
                            CommandDispatcher.access$900(interactiveTokenCommand2, commandResultAccess$300);
                        } finally {
                            DiagnosticContext.INSTANCE.clear();
                        }
                    }
                }));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static int getSilentRequestActiveCount() {
        return ((ThreadPoolExecutor) sSilentExecutor).getActiveCount();
    }

    public static String initializeDiagnosticContext(String str, String str2, String str3) {
        if (StringUtil.isNullOrEmpty(str)) {
            str = UUID.randomUUID().toString();
        }
        RequestContext requestContext = new RequestContext();
        requestContext.put("correlation_id", str);
        requestContext.put("x-client-SKU", str2);
        requestContext.put("x-client-Ver", str3);
        DiagnosticContext.INSTANCE.setRequestContext(requestContext);
        Logger.verbose("CommandDispatcher:initializeDiagnosticContext", "Initialized new DiagnosticContext");
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logParameters(String str, String str2, CommandParameters commandParameters, String str3) {
        if (str2 == null) {
            f6.n("correlationId is marked non-null but is null");
            return;
        }
        StringBuilder sbN = fz5.n(str, ":");
        sbN.append(commandParameters.getClass().getSimpleName());
        String string = sbN.toString();
        Logger.info(string, "Starting request with request context: " + DiagnosticContext.INSTANCE.getRequestContext().toJsonString() + ", with PublicApiId: " + str3);
        if (Logger.isAllowPii()) {
            Logger.infoPII(string, ObjectMapper.GSON.i(commandParameters));
        } else {
            Logger.info(string, ObjectMapper.serializeExposedFieldsOfObjectToJsonString(commandParameters));
        }
    }

    public static void submitSilent(final BaseCommand baseCommand) {
        final FinalizableResultFuture finalizableResultFuture;
        final CodeMarkerManager codeMarkerManager = CodeMarkerManager.getInstance();
        final CommandParameters parameters = baseCommand.getParameters();
        final String strInitializeDiagnosticContext = initializeDiagnosticContext(parameters.getCorrelationId(), parameters.getSdkType() == null ? SdkType.UNKNOWN.getProductName() : parameters.getSdkType().getProductName(), parameters.getSdkVersion());
        parameters.setCorrelationId(strInitializeDiagnosticContext);
        ExecutorService executorService = sSilentExecutor;
        codeMarkerManager.getClass();
        logParameters("CommandDispatcher".concat(":submitSilent"), strInitializeDiagnosticContext, parameters, baseCommand.getPublicApiId());
        ConcurrentHashMap concurrentHashMap = sRequestStateMap;
        concurrentHashMap.put(strInitializeDiagnosticContext, RequestState.WAITING_FOR_LOCK);
        synchronized (mapAccessLock) {
            try {
                concurrentHashMap.put(strInitializeDiagnosticContext, RequestState.QUEUED);
                if (baseCommand instanceof SilentTokenCommand) {
                    FinalizableResultFuture finalizableResultFuture2 = (FinalizableResultFuture) sExecutingCommandMap.get(baseCommand);
                    if (finalizableResultFuture2 != null) {
                        finalizableResultFuture2.whenComplete(new BiConsumer<CommandResult, Throwable>() { // from class: com.microsoft.identity.common.java.controllers.CommandDispatcher.3
                            @Override // com.microsoft.identity.common.java.util.BiConsumer
                            public final void accept(Object obj, final Exception exc) {
                                CommandResult commandResult = (CommandResult) obj;
                                BaseCommand baseCommand2 = baseCommand;
                                if (exc != null) {
                                    int i = CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE;
                                    Logger.info("CommandDispatcher:getCommandResultConsumer", "Request encountered an exception (this maybe a duplicate request which caries the exception encountered by the original request)");
                                    IPlatformUtil platformUtil = baseCommand2.getParameters().getPlatformComponents().getPlatformUtil();
                                    Runnable runnable = new Runnable() { // from class: com.microsoft.identity.common.java.controllers.CommandDispatcher.3.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            BaseCommand baseCommand3 = baseCommand;
                                            int i2 = CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE;
                                            baseCommand3.getCallback().onError(PropertyBagUtil.baseExceptionFromException(exc));
                                        }
                                    };
                                    ((AndroidPlatformUtil) platformUtil).getClass();
                                    new Handler(Looper.getMainLooper()).post(runnable);
                                    return;
                                }
                                if (!StringUtil.isNullOrEmpty(commandResult.getCorrelationId()) && !baseCommand2.getParameters().getCorrelationId().equals(commandResult.getCorrelationId())) {
                                    int i2 = CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE;
                                    Logger.info("CommandDispatcher:getCommandResultConsumer", "Completed duplicate request with correlation id : **" + baseCommand2.getParameters().getCorrelationId() + ", having the same result as : " + commandResult.getCorrelationId() + ", with the status : " + commandResult.getStatus().name());
                                }
                                CommandDispatcher.access$900(baseCommand2, commandResult);
                            }
                        });
                        concurrentHashMap.put(strInitializeDiagnosticContext, RequestState.EXECUTING);
                        return;
                    }
                    finalizableResultFuture = new FinalizableResultFuture();
                    FinalizableResultFuture finalizableResultFuture3 = (FinalizableResultFuture) sExecutingCommandMap.putIfAbsent(baseCommand, finalizableResultFuture);
                    if (finalizableResultFuture3 != null) {
                        finalizableResultFuture3.whenComplete(new BiConsumer<CommandResult, Throwable>() { // from class: com.microsoft.identity.common.java.controllers.CommandDispatcher.3
                            @Override // com.microsoft.identity.common.java.util.BiConsumer
                            public final void accept(Object obj, final Exception exc) {
                                CommandResult commandResult = (CommandResult) obj;
                                BaseCommand baseCommand2 = baseCommand;
                                if (exc != null) {
                                    int i = CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE;
                                    Logger.info("CommandDispatcher:getCommandResultConsumer", "Request encountered an exception (this maybe a duplicate request which caries the exception encountered by the original request)");
                                    IPlatformUtil platformUtil = baseCommand2.getParameters().getPlatformComponents().getPlatformUtil();
                                    Runnable runnable = new Runnable() { // from class: com.microsoft.identity.common.java.controllers.CommandDispatcher.3.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            BaseCommand baseCommand3 = baseCommand;
                                            int i2 = CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE;
                                            baseCommand3.getCallback().onError(PropertyBagUtil.baseExceptionFromException(exc));
                                        }
                                    };
                                    ((AndroidPlatformUtil) platformUtil).getClass();
                                    new Handler(Looper.getMainLooper()).post(runnable);
                                    return;
                                }
                                if (!StringUtil.isNullOrEmpty(commandResult.getCorrelationId()) && !baseCommand2.getParameters().getCorrelationId().equals(commandResult.getCorrelationId())) {
                                    int i2 = CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE;
                                    Logger.info("CommandDispatcher:getCommandResultConsumer", "Completed duplicate request with correlation id : **" + baseCommand2.getParameters().getCorrelationId() + ", having the same result as : " + commandResult.getCorrelationId() + ", with the status : " + commandResult.getStatus().name());
                                }
                                CommandDispatcher.access$900(baseCommand2, commandResult);
                            }
                        });
                        concurrentHashMap.put(strInitializeDiagnosticContext, RequestState.EXECUTING);
                        return;
                    }
                    finalizableResultFuture.whenComplete(new BiConsumer<CommandResult, Throwable>() { // from class: com.microsoft.identity.common.java.controllers.CommandDispatcher.3
                        @Override // com.microsoft.identity.common.java.util.BiConsumer
                        public final void accept(Object obj, final Exception exc) {
                            CommandResult commandResult = (CommandResult) obj;
                            BaseCommand baseCommand2 = baseCommand;
                            if (exc != null) {
                                int i = CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE;
                                Logger.info("CommandDispatcher:getCommandResultConsumer", "Request encountered an exception (this maybe a duplicate request which caries the exception encountered by the original request)");
                                IPlatformUtil platformUtil = baseCommand2.getParameters().getPlatformComponents().getPlatformUtil();
                                Runnable runnable = new Runnable() { // from class: com.microsoft.identity.common.java.controllers.CommandDispatcher.3.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        BaseCommand baseCommand3 = baseCommand;
                                        int i2 = CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE;
                                        baseCommand3.getCallback().onError(PropertyBagUtil.baseExceptionFromException(exc));
                                    }
                                };
                                ((AndroidPlatformUtil) platformUtil).getClass();
                                new Handler(Looper.getMainLooper()).post(runnable);
                                return;
                            }
                            if (!StringUtil.isNullOrEmpty(commandResult.getCorrelationId()) && !baseCommand2.getParameters().getCorrelationId().equals(commandResult.getCorrelationId())) {
                                int i2 = CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE;
                                Logger.info("CommandDispatcher:getCommandResultConsumer", "Completed duplicate request with correlation id : **" + baseCommand2.getParameters().getCorrelationId() + ", having the same result as : " + commandResult.getCorrelationId() + ", with the status : " + commandResult.getStatus().name());
                            }
                            CommandDispatcher.access$900(baseCommand2, commandResult);
                        }
                    });
                } else {
                    finalizableResultFuture = new FinalizableResultFuture();
                    finalizableResultFuture.whenComplete(new BiConsumer<CommandResult, Throwable>() { // from class: com.microsoft.identity.common.java.controllers.CommandDispatcher.3
                        @Override // com.microsoft.identity.common.java.util.BiConsumer
                        public final void accept(Object obj, final Exception exc) {
                            CommandResult commandResult = (CommandResult) obj;
                            BaseCommand baseCommand2 = baseCommand;
                            if (exc != null) {
                                int i = CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE;
                                Logger.info("CommandDispatcher:getCommandResultConsumer", "Request encountered an exception (this maybe a duplicate request which caries the exception encountered by the original request)");
                                IPlatformUtil platformUtil = baseCommand2.getParameters().getPlatformComponents().getPlatformUtil();
                                Runnable runnable = new Runnable() { // from class: com.microsoft.identity.common.java.controllers.CommandDispatcher.3.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        BaseCommand baseCommand3 = baseCommand;
                                        int i2 = CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE;
                                        baseCommand3.getCallback().onError(PropertyBagUtil.baseExceptionFromException(exc));
                                    }
                                };
                                ((AndroidPlatformUtil) platformUtil).getClass();
                                new Handler(Looper.getMainLooper()).post(runnable);
                                return;
                            }
                            if (!StringUtil.isNullOrEmpty(commandResult.getCorrelationId()) && !baseCommand2.getParameters().getCorrelationId().equals(commandResult.getCorrelationId())) {
                                int i2 = CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE;
                                Logger.info("CommandDispatcher:getCommandResultConsumer", "Completed duplicate request with correlation id : **" + baseCommand2.getParameters().getCorrelationId() + ", having the same result as : " + commandResult.getCorrelationId() + ", with the status : " + commandResult.getStatus().name());
                            }
                            CommandDispatcher.access$900(baseCommand2, commandResult);
                        }
                    });
                }
                qj7 qj7VarCurrent = SpanExtension.current();
                sExecutingCommandMap.size();
                qj7VarCurrent.getClass();
                ((ThreadPoolExecutor) executorService).getQueue().size();
                SpanExtension.current().getClass();
                qj7 qj7VarCurrent2 = SpanExtension.current();
                ((ThreadPoolExecutor) executorService).getCorePoolSize();
                qj7VarCurrent2.getClass();
                executorService.execute(LibraryInfoHelper.wrap(new Runnable() { // from class: com.microsoft.identity.common.java.controllers.CommandDispatcher.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        CancellationSignal cancellationSignal = finalizableResultFuture.getCancellationSignal();
                        int i = CancellationSignal.a;
                        cancellationSignal.getClass();
                        CancellationSignal.sThreadLocalSignal.set(cancellationSignal);
                        CommandDispatcher.sRequestStateMap.put(strInitializeDiagnosticContext, RequestState.EXECUTING);
                        codeMarkerManager.getClass();
                        try {
                            CommandDispatcher.initializeDiagnosticContext(strInitializeDiagnosticContext, (parameters.getSdkType() == null ? SdkType.UNKNOWN : parameters.getSdkType()).getProductName(), parameters.getSdkVersion());
                            if (cancellationSignal.isCancelled()) {
                                SpanExtension.current().getClass();
                                Logger.info("CommandDispatcher:submitSilent", "PRE_START_CANCELLATION: Worker skipped execution. correlationId=" + strInitializeDiagnosticContext + ", activeCount=" + CommandDispatcher.getSilentRequestActiveCount() + ", queueSize=" + ((ThreadPoolExecutor) CommandDispatcher.sSilentExecutor).getQueue().size());
                                CancellationSignal.sThreadLocalSignal.remove();
                                synchronized (CommandDispatcher.mapAccessLock) {
                                    try {
                                        if (baseCommand instanceof SilentTokenCommand) {
                                            if (((FinalizableResultFuture) ((ConcurrentHashMap) CommandDispatcher.sExecutingCommandMap).remove(baseCommand)) == null) {
                                                Logger.error("CommandDispatcher", "The command in the map has mutated " + baseCommand.getClass().getCanonicalName() + " the calling application was " + baseCommand.getParameters().getApplicationName(), null);
                                                CommandDispatcher.access$600(baseCommand);
                                            }
                                        }
                                        finalizableResultFuture.setCleanedUp();
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                                DiagnosticContext.INSTANCE.clear();
                                return;
                            }
                            codeMarkerManager.getClass();
                            try {
                                CommandResult commandResultAccess$300 = CommandDispatcher.access$300(baseCommand);
                                codeMarkerManager.getClass();
                                Logger.info("CommandDispatcher:submitSilent", "Completed silent request as owner for correlation id : **" + strInitializeDiagnosticContext + ", with the status : " + commandResultAccess$300.getStatus().name() + " is cacheable : " + (baseCommand instanceof SilentTokenCommand));
                                finalizableResultFuture.setResult(commandResultAccess$300);
                                CancellationSignal.sThreadLocalSignal.remove();
                                synchronized (CommandDispatcher.mapAccessLock) {
                                    try {
                                        if (baseCommand instanceof SilentTokenCommand) {
                                            if (((FinalizableResultFuture) ((ConcurrentHashMap) CommandDispatcher.sExecutingCommandMap).remove(baseCommand)) == null) {
                                                Logger.error("CommandDispatcher", "The command in the map has mutated " + baseCommand.getClass().getCanonicalName() + " the calling application was " + baseCommand.getParameters().getApplicationName(), null);
                                                CommandDispatcher.access$600(baseCommand);
                                            }
                                        }
                                        finalizableResultFuture.setCleanedUp();
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                            } catch (Throwable th3) {
                                codeMarkerManager.getClass();
                                throw th3;
                            }
                        } catch (Throwable th4) {
                            try {
                                if (cancellationSignal.isCancelled()) {
                                    SpanExtension.current().getClass();
                                    int i2 = CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE;
                                    Logger.info("CommandDispatcher:submitSilent", "CANCELLED_EXECUTION: Worker exception suppressed after cancellation. correlationId=".concat(strInitializeDiagnosticContext));
                                } else {
                                    int i3 = CommandDispatcher.SILENT_REQUEST_THREAD_POOL_SIZE;
                                    Logger.info("CommandDispatcher:submitSilent", "Request encountered an exception with correlation id : **".concat(strInitializeDiagnosticContext));
                                    finalizableResultFuture.setException(new ExecutionException(th4));
                                }
                                CancellationSignal.sThreadLocalSignal.remove();
                                synchronized (CommandDispatcher.mapAccessLock) {
                                    try {
                                        if (baseCommand instanceof SilentTokenCommand) {
                                            if (((FinalizableResultFuture) ((ConcurrentHashMap) CommandDispatcher.sExecutingCommandMap).remove(baseCommand)) == null) {
                                                Logger.error("CommandDispatcher", "The command in the map has mutated " + baseCommand.getClass().getCanonicalName() + " the calling application was " + baseCommand.getParameters().getApplicationName(), null);
                                                CommandDispatcher.access$600(baseCommand);
                                            }
                                        }
                                        finalizableResultFuture.setCleanedUp();
                                    } catch (Throwable th5) {
                                        throw th5;
                                    }
                                }
                            } catch (Throwable th6) {
                                CancellationSignal.sThreadLocalSignal.remove();
                                synchronized (CommandDispatcher.mapAccessLock) {
                                    try {
                                        if (baseCommand instanceof SilentTokenCommand) {
                                            if (((FinalizableResultFuture) ((ConcurrentHashMap) CommandDispatcher.sExecutingCommandMap).remove(baseCommand)) == null) {
                                                Logger.error("CommandDispatcher", "The command in the map has mutated " + baseCommand.getClass().getCanonicalName() + " the calling application was " + baseCommand.getParameters().getApplicationName(), null);
                                                CommandDispatcher.access$600(baseCommand);
                                            }
                                        }
                                        finalizableResultFuture.setCleanedUp();
                                        DiagnosticContext.INSTANCE.clear();
                                        throw th6;
                                    } catch (Throwable th7) {
                                        throw th7;
                                    }
                                }
                            }
                        }
                        DiagnosticContext.INSTANCE.clear();
                        codeMarkerManager.getClass();
                    }
                }));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
