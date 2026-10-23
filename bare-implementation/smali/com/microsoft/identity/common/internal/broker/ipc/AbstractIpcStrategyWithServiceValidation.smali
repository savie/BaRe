.class public abstract Lcom/microsoft/identity/common/internal/broker/ipc/AbstractIpcStrategyWithServiceValidation;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/broker/ipc/AbstractIpcStrategyWithServiceValidation;

    .line 2
    .line 3
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ln81;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/microsoft/identity/common/internal/broker/ipc/AbstractIpcStrategyWithServiceValidation;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final communicateToBroker(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/exception/BrokerCommunicationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->targetBrokerAppPackageName:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/microsoft/identity/common/internal/broker/ipc/AbstractIpcStrategyWithServiceValidation;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ":communicateToBroker"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v0}, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;->isSupportedByTargetedBroker(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/broker/ipc/AbstractIpcStrategyWithServiceValidation;->communicateToBrokerAfterValidation(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Operation "

    .line 42
    .line 43
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;->getType()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x1

    .line 51
    const/4 v4, 0x2

    .line 52
    if-eq v2, v3, :cond_4

    .line 53
    .line 54
    if-eq v2, v4, :cond_3

    .line 55
    .line 56
    const/4 v3, 0x3

    .line 57
    if-eq v2, v3, :cond_2

    .line 58
    .line 59
    const/4 v3, 0x4

    .line 60
    if-eq v2, v3, :cond_1

    .line 61
    .line 62
    const-string v2, "null"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const-string v2, "LEGACY_ACCOUNT_AUTHENTICATOR_FOR_WPJ_API"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const-string v2, "CONTENT_PROVIDER"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const-string v2, "ACCOUNT_MANAGER_ADD_ACCOUNT"

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const-string v2, "BOUND_SERVICE"

    .line 75
    .line 76
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, " is not supported on "

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 92
    .line 93
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    .line 97
    .line 98
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;->getType()I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-direct {v0, v4, p0, p1, v1}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;-><init>(IILjava/lang/String;Ljava/lang/Exception;)V

    .line 104
    .line 105
    .line 106
    throw v0
.end method

.method public abstract communicateToBrokerAfterValidation(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/exception/BrokerCommunicationException;
        }
    .end annotation
.end method
