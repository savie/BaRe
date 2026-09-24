.class public Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$RefreshScheduledEvent;
.super Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefreshScheduledEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent<",
        "Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource<",
        "TC;>;TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;Lcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource<",
            "TC;>;TC;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Lcom/nimbusds/jose/proc/SecurityContext;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;->getContext()Lcom/nimbusds/jose/proc/SecurityContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public bridge synthetic getSource()Lcom/nimbusds/jose/jwk/source/JWKSetSource;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;->getSource()Lcom/nimbusds/jose/jwk/source/JWKSetSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
