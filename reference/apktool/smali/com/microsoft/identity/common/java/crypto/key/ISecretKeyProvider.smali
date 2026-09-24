.class public interface abstract Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public abstract getAlias()Ljava/lang/String;
.end method

.method public abstract getKey()Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation
.end method

.method public abstract getKeyTypeIdentifier()Ljava/lang/String;
.end method
