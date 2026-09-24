.class final Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/util/BiConsumer<",
        "Lcom/microsoft/identity/common/java/controllers/CommandResult;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
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
    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/java/controllers/CommandResult;

    .line 2
    .line 3
    const-string v0, "CommandDispatcher:getCommandResultConsumer"

    .line 4
    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    sget p1, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->SILENT_REQUEST_THREAD_POOL_SIZE:I

    .line 10
    .line 11
    const-string p1, "Request encountered an exception (this maybe a duplicate request which caries the exception encountered by the original request)"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getPlatformUtil()Lcom/microsoft/identity/common/java/util/IPlatformUtil;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3$1;

    .line 29
    .line 30
    invoke-direct {v0, p0, p2}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3$1;-><init>(Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;Ljava/lang/Exception;)V

    .line 31
    .line 32
    .line 33
    check-cast p1, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance p0, Landroid/os/Handler;

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getCorrelationId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getCorrelationId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_1

    .line 78
    .line 79
    sget p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->SILENT_REQUEST_THREAD_POOL_SIZE:I

    .line 80
    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string p2, "Completed duplicate request with correlation id : **"

    .line 84
    .line 85
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p2, ", having the same result as : "

    .line 100
    .line 101
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getCorrelationId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p2, ", with the status : "

    .line 112
    .line 113
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$900(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method
