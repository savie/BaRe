.class public Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;
.super Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/proc/JWSKeySelector;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource<",
        "TC;>;",
        "Lcom/nimbusds/jose/proc/JWSKeySelector<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final jwsAlgs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final singleJwsAlgConstructorWasCalled:Z


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWSAlgorithm;Lcom/nimbusds/jose/jwk/source/JWKSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p2}, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->jwsAlgs:Ljava/util/Set;

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->singleJwsAlgConstructorWasCalled:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/nimbusds/jose/jwk/source/JWKSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->jwsAlgs:Ljava/util/Set;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->singleJwsAlgConstructorWasCalled:Z

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p0, "The JWS algorithms must not be empty"

    .line 21
    .line 22
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0
.end method


# virtual methods
.method public createJWKMatcher(Lcom/nimbusds/jose/JWSHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->isAllowed(Lcom/nimbusds/jose/JWSAlgorithm;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->forJWSHeader(Lcom/nimbusds/jose/JWSHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public getExpectedJWSAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->singleJwsAlgConstructorWasCalled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->jwsAlgs:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "Since this class was constructed with multiple algorithms, the behavior of this method is undefined."

    .line 19
    .line 20
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public bridge synthetic getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;->getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public isAllowed(Lcom/nimbusds/jose/JWSAlgorithm;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->jwsAlgs:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public selectJWSKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSHeader;",
            "TC;)",
            "Ljava/util/List<",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->jwsAlgs:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->createJWKMatcher(Lcom/nimbusds/jose/JWSHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;->getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance v0, Lcom/nimbusds/jose/jwk/JWKSelector;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lcom/nimbusds/jose/jwk/JWKSelector;-><init>(Lcom/nimbusds/jose/jwk/JWKMatcher;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v0, p2}, Lcom/nimbusds/jose/jwk/source/JWKSource;->get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance p1, Ljava/util/LinkedList;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/KeyConverter;->toJavaKeys(Ljava/util/List;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_4

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Ljava/security/Key;

    .line 62
    .line 63
    instance-of v0, p2, Ljava/security/PublicKey;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    return-object p1
.end method
