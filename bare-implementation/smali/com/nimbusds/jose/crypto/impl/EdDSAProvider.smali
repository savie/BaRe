.class public abstract Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;
.super Lcom/nimbusds/jose/crypto/impl/BaseJWSProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final SUPPORTED_ALGORITHMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_CURVES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm;->EdDSA:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 4
    .line 5
    sget-object v2, Lcom/nimbusds/jose/JWSAlgorithm;->Ed25519:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Lcom/nimbusds/jose/JWSAlgorithm;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 23
    .line 24
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;->SUPPORTED_CURVES:Ljava/util/Set;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/crypto/impl/BaseJWSProvider;-><init>(Ljava/util/Set;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
