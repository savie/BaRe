.class public Lcom/nimbusds/jose/jwk/OctetKeyPair;
.super Lcom/nimbusds/jose/jwk/JWK;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/jwk/AsymmetricJWK;
.implements Lcom/nimbusds/jose/jwk/CurveBasedJWK;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;
    }
.end annotation


# static fields
.field public static final SUPPORTED_CURVES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final crv:Lcom/nimbusds/jose/jwk/Curve;

.field private final d:Lcom/nimbusds/jose/util/Base64URL;

.field private final decodedD:[B

.field private final decodedX:[B

.field private final x:Lcom/nimbusds/jose/util/Base64URL;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 4
    .line 5
    sget-object v2, Lcom/nimbusds/jose/jwk/Curve;->Ed448:Lcom/nimbusds/jose/jwk/Curve;

    .line 6
    .line 7
    sget-object v3, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 8
    .line 9
    sget-object v4, Lcom/nimbusds/jose/jwk/Curve;->X448:Lcom/nimbusds/jose/jwk/Curve;

    .line 10
    .line 11
    filled-new-array {v1, v2, v3, v4}, [Lcom/nimbusds/jose/jwk/Curve;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->SUPPORTED_CURVES:Ljava/util/Set;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/Curve;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Lcom/nimbusds/jose/Algorithm;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/security/KeyStore;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v14, p11

    .line 101
    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/jwk/OctetKeyPair;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/Curve;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Lcom/nimbusds/jose/Algorithm;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcom/nimbusds/jose/jwk/KeyRevocation;",
            "Ljava/security/KeyStore;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p1

    .line 91
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->OKP:Lcom/nimbusds/jose/jwk/KeyType;

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/jwk/JWK;-><init>(Lcom/nimbusds/jose/jwk/KeyType;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    .line 92
    const-string v1, "The curve must not be null"

    invoke-static {v15, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lcom/nimbusds/jose/jwk/OctetKeyPair;->SUPPORTED_CURVES:Ljava/util/Set;

    invoke-interface {v1, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 94
    iput-object v15, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 95
    const-string v1, "The x parameter must not be null"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v3, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 96
    invoke-virtual {v3}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    move-result-object v1

    iput-object v1, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->decodedX:[B

    .line 97
    iput-object v2, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 98
    iput-object v2, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->decodedD:[B

    return-void

    .line 99
    :cond_0
    const-string v0, "Unknown / unsupported curve: "

    invoke-static {v15, v0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/Curve;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Lcom/nimbusds/jose/Algorithm;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/security/KeyStore;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v15, p14

    .line 90
    invoke-direct/range {v0 .. v15}, Lcom/nimbusds/jose/jwk/OctetKeyPair;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/Curve;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Lcom/nimbusds/jose/Algorithm;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/security/KeyStore;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v15, p12

    .line 89
    invoke-direct/range {v0 .. v15}, Lcom/nimbusds/jose/jwk/OctetKeyPair;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/Curve;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Lcom/nimbusds/jose/Algorithm;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcom/nimbusds/jose/jwk/KeyRevocation;",
            "Ljava/security/KeyStore;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v15, p1

    .line 2
    .line 3
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->OKP:Lcom/nimbusds/jose/jwk/KeyType;

    .line 4
    .line 5
    move-object/from16 v0, p0

    .line 6
    .line 7
    move-object/from16 v2, p4

    .line 8
    .line 9
    move-object/from16 v3, p5

    .line 10
    .line 11
    move-object/from16 v4, p6

    .line 12
    .line 13
    move-object/from16 v5, p7

    .line 14
    .line 15
    move-object/from16 v6, p8

    .line 16
    .line 17
    move-object/from16 v7, p9

    .line 18
    .line 19
    move-object/from16 v8, p10

    .line 20
    .line 21
    move-object/from16 v9, p11

    .line 22
    .line 23
    move-object/from16 v10, p12

    .line 24
    .line 25
    move-object/from16 v11, p13

    .line 26
    .line 27
    move-object/from16 v12, p14

    .line 28
    .line 29
    move-object/from16 v13, p15

    .line 30
    .line 31
    move-object/from16 v14, p16

    .line 32
    .line 33
    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/jwk/JWK;-><init>(Lcom/nimbusds/jose/jwk/KeyType;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "The curve must not be null"

    .line 37
    .line 38
    invoke-static {v15, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    sget-object v1, Lcom/nimbusds/jose/jwk/OctetKeyPair;->SUPPORTED_CURVES:Ljava/util/Set;

    .line 42
    .line 43
    invoke-interface {v1, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    iput-object v15, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 50
    .line 51
    const-string v1, "The x parameter must not be null"

    .line 52
    .line 53
    move-object/from16 v2, p2

    .line 54
    .line 55
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iput-object v2, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->decodedX:[B

    .line 65
    .line 66
    const-string v1, "The d parameter must not be null"

    .line 67
    .line 68
    move-object/from16 v2, p3

    .line 69
    .line 70
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iput-object v2, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, v0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->decodedD:[B

    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    const-string v0, "Unknown / unsupported curve: "

    .line 83
    .line 84
    invoke-static {v15, v0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    throw v0
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/Curve;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Lcom/nimbusds/jose/Algorithm;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/security/KeyStore;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v16, p15

    .line 100
    invoke-direct/range {v0 .. v16}, Lcom/nimbusds/jose/jwk/OctetKeyPair;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/nimbusds/jose/jwk/OctetKeyPair;)Lcom/nimbusds/jose/jwk/Curve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/nimbusds/jose/jwk/OctetKeyPair;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/nimbusds/jose/jwk/OctetKeyPair;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 182
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/OctetKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/OctetKeyPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->OKP:Lcom/nimbusds/jose/jwk/KeyType;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyType(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/KeyType;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    const-string v2, "crv"

    .line 18
    .line 19
    invoke-static {v0, v2}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/nimbusds/jose/jwk/Curve;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/Curve;

    .line 24
    .line 25
    .line 26
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    const-string v2, "x"

    .line 28
    .line 29
    invoke-static {v0, v2}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const-string v2, "d"

    .line 34
    .line 35
    invoke-static {v0, v2}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    if-nez v7, :cond_0

    .line 40
    .line 41
    :try_start_1
    new-instance v4, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyUse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/KeyUse;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyOperations(Ljava/util/Map;)Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseAlgorithm(Ljava/util/Map;)Lcom/nimbusds/jose/Algorithm;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyID(Ljava/util/Map;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertURL(Ljava/util/Map;)Ljava/net/URI;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertThumbprint(Ljava/util/Map;)Lcom/nimbusds/jose/util/Base64URL;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertSHA256Thumbprint(Ljava/util/Map;)Lcom/nimbusds/jose/util/Base64URL;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertChain(Ljava/util/Map;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v14

    .line 75
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseExpirationTime(Ljava/util/Map;)Ljava/util/Date;

    .line 76
    .line 77
    .line 78
    move-result-object v15

    .line 79
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseNotBeforeTime(Ljava/util/Map;)Ljava/util/Date;

    .line 80
    .line 81
    .line 82
    move-result-object v16

    .line 83
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseIssueTime(Ljava/util/Map;)Ljava/util/Date;

    .line 84
    .line 85
    .line 86
    move-result-object v17

    .line 87
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyRevocation(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 88
    .line 89
    .line 90
    move-result-object v18

    .line 91
    const/16 v19, 0x0

    .line 92
    .line 93
    invoke-direct/range {v4 .. v19}, Lcom/nimbusds/jose/jwk/OctetKeyPair;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    .line 94
    .line 95
    .line 96
    return-object v4

    .line 97
    :catch_0
    move-exception v0

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    new-instance v4, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyUse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/KeyUse;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyOperations(Ljava/util/Map;)Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseAlgorithm(Ljava/util/Map;)Lcom/nimbusds/jose/Algorithm;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyID(Ljava/util/Map;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertURL(Ljava/util/Map;)Ljava/net/URI;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertThumbprint(Ljava/util/Map;)Lcom/nimbusds/jose/util/Base64URL;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertSHA256Thumbprint(Ljava/util/Map;)Lcom/nimbusds/jose/util/Base64URL;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertChain(Ljava/util/Map;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v15

    .line 133
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseExpirationTime(Ljava/util/Map;)Ljava/util/Date;

    .line 134
    .line 135
    .line 136
    move-result-object v16

    .line 137
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseNotBeforeTime(Ljava/util/Map;)Ljava/util/Date;

    .line 138
    .line 139
    .line 140
    move-result-object v17

    .line 141
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseIssueTime(Ljava/util/Map;)Ljava/util/Date;

    .line 142
    .line 143
    .line 144
    move-result-object v18

    .line 145
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyRevocation(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 146
    .line 147
    .line 148
    move-result-object v19

    .line 149
    const/16 v20, 0x0

    .line 150
    .line 151
    invoke-direct/range {v4 .. v20}, Lcom/nimbusds/jose/jwk/OctetKeyPair;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    .line 153
    .line 154
    return-object v4

    .line 155
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v1, v0}, Ly5;->e(ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-object v3

    .line 163
    :catch_1
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v1, v0}, Ly5;->e(ILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object v3

    .line 172
    :cond_1
    const-string v0, "The key type kty must be "

    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v1, v0}, Ll0;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/jwk/JWK;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    return v2

    .line 18
    :cond_2
    check-cast p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 23
    .line 24
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 31
    .line 32
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 33
    .line 34
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->decodedX:[B

    .line 41
    .line 42
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;->decodedX:[B

    .line 43
    .line 44
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 51
    .line 52
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 53
    .line 54
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->decodedD:[B

    .line 61
    .line 62
    iget-object p1, p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;->decodedD:[B

    .line 63
    .line 64
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    return v0

    .line 71
    :cond_3
    return v2
.end method

.method public getCurve()Lcom/nimbusds/jose/jwk/Curve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 2
    .line 3
    return-object p0
.end method

.method public getD()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDecodedD()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->decodedD:[B

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, [B

    .line 12
    .line 13
    return-object p0
.end method

.method public getDecodedX()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->decodedX:[B

    .line 2
    .line 3
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, [B

    .line 8
    .line 9
    return-object p0
.end method

.method public getRequiredParams()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "*>;"
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
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->crv:Lcom/nimbusds/jose/jwk/Curve;

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
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "kty"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v1, "x"

    .line 37
    .line 38
    invoke-virtual {v0, v1, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public getX()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/jwk/JWK;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 14
    .line 15
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->decodedX:[B

    .line 26
    .line 27
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    .line 34
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->decodedD:[B

    .line 35
    .line 36
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    add-int/2addr p0, v1

    .line 41
    return p0
.end method

.method public isPrivate()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public matches(Ljava/security/cert/X509Certificate;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->bitLength([B)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public toJSONObject()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/Curve;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "crv"

    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->x:Lcom/nimbusds/jose/util/Base64URL;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "x"

    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/OctetKeyPair;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    const-string v1, "d"

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_0
    return-object v0
.end method

.method public toKeyPair()Ljava/security/KeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    .line 2
    .line 3
    const-string v0, "Export to java.security.KeyPair not supported"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public toPrivateKey()Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    .line 2
    .line 3
    const-string v0, "Export to java.security.PrivateKey not supported"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public bridge synthetic toPublicJWK()Lcom/nimbusds/jose/jwk/JWK;
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->toPublicJWK()Lcom/nimbusds/jose/jwk/OctetKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public toPublicJWK()Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .locals 16

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getX()Lcom/nimbusds/jose/util/Base64URL;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertURL()Ljava/net/URI;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/JWK;->getExpirationTime()Ljava/util/Date;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/JWK;->getNotBeforeTime()Ljava/util/Date;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/JWK;->getIssueTime()Ljava/util/Date;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/JWK;->getKeyRevocation()Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 56
    .line 57
    .line 58
    move-result-object v14

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/JWK;->getKeyStore()Ljava/security/KeyStore;

    .line 60
    .line 61
    .line 62
    move-result-object v15

    .line 63
    invoke-direct/range {v0 .. v15}, Lcom/nimbusds/jose/jwk/OctetKeyPair;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public toPublicKey()Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    .line 2
    .line 3
    const-string v0, "Export to java.security.PublicKey not supported"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public bridge synthetic toRevokedJWK(Lcom/nimbusds/jose/jwk/KeyRevocation;)Lcom/nimbusds/jose/jwk/JWK;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->toRevokedJWK(Lcom/nimbusds/jose/jwk/KeyRevocation;)Lcom/nimbusds/jose/jwk/OctetKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public toRevokedJWK(Lcom/nimbusds/jose/jwk/KeyRevocation;)Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->getKeyRevocation()Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;-><init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->keyRevocation(Lcom/nimbusds/jose/jwk/KeyRevocation;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->build()Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    const-string p0, "Already revoked"

    .line 25
    .line 26
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method
