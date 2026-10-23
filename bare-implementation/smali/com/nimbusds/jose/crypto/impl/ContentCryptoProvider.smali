.class public Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final COMPATIBLE_ENCRYPTION_METHODS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    .line 12
    .line 13
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    sget-object v3, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

    .line 17
    .line 18
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    sget-object v4, Lcom/nimbusds/jose/EncryptionMethod;->A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 22
    .line 23
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    sget-object v5, Lcom/nimbusds/jose/EncryptionMethod;->A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 27
    .line 28
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    sget-object v6, Lcom/nimbusds/jose/EncryptionMethod;->A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 32
    .line 33
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    sget-object v7, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    .line 37
    .line 38
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    sget-object v8, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    .line 42
    .line 43
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    sget-object v9, Lcom/nimbusds/jose/EncryptionMethod;->XC20P:Lcom/nimbusds/jose/EncryptionMethod;

    .line 47
    .line 48
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 56
    .line 57
    new-instance v0, Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v10, Ljava/util/HashSet;

    .line 63
    .line 64
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v11, Ljava/util/HashSet;

    .line 68
    .line 69
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v12, Ljava/util/HashSet;

    .line 73
    .line 74
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v13, Ljava/util/HashSet;

    .line 78
    .line 79
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v14, Ljava/util/HashSet;

    .line 83
    .line 84
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {v11, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {v12, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    invoke-virtual {v12, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual {v13, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    invoke-virtual {v14, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {v14, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    const/16 v1, 0x80

    .line 115
    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    const/16 v1, 0xc0

    .line 128
    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    const/16 v1, 0x100

    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    const/16 v1, 0x180

    .line 154
    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    const/16 v1, 0x200

    .line 167
    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->COMPATIBLE_ENCRYPTION_METHODS:Ljava/util/Map;

    .line 184
    .line 185
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static checkCEKLength(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Lcom/nimbusds/jose/util/IntegerOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, p0, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    new-instance p0, Lcom/nimbusds/jose/KeyLengthException;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "The Content Encryption Key (CEK) length for "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const-string v1, " must be "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, " bits"

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Lcom/nimbusds/jose/KeyLengthException;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "The Content Encryption Key (CEK) is too long: "

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method public static decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/jca/JWEJCAContext;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 247
    invoke-static/range {v0 .. v7}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->decrypt(Lcom/nimbusds/jose/JWEHeader;[BLcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/jca/JWEJCAContext;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decrypt(Lcom/nimbusds/jose/JWEHeader;[BLcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/jca/JWEJCAContext;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static/range {p0 .. p7}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->decrypt(Lcom/nimbusds/jose/JWEHeader;[BLcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/jca/JWEJCAContext;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p6, v0}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->checkCEKLength(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    :cond_1
    move-object v0, p0

    .line 56
    move-object v3, p3

    .line 57
    move-object p0, p6

    .line 58
    move-object p3, p1

    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Lcom/nimbusds/jose/EncryptionMethod;->A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_7

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget-object v1, Lcom/nimbusds/jose/EncryptionMethod;->A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_7

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget-object v1, Lcom/nimbusds/jose/EncryptionMethod;->A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    move-object v0, p0

    .line 98
    move-object v3, p3

    .line 99
    move-object p0, p6

    .line 100
    :goto_0
    move-object p3, p1

    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sget-object v1, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_6

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sget-object v1, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    sget-object p7, Lcom/nimbusds/jose/EncryptionMethod;->XC20P:Lcom/nimbusds/jose/EncryptionMethod;

    .line 133
    .line 134
    invoke-virtual {p2, p7}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_5

    .line 139
    .line 140
    invoke-virtual {p3}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p4}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    invoke-virtual {p5}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    invoke-static {p6, p2, p3, p1, p4}, Lcom/nimbusds/jose/crypto/impl/XC20P;->decryptAuthenticated(Ljavax/crypto/SecretKey;[B[B[B[B)[B

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    move-object v0, p0

    .line 157
    goto :goto_4

    .line 158
    :cond_5
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    sget-object p2, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 165
    .line 166
    invoke-static {p0, p2}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedEncryptionMethod(Lcom/nimbusds/jose/EncryptionMethod;Ljava/util/Collection;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1

    .line 174
    :cond_6
    :goto_1
    invoke-virtual {p7}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getContentEncryptionProvider()Ljava/security/Provider;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {p7}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getMACProvider()Ljava/security/Provider;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    move-object v0, p0

    .line 183
    move-object v2, p2

    .line 184
    move-object v3, p3

    .line 185
    move-object v4, p4

    .line 186
    move-object v5, p5

    .line 187
    move-object v1, p6

    .line 188
    invoke-static/range {v0 .. v7}, Lcom/nimbusds/jose/crypto/impl/AESCBC;->decryptWithConcatKDF(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/security/Provider;Ljava/security/Provider;)[B

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    goto :goto_4

    .line 193
    :cond_7
    move-object v0, p0

    .line 194
    move-object p0, p6

    .line 195
    move-object v3, p3

    .line 196
    goto :goto_0

    .line 197
    :goto_2
    invoke-virtual {v3}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p4}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p5}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 206
    .line 207
    .line 208
    move-result-object p4

    .line 209
    invoke-virtual {p7}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getContentEncryptionProvider()Ljava/security/Provider;

    .line 210
    .line 211
    .line 212
    move-result-object p5

    .line 213
    invoke-static/range {p0 .. p5}, Lcom/nimbusds/jose/crypto/impl/AESGCM;->decrypt(Ljavax/crypto/SecretKey;[B[B[B[BLjava/security/Provider;)[B

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    goto :goto_4

    .line 218
    :goto_3
    invoke-virtual {v3}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p4}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    invoke-virtual {p5}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 227
    .line 228
    .line 229
    move-result-object p4

    .line 230
    invoke-virtual {p7}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getContentEncryptionProvider()Ljava/security/Provider;

    .line 231
    .line 232
    .line 233
    move-result-object p5

    .line 234
    invoke-virtual {p7}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getMACProvider()Ljava/security/Provider;

    .line 235
    .line 236
    .line 237
    move-result-object p6

    .line 238
    invoke-static/range {p0 .. p6}, Lcom/nimbusds/jose/crypto/impl/AESCBC;->decryptAuthenticated(Ljavax/crypto/SecretKey;[B[B[B[BLjava/security/Provider;Ljava/security/Provider;)[B

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    :goto_4
    invoke-static {v0, p1}, Lcom/nimbusds/jose/crypto/impl/DeflateHelper;->applyDecompression(Lcom/nimbusds/jose/JWEHeader;[B)[B

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    return-object p0
.end method

.method public static encrypt(Lcom/nimbusds/jose/JWEHeader;[BLjavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jca/JWEJCAContext;)Lcom/nimbusds/jose/JWECryptoParts;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 276
    invoke-static/range {v0 .. v5}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->encrypt(Lcom/nimbusds/jose/JWEHeader;[B[BLjavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jca/JWEJCAContext;)Lcom/nimbusds/jose/JWECryptoParts;

    move-result-object p0

    return-object p0
.end method

.method public static encrypt(Lcom/nimbusds/jose/JWEHeader;[B[BLjavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jca/JWEJCAContext;)Lcom/nimbusds/jose/JWECryptoParts;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static/range {p0 .. p5}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->encrypt(Lcom/nimbusds/jose/JWEHeader;[B[BLjavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jca/JWEJCAContext;)Lcom/nimbusds/jose/JWECryptoParts;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    move-object v2, p4

    .line 13
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    invoke-static {p3, p4}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->checkCEKLength(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/EncryptionMethod;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/nimbusds/jose/crypto/impl/DeflateHelper;->applyCompression(Lcom/nimbusds/jose/JWEHeader;[B)[B

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object p4, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    .line 29
    .line 30
    invoke-virtual {p1, p4}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object p4, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    .line 41
    .line 42
    invoke-virtual {p1, p4}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget-object p4, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

    .line 53
    .line 54
    invoke-virtual {p1, p4}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    :cond_1
    move-object v0, p0

    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget-object p4, Lcom/nimbusds/jose/EncryptionMethod;->A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 68
    .line 69
    invoke-virtual {p1, p4}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    sget-object p4, Lcom/nimbusds/jose/EncryptionMethod;->A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 80
    .line 81
    invoke-virtual {p1, p4}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    sget-object p4, Lcom/nimbusds/jose/EncryptionMethod;->A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 92
    .line 93
    invoke-virtual {p1, p4}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    :cond_3
    move-object v0, p0

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    sget-object p4, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    .line 106
    .line 107
    invoke-virtual {p1, p4}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_7

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    sget-object p4, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    .line 118
    .line 119
    invoke-virtual {p1, p4}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    sget-object p4, Lcom/nimbusds/jose/EncryptionMethod;->XC20P:Lcom/nimbusds/jose/EncryptionMethod;

    .line 131
    .line 132
    invoke-virtual {p1, p4}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    new-instance p1, Lcom/nimbusds/jose/util/Container;

    .line 139
    .line 140
    const/4 p4, 0x0

    .line 141
    invoke-direct {p1, p4}, Lcom/nimbusds/jose/util/Container;-><init>(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p3, p1, v4, p2}, Lcom/nimbusds/jose/crypto/impl/XC20P;->encryptAuthenticated(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Container;[B[B)Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p1}, Lcom/nimbusds/jose/util/Container;->get()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, [B

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_6
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    sget-object p2, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 162
    .line 163
    invoke-static {p0, p2}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedEncryptionMethod(Lcom/nimbusds/jose/EncryptionMethod;Ljava/util/Collection;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_7
    :goto_0
    invoke-virtual {p5}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AESCBC;->generateIV(Ljava/security/SecureRandom;)[B

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {p5}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getContentEncryptionProvider()Ljava/security/Provider;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {p5}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getMACProvider()Ljava/security/Provider;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    move-object v0, p0

    .line 188
    move-object v1, p3

    .line 189
    invoke-static/range {v0 .. v6}, Lcom/nimbusds/jose/crypto/impl/AESCBC;->encryptWithConcatKDF(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;[B[BLjava/security/Provider;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    move-object p1, v3

    .line 194
    goto :goto_4

    .line 195
    :goto_1
    new-instance p0, Lcom/nimbusds/jose/util/Container;

    .line 196
    .line 197
    invoke-virtual {p5}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AESGCM;->generateIV(Ljava/security/SecureRandom;)[B

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/util/Container;-><init>(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p5}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getContentEncryptionProvider()Ljava/security/Provider;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {p3, p0, v4, p2, p1}, Lcom/nimbusds/jose/crypto/impl/AESGCM;->encrypt(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Container;[B[BLjava/security/Provider;)Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Container;->get()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    move-object p1, p0

    .line 221
    check-cast p1, [B

    .line 222
    .line 223
    :goto_2
    move-object p0, v0

    .line 224
    goto :goto_4

    .line 225
    :goto_3
    invoke-virtual {p5}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-static {p0}, Lcom/nimbusds/jose/crypto/impl/AESCBC;->generateIV(Ljava/security/SecureRandom;)[B

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p5}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getContentEncryptionProvider()Ljava/security/Provider;

    .line 234
    .line 235
    .line 236
    move-result-object p4

    .line 237
    invoke-virtual {p5}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getMACProvider()Ljava/security/Provider;

    .line 238
    .line 239
    .line 240
    move-result-object p5

    .line 241
    move-object p0, p3

    .line 242
    move-object p3, p2

    .line 243
    move-object p2, v4

    .line 244
    invoke-static/range {p0 .. p5}, Lcom/nimbusds/jose/crypto/impl/AESCBC;->encryptAuthenticated(Ljavax/crypto/SecretKey;[B[B[BLjava/security/Provider;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    goto :goto_2

    .line 249
    :goto_4
    new-instance v0, Lcom/nimbusds/jose/JWECryptoParts;

    .line 250
    .line 251
    invoke-static {p1}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {p2}, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->getCipherText()[B

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-static {p1}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {p2}, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->getAuthenticationTag()[B

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-static {p1}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    move-object v1, p0

    .line 272
    invoke-direct/range {v0 .. v5}, Lcom/nimbusds/jose/JWECryptoParts;-><init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 273
    .line 274
    .line 275
    return-object v0
.end method

.method public static generateCEK(Lcom/nimbusds/jose/EncryptionMethod;Ljava/security/SecureRandom;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->byteLength(I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    new-array p0, p0, [B

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 23
    .line 24
    const-string v0, "AES"

    .line 25
    .line 26
    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 31
    .line 32
    invoke-static {p0, v0}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedEncryptionMethod(Lcom/nimbusds/jose/EncryptionMethod;Ljava/util/Collection;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method
