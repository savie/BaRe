.class public abstract Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final SILENT_REQUEST_THREAD_POOL_SIZE:I

.field private static final mapAccessLock:Ljava/lang/Object;

.field private static sCommand:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

.field private static final sDCFExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sExecutingCommandMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private static sInteractiveExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final sLock:Ljava/lang/Object;

.field private static final sRequestStateMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final sSilentExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->USE_INCREASED_DEFAULT_SILENT_REQUEST_THREAD_POOL_SIZE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->getBooleanValue(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x5

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/16 v0, 0xc

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v1

    .line 25
    :goto_0
    sput v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->SILENT_REQUEST_THREAD_POOL_SIZE:I

    .line 26
    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sput-object v2, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sInteractiveExecutor:Ljava/util/concurrent/ExecutorService;

    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sSilentExecutor:Ljava/util/concurrent/ExecutorService;

    .line 38
    .line 39
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sDCFExecutor:Ljava/util/concurrent/ExecutorService;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/Object;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sLock:Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sCommand:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    .line 54
    .line 55
    new-instance v0, Lcom/microsoft/identity/common/java/controllers/CommandResultCache$1;

    .line 56
    .line 57
    const/high16 v1, 0x3f400000    # 0.75f

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    const/16 v3, 0xfb

    .line 61
    .line 62
    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/lang/Object;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->mapAccessLock:Ljava/lang/Object;

    .line 71
    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sRequestStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    .line 86
    return-void
.end method

.method public static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sRequestStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$1200(Ljava/lang/String;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "CommandDispatcher:beginInteractive"

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->logParameters(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static access$1300(Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "com.microsoft.identity.client.request.code"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->getOrDefault(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-string v2, "com.microsoft.identity.client.result.code"

    .line 19
    .line 20
    invoke-virtual {p0, v2, v0}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->getOrDefault(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sget-object v2, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sCommand:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2, v1, v0, p0}, Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;->onFinishAuthorizationSession(IILcom/microsoft/identity/common/java/util/ported/PropertyBag;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string p0, "CommandDispatcher:completeInteractive"

    .line 39
    .line 40
    const-string v0, "sCommand is null, No interactive call in progress to complete."

    .line 41
    .line 42
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static synthetic access$1402(Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sCommand:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic access$200()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sSilentExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public static access$300(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/controllers/CommandResult;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->execute()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    move-object v2, v1

    .line 7
    move-object v1, v0

    .line 8
    goto :goto_1

    .line 9
    :catch_0
    move-exception v1

    .line 10
    instance-of v2, v1, Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast v1, Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 15
    .line 16
    :goto_0
    move-object v2, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-static {v1}, Lcom/microsoft/identity/common/PropertyBagUtil;->baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget-object v4, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->ERROR:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    .line 32
    .line 33
    sget-object v5, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->CANCEL:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    instance-of p0, v1, Lcom/microsoft/identity/common/java/exception/UserCancelException;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    invoke-static {v5, v3}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->ofNull(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/String;)Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_1
    new-instance p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 48
    .line 49
    invoke-direct {p0, v4, v1, v3}, Lcom/microsoft/identity/common/java/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_2
    sget-object v1, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->COMPLETED:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    .line 55
    .line 56
    if-eqz v2, :cond_6

    .line 57
    .line 58
    instance-of v6, v2, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    .line 59
    .line 60
    if-eqz v6, :cond_6

    .line 61
    .line 62
    check-cast v2, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-eqz p0, :cond_5

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getSucceeded()Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_3

    .line 79
    .line 80
    new-instance v4, Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {v4, v1, v2, p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    move-object p0, v4

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-static {v2}, Lcom/microsoft/identity/common/PropertyBagUtil;->exceptionFromAcquireTokenResult(Lcom/microsoft/identity/common/java/result/AcquireTokenResult;)Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    instance-of v2, v1, Lcom/microsoft/identity/common/java/exception/UserCancelException;

    .line 100
    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {v5, p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->ofNull(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/String;)Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    new-instance v2, Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-direct {v2, v4, v1, p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    move-object p0, v2

    .line 122
    goto :goto_2

    .line 123
    :cond_5
    const-string p0, "commandParameters is marked non-null but is null"

    .line 124
    .line 125
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_6
    instance-of v4, v2, Lcom/microsoft/identity/common/java/result/VoidResult;

    .line 130
    .line 131
    if-eqz v4, :cond_7

    .line 132
    .line 133
    new-instance v1, Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    sget-object v4, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->VOID:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    .line 144
    .line 145
    invoke-direct {v1, v4, v2, p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    move-object p0, v1

    .line 149
    goto :goto_2

    .line 150
    :cond_7
    if-nez v2, :cond_8

    .line 151
    .line 152
    invoke-static {v1, v3}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->ofNull(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/String;)Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    goto :goto_2

    .line 157
    :cond_8
    new-instance p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 158
    .line 159
    invoke-direct {p0, v1, v2, v3}, Lcom/microsoft/identity/common/java/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_2
    if-eqz v3, :cond_d

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_9

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    instance-of v0, v0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 175
    .line 176
    if-eqz v0, :cond_9

    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 183
    .line 184
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->setCorrelationId(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_9
    invoke-static {}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->getMap(Ljava/lang/String;)Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->setTelemetryMap(Ljava/util/List;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    instance-of v1, v1, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 203
    .line 204
    if-eqz v1, :cond_a

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 211
    .line 212
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;->setTelemetry(Ljava/util/List;)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_a
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    instance-of v1, v1, Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 221
    .line 222
    if-eqz v1, :cond_b

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    check-cast v1, Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 229
    .line 230
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->setTelemetry(Ljava/util/List;)V

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_b
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-eqz v0, :cond_c

    .line 239
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v1, "Not setting telemetry on result as result type is "

    .line 243
    .line 244
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getResult()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v1, " and doesn\'t support telemetry at this time."

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    const-string v1, "CommandDispatcher:setTelemetryOnResult"

    .line 272
    .line 273
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_c
    :goto_3
    invoke-static {}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/java/telemetry/Telemetry;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->flush(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    return-object p0

    .line 284
    :cond_d
    const-string p0, "correlationId is marked non-null but is null"

    .line 285
    .line 286
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    return-object v0
.end method

.method public static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->mapAccessLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$500()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static access$600(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eq p0, v3, :cond_0

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 45
    .line 46
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    sput-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    .line 52
    return-void
.end method

.method public static access$900(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getPlatformUtil()Lcom/microsoft/identity/common/java/util/IPlatformUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;->onReturnCommandResult(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;-><init>(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Landroid/os/Handler;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string p0, "result is marked non-null but is null"

    .line 39
    .line 40
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static beginInteractive(Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;)V
    .locals 5

    .line 1
    const-string v0, "Cancelled execution of "

    .line 2
    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-static {}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->getInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isAuthorizationInCurrentTask()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v2, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 18
    .line 19
    const-string v3, "cancel_authorization_request"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->hasReceivers(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    const-string v0, "cancel_authorization_request"

    .line 28
    .line 29
    new-instance v3, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    .line 30
    .line 31
    invoke-direct {v3}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0, v3}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->broadcast(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string v3, "return_authorization_request_result"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->hasReceivers(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    const-string v2, "CommandDispatcher:beginInteractive"

    .line 49
    .line 50
    const-string v3, "The previous interactive request was queued but never got processed and is blocking the interactive thread. Restarting the interactive executor service to enable processing interactive requests again."

    .line 51
    .line 52
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v2, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sInteractiveExecutor:Ljava/util/concurrent/ExecutorService;

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    sput-object v3, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sInteractiveExecutor:Ljava/util/concurrent/ExecutorService;

    .line 66
    .line 67
    const-string v3, "CommandDispatcher:beginInteractive"

    .line 68
    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, " interactive requests."

    .line 82
    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_0
    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sInteractiveExecutor:Ljava/util/concurrent/ExecutorService;

    .line 94
    .line 95
    new-instance v2, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;

    .line 96
    .line 97
    invoke-direct {v2, p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;-><init>(Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v2}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 109
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    throw p0
.end method

.method public static getSilentRequestActiveCount()I
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sSilentExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static initializeDiagnosticContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/java/logging/RequestContext;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "correlation_id"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v1, "x-client-SKU"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-string p1, "x-client-Ver"

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    sget-object p1, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->setRequestContext(Lcom/microsoft/identity/common/java/logging/RequestContext;)V

    .line 38
    .line 39
    .line 40
    const-string p1, "CommandDispatcher:initializeDiagnosticContext"

    .line 41
    .line 42
    const-string p2, "Initialized new DiagnosticContext"

    .line 43
    .line 44
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method private static logParameters(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string p1, ":"

    .line 4
    .line 5
    invoke-static {p0, p1}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "Starting request with request context: "

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/RequestContext;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/RequestContext;->toJsonString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", with PublicApiId: "

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->isAllowPii()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    sget-object p1, Lcom/microsoft/identity/common/java/util/ObjectMapper;->GSON:Lcom/google/gson/a;

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/ObjectMapper;->serializeExposedFieldsOfObjectToJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    const-string p0, "correlationId is marked non-null but is null"

    .line 84
    .line 85
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static submitSilent(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->getInstance()Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    sget-object v1, Lcom/microsoft/identity/common/java/request/SdkType;->UNKNOWN:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/request/SdkType;->getProductName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/request/SdkType;->getProductName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkVersion()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v0, v1, v2}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->initializeDiagnosticContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v4, v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->setCorrelationId(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v6, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sSilentExecutor:Ljava/util/concurrent/ExecutorService;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const-string v0, ":submitSilent"

    .line 51
    .line 52
    const-string v1, "CommandDispatcher"

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getPublicApiId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v2, v4, v1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->logParameters(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sRequestStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    .line 67
    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$RequestState;->WAITING_FOR_LOCK:Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$RequestState;

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    sget-object v7, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->mapAccessLock:Ljava/lang/Object;

    .line 73
    .line 74
    monitor-enter v7

    .line 75
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$RequestState;->QUEUED:Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$RequestState;

    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    instance-of v1, p0, Lcom/microsoft/identity/common/java/commands/SilentTokenCommand;

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    sget-object v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    .line 86
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 91
    .line 92
    if-nez v1, :cond_2

    .line 93
    .line 94
    new-instance v1, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 95
    .line 96
    invoke-direct {v1}, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;-><init>()V

    .line 97
    .line 98
    .line 99
    sget-object v5, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    .line 101
    invoke-virtual {v5, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    check-cast v5, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 106
    .line 107
    if-nez v5, :cond_1

    .line 108
    .line 109
    new-instance v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;-><init>(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->whenComplete(Lcom/microsoft/identity/common/java/util/BiConsumer;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    move-object p0, v0

    .line 120
    goto :goto_2

    .line 121
    :cond_1
    new-instance v1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;-><init>(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->whenComplete(Lcom/microsoft/identity/common/java/util/BiConsumer;)V

    .line 127
    .line 128
    .line 129
    sget-object p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$RequestState;->EXECUTING:Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$RequestState;

    .line 130
    .line 131
    invoke-virtual {v0, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    monitor-exit v7

    .line 135
    return-void

    .line 136
    :cond_2
    new-instance v3, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;

    .line 137
    .line 138
    invoke-direct {v3, p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;-><init>(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v3}, Lcom/microsoft/identity/common/java/util/ResultFuture;->whenComplete(Lcom/microsoft/identity/common/java/util/BiConsumer;)V

    .line 142
    .line 143
    .line 144
    sget-object p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$RequestState;->EXECUTING:Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$RequestState;

    .line 145
    .line 146
    invoke-virtual {v0, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    monitor-exit v7

    .line 150
    return-void

    .line 151
    :cond_3
    new-instance v1, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    .line 152
    .line 153
    invoke-direct {v1}, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;-><init>()V

    .line 154
    .line 155
    .line 156
    new-instance v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;

    .line 157
    .line 158
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;-><init>(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/util/ResultFuture;->whenComplete(Lcom/microsoft/identity/common/java/util/BiConsumer;)V

    .line 162
    .line 163
    .line 164
    :goto_1
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    sget-object v5, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->sExecutingCommandMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    move-object v0, v6

    .line 177
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    move-object v5, v6

    .line 198
    check-cast v5, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 199
    .line 200
    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    new-instance v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;

    .line 207
    .line 208
    move-object v5, p0

    .line 209
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;-><init>(Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;Ljava/lang/String;Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-interface {v6, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 217
    .line 218
    .line 219
    monitor-exit v7

    .line 220
    return-void

    .line 221
    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    throw p0
.end method
