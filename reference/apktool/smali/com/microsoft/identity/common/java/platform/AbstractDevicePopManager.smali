.class public abstract Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;

.field private static final sCodeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

.field private static final sThreadExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field protected final mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

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
    sput-object v0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->UTF8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const-class v2, Ljava/lang/String;

    .line 14
    .line 15
    aput-object v2, v0, v1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const-class v1, Ljava/util/Map;

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 27
    .line 28
    .line 29
    sget-object v0, Lt14;->s:Lt14;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/ThreadLocal;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lt14;->a:Lcom/google/gson/internal/Excluder;

    .line 42
    .line 43
    new-instance v1, Ljava/util/HashMap;

    .line 44
    .line 45
    iget-object v2, v0, Lt14;->b:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lt14;->c:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-static {v1}, Lt14;->b(Ljava/util/AbstractCollection;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lt14;->d:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-static {v1}, Lt14;->b(Ljava/util/AbstractCollection;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    iget-object v0, v0, Lt14;->k:Ljava/util/ArrayDeque;

    .line 61
    .line 62
    invoke-static {v0}, Lt14;->b(Ljava/util/AbstractCollection;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x5

    .line 66
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->sThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 71
    .line 72
    invoke-static {}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->getInstance()Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sput-object v0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->sCodeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    .line 77
    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    .line 5
    .line 6
    return-void
.end method

.method public static access$000(Lcom/nimbusds/jose/jwk/RSAKey;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    sget v1, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->a:I

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->computeThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v1, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "kid"

    .line 20
    .line 21
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    sget-object v0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->UTF8:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    sget-object v0, Lcom/microsoft/identity/common/java/base64/Base64Flags;->NO_WRAP:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 38
    .line 39
    sget-object v1, Lcom/microsoft/identity/common/java/base64/Base64Flags;->URL_SAFE:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 40
    .line 41
    sget-object v2, Lcom/microsoft/identity/common/java/base64/Base64Flags;->NO_PADDING:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 42
    .line 43
    filled-new-array {v2, v0, v1}, [Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget v1, Lcom/microsoft/identity/common/java/base64/Base64Util;->a:I

    .line 48
    .line 49
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->encodeToString([B[Lcom/microsoft/identity/common/java/base64/Base64Flags;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_0
    const-string p0, "input is marked non-null but is null"

    .line 55
    .line 56
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_1
    const-string p0, "rsaKey is marked non-null but is null"

    .line 61
    .line 62
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method private getDevicePopJwkMinifiedJson()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getEntry()Ljava/security/KeyStore$Entry;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getKeyPairForEntry(Ljava/security/KeyStore$PrivateKeyEntry;)Ljava/security/KeyPair;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getRsaKeyForKeyPair(Ljava/security/KeyPair;)Lcom/nimbusds/jose/jwk/RSAKey;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->toPublicJWK()Lcom/nimbusds/jose/jwk/RSAKey;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->toJSONObject()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "jwk"

    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method private static isNegativeInternalError(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "internal Keystore code: -33"

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string p0, "AbstractDevicePopManager"

    .line 23
    .line 24
    const-string v0, "Found internal Keystore code: -33 error."

    .line 25
    .line 26
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    return v0

    .line 32
    :cond_1
    const-string p0, "t is marked non-null but is null"

    .line 33
    .line 34
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v0
.end method

.method private mintSignedHttpRequestInternal(Ljava/lang/String;JLjava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_9

    .line 2
    .line 3
    const-string v0, "AbstractDevicePopManager:mintSignedHttpRequestInternal"

    .line 4
    .line 5
    :try_start_0
    new-instance v1, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p5}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string v2, "at"

    .line 17
    .line 18
    invoke-virtual {v1, v2, p5}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claim(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :catch_1
    move-exception p1

    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :catch_2
    move-exception p1

    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :catch_3
    move-exception p1

    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_0
    :goto_0
    const-string p5, "ts"

    .line 35
    .line 36
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {v1, p5, p2}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claim(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    .line 41
    .line 42
    .line 43
    const-string p2, "u"

    .line 44
    .line 45
    invoke-virtual {p4}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {v1, p2, p3}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claim(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    .line 50
    .line 51
    .line 52
    const-string p2, "cnf"

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->getDevicePopJwkMinifiedJson()Ljava/util/HashMap;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-virtual {v1, p2, p3}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claim(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_1

    .line 70
    .line 71
    const-string p2, "p"

    .line 72
    .line 73
    invoke-virtual {p4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {v1, p2, p3}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claim(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_2

    .line 85
    .line 86
    const-string p2, "m"

    .line 87
    .line 88
    invoke-virtual {v1, p2, p1}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claim(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-static {p6}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    const-string p1, "nonce"

    .line 98
    .line 99
    invoke-virtual {v1, p1, p6}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claim(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-static {p7}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_4

    .line 107
    .line 108
    const-string p1, "client_claims"

    .line 109
    .line 110
    invoke-virtual {v1, p1, p7}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->claim(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-virtual {v1}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->build()Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p2, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getEntry()Ljava/security/KeyStore$Entry;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    check-cast p2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    new-instance p3, Lcom/nimbusds/jose/crypto/RSASSASigner;

    .line 130
    .line 131
    invoke-direct {p3, p2}, Lcom/nimbusds/jose/crypto/RSASSASigner;-><init>(Ljava/security/PrivateKey;)V

    .line 132
    .line 133
    .line 134
    new-instance p2, Lcom/nimbusds/jwt/SignedJWT;

    .line 135
    .line 136
    new-instance p4, Lcom/nimbusds/jose/JWSHeader$Builder;

    .line 137
    .line 138
    sget-object p5, Lcom/nimbusds/jose/JWSAlgorithm;->RS256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 139
    .line 140
    invoke-direct {p4, p5}, Lcom/nimbusds/jose/JWSHeader$Builder;-><init>(Lcom/nimbusds/jose/JWSAlgorithm;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->getAsymmetricKeyThumbprint()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p5

    .line 147
    invoke-virtual {p4, p5}, Lcom/nimbusds/jose/JWSHeader$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/JWSHeader$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object p4

    .line 151
    invoke-virtual {p4}, Lcom/nimbusds/jose/JWSHeader$Builder;->build()Lcom/nimbusds/jose/JWSHeader;

    .line 152
    .line 153
    .line 154
    move-result-object p4

    .line 155
    invoke-direct {p2, p4, p1}, Lcom/nimbusds/jwt/SignedJWT;-><init>(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jwt/JWTClaimsSet;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p3}, Lcom/nimbusds/jose/JWSObject;->sign(Lcom/nimbusds/jose/JWSSigner;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/nimbusds/jose/JWSObject;->serialize()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-object p0

    .line 166
    :goto_1
    const-string p2, "protection_params_invalid"

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :goto_2
    invoke-static {p1}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->isNegativeInternalError(Ljava/lang/Throwable;)Z

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    if-nez p2, :cond_6

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    if-eqz p2, :cond_5

    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-static {p2}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->isNegativeInternalError(Ljava/lang/Throwable;)Z

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-nez p2, :cond_6

    .line 190
    .line 191
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    if-eqz p2, :cond_7

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-static {p2}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->isNegativeInternalError(Ljava/lang/Throwable;)Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-eqz p2, :cond_7

    .line 214
    .line 215
    :cond_6
    const-string p2, "Getting Invalid key blob, Invalid private RSA key."

    .line 216
    .line 217
    invoke-static {v0, p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    const-string p2, "Unable to access asymmetric key, clearing the key."

    .line 221
    .line 222
    invoke-static {v0, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->clearAsymmetricKey()V

    .line 226
    .line 227
    .line 228
    const-string p2, "Generating new PoP asymmetric key."

    .line 229
    .line 230
    invoke-static {v0, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->generateAsymmetricKey()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    const-string p3, "Generated new PoP asymmetric key."

    .line 238
    .line 239
    invoke-static {v0, p3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    new-instance p3, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string p4, "Generated new PoP asymmetric key with thumbprint: "

    .line 245
    .line 246
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    invoke-static {v0, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_7
    const-string p2, "failed_to_sign_jwt"

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :goto_3
    const-string p2, "keystore_not_initialized"

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :goto_4
    const-string p2, "no_such_algorithm"

    .line 266
    .line 267
    :goto_5
    check-cast p0, Lcom/microsoft/identity/common/internal/platform/AndroidDevicePopManager;

    .line 268
    .line 269
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 270
    .line 271
    .line 272
    move-result-object p3

    .line 273
    instance-of p3, p3, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    .line 274
    .line 275
    if-eqz p3, :cond_8

    .line 276
    .line 277
    sget p3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 278
    .line 279
    const-string p3, "AndroidDevicePopManager:performCleanupIfMintShrFails"

    .line 280
    .line 281
    const-string p4, "Unable to access asymmetric key - clearing."

    .line 282
    .line 283
    invoke-static {p3, p4}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->clearAsymmetricKey()V

    .line 287
    .line 288
    .line 289
    :cond_8
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 290
    .line 291
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p3

    .line 295
    invoke-direct {p0, p2, p3, p1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-static {v0, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    .line 304
    .line 305
    throw p0

    .line 306
    :cond_9
    const-string p0, "requestUrl is marked non-null but is null"

    .line 307
    .line 308
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    const/4 p0, 0x0

    .line 312
    return-object p0
.end method


# virtual methods
.method public final asymmetricKeyExists()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final clearAsymmetricKey()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->clear()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final generateAsymmetricKey()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->sCodeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->generateNewRsaKeyPair()Ljava/security/KeyPair;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getRsaKeyForKeyPair(Ljava/security/KeyPair;)Lcom/nimbusds/jose/jwk/RSAKey;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->computeThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 26
    .line 27
    const-string v1, "rsaKey is marked non-null but is null"

    .line 28
    .line 29
    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_8

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :catch_2
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :catch_3
    move-exception p0

    .line 42
    goto :goto_4

    .line 43
    :catch_4
    move-exception p0

    .line 44
    goto :goto_5

    .line 45
    :catch_5
    move-exception p0

    .line 46
    goto :goto_6

    .line 47
    :goto_0
    :try_start_1
    const-string v1, "keystore_not_initialized"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    goto :goto_7

    .line 53
    :goto_2
    :try_start_2
    const-string v1, "failed_to_compute_thumbprint_with_sha256"

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :goto_3
    const-string v1, "keystore_initialization_failed"

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :goto_4
    const-string v1, "android_keystore_unavailable"

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :goto_5
    const-string v1, "no_such_algorithm"

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :goto_6
    const-string v1, "keystore_produced_invalid_cert"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_7
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string v1, "AbstractDevicePopManager:generateAsymmetricKey"

    .line 82
    .line 83
    invoke-static {v1, p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public abstract generateNewRsaKeyPair()Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lcom/microsoft/identity/common/java/exception/ClientException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public final getAsymmetricKeyThumbprint()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->mKeyManager:Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;->getThumbprint()[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v1, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->UTF8:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final getRequestConfirmation()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-array v2, v1, [Ljava/lang/String;

    .line 8
    .line 9
    new-array v1, v1, [Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 10
    .line 11
    new-instance v3, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;

    .line 12
    .line 13
    invoke-direct {v3, v2, v0, v1}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;-><init>([Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;[Lcom/microsoft/identity/common/java/exception/ClientException;)V

    .line 14
    .line 15
    .line 16
    new-instance v4, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;

    .line 17
    .line 18
    invoke-direct {v4, p0, v3}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$3;-><init>(Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->sThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    invoke-interface {p0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    aget-object v0, v2, p0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    aget-object p0, v1, p0

    .line 36
    .line 37
    throw p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string v0, "Interrupted while waiting on callback."

    .line 40
    .line 41
    const-string v1, "AbstractDevicePopManager:getRequestConfirmation"

    .line 42
    .line 43
    invoke-static {v1, v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 47
    .line 48
    const-string v1, "operation_interrupted"

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public final mintSignedAccessToken(Ljava/lang/String;JLjava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    const-string v0, "DevicePopMintSignedAccessToken"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createSpan(Ljava/lang/String;)Lr86;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->mintSignedHttpRequestInternal(Ljava/lang/String;JLjava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    move-object p0, v0

    .line 23
    :try_start_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_1
    move-exception v0

    .line 28
    move-object p1, v0

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    throw p0

    .line 33
    :cond_0
    const-string p0, "requestUrl is marked non-null but is null"

    .line 34
    .line 35
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method
