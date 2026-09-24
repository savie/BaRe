.class public Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$ScheduledRefreshFailed;
.super Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScheduledRefreshFailed"
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
.field private final exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource;Ljava/lang/Exception;Lcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/CachingJWKSetSource<",
            "TC;>;",
            "Ljava/lang/Exception;",
            "TC;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/nimbusds/jose/jwk/source/AbstractJWKSetSourceEvent;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSetSource;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$ScheduledRefreshFailed;->exception:Ljava/lang/Exception;

    .line 8
    .line 9
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

.method public getException()Ljava/lang/Exception;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/RefreshAheadCachingJWKSetSource$ScheduledRefreshFailed;->exception:Ljava/lang/Exception;

    .line 2
    .line 3
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
