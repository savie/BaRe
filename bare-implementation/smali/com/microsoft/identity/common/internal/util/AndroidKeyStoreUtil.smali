.class public abstract Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic a:I

.field private static final sFailedAndroidKeyStoreUnwrapOperationCount:Lge;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "failed_keystore_key_unwrap_operation_count"

    .line 2
    .line 3
    const-string v1, "Number of failed Android KeyStore unwrap operations"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/PropertyBagUtil;->createLongCounter(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lzh8;->d:Lge;

    .line 9
    .line 10
    sput-object v0, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->sFailedAndroidKeyStoreUnwrapOperationCount:Lge;

    .line 11
    .line 12
    return-void
.end method

.method public static declared-synchronized canLoadKey()Z
    .locals 4

    .line 1
    const-string v0, "AdalKey"

    .line 2
    .line 3
    const-class v1, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string v2, "AndroidKeyStoreUtil:hasKey"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    :try_start_1
    invoke-static {}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->getKeyStore()Ljava/security/KeyStore;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit v1

    .line 17
    return v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception v0

    .line 23
    goto :goto_0

    .line 24
    :catch_2
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :catch_3
    move-exception v0

    .line 27
    :goto_0
    :try_start_2
    const-string v3, "Failed to check keystore key"

    .line 28
    .line 29
    invoke-static {v2, v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit v1

    .line 33
    const/4 v0, 0x0

    .line 34
    return v0

    .line 35
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    throw v0
.end method

.method private static createAttributesBuilderFromInvalidKeyException(Ljava/security/InvalidKeyException;)Ls40;
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    const-string v3, "InvalidKeyException"

    .line 7
    .line 8
    const/16 v4, 0x21

    .line 9
    .line 10
    if-lt v0, v4, :cond_4

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-lt v0, v4, :cond_1

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    move v4, v1

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/16 v6, 0x14

    .line 20
    .line 21
    if-ge v4, v6, :cond_1

    .line 22
    .line 23
    instance-of v6, v0, Landroid/security/KeyStoreException;

    .line 24
    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    move-object v5, v0

    .line 28
    check-cast v5, Landroid/security/KeyStoreException;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    if-eqz v5, :cond_3

    .line 39
    .line 40
    invoke-virtual {v5}, Landroid/security/KeyStoreException;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    const-string v0, "Keystore exception found, no error message"

    .line 47
    .line 48
    :cond_2
    invoke-virtual {v5}, Landroid/security/KeyStoreException;->getNumericErrorCode()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "KeyStoreException"

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    const-string v0, "No keystore exception found"

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    const-string v0, "API Level below 33, keystore exception not available"

    .line 63
    .line 64
    :goto_2
    new-instance v4, Ls40;

    .line 65
    .line 66
    invoke-direct {v4, v1}, Ls40;-><init>(I)V

    .line 67
    .line 68
    .line 69
    const-string v1, "error_type"

    .line 70
    .line 71
    invoke-virtual {v4, v1, v3}, Ls40;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v1, "keystore_exception_stack_trace"

    .line 75
    .line 76
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/FileUtil;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v4, v1, p0}, Ls40;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string p0, "keystore_exception_message"

    .line 84
    .line 85
    invoke-virtual {v4, p0, v0}, Ls40;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string p0, "keystore_numeric_error_code"

    .line 89
    .line 90
    invoke-virtual {v4, p0, v2}, Ls40;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object v4
.end method

.method public static declared-synchronized deleteKey()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "AdalKey"

    .line 2
    .line 3
    const-class v1, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string v2, "AndroidKeyStoreUtil:deleteKeyFromKeyStore"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    :try_start_1
    invoke-static {}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->getKeyStore()Ljava/security/KeyStore;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit v1

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :catch_1
    move-exception v0

    .line 22
    goto :goto_2

    .line 23
    :catch_2
    move-exception v0

    .line 24
    goto :goto_3

    .line 25
    :catch_3
    move-exception v0

    .line 26
    goto :goto_4

    .line 27
    :goto_0
    :try_start_2
    const-string v3, "unknown_crypto_error"

    .line 28
    .line 29
    goto :goto_5

    .line 30
    :catchall_1
    move-exception v0

    .line 31
    goto :goto_6

    .line 32
    :goto_1
    const-string v3, "io_error"

    .line 33
    .line 34
    goto :goto_5

    .line 35
    :goto_2
    const-string v3, "no_such_algorithm"

    .line 36
    .line 37
    goto :goto_5

    .line 38
    :goto_3
    const-string v3, "certificate_load_failure"

    .line 39
    .line 40
    goto :goto_5

    .line 41
    :goto_4
    const-string v3, "android_keystore_unavailable"

    .line 42
    .line 43
    :goto_5
    new-instance v4, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-direct {v4, v3, v5, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    throw v4

    .line 56
    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    throw v0
.end method

.method public static declared-synchronized generateKeyPair(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/KeyPair;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p0, :cond_4

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    :try_start_0
    const-string v1, "AndroidKeyStoreUtil:generateKeyPair"

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/ported/DateUtilities;->isLocaleCalendarNonGregorian(Ljava/util/Locale;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    sget-object v2, Lcom/microsoft/identity/common/java/util/ported/DateUtilities;->LOCALE_CHANGE_LOCK:Ljava/lang/Object;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto/16 :goto_a

    .line 25
    .line 26
    :cond_0
    new-instance v2, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    :goto_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-class v4, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;

    .line 37
    .line 38
    monitor-enter v4

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    :try_start_2
    const-string v4, "Generating KeyPair from KeyStore"

    .line 43
    .line 44
    invoke-static {v1, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v4, "AndroidKeyStore"

    .line 48
    .line 49
    invoke-static {p0, v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 57
    .line 58
    .line 59
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    :try_start_3
    invoke-static {v3}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 63
    .line 64
    .line 65
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    monitor-exit v0

    .line 67
    return-object p0

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    goto :goto_9

    .line 70
    :cond_1
    :try_start_4
    const-string p0, "Failed to generate a keypair. The way we\'re generating it might be incorrect."

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    invoke-static {v1, p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 77
    .line 78
    const-string v4, "invalid_key"

    .line 79
    .line 80
    const-string v5, "Failed to generate a keypair"

    .line 81
    .line 82
    invoke-direct {p0, v4, v5, p1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw p0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 86
    :catchall_2
    move-exception p0

    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move-exception p0

    .line 89
    goto :goto_2

    .line 90
    :catch_1
    move-exception p0

    .line 91
    goto :goto_4

    .line 92
    :catch_2
    move-exception p0

    .line 93
    goto :goto_5

    .line 94
    :catch_3
    move-exception p0

    .line 95
    goto :goto_6

    .line 96
    :goto_1
    :try_start_5
    const-string p1, "unknown_crypto_error"

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catchall_3
    move-exception p0

    .line 100
    goto :goto_8

    .line 101
    :goto_2
    const-string p1, "no_such_provider"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 102
    .line 103
    :goto_3
    :try_start_6
    invoke-static {v3}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_7

    .line 107
    :goto_4
    :try_start_7
    const-string p1, "invalid_algorithm_parameter"

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :goto_5
    const-string p1, "no_such_algorithm"

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :goto_6
    const-string p1, "android_keystore_unavailable"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :goto_7
    :try_start_8
    new-instance v3, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-direct {v3, p1, v4, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v1, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    throw v3

    .line 129
    :goto_8
    invoke-static {v3}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 130
    .line 131
    .line 132
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 133
    :cond_2
    :try_start_9
    new-instance p0, Ljava/lang/NullPointerException;

    .line 134
    .line 135
    const-string p1, "currentLocale is marked non-null but is null"

    .line 136
    .line 137
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :catchall_4
    move-exception p0

    .line 142
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 143
    :try_start_a
    throw p0

    .line 144
    :goto_9
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 145
    :try_start_b
    throw p0

    .line 146
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 147
    .line 148
    const-string p1, "algorithmSpec is marked non-null but is null"

    .line 149
    .line 150
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 155
    .line 156
    const-string p1, "algorithm is marked non-null but is null"

    .line 157
    .line 158
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p0

    .line 162
    :goto_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 163
    throw p0
.end method

.method private static declared-synchronized getKeyStore()Ljava/security/KeyStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "AndroidKeyStore"

    .line 5
    .line 6
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object v1

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v1
.end method

.method public static declared-synchronized readKey()Ljava/security/KeyPair;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "AdalKey"

    .line 2
    .line 3
    const-class v1, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string v2, "AndroidKeyStoreUtil:readKeyPair"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    :try_start_1
    invoke-static {}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->getKeyStore()Ljava/security/KeyStore;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x0

    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    const-string v0, "Alias doesn\'t exist."

    .line 20
    .line 21
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit v1

    .line 25
    return-object v5

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :catch_1
    move-exception v0

    .line 31
    goto :goto_2

    .line 32
    :catch_2
    move-exception v0

    .line 33
    goto :goto_3

    .line 34
    :catch_3
    move-exception v0

    .line 35
    goto :goto_4

    .line 36
    :catch_4
    move-exception v0

    .line 37
    goto :goto_5

    .line 38
    :catch_5
    move-exception v0

    .line 39
    goto :goto_6

    .line 40
    :cond_0
    :try_start_2
    invoke-virtual {v3, v0, v5}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    const-string v0, "Private key entry doesn\'t exist."

    .line 47
    .line 48
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    .line 51
    monitor-exit v1

    .line 52
    return-object v5

    .line 53
    :cond_1
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    const-string v0, "Public key entry doesn\'t exist."

    .line 60
    .line 61
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit v1

    .line 65
    return-object v5

    .line 66
    :cond_2
    :try_start_4
    new-instance v3, Ljava/security/KeyPair;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v4, Ljava/security/PrivateKey;

    .line 73
    .line 74
    invoke-direct {v3, v0, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit v1

    .line 78
    return-object v3

    .line 79
    :goto_0
    :try_start_5
    const-string v3, "unknown_crypto_error"

    .line 80
    .line 81
    goto :goto_7

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    goto :goto_8

    .line 84
    :goto_1
    const-string v3, "invalid_key_private_key_missing"

    .line 85
    .line 86
    goto :goto_7

    .line 87
    :goto_2
    const-string v3, "android_keystore_unavailable"

    .line 88
    .line 89
    goto :goto_7

    .line 90
    :goto_3
    const-string v3, "no_such_algorithm"

    .line 91
    .line 92
    goto :goto_7

    .line 93
    :goto_4
    const-string v3, "certificate_load_failure"

    .line 94
    .line 95
    goto :goto_7

    .line 96
    :goto_5
    const-string v3, "io_error"

    .line 97
    .line 98
    goto :goto_7

    .line 99
    :goto_6
    const-string v3, "android_keystore_unavailable"

    .line 100
    .line 101
    :goto_7
    new-instance v4, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-direct {v4, v3, v5, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    throw v4

    .line 114
    :goto_8
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 115
    throw v0
.end method

.method public static declared-synchronized unwrap([BLjava/lang/String;Ljava/security/KeyPair;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    if-eqz p3, :cond_2

    .line 7
    .line 8
    :try_start_0
    const-string v1, "AndroidKeyStoreUtil:unwrap"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    :try_start_1
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const/4 v2, 0x4

    .line 15
    if-eqz p4, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p3, v2, p2, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :catch_1
    move-exception p0

    .line 30
    goto :goto_3

    .line 31
    :catch_2
    move-exception p0

    .line 32
    goto :goto_4

    .line 33
    :catch_3
    move-exception p0

    .line 34
    goto :goto_5

    .line 35
    :cond_0
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p3, v2, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    const/4 p2, 0x3

    .line 43
    invoke-virtual {p3, p0, p1, p2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljavax/crypto/SecretKey;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-object p0

    .line 51
    :goto_1
    :try_start_2
    const-string p1, "unknown_crypto_error"

    .line 52
    .line 53
    goto :goto_6

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    goto :goto_7

    .line 56
    :goto_2
    const-string p1, "invalid_key"

    .line 57
    .line 58
    goto :goto_6

    .line 59
    :goto_3
    const-string p1, "no_such_algorithm"

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :goto_4
    const-string p1, "no_such_padding"

    .line 63
    .line 64
    goto :goto_6

    .line 65
    :goto_5
    const-string p1, "android_keystore_unavailable"

    .line 66
    .line 67
    :goto_6
    new-instance p2, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-direct {p2, p1, p3, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    instance-of p3, p0, Ljava/security/InvalidKeyException;

    .line 77
    .line 78
    if-eqz p3, :cond_1

    .line 79
    .line 80
    move-object p3, p0

    .line 81
    check-cast p3, Ljava/security/InvalidKeyException;

    .line 82
    .line 83
    invoke-static {p3}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->createAttributesBuilderFromInvalidKeyException(Ljava/security/InvalidKeyException;)Ls40;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    const-string p4, "keystore_operation"

    .line 88
    .line 89
    const-string v2, "unwrap"

    .line 90
    .line 91
    invoke-virtual {p3, p4, v2}, Ls40;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string p4, "error_code"

    .line 95
    .line 96
    invoke-virtual {p3, p4, p1}, Ls40;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3}, Ls40;->a()Lr40;

    .line 100
    .line 101
    .line 102
    sget-object p3, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->sFailedAndroidKeyStoreUnwrapOperationCount:Lge;

    .line 103
    .line 104
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    :cond_1
    invoke-static {v1, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw p2

    .line 111
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 112
    .line 113
    const-string p1, "wrapAlgorithm is marked non-null but is null"

    .line 114
    .line 115
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 120
    .line 121
    const-string p1, "wrappedKeyAlgorithm is marked non-null but is null"

    .line 122
    .line 123
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :goto_7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    throw p0
.end method

.method public static declared-synchronized wrap(Ljavax/crypto/SecretKey;Ljava/security/KeyPair;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    :try_start_0
    const-string v1, "AndroidKeyStoreUtil:wrap"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    :try_start_1
    const-string v2, "Wrap secret key with a KeyPair."

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v2, 0x3

    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2, v2, p1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :catch_1
    move-exception p0

    .line 33
    goto :goto_3

    .line 34
    :catch_2
    move-exception p0

    .line 35
    goto :goto_4

    .line 36
    :catch_3
    move-exception p0

    .line 37
    goto :goto_5

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p2, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    .line 46
    .line 47
    .line 48
    move-result-object p0
    :try_end_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit v0

    .line 50
    return-object p0

    .line 51
    :goto_1
    :try_start_2
    const-string p1, "unknown_crypto_error"

    .line 52
    .line 53
    goto :goto_6

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    goto :goto_7

    .line 56
    :goto_2
    const-string p1, "invalid_block_size"

    .line 57
    .line 58
    goto :goto_6

    .line 59
    :goto_3
    const-string p1, "invalid_key"

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :goto_4
    const-string p1, "no_such_algorithm"

    .line 63
    .line 64
    goto :goto_6

    .line 65
    :goto_5
    const-string p1, "no_such_padding"

    .line 66
    .line 67
    :goto_6
    new-instance p2, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-direct {p2, p1, p3, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v1, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw p2

    .line 80
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 81
    .line 82
    const-string p1, "wrapAlgorithm is marked non-null but is null"

    .line 83
    .line 84
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :goto_7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    throw p0
.end method
