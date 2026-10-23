.class public Lcom/nimbusds/jose/jwk/RSAKey$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/RSAKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alg:Lcom/nimbusds/jose/Algorithm;

.field private d:Lcom/nimbusds/jose/util/Base64URL;

.field private dp:Lcom/nimbusds/jose/util/Base64URL;

.field private dq:Lcom/nimbusds/jose/util/Base64URL;

.field private final e:Lcom/nimbusds/jose/util/Base64URL;

.field private exp:Ljava/util/Date;

.field private iat:Ljava/util/Date;

.field private kid:Ljava/lang/String;

.field private ks:Ljava/security/KeyStore;

.field private final n:Lcom/nimbusds/jose/util/Base64URL;

.field private nbf:Ljava/util/Date;

.field private ops:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field private oth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/nimbusds/jose/util/Base64URL;

.field private priv:Ljava/security/PrivateKey;

.field private q:Lcom/nimbusds/jose/util/Base64URL;

.field private qi:Lcom/nimbusds/jose/util/Base64URL;

.field private revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

.field private use:Lcom/nimbusds/jose/jwk/KeyUse;

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


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/RSAKey;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$000(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$100(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$200(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$300(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$400(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$500(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$600(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$700(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->qi:Lcom/nimbusds/jose/util/Base64URL;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$800(Lcom/nimbusds/jose/jwk/RSAKey;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->oth:Ljava/util/List;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey;->access$900(Lcom/nimbusds/jose/jwk/RSAKey;)Ljava/security/PrivateKey;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->priv:Ljava/security/PrivateKey;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->ops:Ljava/util/Set;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->kid:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertURL()Ljava/net/URI;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5u:Ljava/net/URI;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5c:Ljava/util/List;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getExpirationTime()Ljava/util/Date;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->exp:Ljava/util/Date;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getNotBeforeTime()Ljava/util/Date;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->nbf:Ljava/util/Date;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getIssueTime()Ljava/util/Date;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->iat:Ljava/util/Date;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyRevocation()Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyStore()Ljava/security/KeyStore;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->ks:Ljava/security/KeyStore;

    .line 141
    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 148
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->e:Lcom/nimbusds/jose/util/Base64URL;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 145
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->e:Lcom/nimbusds/jose/util/Base64URL;

    return-void
.end method


# virtual methods
.method public algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/jwk/RSAKey;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lcom/nimbusds/jose/jwk/RSAKey;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 10
    .line 11
    move-object v4, v3

    .line 12
    iget-object v3, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 13
    .line 14
    move-object v5, v4

    .line 15
    iget-object v4, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 16
    .line 17
    move-object v6, v5

    .line 18
    iget-object v5, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 19
    .line 20
    move-object v7, v6

    .line 21
    iget-object v6, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 22
    .line 23
    move-object v8, v7

    .line 24
    iget-object v7, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 25
    .line 26
    move-object v9, v8

    .line 27
    iget-object v8, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->qi:Lcom/nimbusds/jose/util/Base64URL;

    .line 28
    .line 29
    move-object v10, v9

    .line 30
    iget-object v9, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->oth:Ljava/util/List;

    .line 31
    .line 32
    move-object v11, v10

    .line 33
    iget-object v10, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->priv:Ljava/security/PrivateKey;

    .line 34
    .line 35
    move-object v12, v11

    .line 36
    iget-object v11, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 37
    .line 38
    move-object v13, v12

    .line 39
    iget-object v12, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->ops:Ljava/util/Set;

    .line 40
    .line 41
    move-object v14, v13

    .line 42
    iget-object v13, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 43
    .line 44
    move-object v15, v14

    .line 45
    iget-object v14, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->kid:Ljava/lang/String;

    .line 46
    .line 47
    move-object/from16 v16, v15

    .line 48
    .line 49
    iget-object v15, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5u:Ljava/net/URI;

    .line 50
    .line 51
    move-object/from16 v17, v1

    .line 52
    .line 53
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 54
    .line 55
    move-object/from16 v18, v1

    .line 56
    .line 57
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 58
    .line 59
    move-object/from16 v19, v1

    .line 60
    .line 61
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5c:Ljava/util/List;

    .line 62
    .line 63
    move-object/from16 v20, v1

    .line 64
    .line 65
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->exp:Ljava/util/Date;

    .line 66
    .line 67
    move-object/from16 v21, v1

    .line 68
    .line 69
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->nbf:Ljava/util/Date;

    .line 70
    .line 71
    move-object/from16 v22, v1

    .line 72
    .line 73
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->iat:Ljava/util/Date;

    .line 74
    .line 75
    move-object/from16 v23, v1

    .line 76
    .line 77
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->ks:Ljava/security/KeyStore;

    .line 80
    .line 81
    move-object/from16 v24, v23

    .line 82
    .line 83
    move-object/from16 v23, v0

    .line 84
    .line 85
    move-object/from16 v0, v16

    .line 86
    .line 87
    move-object/from16 v16, v18

    .line 88
    .line 89
    move-object/from16 v18, v20

    .line 90
    .line 91
    move-object/from16 v20, v22

    .line 92
    .line 93
    move-object/from16 v22, v1

    .line 94
    .line 95
    move-object/from16 v1, v17

    .line 96
    .line 97
    move-object/from16 v17, v19

    .line 98
    .line 99
    move-object/from16 v19, v21

    .line 100
    .line 101
    move-object/from16 v21, v24

    .line 102
    .line 103
    invoke-direct/range {v0 .. v23}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1, v0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    return-object v0
.end method

.method public expirationTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->exp:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public firstCRTCoefficient(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->qi:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public firstFactorCRTExponent(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public firstPrimeFactor(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public issueTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->iat:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->kid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyIDFromThumbprint()Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 50
    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    move-result-object p0

    return-object p0
.end method

.method public keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "e"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "kty"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "n"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/nimbusds/jose/jwk/ThumbprintUtils;->compute(Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/nimbusds/jose/util/Base64URL;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->kid:Ljava/lang/String;

    .line 48
    .line 49
    return-object p0
.end method

.method public keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/RSAKey$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->ops:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyRevocation(Lcom/nimbusds/jose/jwk/KeyRevocation;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->ks:Ljava/security/KeyStore;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 2
    .line 3
    return-object p0
.end method

.method public notBeforeTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->nbf:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public otherPrimes(Ljava/util/List;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/RSAKey$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->oth:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public privateExponent(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public privateKey(Ljava/security/PrivateKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 2

    .line 90
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->privateKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    .line 92
    const-string v0, "RSA"

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    const-string p0, "The private key algorithm must be RSA"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->priv:Ljava/security/PrivateKey;

    return-object p0
.end method

.method public privateKey(Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->qi:Lcom/nimbusds/jose/util/Base64URL;

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getOtherPrimeInfo()[Ljava/security/spec/RSAOtherPrimeInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;->toList([Ljava/security/spec/RSAOtherPrimeInfo;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->oth:Ljava/util/List;

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_0
    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 82
    .line 83
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->qi:Lcom/nimbusds/jose/util/Base64URL;

    .line 86
    .line 87
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->oth:Ljava/util/List;

    .line 88
    .line 89
    return-object p0
.end method

.method public privateKey(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 95
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 96
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 97
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 98
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 99
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 100
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->qi:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 102
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 103
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 104
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 105
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 106
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->qi:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public privateKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 1

    .line 107
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->privateKey(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    move-result-object p0

    return-object p0

    .line 109
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;

    if-eqz v0, :cond_1

    .line 110
    check-cast p1, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;

    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->privateKey(Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    .line 111
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0

    :cond_2
    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public secondFactorCRTExponent(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public secondPrimeFactor(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/RSAKey$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x5u:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method
