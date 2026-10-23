.class public interface abstract Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public abstract communicateToBroker(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/exception/BrokerCommunicationException;
        }
    .end annotation
.end method

.method public abstract getType()I
.end method

.method public abstract isSupportedByTargetedBroker(Ljava/lang/String;)Z
.end method
