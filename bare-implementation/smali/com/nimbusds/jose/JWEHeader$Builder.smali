.class public Lcom/nimbusds/jose/JWEHeader$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/JWEHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alg:Lcom/nimbusds/jose/JWEAlgorithm;

.field private apu:Lcom/nimbusds/jose/util/Base64URL;

.field private apv:Lcom/nimbusds/jose/util/Base64URL;

.field private aud:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private crit:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cty:Ljava/lang/String;

.field private customParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final enc:Lcom/nimbusds/jose/EncryptionMethod;

.field private epk:Lcom/nimbusds/jose/jwk/JWK;

.field private iss:Ljava/lang/String;

.field private iv:Lcom/nimbusds/jose/util/Base64URL;

.field private jku:Ljava/net/URI;

.field private jwk:Lcom/nimbusds/jose/jwk/JWK;

.field private kid:Ljava/lang/String;

.field private p2c:I

.field private p2s:Lcom/nimbusds/jose/util/Base64URL;

.field private parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

.field private skid:Ljava/lang/String;

.field private sub:Ljava/lang/String;

.field private tag:Lcom/nimbusds/jose/util/Base64URL;

.field private typ:Lcom/nimbusds/jose/JOSEObjectType;

.field private x5c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation
.end field

.field private x5t:Lcom/nimbusds/jose/util/Base64URL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private x5t256:Lcom/nimbusds/jose/util/Base64URL;

.field private x5u:Ljava/net/URI;

.field private zip:Lcom/nimbusds/jose/CompressionAlgorithm;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/EncryptionMethod;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->enc:Lcom/nimbusds/jose/EncryptionMethod;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/JWEAlgorithm;Lcom/nimbusds/jose/EncryptionMethod;)V
    .locals 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-virtual {p1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/Algorithm;->NONE:Lcom/nimbusds/jose/Algorithm;

    invoke-virtual {v1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->alg:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 164
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->enc:Lcom/nimbusds/jose/EncryptionMethod;

    return-void

    .line 165
    :cond_0
    const-string p0, "The JWE algorithm \"alg\" cannot be \"none\""

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/nimbusds/jose/JWEHeader;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JWEHeader$Builder;-><init>(Lcom/nimbusds/jose/EncryptionMethod;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->alg:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getContentType()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->cty:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getCriticalParams()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->crit:Ljava/util/Set;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getCustomParams()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->customParams:Ljava/util/Map;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getJWKURL()Ljava/net/URI;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->jku:Ljava/net/URI;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getJWK()Lcom/nimbusds/jose/jwk/JWK;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertURL()Ljava/net/URI;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5u:Ljava/net/URI;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertChain()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5c:Ljava/util/List;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getKeyID()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->kid:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEphemeralPublicKey()Lcom/nimbusds/jose/jwk/JWK;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->epk:Lcom/nimbusds/jose/jwk/JWK;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getCompressionAlgorithm()Lcom/nimbusds/jose/CompressionAlgorithm;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->zip:Lcom/nimbusds/jose/CompressionAlgorithm;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAgreementPartyUInfo()Lcom/nimbusds/jose/util/Base64URL;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->apu:Lcom/nimbusds/jose/util/Base64URL;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAgreementPartyVInfo()Lcom/nimbusds/jose/util/Base64URL;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->apv:Lcom/nimbusds/jose/util/Base64URL;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Salt()Lcom/nimbusds/jose/util/Base64URL;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->p2s:Lcom/nimbusds/jose/util/Base64URL;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Count()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iput v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->p2c:I

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getIV()Lcom/nimbusds/jose/util/Base64URL;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAuthTag()Lcom/nimbusds/jose/util/Base64URL;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->tag:Lcom/nimbusds/jose/util/Base64URL;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getSenderKeyID()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->skid:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getIssuer()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->iss:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getSubject()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->sub:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAudience()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->aud:Ljava/util/List;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getCustomParams()Ljava/util/Map;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->customParams:Ljava/util/Map;

    .line 157
    .line 158
    return-void
.end method


# virtual methods
.method public agreementPartyUInfo(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->apu:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public agreementPartyVInfo(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->apv:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public alg(Lcom/nimbusds/jose/JWEAlgorithm;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->alg:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 2
    .line 3
    return-object p0
.end method

.method public audience(Ljava/util/List;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nimbusds/jose/JWEHeader$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->aud:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public authTag(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->tag:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/JWEHeader;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/nimbusds/jose/JWEHeader;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->alg:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->enc:Lcom/nimbusds/jose/EncryptionMethod;

    .line 10
    .line 11
    move-object v4, v3

    .line 12
    iget-object v3, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    .line 13
    .line 14
    move-object v5, v4

    .line 15
    iget-object v4, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->cty:Ljava/lang/String;

    .line 16
    .line 17
    move-object v6, v5

    .line 18
    iget-object v5, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->crit:Ljava/util/Set;

    .line 19
    .line 20
    move-object v7, v6

    .line 21
    iget-object v6, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->jku:Ljava/net/URI;

    .line 22
    .line 23
    move-object v8, v7

    .line 24
    iget-object v7, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 25
    .line 26
    move-object v9, v8

    .line 27
    iget-object v8, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5u:Ljava/net/URI;

    .line 28
    .line 29
    move-object v10, v9

    .line 30
    iget-object v9, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 31
    .line 32
    move-object v11, v10

    .line 33
    iget-object v10, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 34
    .line 35
    move-object v12, v11

    .line 36
    iget-object v11, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5c:Ljava/util/List;

    .line 37
    .line 38
    move-object v13, v12

    .line 39
    iget-object v12, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->kid:Ljava/lang/String;

    .line 40
    .line 41
    move-object v14, v13

    .line 42
    iget-object v13, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->epk:Lcom/nimbusds/jose/jwk/JWK;

    .line 43
    .line 44
    move-object v15, v14

    .line 45
    iget-object v14, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->zip:Lcom/nimbusds/jose/CompressionAlgorithm;

    .line 46
    .line 47
    move-object/from16 v16, v15

    .line 48
    .line 49
    iget-object v15, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->apu:Lcom/nimbusds/jose/util/Base64URL;

    .line 50
    .line 51
    move-object/from16 v17, v1

    .line 52
    .line 53
    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->apv:Lcom/nimbusds/jose/util/Base64URL;

    .line 54
    .line 55
    move-object/from16 v18, v1

    .line 56
    .line 57
    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->p2s:Lcom/nimbusds/jose/util/Base64URL;

    .line 58
    .line 59
    move-object/from16 v19, v1

    .line 60
    .line 61
    iget v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->p2c:I

    .line 62
    .line 63
    move/from16 v20, v1

    .line 64
    .line 65
    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 66
    .line 67
    move-object/from16 v21, v1

    .line 68
    .line 69
    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->tag:Lcom/nimbusds/jose/util/Base64URL;

    .line 70
    .line 71
    move-object/from16 v22, v1

    .line 72
    .line 73
    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->skid:Ljava/lang/String;

    .line 74
    .line 75
    move-object/from16 v23, v1

    .line 76
    .line 77
    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->iss:Ljava/lang/String;

    .line 78
    .line 79
    move-object/from16 v24, v1

    .line 80
    .line 81
    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->sub:Ljava/lang/String;

    .line 82
    .line 83
    move-object/from16 v25, v1

    .line 84
    .line 85
    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->aud:Ljava/util/List;

    .line 86
    .line 87
    move-object/from16 v26, v1

    .line 88
    .line 89
    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->customParams:Ljava/util/Map;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 92
    .line 93
    move-object/from16 v27, v26

    .line 94
    .line 95
    move-object/from16 v26, v0

    .line 96
    .line 97
    move-object/from16 v0, v16

    .line 98
    .line 99
    move-object/from16 v16, v18

    .line 100
    .line 101
    move/from16 v18, v20

    .line 102
    .line 103
    move-object/from16 v20, v22

    .line 104
    .line 105
    move-object/from16 v22, v24

    .line 106
    .line 107
    move-object/from16 v24, v27

    .line 108
    .line 109
    move-object/from16 v27, v25

    .line 110
    .line 111
    move-object/from16 v25, v1

    .line 112
    .line 113
    move-object/from16 v1, v17

    .line 114
    .line 115
    move-object/from16 v17, v19

    .line 116
    .line 117
    move-object/from16 v19, v21

    .line 118
    .line 119
    move-object/from16 v21, v23

    .line 120
    .line 121
    move-object/from16 v23, v27

    .line 122
    .line 123
    invoke-direct/range {v0 .. v26}, Lcom/nimbusds/jose/JWEHeader;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/EncryptionMethod;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Lcom/nimbusds/jose/jwk/JWK;Lcom/nimbusds/jose/CompressionAlgorithm;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;ILcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 124
    .line 125
    .line 126
    return-object v0
.end method

.method public compressionAlgorithm(Lcom/nimbusds/jose/CompressionAlgorithm;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->zip:Lcom/nimbusds/jose/CompressionAlgorithm;

    .line 2
    .line 3
    return-object p0
.end method

.method public contentType(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->cty:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public criticalParams(Ljava/util/Set;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nimbusds/jose/JWEHeader$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->crit:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public customParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/JWEHeader;->getRegisteredParameterNames()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->customParams:Ljava/util/Map;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->customParams:Ljava/util/Map;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->customParams:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    const-string p0, "The parameter name \""

    .line 29
    .line 30
    const-string p2, "\" matches a registered name"

    .line 31
    .line 32
    invoke-static {p0, p1, p2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public customParams(Ljava/util/Map;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/JWEHeader$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->customParams:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public ephemeralPublicKey(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->epk:Lcom/nimbusds/jose/jwk/JWK;

    .line 2
    .line 3
    return-object p0
.end method

.method public issuer(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->iss:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public iv(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public jwk(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "The JWK must be public"

    .line 11
    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 18
    .line 19
    return-object p0
.end method

.method public jwkURL(Ljava/net/URI;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->jku:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->kid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public parsedBase64URL(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public pbes2Count(I)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->p2c:I

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "The PBES2 count parameter must not be negative"

    .line 7
    .line 8
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public pbes2Salt(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->p2s:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public senderKeyID(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->skid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public subject(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->sub:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public type(Lcom/nimbusds/jose/JOSEObjectType;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;)",
            "Lcom/nimbusds/jose/JWEHeader$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5u:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method
