.class Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$AbstractCachingJWKSetSourceEvent;
.super Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbstractCachingJWKSetSourceEvent"
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


# instance fields
.field private final threadQueueLength:I


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;ILcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource<",
            "TC;>;ITC;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$AbstractCachingJWKSetSourceEvent;->threadQueueLength:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getThreadQueueLength()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource$AbstractCachingJWKSetSourceEvent;->threadQueueLength:I

    .line 2
    .line 3
    return p0
.end method
