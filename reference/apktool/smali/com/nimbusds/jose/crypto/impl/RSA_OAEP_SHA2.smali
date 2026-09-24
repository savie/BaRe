.class public Lcom/nimbusds/jose/crypto/impl/RSA_OAEP_SHA2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# static fields
.field private static final RSA_OEAP_256_JCA_ALG:Ljava/lang/String; = "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

.field private static final RSA_OEAP_384_JCA_ALG:Ljava/lang/String; = "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

.field private static final RSA_OEAP_512_JCA_ALG:Ljava/lang/String; = "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

.field private static final SHA_256_JCA_ALG:Ljava/lang/String; = "SHA-256"

.field private static final SHA_384_JCA_ALG:Ljava/lang/String; = "SHA-384"

.field private static final SHA_512_JCA_ALG:Ljava/lang/String; = "SHA-512"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static decryptCEK(Ljava/security/PrivateKey;[BILjava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    if-ne v0, p2, :cond_0

    .line 4
    .line 5
    sget-object p2, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    .line 6
    .line 7
    const-string v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 8
    .line 9
    const-string v1, "SHA-256"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x180

    .line 13
    .line 14
    if-ne v0, p2, :cond_1

    .line 15
    .line 16
    sget-object p2, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    .line 17
    .line 18
    const-string v0, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    .line 19
    .line 20
    const-string v1, "SHA-384"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/16 v0, 0x200

    .line 24
    .line 25
    if-ne v0, p2, :cond_2

    .line 26
    .line 27
    sget-object p2, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    .line 28
    .line 29
    const-string v0, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    .line 30
    .line 31
    const-string v1, "SHA-512"

    .line 32
    .line 33
    :goto_0
    :try_start_0
    const-string v2, "OAEP"

    .line 34
    .line 35
    invoke-static {v2, p3}, Lcom/nimbusds/jose/crypto/impl/AlgorithmParametersHelper;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-instance v3, Ljavax/crypto/spec/OAEPParameterSpec;

    .line 40
    .line 41
    const-string v4, "MGF1"

    .line 42
    .line 43
    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    .line 44
    .line 45
    invoke-direct {v3, v1, v4, p2, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, p3}, Lcom/nimbusds/jose/crypto/impl/CipherHelper;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const/4 p3, 0x4

    .line 56
    invoke-virtual {p2, p3, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "AES"

    .line 60
    .line 61
    const/4 p3, 0x3

    .line 62
    invoke-virtual {p2, p1, p0, p3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    return-object p0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_2
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    .line 81
    .line 82
    const-string p1, "Unsupported SHA-2 bit size: "

    .line 83
    .line 84
    invoke-static {p2, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public static encryptCEK(Ljava/security/interfaces/RSAPublicKey;Ljavax/crypto/SecretKey;ILjava/security/Provider;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    if-ne v0, p2, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    .line 6
    .line 7
    const-string v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 8
    .line 9
    const-string v2, "SHA-256"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x180

    .line 13
    .line 14
    if-ne v0, p2, :cond_1

    .line 15
    .line 16
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    .line 17
    .line 18
    const-string v1, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    .line 19
    .line 20
    const-string v2, "SHA-384"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/16 v0, 0x200

    .line 24
    .line 25
    if-ne v0, p2, :cond_2

    .line 26
    .line 27
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    .line 28
    .line 29
    const-string v1, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    .line 30
    .line 31
    const-string v2, "SHA-512"

    .line 32
    .line 33
    :goto_0
    :try_start_0
    const-string v3, "OAEP"

    .line 34
    .line 35
    invoke-static {v3, p3}, Lcom/nimbusds/jose/crypto/impl/AlgorithmParametersHelper;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    new-instance v4, Ljavax/crypto/spec/OAEPParameterSpec;

    .line 40
    .line 41
    const-string v5, "MGF1"

    .line 42
    .line 43
    sget-object v6, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    .line 44
    .line 45
    invoke-direct {v4, v2, v5, v0, v6}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1, p3}, Lcom/nimbusds/jose/crypto/impl/CipherHelper;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    const/4 v0, 0x3

    .line 56
    invoke-virtual {p3, v0, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    .line 60
    .line 61
    .line 62
    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    return-object p0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :catch_1
    move-exception p0

    .line 67
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :goto_1
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 78
    .line 79
    const-string p3, "Encryption failed due to invalid RSA key for SHA-"

    .line 80
    .line 81
    const-string v0, ": The RSA key may be too short, use a longer key"

    .line 82
    .line 83
    invoke-static {p2, p3, v0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_2
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    .line 92
    .line 93
    const-string p1, "Unsupported SHA-2 bit size: "

    .line 94
    .line 95
    invoke-static {p2, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method
