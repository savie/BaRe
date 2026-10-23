.class public interface abstract Lcom/nimbusds/jose/JWSProvider;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JOSEProvider;
.implements Lcom/nimbusds/jose/jca/JCAAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/JOSEProvider;",
        "Lcom/nimbusds/jose/jca/JCAAware<",
        "Lcom/nimbusds/jose/jca/JCAContext;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract supportedJWSAlgorithms()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;"
        }
    .end annotation
.end method
