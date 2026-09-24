.class public final Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;


# static fields
.field private static final sKeyCacheMap:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private final cryptoParameterSpecFactory:Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;

.field private final keyFile:Ljava/io/File;


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
    sput-object v0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->sKeyCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->cryptoParameterSpecFactory:Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;

    .line 13
    .line 14
    new-instance v0, Ljava/io/File;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "adalks"

    .line 26
    .line 27
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->keyFile:Ljava/io/File;

    .line 31
    .line 32
    return-void
.end method

.method private static attemptKeyGeneration-IoAF18A(Lcom/microsoft/identity/common/crypto/IKeyGenSpec;)Ljava/io/Serializable;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lcom/microsoft/identity/common/crypto/IKeyGenSpec;->getAlgorithm()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p0}, Lcom/microsoft/identity/common/crypto/IKeyGenSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->generateKeyPair(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/KeyPair;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    new-instance v0, Lbn6;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method private final deserializeAndUnwrapSecretKey([BLjava/security/KeyPair;)Ljavax/crypto/SecretKey;
    .locals 3

    .line 1
    const-string v0, "KeyStoreBackedSecretKeyProvider:deserializeAndUnwrapSecretKey"

    .line 2
    .line 3
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lqj7;->getSpanContext()Lrj7;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "SecretKeyRetrieval"

    .line 12
    .line 13
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/PropertyBagUtil;->createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :try_start_0
    invoke-static {p1}, Lcom/microsoft/identity/common/PropertyBagUtil;->deserialize([B)Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->unwrapSecretKey(Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;Ljava/security/KeyPair;)Ljavax/crypto/SecretKey;

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-static {v1, p1}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    :try_start_1
    const-string p1, "Failed to deserialize and unwrap secret key"

    .line 45
    .line 46
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 47
    .line 48
    invoke-static {v0, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :goto_0
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 55
    :catchall_2
    move-exception p1

    .line 56
    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method private final generateKeyPair()Ljava/security/KeyPair;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "KeyStoreBackedSecretKeyProvider:generateKeyPair"

    .line 2
    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->cryptoParameterSpecFactory:Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;->getPrioritizedKeyGenParameterSpecs()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_3

    .line 20
    .line 21
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Lqj7;->getSpanContext()Lrj7;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v4, "KeyPairGeneration"

    .line 30
    .line 31
    invoke-static {v4, v2}, Lcom/microsoft/identity/common/PropertyBagUtil;->createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const/4 v4, 0x0

    .line 44
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lcom/microsoft/identity/common/crypto/IKeyGenSpec;

    .line 57
    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v7, "Attempting key generation with spec "

    .line 64
    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v7, ": "

    .line 72
    .line 73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    sget v7, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 84
    .line 85
    invoke-static {v0, v6}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v5}, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->attemptKeyGeneration-IoAF18A(Lcom/microsoft/identity/common/crypto/IKeyGenSpec;)Ljava/io/Serializable;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    instance-of v7, v6, Lbn6;

    .line 93
    .line 94
    if-nez v7, :cond_1

    .line 95
    .line 96
    check-cast v6, Ljava/security/KeyPair;

    .line 97
    .line 98
    invoke-static {v5, v1}, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->recordKeyPairGenSuccess(Lcom/microsoft/identity/common/crypto/IKeyGenSpec;Ljava/util/LinkedHashMap;)V

    .line 99
    .line 100
    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v1, "Key pair generated successfully with spec: "

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    .line 121
    invoke-static {v2, v3}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    return-object v6

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto :goto_2

    .line 127
    :catch_0
    move-exception p0

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    :try_start_1
    invoke-static {v6}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    if-eqz v6, :cond_0

    .line 134
    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v8, "Failed to generate key pair with spec: "

    .line 141
    .line 142
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v8, ", error: "

    .line 149
    .line 150
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-static {v0, v7}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_2
    invoke-static {v1}, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->handleAllFailures(Ljava/util/LinkedHashMap;)V

    .line 172
    .line 173
    .line 174
    throw v3
    :try_end_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    :catchall_1
    move-exception p0

    .line 178
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 179
    :catchall_2
    move-exception v0

    .line 180
    invoke-static {v2, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 181
    .line 182
    .line 183
    throw v0

    .line 184
    :cond_3
    const-string p0, "unknown_crypto_error"

    .line 185
    .line 186
    const-string v0, "No key generation specifications available for generating key pair."

    .line 187
    .line 188
    invoke-static {p0, v0, v3}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    return-object v3
.end method

.method private final getKeyPairCompatibleCipherSpecs(Ljava/security/KeyPair;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v1, "KeyStoreBackedSecretKeyProvider:selectCompatibleCipherSpecs"

    .line 2
    .line 3
    sget v0, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->a:I

    .line 4
    .line 5
    const-class v2, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    const-string v3, "AndroidKeyStoreUtil:getKeyPairEncryptionPaddings"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    :try_start_1
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v4, "AndroidKeyStore"

    .line 19
    .line 20
    invoke-static {v0, v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v4, Landroid/security/keystore/KeyInfo;

    .line 25
    .line 26
    invoke-virtual {v0, p1, v4}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/security/keystore/KeyInfo;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/security/keystore/KeyInfo;->getEncryptionPaddings()[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    array-length v4, p1

    .line 42
    const/4 v5, 0x0

    .line 43
    :goto_0
    if-ge v5, v4, :cond_0

    .line 44
    .line 45
    aget-object v6, p1, v5

    .line 46
    .line 47
    const-string v7, "Padding"

    .line 48
    .line 49
    const-string v8, ""

    .line 50
    .line 51
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    move-object p0, v0

    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :catch_0
    move-exception v0

    .line 66
    move-object p1, v0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v4, "Supported encryption paddings: "

    .line 74
    .line 75
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v3, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    monitor-exit v2

    .line 89
    goto :goto_2

    .line 90
    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v4, "Failed to retrieve key padding information: "

    .line 96
    .line 97
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v3, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .line 116
    monitor-exit v2

    .line 117
    :goto_2
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->cryptoParameterSpecFactory:Lcom/microsoft/identity/common/crypto/CryptoParameterSpecFactory;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    const-string p0, "CryptoParameterSpecFactory:getPrioritizedCipherParameterSpecs"

    .line 123
    .line 124
    invoke-static {}, Lcom/microsoft/identity/common/crypto/CipherSpec;->access$getOaepCipherSpec$cp()Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {}, Lcom/microsoft/identity/common/crypto/CipherSpec;->access$getPkcs1CipherSpec$cp()Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    filled-new-array {p1, v2}, [Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const-string p1, "Ciphers: "

    .line 141
    .line 142
    invoke-static {p1, v2}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 147
    .line 148
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string p1, "Supported paddings by the keyPair: "

    .line 154
    .line 155
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p1, ",Specs available in order of priority: "

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    const-string v3, ","

    .line 187
    .line 188
    sget-object v6, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider$getKeyPairCompatibleCipherSpecs$1$1;->INSTANCE:Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider$getKeyPairCompatibleCipherSpecs$1$1;

    .line 189
    .line 190
    const/16 v7, 0x1e

    .line 191
    .line 192
    const/4 v4, 0x0

    .line 193
    const/4 v5, 0x0

    .line 194
    invoke-static/range {v2 .. v7}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    new-instance p0, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    :cond_1
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_4

    .line 211
    .line 212
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    move-object v3, v2

    .line 217
    check-cast v3, Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 218
    .line 219
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-eqz v4, :cond_2

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-eqz v5, :cond_1

    .line 235
    .line 236
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    check-cast v5, Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v3}, Lcom/microsoft/identity/common/crypto/CipherSpec;->getPadding()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    const/4 v7, 0x1

    .line 250
    invoke-static {v6, v5, v7}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-eqz v5, :cond_3

    .line 255
    .line 256
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-nez p1, :cond_5

    .line 265
    .line 266
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-static {p0}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v0, "Found "

    .line 285
    .line 286
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v0, " compatible cipher specs: "

    .line 297
    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    return-object p0

    .line 312
    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    throw p0
.end method

.method private static handleAllFailures(Ljava/util/LinkedHashMap;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v0, "No failures encountered, but no key pair generated. This should not happen."

    .line 10
    .line 11
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lel1;->Z0(Ljava/util/Collection;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Throwable;

    .line 24
    .line 25
    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v3, "All key generation attempts failed. Total failures: "

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v2, "unknown_crypto_error"

    .line 46
    .line 47
    invoke-direct {v1, v2, p0, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 55
    .line 56
    const-string v0, "KeyStoreBackedSecretKeyProvider:handleAllFailures"

    .line 57
    .line 58
    invoke-static {v0, p0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v1
.end method

.method private final readRawWrappedSecretKeyFromFile()[B
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->keyFile:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "KeyStoreBackedSecretKeyProvider:readRawWrappedSecretKeyFromFile"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 13
    .line 14
    const-string p0, "Key file does not exist"

    .line 15
    .line 16
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/FileUtil;->readFromFile(Ljava/io/File;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    array-length v0, p0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-object p0

    .line 31
    :cond_2
    :goto_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 32
    .line 33
    const-string p0, "Key file is empty"

    .line 34
    .line 35
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method

.method private static recordKeyPairGenSuccess(Lcom/microsoft/identity/common/crypto/IKeyGenSpec;Ljava/util/LinkedHashMap;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lcom/microsoft/identity/common/crypto/IKeyGenSpec;->getEncryptionPaddings()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v4, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider$formatFailureHistory$1;->INSTANCE:Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider$formatFailureHistory$1;

    .line 30
    .line 31
    const/16 v5, 0x1e

    .line 32
    .line 33
    const-string v1, ";"

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method private final unwrapSecretKey(Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;Ljava/security/KeyPair;)Ljavax/crypto/SecretKey;
    .locals 5

    .line 1
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->getKeyPairCompatibleCipherSpecs(Ljava/security/KeyPair;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v2, v0

    .line 21
    check-cast v2, Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/microsoft/identity/common/crypto/CipherSpec;->getTransformation()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p1}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;->getCipherTransformation()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-static {v2, v3, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v0, v1

    .line 40
    :goto_0
    check-cast v0, Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "Unwrapping secret key with cipher spec: "

    .line 47
    .line 48
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 59
    .line 60
    const-string v1, "KeyStoreBackedSecretKeyProvider:unwrapSecretKey"

    .line 61
    .line 62
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;->getWrappedKeyData()[B

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p1}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;->getAlgorithm()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0}, Lcom/microsoft/identity/common/crypto/CipherSpec;->getTransformation()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0}, Lcom/microsoft/identity/common/crypto/CipherSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {p0, p1, p2, v1, v0}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->unwrap([BLjava/lang/String;Ljava/security/KeyPair;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/SecretKey;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_2
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 90
    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v0, "No compatible cipher specs found for key pair: "

    .line 94
    .line 95
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string p2, "unknown_crypto_error"

    .line 106
    .line 107
    invoke-direct {p0, p2, p1, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw p0
.end method

.method private final wrapSecretKey(Ljavax/crypto/SecretKey;Ljava/security/KeyPair;)Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->getKeyPairCompatibleCipherSpecs(Ljava/security/KeyPair;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "Wrapping secret key with cipher spec: "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 28
    .line 29
    const-string v1, "KeyStoreBackedSecretKeyProvider:wrapSecretKey"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/microsoft/identity/common/crypto/CipherSpec;->getTransformation()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/microsoft/identity/common/crypto/CipherSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {p1, p2, v0, v1}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->wrap(Ljavax/crypto/SecretKey;Ljava/security/KeyPair;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)[B

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    new-instance v0, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/microsoft/identity/common/crypto/CipherSpec;->getTransformation()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {v0, p1, p0, p2}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_0
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 67
    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v0, "No compatible cipher specs found for key pair: "

    .line 71
    .line 72
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/4 p2, 0x0

    .line 83
    const-string v0, "unknown_crypto_error"

    .line 84
    .line 85
    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method


# virtual methods
.method public final generateNewSecretKey()Ljavax/crypto/SecretKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "KeyStoreBackedSecretKeyProvider:generateNewSecretKey"

    .line 2
    .line 3
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lqj7;->getSpanContext()Lrj7;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "SecretKeyGeneration"

    .line 12
    .line 13
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/PropertyBagUtil;->createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :try_start_0
    invoke-static {v1}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 21
    :try_start_1
    const-string v2, "AES256SecretKeyGenerator:generateRandomKey"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    :try_start_2
    const-string v3, "AES"

    .line 24
    .line 25
    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    new-instance v4, Ljava/security/SecureRandom;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 32
    .line 33
    .line 34
    const/16 v5, 0x100

    .line 35
    .line 36
    invoke-virtual {v3, v5, v4}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_3
    invoke-static {}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->readKey()Ljava/security/KeyPair;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    const-string v2, "No existing keypair found. Generating a new one."

    .line 53
    .line 54
    sget v4, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 55
    .line 56
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->generateKeyPair()Ljava/security/KeyPair;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v2}, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->wrapSecretKey(Ljavax/crypto/SecretKey;Ljava/security/KeyPair;)Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;->serialize()[B

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->keyFile:Ljava/io/File;

    .line 82
    .line 83
    invoke-static {p0, v2}, Lcom/microsoft/identity/common/java/util/FileUtil;->writeDataToFile(Ljava/io/File;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    .line 85
    .line 86
    const/4 p0, 0x0

    .line 87
    :try_start_4
    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 88
    .line 89
    .line 90
    return-object v3

    .line 91
    :catch_0
    move-exception p0

    .line 92
    goto :goto_2

    .line 93
    :catch_1
    move-exception p0

    .line 94
    :try_start_5
    new-instance v3, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 95
    .line 96
    const-string v4, "no_such_algorithm"

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-direct {v3, v4, v5, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v2, v4, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    :goto_1
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 114
    :catchall_1
    move-exception v2

    .line 115
    :try_start_7
    invoke-static {v1, p0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 119
    :catchall_2
    move-exception p0

    .line 120
    throw p0

    .line 121
    :goto_2
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 122
    .line 123
    const-string v1, "Failed to wrap secret key"

    .line 124
    .line 125
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    throw p0
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
    const-string v0, "New key is generated and cached with thumbprint: "

    .line 2
    .line 3
    const-string v1, "Key loaded from storage and cached with thumbprint: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v2, "KeyStoreBackedSecretKeyProvider:getKey"

    .line 7
    .line 8
    const-string v3, "adalks"

    .line 9
    .line 10
    sget-object v4, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->sKeyCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    sget v5, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;->a:I

    .line 13
    .line 14
    invoke-static {}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->canLoadKey()Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    iget-object v5, p0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->keyFile:Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-object v3

    .line 41
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->readSecretKeyFromStorage()Ljavax/crypto/SecretKey;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    const-string v0, "adalks"

    .line 48
    .line 49
    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-static {v3}, Lcom/microsoft/identity/common/java/crypto/key/KeyUtil;->getKeyThumbPrint(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 61
    .line 62
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return-object v3

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->generateNewSecretKey()Ljavax/crypto/SecretKey;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v3, "adalks"

    .line 74
    .line 75
    invoke-virtual {v4, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Lcom/microsoft/identity/common/java/crypto/key/KeyUtil;->getKeyThumbPrint(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 87
    .line 88
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return-object v1

    .line 93
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "KeyStoreBackedSecretKeyProvider:readSecretKeyFromStorage"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    :try_start_1
    invoke-static {}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->readKey()Ljava/security/KeyPair;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-string v1, "key does not exist in keystore"

    .line 12
    .line 13
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->deleteKey()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->keyFile:Ljava/io/File;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->sKeyCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    const-string v3, "adalks"

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-object v2

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->readRawWrappedSecretKeyFromFile()[B

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    const-string v1, "Key file is empty"

    .line 46
    .line 47
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->keyFile:Ljava/io/File;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 55
    .line 56
    .line 57
    sget-object v1, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->sKeyCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    const-string v3, "adalks"

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit p0

    .line 65
    return-object v2

    .line 66
    :cond_1
    :try_start_3
    invoke-direct {p0, v3, v1}, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->deserializeAndUnwrapSecretKey([BLjava/security/KeyPair;)Ljavax/crypto/SecretKey;

    .line 67
    .line 68
    .line 69
    move-result-object v0
    :try_end_3
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    monitor-exit p0

    .line 71
    return-object v0

    .line 72
    :goto_0
    :try_start_4
    const-string v2, "Error when loading key from Storage, wipe all existing key data "

    .line 73
    .line 74
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 75
    .line 76
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->deleteKey()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->keyFile:Ljava/io/File;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 85
    .line 86
    .line 87
    sget-object v0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;->sKeyCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    .line 89
    const-string v2, "adalks"

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    throw v1

    .line 95
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    throw v0
.end method
