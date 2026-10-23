.class public Lcom/nimbusds/jose/crypto/RSASSASigner;
.super Lcom/nimbusds/jose/crypto/impl/RSASSAProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWSSigner;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# instance fields
.field private final opts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSSignerOption;",
            ">;"
        }
    .end annotation
.end field

.field private final privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/RSAKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/RSASSASigner;-><init>(Lcom/nimbusds/jose/jwk/RSAKey;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/RSAKey;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/RSAKey;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSSignerOption;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 67
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/RSAKeyUtils;->toRSAPrivateKey(Lcom/nimbusds/jose/jwk/RSAKey;)Ljava/security/PrivateKey;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/crypto/RSASSASigner;-><init>(Ljava/security/PrivateKey;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/RSAKey;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/RSAKeyUtils;->toRSAPrivateKey(Lcom/nimbusds/jose/jwk/RSAKey;)Ljava/security/PrivateKey;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/crypto/RSASSASigner;-><init>(Ljava/security/PrivateKey;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/RSASSASigner;-><init>(Ljava/security/PrivateKey;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSSignerOption;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/crypto/impl/RSASSAProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "RSA"

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p0, "The private key algorithm must be RSA"

    .line 23
    .line 24
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v1

    .line 28
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/RSASSASigner;->privateKey:Ljava/security/PrivateKey;

    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 34
    .line 35
    :goto_1
    iput-object p2, p0, Lcom/nimbusds/jose/crypto/RSASSASigner;->opts:Ljava/util/Set;

    .line 36
    .line 37
    const-class p0, Lcom/nimbusds/jose/crypto/opts/AllowWeakRSAKey;

    .line 38
    .line 39
    invoke-static {p2, p0}, Lcom/nimbusds/jose/crypto/opts/OptionUtils;->optionIsPresent(Ljava/util/Set;Ljava/lang/Class;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 44
    .line 45
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/RSAKeyUtils;->keyBitLength(Ljava/security/PrivateKey;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-lez p0, :cond_4

    .line 50
    .line 51
    const/16 p1, 0x800

    .line 52
    .line 53
    if-lt p0, p1, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const-string p0, "The RSA key size must be at least 2048 bits"

    .line 57
    .line 58
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_4
    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 63
    invoke-static {}, Lcom/nimbusds/jose/crypto/opts/AllowWeakRSAKey;->getInstance()Lcom/nimbusds/jose/crypto/opts/AllowWeakRSAKey;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/crypto/RSASSASigner;-><init>(Ljava/security/PrivateKey;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/nimbusds/jose/crypto/RSASSASigner;[BLjava/security/Signature;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/crypto/RSASSASigner;->sign([BLjava/security/Signature;)Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getInitiatedSignature(Lcom/nimbusds/jose/JWSHeader;)Ljava/security/Signature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWSProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p1, v0}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Ljava/security/Signature;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/RSASSASigner;->privateKey:Ljava/security/PrivateKey;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Invalid private RSA key: "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p1, v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method private sign([BLjava/security/Signature;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "RSA signature exception: "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method


# virtual methods
.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/RSASSASigner;->privateKey:Ljava/security/PrivateKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public sign(Lcom/nimbusds/jose/JWSHeader;[B)Lcom/nimbusds/jose/util/Base64URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/RSASSASigner;->getInitiatedSignature(Lcom/nimbusds/jose/JWSHeader;)Ljava/security/Signature;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/RSASSASigner;->opts:Ljava/util/Set;

    const-class v1, Lcom/nimbusds/jose/crypto/opts/UserAuthenticationRequired;

    invoke-static {v0, v1}, Lcom/nimbusds/jose/crypto/opts/OptionUtils;->optionIsPresent(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0, p2, p1}, Lcom/nimbusds/jose/crypto/RSASSASigner;->sign([BLjava/security/Signature;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    new-instance v0, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;

    .line 42
    invoke-static {}, Lcom/nimbusds/jose/crypto/opts/UserAuthenticationRequired;->getInstance()Lcom/nimbusds/jose/crypto/opts/UserAuthenticationRequired;

    move-result-object v1

    new-instance v2, Lcom/nimbusds/jose/crypto/RSASSASigner$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/nimbusds/jose/crypto/RSASSASigner$1;-><init>(Lcom/nimbusds/jose/crypto/RSASSASigner;Ljava/security/Signature;[B)V

    const-string p0, "Authenticate user to complete signing"

    invoke-direct {v0, p0, v1, v2}, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/JWSSignerOption;Lcom/nimbusds/jose/CompletableJWSObjectSigning;)V

    throw v0
.end method
