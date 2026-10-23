.class public abstract Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWEProvider;


# static fields
.field private static final ACCEPTABLE_CEK_ALGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final algs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final cek:Ljavax/crypto/SecretKey;

.field private final encs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "AES"

    .line 4
    .line 5
    const-string v2, "ChaCha20"

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

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
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->ACCEPTABLE_CEK_ALGS:Ljava/util/Set;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;-><init>(Ljava/util/Set;Ljava/util/Set;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljavax/crypto/SecretKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;",
            "Ljavax/crypto/SecretKey;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->algs:Ljava/util/Set;

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    iput-object p2, p0, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->encs:Ljava/util/Set;

    .line 23
    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 p2, 0x1

    .line 31
    if-le p1, p2, :cond_1

    .line 32
    .line 33
    invoke-interface {p3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    sget-object p1, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->ACCEPTABLE_CEK_ALGS:Ljava/util/Set;

    .line 40
    .line 41
    invoke-interface {p3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string p0, "The algorithm of the content encryption key (CEK) must be AES or ChaCha20"

    .line 53
    .line 54
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->cek:Ljavax/crypto/SecretKey;

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    const-string p0, "The supported encryption methods must not be null"

    .line 62
    .line 63
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_3
    const-string p0, "The supported JWE algorithm set must not be null"

    .line 68
    .line 69
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method


# virtual methods
.method public getCEK(Lcom/nimbusds/jose/EncryptionMethod;)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->isCEKProvided()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p1, p0}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->generateCEK(Lcom/nimbusds/jose/EncryptionMethod;Ljava/security/SecureRandom;)Ljavax/crypto/SecretKey;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->cek:Ljavax/crypto/SecretKey;

    .line 22
    .line 23
    return-object p0
.end method

.method public bridge synthetic getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    return-object p0
.end method

.method public isCEKProvided()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->cek:Ljavax/crypto/SecretKey;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public supportedEncryptionMethods()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->encs:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public supportedJWEAlgorithms()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->algs:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method
