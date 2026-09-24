.class public final Lcom/nimbusds/jose/jwk/JWKSelector;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation


# instance fields
.field private final matcher:Lcom/nimbusds/jose/jwk/JWKMatcher;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWKMatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKSelector;->matcher:Lcom/nimbusds/jose/jwk/JWKMatcher;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "The JWK matcher must not be null"

    .line 10
    .line 11
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method


# virtual methods
.method public getMatcher()Lcom/nimbusds/jose/jwk/JWKMatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKSelector;->matcher:Lcom/nimbusds/jose/jwk/JWKMatcher;

    .line 2
    .line 3
    return-object p0
.end method

.method public select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            ")",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/nimbusds/jose/jwk/JWK;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKSelector;->matcher:Lcom/nimbusds/jose/jwk/JWKMatcher;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->matches(Lcom/nimbusds/jose/jwk/JWK;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    return-object v0
.end method
