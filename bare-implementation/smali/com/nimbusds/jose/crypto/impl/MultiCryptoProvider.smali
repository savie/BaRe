.class public abstract Lcom/nimbusds/jose/crypto/impl/MultiCryptoProvider;
.super Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final COMPATIBLE_ALGORITHMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_ALGORITHMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_ELLIPTIC_CURVES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
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
    .locals 10

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 2
    .line 3
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/MultiCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/nimbusds/jose/JWEAlgorithm;->A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    sget-object v3, Lcom/nimbusds/jose/JWEAlgorithm;->A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 25
    .line 26
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    sget-object v4, Lcom/nimbusds/jose/JWEAlgorithm;->A128GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 30
    .line 31
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    sget-object v5, Lcom/nimbusds/jose/JWEAlgorithm;->A192GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 35
    .line 36
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    sget-object v6, Lcom/nimbusds/jose/JWEAlgorithm;->A256GCMKW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 40
    .line 41
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    sget-object v7, Lcom/nimbusds/jose/JWEAlgorithm;->DIR:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 45
    .line 46
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    sget-object v7, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 50
    .line 51
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    sget-object v7, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 55
    .line 56
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    sget-object v7, Lcom/nimbusds/jose/JWEAlgorithm;->ECDH_ES_A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 60
    .line 61
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    sget-object v7, Lcom/nimbusds/jose/JWEAlgorithm;->RSA1_5:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 65
    .line 66
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    sget-object v7, Lcom/nimbusds/jose/JWEAlgorithm;->RSA_OAEP:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 70
    .line 71
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    sget-object v7, Lcom/nimbusds/jose/JWEAlgorithm;->RSA_OAEP_256:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 75
    .line 76
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    sget-object v7, Lcom/nimbusds/jose/JWEAlgorithm;->RSA_OAEP_384:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 80
    .line 81
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    sget-object v7, Lcom/nimbusds/jose/JWEAlgorithm;->RSA_OAEP_512:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 85
    .line 86
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/MultiCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 94
    .line 95
    new-instance v0, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v7, Ljava/util/HashSet;

    .line 101
    .line 102
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 103
    .line 104
    .line 105
    new-instance v8, Ljava/util/HashSet;

    .line 106
    .line 107
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 108
    .line 109
    .line 110
    new-instance v9, Ljava/util/HashSet;

    .line 111
    .line 112
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    const/16 v1, 0x80

    .line 134
    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    const/16 v1, 0xc0

    .line 147
    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    const/16 v1, 0x100

    .line 160
    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/MultiCryptoProvider;->COMPATIBLE_ALGORITHMS:Ljava/util/Map;

    .line 177
    .line 178
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 179
    .line 180
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 181
    .line 182
    .line 183
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    .line 184
    .line 185
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    .line 189
    .line 190
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    .line 194
    .line 195
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 199
    .line 200
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sput-object v0, Lcom/nimbusds/jose/crypto/impl/MultiCryptoProvider;->SUPPORTED_ELLIPTIC_CURVES:Ljava/util/Set;

    .line 208
    .line 209
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/MultiCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 2
    .line 3
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;-><init>(Ljava/util/Set;Ljava/util/Set;Ljavax/crypto/SecretKey;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public supportedEllipticCurves()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/nimbusds/jose/crypto/impl/MultiCryptoProvider;->SUPPORTED_ELLIPTIC_CURVES:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method
