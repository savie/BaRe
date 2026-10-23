.class public interface abstract Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract verify(Lcom/nimbusds/jose/JOSEObjectType;Lcom/nimbusds/jose/proc/SecurityContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            "TC;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/proc/BadJOSEException;
        }
    .end annotation
.end method
