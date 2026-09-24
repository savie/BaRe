.class public interface abstract Lcom/jcraft/jsch/AgentConnector;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract query(Lcom/jcraft/jsch/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/AgentProxyException;
        }
    .end annotation
.end method
