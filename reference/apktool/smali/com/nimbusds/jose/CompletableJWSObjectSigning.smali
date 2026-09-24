.class public interface abstract Lcom/nimbusds/jose/CompletableJWSObjectSigning;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public abstract complete()Lcom/nimbusds/jose/util/Base64URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation
.end method

.method public abstract getInitializedSignature()Ljava/security/Signature;
.end method
