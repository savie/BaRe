.class public final Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

.field private final timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWKSet;)V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;-><init>(Lcom/nimbusds/jose/jwk/JWKSet;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWKSet;Ljava/util/Date;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

    .line 8
    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->timestamp:Ljava/util/Date;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->timestamp:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJWKSet()Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->jwkSet:Lcom/nimbusds/jose/jwk/JWKSet;

    .line 2
    .line 3
    return-object p0
.end method
