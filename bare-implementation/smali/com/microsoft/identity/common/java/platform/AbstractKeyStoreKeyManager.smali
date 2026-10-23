.class public abstract Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/security/KeyStore$Entry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;

.field public static final synthetic a:I


# instance fields
.field private final mKeyAlias:Ljava/lang/String;

.field protected final mKeyStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->UTF8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->mKeyAlias:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->mKeyStore:Ljava/security/KeyStore;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p0, "keyAlias is marked non-null but is null"

    .line 15
    .line 16
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    const-string p0, "keyStore is marked non-null but is null"

    .line 21
    .line 22
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public static getKeyPairForEntry(Ljava/security/KeyStore$PrivateKeyEntry;)Ljava/security/KeyPair;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v1, Ljava/security/KeyPair;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    const-string p0, "entry is marked non-null but is null"

    .line 22
    .line 23
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static getRsaKeyForKeyPair(Ljava/security/KeyPair;)Lcom/nimbusds/jose/jwk/RSAKey;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Ljava/security/interfaces/RSAPublicKey;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->build()Lcom/nimbusds/jose/jwk/RSAKey;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "Cannot get RSAKey for key of type: "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method public static getRsaThumbprint(Ljava/security/KeyStore$PrivateKeyEntry;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getKeyPairForEntry(Ljava/security/KeyStore$PrivateKeyEntry;)Ljava/security/KeyPair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getRsaKeyForKeyPair(Ljava/security/KeyPair;)Lcom/nimbusds/jose/jwk/RSAKey;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->computeThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "rsaKey is marked non-null but is null"

    .line 21
    .line 22
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public static getSecretKeyThumbprint(Ljava/security/KeyStore$SecretKeyEntry;)[B
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "SHA256"

    .line 14
    .line 15
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    sget-object v2, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->UTF8:Ljava/nio/charset/Charset;

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 60
    .line 61
    .line 62
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object p0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    const-string v0, "KeyAccessor:newInstance"

    .line 66
    .line 67
    const-string v1, "Exception while getting key entry"

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-static {v0, v2, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 71
    .line 72
    .line 73
    return-object v2
.end method


# virtual methods
.method public final clear()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->mKeyStore:Ljava/security/KeyStore;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->mKeyAlias:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "AbstractKeyStoreKeyManager"

    .line 12
    .line 13
    const-string v1, "Error while clearing KeyStore"

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final exists()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->mKeyStore:Ljava/security/KeyStore;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->mKeyAlias:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "AbstractKeyStoreKeyManager"

    .line 12
    .line 13
    const-string v1, "Error while querying KeyStore"

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final getEntry()Ljava/security/KeyStore$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->mKeyAlias:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->mKeyStore:Ljava/security/KeyStore;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getKeyAlias()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->mKeyAlias:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getThumbprint()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "Get thumbprint currently not supported for key of type: "

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getEntry()Ljava/security/KeyStore$Entry;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of v1, p0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast p0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getRsaThumbprint(Ljava/security/KeyStore$PrivateKeyEntry;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->UTF8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    instance-of v1, p0, Ljava/security/KeyStore$SecretKeyEntry;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast p0, Ljava/security/KeyStore$SecretKeyEntry;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getSecretKeyThumbprint(Ljava/security/KeyStore$SecretKeyEntry;)[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    const-string v0, "failed_to_compute_thumbprint_with_sha256"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_1
    move-exception p0

    .line 66
    const-string v0, "protection_params_invalid"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_2
    move-exception p0

    .line 70
    const-string v0, "no_such_algorithm"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_3
    move-exception p0

    .line 74
    const-string v0, "keystore_not_initialized"

    .line 75
    .line 76
    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-direct {v1, v0, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v1
.end method
