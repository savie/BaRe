.class final Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$command:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;->val$command:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const-string v0, "return_authorization_request_result"

    .line 2
    .line 3
    const-string v1, "CommandDispatcher:beginInteractive"

    .line 4
    .line 5
    const-string v2, "Completed interactive request for correlation id : **"

    .line 6
    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;->val$command:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    sget-object v5, Lcom/microsoft/identity/common/java/request/SdkType;->UNKNOWN:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 24
    .line 25
    :goto_0
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/request/SdkType;->getProductName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    goto :goto_0

    .line 35
    :goto_1
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkVersion()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {v4, v5, v6}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->initializeDiagnosticContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :try_start_0
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->setCorrelationId(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getPublicApiId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-static {v4, v3, v5}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$1200(Ljava/lang/String;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    new-array v3, v3, [Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 55
    .line 56
    new-instance v5, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5$1;

    .line 57
    .line 58
    invoke-direct {v5, v3}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5$1;-><init>([Lcom/microsoft/identity/common/java/exception/BaseException;)V

    .line 59
    .line 60
    .line 61
    sget-object v6, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 62
    .line 63
    invoke-virtual {v6, v0, v5}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->registerCallback(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$1402(Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$300(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const/4 v7, 0x0

    .line 74
    invoke-static {v7}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$1402(Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v0}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->unregisterCallback(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    aget-object v0, v3, v0

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    sget-object v3, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->ERROR:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    .line 86
    .line 87
    new-instance v5, Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 88
    .line 89
    invoke-direct {v5, v3, v0, v4}, Lcom/microsoft/identity/common/java/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v4, ", with the status : "

    .line 111
    .line 112
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {p0, v5}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$900(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    sget-object p0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clear()V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clear()V

    .line 145
    .line 146
    .line 147
    throw p0
.end method
