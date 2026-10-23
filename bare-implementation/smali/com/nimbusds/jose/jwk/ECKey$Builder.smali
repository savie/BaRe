.class public Lcom/nimbusds/jose/jwk/ECKey$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/ECKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alg:Lcom/nimbusds/jose/Algorithm;

.field private final crv:Lcom/nimbusds/jose/jwk/Curve;

.field private d:Lcom/nimbusds/jose/util/Base64URL;

.field private exp:Ljava/util/Date;

.field private iat:Ljava/util/Date;

.field private kid:Ljava/lang/String;

.field private ks:Ljava/security/KeyStore;

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

.field private priv:Ljava/security/PrivateKey;

.field private revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

.field private use:Lcom/nimbusds/jose/jwk/KeyUse;

.field private final x:Lcom/nimbusds/jose/util/Base64URL;

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

.field private final y:Lcom/nimbusds/jose/util/Base64URL;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string v0, "The curve must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 118
    const-string p1, "The x coordinate must not be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 119
    const-string p1, "The y coordinate must not be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->y:Lcom/nimbusds/jose/util/Base64URL;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;Ljava/security/interfaces/ECPublicKey;)V
    .locals 2

    .line 113
    invoke-interface {p2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nimbusds/jose/jwk/ECKey;->encodeCoordinate(ILjava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    .line 114
    invoke-interface {p2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v1

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/nimbusds/jose/jwk/ECKey;->encodeCoordinate(ILjava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p2

    .line 115
    invoke-direct {p0, p1, v0, p2}, Lcom/nimbusds/jose/jwk/ECKey$Builder;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/ECKey;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/ECKey;->access$000(Lcom/nimbusds/jose/jwk/ECKey;)Lcom/nimbusds/jose/jwk/Curve;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/ECKey;->access$100(Lcom/nimbusds/jose/jwk/ECKey;)Lcom/nimbusds/jose/util/Base64URL;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/ECKey;->access$200(Lcom/nimbusds/jose/jwk/ECKey;)Lcom/nimbusds/jose/util/Base64URL;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->y:Lcom/nimbusds/jose/util/Base64URL;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/ECKey;->access$300(Lcom/nimbusds/jose/jwk/ECKey;)Lcom/nimbusds/jose/util/Base64URL;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/ECKey;->access$400(Lcom/nimbusds/jose/jwk/ECKey;)Ljava/security/PrivateKey;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->priv:Ljava/security/PrivateKey;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ops:Ljava/util/Set;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->kid:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertURL()Ljava/net/URI;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5u:Ljava/net/URI;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5c:Ljava/util/List;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getExpirationTime()Ljava/util/Date;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->exp:Ljava/util/Date;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getNotBeforeTime()Ljava/util/Date;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->nbf:Ljava/util/Date;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getIssueTime()Ljava/util/Date;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->iat:Ljava/util/Date;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyRevocation()Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyStore()Ljava/security/KeyStore;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ks:Ljava/security/KeyStore;

    .line 111
    .line 112
    return-void
.end method


# virtual methods
.method public algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/jwk/ECKey;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->priv:Ljava/security/PrivateKey;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v2, Lcom/nimbusds/jose/jwk/ECKey;

    .line 12
    .line 13
    iget-object v3, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 14
    .line 15
    iget-object v4, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 16
    .line 17
    iget-object v5, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->y:Lcom/nimbusds/jose/util/Base64URL;

    .line 18
    .line 19
    iget-object v6, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 20
    .line 21
    iget-object v7, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ops:Ljava/util/Set;

    .line 22
    .line 23
    iget-object v8, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 24
    .line 25
    iget-object v9, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->kid:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v10, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5u:Ljava/net/URI;

    .line 28
    .line 29
    iget-object v11, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 30
    .line 31
    iget-object v12, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 32
    .line 33
    iget-object v13, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5c:Ljava/util/List;

    .line 34
    .line 35
    iget-object v14, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->exp:Ljava/util/Date;

    .line 36
    .line 37
    iget-object v15, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->nbf:Ljava/util/Date;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->iat:Ljava/util/Date;

    .line 40
    .line 41
    move-object/from16 v16, v1

    .line 42
    .line 43
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ks:Ljava/security/KeyStore;

    .line 46
    .line 47
    move-object/from16 v18, v0

    .line 48
    .line 49
    move-object/from16 v17, v1

    .line 50
    .line 51
    invoke-direct/range {v2 .. v18}, Lcom/nimbusds/jose/jwk/ECKey;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    .line 52
    .line 53
    .line 54
    return-object v2

    .line 55
    :cond_0
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->priv:Ljava/security/PrivateKey;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    new-instance v2, Lcom/nimbusds/jose/jwk/ECKey;

    .line 60
    .line 61
    iget-object v3, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 62
    .line 63
    iget-object v4, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 64
    .line 65
    iget-object v5, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->y:Lcom/nimbusds/jose/util/Base64URL;

    .line 66
    .line 67
    iget-object v6, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->priv:Ljava/security/PrivateKey;

    .line 68
    .line 69
    iget-object v7, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 70
    .line 71
    iget-object v8, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ops:Ljava/util/Set;

    .line 72
    .line 73
    iget-object v9, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 74
    .line 75
    iget-object v10, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->kid:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v11, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5u:Ljava/net/URI;

    .line 78
    .line 79
    iget-object v12, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 80
    .line 81
    iget-object v13, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 82
    .line 83
    iget-object v14, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5c:Ljava/util/List;

    .line 84
    .line 85
    iget-object v15, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->exp:Ljava/util/Date;

    .line 86
    .line 87
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->nbf:Ljava/util/Date;

    .line 88
    .line 89
    move-object/from16 v16, v1

    .line 90
    .line 91
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->iat:Ljava/util/Date;

    .line 92
    .line 93
    move-object/from16 v17, v1

    .line 94
    .line 95
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ks:Ljava/security/KeyStore;

    .line 98
    .line 99
    move-object/from16 v19, v0

    .line 100
    .line 101
    move-object/from16 v18, v1

    .line 102
    .line 103
    invoke-direct/range {v2 .. v19}, Lcom/nimbusds/jose/jwk/ECKey;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    .line 104
    .line 105
    .line 106
    return-object v2

    .line 107
    :cond_1
    new-instance v1, Lcom/nimbusds/jose/jwk/ECKey;

    .line 108
    .line 109
    iget-object v2, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 110
    .line 111
    iget-object v3, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 112
    .line 113
    iget-object v4, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->y:Lcom/nimbusds/jose/util/Base64URL;

    .line 114
    .line 115
    iget-object v5, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 116
    .line 117
    iget-object v6, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 118
    .line 119
    iget-object v7, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ops:Ljava/util/Set;

    .line 120
    .line 121
    iget-object v8, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 122
    .line 123
    iget-object v9, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->kid:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v10, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5u:Ljava/net/URI;

    .line 126
    .line 127
    iget-object v11, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 128
    .line 129
    iget-object v12, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 130
    .line 131
    iget-object v13, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5c:Ljava/util/List;

    .line 132
    .line 133
    iget-object v14, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->exp:Ljava/util/Date;

    .line 134
    .line 135
    iget-object v15, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->nbf:Ljava/util/Date;

    .line 136
    .line 137
    move-object/from16 v16, v1

    .line 138
    .line 139
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->iat:Ljava/util/Date;

    .line 140
    .line 141
    move-object/from16 v17, v1

    .line 142
    .line 143
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 144
    .line 145
    iget-object v0, v0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ks:Ljava/security/KeyStore;

    .line 146
    .line 147
    move-object/from16 v18, v17

    .line 148
    .line 149
    move-object/from16 v17, v1

    .line 150
    .line 151
    move-object/from16 v1, v16

    .line 152
    .line 153
    move-object/from16 v16, v18

    .line 154
    .line 155
    move-object/from16 v18, v0

    .line 156
    .line 157
    invoke-direct/range {v1 .. v18}, Lcom/nimbusds/jose/jwk/ECKey;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    .line 160
    move-object/from16 v16, v1

    .line 161
    .line 162
    return-object v16

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v1, v0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    const/4 v0, 0x0

    .line 172
    return-object v0
.end method

.method public d(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public expirationTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->exp:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public issueTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->iat:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->kid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyIDFromThumbprint()Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 61
    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    move-result-object p0

    return-object p0
.end method

.method public keyIDFromThumbprint(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
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
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/Curve;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "crv"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

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
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "x"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->y:Lcom/nimbusds/jose/util/Base64URL;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "y"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/nimbusds/jose/jwk/ThumbprintUtils;->compute(Ljava/lang/String;Ljava/util/LinkedHashMap;)Lcom/nimbusds/jose/util/Base64URL;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->kid:Ljava/lang/String;

    .line 59
    .line 60
    return-object p0
.end method

.method public keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/ECKey$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ops:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyRevocation(Lcom/nimbusds/jose/jwk/KeyRevocation;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->revocation:Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->ks:Ljava/security/KeyStore;

    .line 2
    .line 3
    return-object p0
.end method

.method public keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 2
    .line 3
    return-object p0
.end method

.method public notBeforeTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->nbf:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public privateKey(Ljava/security/PrivateKey;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->privateKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    if-eqz p1, :cond_2

    .line 13
    .line 14
    const-string v0, "EC"

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string p0, "The private key algorithm must be EC"

    .line 28
    .line 29
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0

    .line 34
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->priv:Ljava/security/PrivateKey;

    .line 35
    .line 36
    return-object p0
.end method

.method public privateKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/nimbusds/jose/jwk/ECKey;->encodeCoordinate(ILjava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->d:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/ECKey$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/jwk/ECKey$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ECKey$Builder;->x5u:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method
