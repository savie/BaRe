.class public final Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;


# static fields
.field public static final synthetic a:I

.field private static final sKeyCacheMap:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->sKeyCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "context is marked non-null but is null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method private static attemptKeyPairGeneration(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/KeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    const-string v0, "RSA"

    .line 7
    .line 8
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->generateKeyPair(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/KeyPair;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string p0, "keyPairGenSpec is marked non-null but is null"

    .line 24
    .line 25
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method private generateKeyPairWithLegacySpec()Ljava/security/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->getLegacySpecForKeyStoreKey()Landroid/security/KeyPairGeneratorSpec;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->attemptKeyPairGeneration(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/KeyPair;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 19
    .line 20
    const-string v0, "AndroidWrappedKeyProvider#:generateKeyPairWithLegacySpec"

    .line 21
    .line 22
    const-string v1, "Error generating keypair with legacy spec."

    .line 23
    .line 24
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/microsoft/identity/common/PropertyBagUtil;->clientExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    throw p0
.end method

.method private generateNewKeyPair()Ljava/security/KeyPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_3

    .line 6
    .line 7
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITH_PURPOSE_WRAP_KEY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v0, "AndroidWrappedKeyProvider#:generateWrappingKeyPair_WithPurposeWrapKey"

    .line 20
    .line 21
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :try_start_0
    const-string v2, "Generating new keypair with new spec with purpose_wrap_key"

    .line 26
    .line 27
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 28
    .line 29
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x23

    .line 33
    .line 34
    invoke-direct {p0, v2}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->getSpecForWrappingKey(I)Landroid/security/keystore/KeyGenParameterSpec;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->attemptKeyPairGeneration(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/KeyPair;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    return-object v2

    .line 46
    :catchall_0
    move-exception v2

    .line 47
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 48
    .line 49
    const-string v3, "Error generating keypair with new spec with purpose_wrap_key.Attempting without purpose_wrap_key."

    .line 50
    .line 51
    invoke-static {v0, v3, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->generateWrappingKeyPair()Ljava/security/KeyPair;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_1
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sget-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITHOUT_PURPOSE_WRAP_KEY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 80
    .line 81
    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->generateWrappingKeyPair()Ljava/security/KeyPair;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_2
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->generateKeyPairWithLegacySpec()Ljava/security/KeyPair;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_3
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sget-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITHOUT_PURPOSE_WRAP_KEY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 102
    .line 103
    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->generateWrappingKeyPair()Ljava/security/KeyPair;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :cond_4
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->generateKeyPairWithLegacySpec()Ljava/security/KeyPair;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method

.method private generateWrappingKeyPair()Ljava/security/KeyPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "AndroidWrappedKeyProvider#:generateWrappingKeyPair"

    .line 2
    .line 3
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    const-string v2, "Generating new keypair with new spec without wrap key"

    .line 8
    .line 9
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 10
    .line 11
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    invoke-direct {p0, v2}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->getSpecForWrappingKey(I)Landroid/security/keystore/KeyGenParameterSpec;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->attemptKeyPairGeneration(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/KeyPair;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    return-object v2

    .line 27
    :catchall_0
    move-exception v2

    .line 28
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 29
    .line 30
    const-string v3, "Error generating keypair with new spec.Attempting with legacy spec."

    .line 31
    .line 32
    invoke-static {v0, v3, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->generateKeyPairWithLegacySpec()Ljava/security/KeyPair;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method private getKeyFile()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "adalks"

    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method private getLegacySpecForKeyStoreKey()Landroid/security/KeyPairGeneratorSpec;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "CN=AdalKey, OU="

    .line 10
    .line 11
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x1

    .line 24
    const/16 v4, 0x64

    .line 25
    .line 26
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 30
    .line 31
    invoke-direct {v3, p0}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    const-string p0, "AdalKey"

    .line 35
    .line 36
    invoke-virtual {v3, p0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    .line 41
    .line 42
    invoke-direct {v3, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method private getSpecForWrappingKey(I)Landroid/security/keystore/KeyGenParameterSpec;
    .locals 1

    .line 1
    new-instance p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 2
    .line 3
    const-string v0, "AdalKey"

    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const/16 p1, 0x800

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string p1, "SHA-256"

    .line 15
    .line 16
    const-string v0, "SHA-512"

    .line 17
    .line 18
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "PKCS1Padding"

    .line 27
    .line 28
    filled-new-array {p1}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method


# virtual methods
.method public final generateRandomKey()Ljavax/crypto/SecretKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "AES"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/security/SecureRandom;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x100

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->readKey()Ljava/security/KeyPair;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 31
    .line 32
    const-string v1, "AndroidWrappedKeyProvider#:saveSecretKeyToStorage"

    .line 33
    .line 34
    const-string v2, "No existing keypair. Generating a new one."

    .line 35
    .line 36
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Lqj7;->getSpanContext()Lrj7;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "KeyPairGeneration"

    .line 48
    .line 49
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/PropertyBagUtil;->createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :try_start_1
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->generateNewKeyPair()Ljava/security/KeyPair;

    .line 58
    .line 59
    .line 60
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 62
    .line 63
    .line 64
    move-object v1, v2

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    :try_start_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_1
    move-exception v0

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    throw p0

    .line 76
    :cond_0
    :goto_1
    const-string v2, "RSA/ECB/PKCS1Padding"

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->wrap(Ljavax/crypto/SecretKey;Ljava/security/KeyPair;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)[B

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->getKeyFile()Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0, v1}, Lcom/microsoft/identity/common/java/util/FileUtil;->writeDataToFile(Ljava/io/File;[B)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lcom/microsoft/identity/common/java/crypto/key/KeyUtil;->getKeyThumbPrint(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string v1, "New key is generated with thumbprint: "

    .line 95
    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 101
    .line 102
    const-string v1, "AndroidWrappedKeyProvider#:generateRandomKey"

    .line 103
    .line 104
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    :catch_0
    move-exception p0

    .line 109
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 110
    .line 111
    const-string v1, "no_such_algorithm"

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v2, "AES256SecretKeyGenerator:generateRandomKey"

    .line 125
    .line 126
    invoke-static {v2, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw v0
.end method

.method public final getAlias()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "AdalKey"

    .line 2
    .line 3
    return-object p0
.end method

.method public final declared-synchronized getKey()Ljavax/crypto/SecretKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "AndroidWrappedKeyProvider#:getKey"

    .line 3
    .line 4
    const-string v1, "adalks"

    .line 5
    .line 6
    sget-object v2, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->sKeyCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    const-string v3, "AndroidWrappedKeyProvider#:getKeyFromCache"

    .line 9
    .line 10
    invoke-static {}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->canLoadKey()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->getKeyFile()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    :cond_0
    const-string v4, "Key is invalid, removing from cache"

    .line 27
    .line 28
    sget v5, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 29
    .line 30
    invoke-static {v3, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-object v1

    .line 46
    :cond_2
    :try_start_1
    const-string v1, "Key not in cache or cache is empty, loading key from storage"

    .line 47
    .line 48
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->readSecretKeyFromStorage()Ljavax/crypto/SecretKey;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    const-string v1, "Key does not exist in storage, generating a new key"

    .line 60
    .line 61
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->generateRandomKey()Ljavax/crypto/SecretKey;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    const-string v0, "adalks"

    .line 72
    .line 73
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    monitor-exit p0

    .line 77
    return-object v1

    .line 78
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw v0
.end method

.method public final getKeyTypeIdentifier()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "A001"

    .line 2
    .line 3
    return-object p0
.end method

.method public final declared-synchronized readSecretKeyFromStorage()Ljavax/crypto/SecretKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "Key is loaded with thumbprint: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "AndroidWrappedKeyProvider#:readSecretKeyFromStorage"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    :try_start_1
    invoke-static {}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->readKey()Ljava/security/KeyPair;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string v0, "key does not exist in keystore"

    .line 14
    .line 15
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->deleteKey()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->getKeyFile()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->sKeyCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    const-string v2, "adalks"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-object v3

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->getKeyFile()Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v4}, Lcom/microsoft/identity/common/java/util/FileUtil;->readFromFile(Ljava/io/File;)[B

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    const-string v0, "Key file is empty"

    .line 54
    .line 55
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->getKeyFile()Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->sKeyCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    .line 69
    const-string v2, "adalks"

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-object v3

    .line 76
    :cond_1
    :try_start_3
    const-string v5, "AES"

    .line 77
    .line 78
    const-string v6, "RSA/ECB/PKCS1Padding"

    .line 79
    .line 80
    invoke-static {v4, v5, v2, v6, v3}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->unwrap([BLjava/lang/String;Ljava/security/KeyPair;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2}, Lcom/microsoft/identity/common/java/crypto/key/KeyUtil;->getKeyThumbPrint(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 93
    .line 94
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    .line 96
    .line 97
    monitor-exit p0

    .line 98
    return-object v2

    .line 99
    :goto_0
    :try_start_4
    const-string v2, "Error when loading key from Storage, wipe all existing key data "

    .line 100
    .line 101
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 102
    .line 103
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->deleteKey()V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->getKeyFile()Ljava/io/File;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 114
    .line 115
    .line 116
    sget-object v1, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->sKeyCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    .line 118
    const-string v2, "adalks"

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 125
    throw v0
.end method
