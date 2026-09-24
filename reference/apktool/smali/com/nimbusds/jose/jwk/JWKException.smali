.class public Lcom/nimbusds/jose/jwk/JWKException;
.super Lcom/nimbusds/jose/KeyException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyException;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static expectedClass(Ljava/lang/Class;)Lcom/nimbusds/jose/jwk/JWKException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKException;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/JWKException;

    .line 2
    .line 3
    const-string v1, "Invalid JWK: Must be an instance of "

    .line 4
    .line 5
    invoke-static {p0, v1}, Lfz5;->k(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/jwk/JWKException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static expectedPrivate()Lcom/nimbusds/jose/jwk/JWKException;
    .locals 2

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/JWKException;

    .line 2
    .line 3
    const-string v1, "Expected private JWK but none available"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/jwk/JWKException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
