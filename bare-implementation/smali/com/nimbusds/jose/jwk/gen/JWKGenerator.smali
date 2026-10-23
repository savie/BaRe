.class public abstract Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/nimbusds/jose/jwk/JWK;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected alg:Lcom/nimbusds/jose/Algorithm;

.field protected exp:Ljava/util/Date;

.field protected iat:Ljava/util/Date;

.field protected keyStore:Ljava/security/KeyStore;

.field protected kid:Ljava/lang/String;

.field protected nbf:Ljava/util/Date;

.field protected ops:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field protected provider:Ljava/security/Provider;

.field protected secureRandom:Ljava/security/SecureRandom;

.field protected tprKid:Z

.field protected use:Lcom/nimbusds/jose/jwk/KeyUse;


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
.method public algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/Algorithm;",
            ")",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 2
    .line 3
    return-object p0
.end method

.method public expirationTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->exp:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract generate()Lcom/nimbusds/jose/jwk/JWK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation
.end method

.method public issueTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->iat:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->kid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyIDFromThumbprint(Z)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->tprKid:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->ops:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            ")",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->keyStore:Ljava/security/KeyStore;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ")",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 2
    .line 3
    return-object p0
.end method

.method public notBeforeTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->nbf:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public provider(Ljava/security/Provider;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider;",
            ")",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->provider:Ljava/security/Provider;

    .line 2
    .line 3
    return-object p0
.end method

.method public secureRandom(Ljava/security/SecureRandom;)Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/SecureRandom;",
            ")",
            "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->secureRandom:Ljava/security/SecureRandom;

    .line 2
    .line 3
    return-object p0
.end method
