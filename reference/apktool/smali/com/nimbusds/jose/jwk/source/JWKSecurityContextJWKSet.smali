.class public Lcom/nimbusds/jose/jwk/source/JWKSecurityContextJWKSet;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/jwk/source/JWKSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/jwk/source/JWKSource<",
        "Lcom/nimbusds/jose/proc/JWKSecurityContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/JWKSecurityContext;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/JWKSelector;",
            "Lcom/nimbusds/jose/proc/JWKSecurityContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/nimbusds/jose/proc/JWKSecurityContext;->getKeys()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p0, p2}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lcom/nimbusds/jose/jwk/JWKSelector;->select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public bridge synthetic get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 15
    check-cast p2, Lcom/nimbusds/jose/proc/JWKSecurityContext;

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/jwk/source/JWKSecurityContextJWKSet;->get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/JWKSecurityContext;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
