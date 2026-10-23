.class public interface abstract Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract extractResultBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation
.end method

.method public abstract getBundle()Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation
.end method

.method public abstract getMethodName()Ljava/lang/String;
.end method

.method public abstract getTelemetryApiId()Ljava/lang/String;
.end method

.method public abstract performPrerequisites(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/BaseException;
        }
    .end annotation
.end method

.method public abstract putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;",
            "TT;)V"
        }
    .end annotation
.end method
