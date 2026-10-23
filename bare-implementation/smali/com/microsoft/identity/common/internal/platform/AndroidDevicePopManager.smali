.class public final Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;
.super Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    const-string v1, "AndroidKeyStore"

    .line 5
    .line 6
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 11
    .line 12
    .line 13
    sget v2, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;->b:I

    .line 14
    .line 15
    new-instance v2, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p2}, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;->keyAlias(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;->keyStore(Ljava/security/KeyStore;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;->build()Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;-><init>(Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string p0, "context is marked non-null but is null"

    .line 39
    .line 40
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    const-string p0, "alias is marked non-null but is null"

    .line 45
    .line 46
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method private buildCommonKeyGenSpec(IZ)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getKeyAlias()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const/16 p0, 0x800

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, "PKCS1"

    .line 19
    .line 20
    filled-new-array {p1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "SHA-1"

    .line 29
    .line 30
    const-string v0, "SHA-256"

    .line 31
    .line 32
    const-string v1, "NONE"

    .line 33
    .line 34
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    const-string p1, "AndroidDevicePopManager:setEncryptionPaddingsIfNeeded"

    .line 45
    .line 46
    if-nez p2, :cond_0

    .line 47
    .line 48
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 49
    .line 50
    const-string p2, "Adding encryption paddings (RSA_OAEP, RSA_PKCS1) to key specification"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "OAEPPadding"

    .line 56
    .line 57
    const-string p2, "PKCS1Padding"

    .line 58
    .line 59
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_0
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 68
    .line 69
    const-string p2, "Skipping encryption paddings due to SDL security restrictions"

    .line 70
    .line 71
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_1
    const-string p0, "builder is marked non-null but is null"

    .line 76
    .line 77
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    return-object p0
.end method

.method private generateNewKeyPair(Landroid/content/Context;ZZZ)Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Landroid/security/keystore/StrongBoxUnavailableException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/ported/DateUtilities;->isLocaleCalendarNonGregorian(Ljava/util/Locale;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/microsoft/identity/common/java/util/ported/DateUtilities;->LOCALE_CHANGE_LOCK:Ljava/lang/Object;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    :goto_0
    monitor-enter v0

    .line 20
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget v2, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->a:I

    .line 25
    .line 26
    const-class v2, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;

    .line 27
    .line 28
    monitor-enter v2

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->getInitializedRsaKeyPairGenerator(Landroid/content/Context;ZZZ)Ljava/security/KeyPairGenerator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :try_start_2
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 41
    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return-object p0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 49
    .line 50
    .line 51
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :cond_1
    :try_start_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 53
    .line 54
    const-string p1, "currentLocale is marked non-null but is null"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :catchall_2
    move-exception p0

    .line 61
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 62
    :try_start_4
    throw p0

    .line 63
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    throw p0
.end method

.method private getInitializedRsaKeyPairGenerator(Landroid/content/Context;ZZZ)Ljava/security/KeyPairGenerator;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    const-string v0, "RSA"

    .line 2
    .line 3
    const-string v1, "AndroidKeyStore"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_8

    .line 11
    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->DISABLE_UNNECESSARY_CRYPTO_PURPOSES_FROM_DEVICE_POP_MANAGER:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 19
    .line 20
    invoke-interface {p1, v2}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/16 v2, 0xf

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v2, 0xc

    .line 30
    .line 31
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    const-string v5, "Attempting to apply StrongBox isolation."

    .line 35
    .line 36
    const-string v6, "AndroidDevicePopManager"

    .line 37
    .line 38
    const/16 v7, 0x1c

    .line 39
    .line 40
    if-ge v3, v7, :cond_3

    .line 41
    .line 42
    invoke-direct {p0, v2, p1}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->buildCommonKeyGenSpec(IZ)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p4, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :cond_1
    if-lt v3, v7, :cond_2

    .line 53
    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 57
    .line 58
    invoke-static {v6, v5}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0, p0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_3
    if-nez p1, :cond_4

    .line 74
    .line 75
    if-eqz p3, :cond_4

    .line 76
    .line 77
    or-int/lit8 v2, v2, 0x20

    .line 78
    .line 79
    :cond_4
    invoke-direct {p0, v2, p1}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->buildCommonKeyGenSpec(IZ)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    if-eqz p4, :cond_5

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :cond_5
    if-eqz p2, :cond_6

    .line 90
    .line 91
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 92
    .line 93
    invoke-static {v6, v5}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    :cond_6
    invoke-virtual {p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v0, p0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_7
    const-string p0, "keyPairGenerator is marked non-null but is null"

    .line 109
    .line 110
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_8
    const-string p0, "context is marked non-null but is null"

    .line 115
    .line 116
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-object v1
.end method

.method private static isNegativeInternalError(Ljava/lang/Throwable;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "internal Keystore code: -1000"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 25
    .line 26
    const-string v1, "AndroidDevicePopManager"

    .line 27
    .line 28
    const-string v2, "StrongBox not supported. internal Keystore code: -1000"

    .line 29
    .line 30
    invoke-static {v1, v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return v0
.end method


# virtual methods
.method public final generateNewRsaKeyPair()Ljava/security/KeyPair;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v3, "AndroidDevicePopManager"

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    :goto_0
    const/4 v0, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    if-ge v5, v0, :cond_b

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    move v9, v7

    .line 14
    move v10, v9

    .line 15
    move v11, v10

    .line 16
    const/4 v8, 0x0

    .line 17
    :goto_1
    if-nez v8, :cond_8

    .line 18
    .line 19
    :try_start_0
    invoke-direct {v1, v2, v9, v10, v11}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->generateNewKeyPair(Landroid/content/Context;ZZZ)Ljava/security/KeyPair;

    .line 20
    .line 21
    .line 22
    move-result-object v6
    :try_end_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v8, "Key pair generated successfully (StrongBox ["

    .line 29
    .line 30
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v8, "], Import ["

    .line 37
    .line 38
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v8, "], Attestation Challenge ["

    .line 45
    .line 46
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v8, "])"

    .line 53
    .line 54
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget v8, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 62
    .line 63
    invoke-static {v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    .line 65
    .line 66
    move v8, v7

    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    move v8, v7

    .line 70
    goto :goto_2

    .line 71
    :catch_1
    move-exception v0

    .line 72
    :goto_2
    const-string v12, "StrongBox not supported."

    .line 73
    .line 74
    const-string v13, "AndroidDevicePopManager:isStrongBoxUnavailableException"

    .line 75
    .line 76
    const-string v14, "StrongBoxUnavailableException"

    .line 77
    .line 78
    if-eqz v9, :cond_1

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v15

    .line 84
    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v15

    .line 88
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    if-eqz v15, :cond_0

    .line 93
    .line 94
    sget v16, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 95
    .line 96
    invoke-static {v13, v12, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :cond_0
    if-eqz v15, :cond_1

    .line 100
    .line 101
    sget v9, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 102
    .line 103
    const-string v9, "StrongBox unavailable. Skipping StrongBox then retry."

    .line 104
    .line 105
    invoke-static {v3, v9, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    :goto_3
    const/4 v9, 0x0

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    if-eqz v10, :cond_5

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v15

    .line 116
    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v15

    .line 120
    const-string v4, "SecureKeyImportUnavailableException"

    .line 121
    .line 122
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_5

    .line 127
    .line 128
    sget v4, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 129
    .line 130
    const-string v4, "Import unsupported. Skipping import flag then retry."

    .line 131
    .line 132
    invoke-static {v3, v4, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    if-eqz v9, :cond_4

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    if-eqz v4, :cond_4

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    if-eqz v10, :cond_2

    .line 160
    .line 161
    invoke-static {v13, v12, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    :cond_2
    if-nez v10, :cond_3

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->isNegativeInternalError(Ljava/lang/Throwable;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_4

    .line 175
    .line 176
    :cond_3
    const/4 v9, 0x0

    .line 177
    :cond_4
    const/4 v10, 0x0

    .line 178
    goto/16 :goto_1

    .line 179
    .line 180
    :cond_5
    if-eqz v11, :cond_6

    .line 181
    .line 182
    const-string v4, "Failed to generate attestation certificate chain"

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_6

    .line 193
    .line 194
    sget v4, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 195
    .line 196
    const-string v4, "Failed to generate attestation cert. Skipping attestation then retry."

    .line 197
    .line 198
    invoke-static {v3, v4, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    const/4 v11, 0x0

    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_6
    if-eqz v9, :cond_7

    .line 205
    .line 206
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 207
    .line 208
    const/16 v9, 0x22

    .line 209
    .line 210
    if-lt v4, v9, :cond_7

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    if-eqz v4, :cond_7

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-static {v4}, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;->isNegativeInternalError(Ljava/lang/Throwable;)Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-eqz v4, :cond_7

    .line 227
    .line 228
    sget v4, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 229
    .line 230
    const-string v4, "Android 14 Internal Key store error with StrongBox. Skipping strongbox then retry."

    .line 231
    .line 232
    invoke-static {v3, v4, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_7
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->clearAsymmetricKey()V

    .line 237
    .line 238
    .line 239
    throw v0

    .line 240
    :cond_8
    invoke-virtual {v6}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v0}, Lcom/nimbusds/jose/crypto/impl/RSAKeyUtils;->keyBitLength(Ljava/security/PrivateKey;)I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    const/16 v4, 0x800

    .line 249
    .line 250
    if-ge v0, v4, :cond_a

    .line 251
    .line 252
    if-gez v0, :cond_9

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_a
    :goto_4
    const-string v0, "SecretKey is secure hardware backed? "

    .line 260
    .line 261
    const-string v1, "AndroidDevicePopManager:getSecureHardwareState"

    .line 262
    .line 263
    :try_start_2
    invoke-virtual {v6}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-interface {v2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    const-string v4, "AndroidKeyStore"

    .line 272
    .line 273
    invoke-static {v3, v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    const-class v4, Landroid/security/keystore/KeyInfo;

    .line 278
    .line 279
    invoke-virtual {v3, v2, v4}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    check-cast v2, Landroid/security/keystore/KeyInfo;

    .line 284
    .line 285
    invoke-virtual {v2}, Landroid/security/keystore/KeyInfo;->isInsideSecureHardware()Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 302
    .line 303
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    .line 304
    .line 305
    .line 306
    goto :goto_6

    .line 307
    :catch_2
    move-exception v0

    .line 308
    goto :goto_5

    .line 309
    :catch_3
    move-exception v0

    .line 310
    goto :goto_5

    .line 311
    :catch_4
    move-exception v0

    .line 312
    :goto_5
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 313
    .line 314
    const-string v2, "Failed to query secure hardware state."

    .line 315
    .line 316
    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    .line 318
    .line 319
    :goto_6
    return-object v6

    .line 320
    :cond_b
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->clearAsymmetricKey()V

    .line 321
    .line 322
    .line 323
    const-string v0, "Failed to generate valid KeyPair. Attempted 4 times."

    .line 324
    .line 325
    invoke-static {v0}, Lg84;->j(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    return-object v6
.end method
