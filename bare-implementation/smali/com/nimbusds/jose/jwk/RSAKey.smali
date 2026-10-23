.class public final Lcom/nimbusds/jose/jwk/RSAKey;
.super Lcom/nimbusds/jose/jwk/JWK;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/jwk/AsymmetricJWK;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;,
        Lcom/nimbusds/jose/jwk/RSAKey$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final d:Lcom/nimbusds/jose/util/Base64URL;

.field private final dp:Lcom/nimbusds/jose/util/Base64URL;

.field private final dq:Lcom/nimbusds/jose/util/Base64URL;

.field private final e:Lcom/nimbusds/jose/util/Base64URL;

.field private final n:Lcom/nimbusds/jose/util/Base64URL;

.field private final oth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/nimbusds/jose/util/Base64URL;

.field private final privateKey:Ljava/security/PrivateKey;

.field private final q:Lcom/nimbusds/jose/util/Base64URL;

.field private final qi:Lcom/nimbusds/jose/util/Base64URL;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move-object/from16 v18, p10

    move-object/from16 v22, p11

    .line 50
    invoke-direct/range {v0 .. v22}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move-object/from16 v18, p10

    move-object/from16 v19, p11

    move-object/from16 v20, p12

    move-object/from16 v21, p13

    move-object/from16 v22, p14

    move-object/from16 v23, p15

    .line 34
    invoke-direct/range {v0 .. v23}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move-object/from16 v18, p10

    move-object/from16 v19, p11

    move-object/from16 v20, p12

    move-object/from16 v21, p13

    move-object/from16 v22, p14

    .line 33
    invoke-direct/range {v0 .. v22}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/Base64URL;",
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

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    move-object/from16 v18, p11

    move-object/from16 v22, p12

    .line 35
    invoke-direct/range {v0 .. v22}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/Base64URL;",
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

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    move-object/from16 v18, p11

    move-object/from16 v19, p12

    move-object/from16 v20, p13

    move-object/from16 v21, p14

    move-object/from16 v22, p15

    move-object/from16 v23, p16

    .line 37
    invoke-direct/range {v0 .. v23}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    .line 38
    const-string v0, "The private exponent must not be null"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/Base64URL;",
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

    .line 36
    invoke-direct/range {v0 .. v16}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;",
            ">;",
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
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    const/16 v19, 0x0

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

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    .line 47
    invoke-direct/range {v0 .. v19}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;",
            ">;",
            "Ljava/security/PrivateKey;",
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

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

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

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v22, p19

    .line 48
    invoke-direct/range {v0 .. v22}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;",
            ">;",
            "Ljava/security/PrivateKey;",
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

    .line 1
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    move-object/from16 v0, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v4, p13

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    move-object/from16 v7, p16

    move-object/from16 v8, p17

    move-object/from16 v9, p18

    move-object/from16 v10, p19

    move-object/from16 v11, p20

    move-object/from16 v12, p21

    move-object/from16 v13, p22

    move-object/from16 v14, p23

    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/jwk/JWK;-><init>(Lcom/nimbusds/jose/jwk/KeyType;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    .line 2
    const-string v1, "The modulus value must not be null"

    invoke-static {v15, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v15, v0, Lcom/nimbusds/jose/jwk/RSAKey;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 3
    const-string v1, "The public exponent value must not be null"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v2, v0, Lcom/nimbusds/jose/jwk/RSAKey;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 4
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWK;->getParsedX509CertChain()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWK;->getParsedX509CertChain()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/RSAKey;->matches(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object/from16 v1, p3

    goto :goto_0

    .line 6
    :cond_1
    const-string v0, "The public subject key info of the first X.509 certificate in the chain must match the JWK type and public parameters"

    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    throw v2

    .line 7
    :goto_0
    iput-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey;->d:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    move-object/from16 v5, p7

    if-eqz v4, :cond_3

    move-object/from16 v6, p8

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 8
    iput-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 9
    iput-object v3, v0, Lcom/nimbusds/jose/jwk/RSAKey;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 10
    iput-object v4, v0, Lcom/nimbusds/jose/jwk/RSAKey;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 11
    iput-object v5, v0, Lcom/nimbusds/jose/jwk/RSAKey;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 12
    iput-object v6, v0, Lcom/nimbusds/jose/jwk/RSAKey;->qi:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz p9, :cond_2

    .line 13
    invoke-static/range {p9 .. p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    :goto_1
    move-object/from16 v1, p10

    goto :goto_4

    .line 14
    :cond_2
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    goto :goto_1

    :cond_3
    :goto_2
    move-object/from16 v6, p8

    goto :goto_3

    :cond_4
    move-object/from16 v5, p7

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v1, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    if-nez p9, :cond_6

    .line 15
    iput-object v2, v0, Lcom/nimbusds/jose/jwk/RSAKey;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 16
    iput-object v2, v0, Lcom/nimbusds/jose/jwk/RSAKey;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 17
    iput-object v2, v0, Lcom/nimbusds/jose/jwk/RSAKey;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 18
    iput-object v2, v0, Lcom/nimbusds/jose/jwk/RSAKey;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 19
    iput-object v2, v0, Lcom/nimbusds/jose/jwk/RSAKey;->qi:Lcom/nimbusds/jose/util/Base64URL;

    .line 20
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    if-nez v5, :cond_7

    if-nez v6, :cond_7

    .line 21
    iput-object v2, v0, Lcom/nimbusds/jose/jwk/RSAKey;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 22
    iput-object v2, v0, Lcom/nimbusds/jose/jwk/RSAKey;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 23
    iput-object v2, v0, Lcom/nimbusds/jose/jwk/RSAKey;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 24
    iput-object v2, v0, Lcom/nimbusds/jose/jwk/RSAKey;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 25
    iput-object v2, v0, Lcom/nimbusds/jose/jwk/RSAKey;->qi:Lcom/nimbusds/jose/util/Base64URL;

    .line 26
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    goto :goto_1

    .line 27
    :goto_4
    iput-object v1, v0, Lcom/nimbusds/jose/jwk/RSAKey;->privateKey:Ljava/security/PrivateKey;

    return-void

    .line 28
    :cond_7
    const-string v0, "Incomplete second private (CRT) representation: The first prime factor must not be null"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    const-string v0, "Incomplete second private (CRT) representation: The second prime factor must not be null"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    const-string v0, "Incomplete second private (CRT) representation: The first factor CRT exponent must not be null"

    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    const-string v0, "Incomplete second private (CRT) representation: The second factor CRT exponent must not be null"

    invoke-static {v5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    const-string v0, "Incomplete second private (CRT) representation: The first CRT coefficient must not be null"

    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;",
            ">;",
            "Ljava/security/PrivateKey;",
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

    const/16 v22, 0x0

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

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v23, p22

    .line 49
    invoke-direct/range {v0 .. v23}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;",
            ">;",
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

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v22, p17

    .line 39
    invoke-direct/range {v0 .. v22}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;",
            ">;",
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

    const/4 v3, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    .line 41
    invoke-direct/range {v0 .. v23}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    .line 42
    const-string v0, "The first prime factor must not be null"

    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    const-string v0, "The second prime factor must not be null"

    invoke-static {v5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    const-string v0, "The first factor CRT exponent must not be null"

    invoke-static {v6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    const-string v0, "The second factor CRT exponent must not be null"

    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    const-string v0, "The first CRT coefficient must not be null"

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;",
            ">;",
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

    const/16 v20, 0x0

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

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v21, p20

    .line 40
    invoke-direct/range {v0 .. v21}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
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

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v13, p10

    .line 51
    invoke-direct/range {v0 .. v13}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Ljava/security/interfaces/RSAPublicKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
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

    .line 53
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v2

    .line 54
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v3

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    .line 55
    invoke-direct/range {v1 .. v16}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
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

    const/4 v13, 0x0

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

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v14, p13

    .line 52
    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Ljava/security/interfaces/RSAPublicKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
            "Ljava/security/PrivateKey;",
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

    .line 102
    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
            "Ljava/security/PrivateKey;",
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

    .line 104
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v2

    .line 105
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    move-object/from16 v19, p10

    move-object/from16 v20, p11

    move-object/from16 v21, p12

    move-object/from16 v22, p13

    move-object/from16 v23, p14

    move-object/from16 v24, p15

    .line 106
    invoke-direct/range {v1 .. v24}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
            "Ljava/security/PrivateKey;",
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

    .line 103
    invoke-direct/range {v0 .. v15}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
            "Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;",
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

    .line 81
    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
            "Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;",
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

    .line 92
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v2

    .line 93
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v3

    .line 94
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v4

    .line 95
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v5

    .line 96
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v6

    .line 97
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v7

    .line 98
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v8

    .line 99
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v9

    .line 100
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getOtherPrimeInfo()[Ljava/security/spec/RSAOtherPrimeInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;->toList([Ljava/security/spec/RSAOtherPrimeInfo;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    move-object/from16 v19, p10

    move-object/from16 v20, p11

    move-object/from16 v21, p12

    move-object/from16 v22, p13

    move-object/from16 v23, p14

    move-object/from16 v24, p15

    .line 101
    invoke-direct/range {v1 .. v24}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
            "Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;",
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

    .line 82
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v2

    .line 83
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v3

    .line 84
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v4

    .line 85
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v5

    .line 86
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v6

    .line 87
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v7

    .line 88
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v8

    .line 89
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v9

    .line 90
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getOtherPrimeInfo()[Ljava/security/spec/RSAOtherPrimeInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;->toList([Ljava/security/spec/RSAOtherPrimeInfo;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    move-object/from16 v19, p10

    move-object/from16 v20, p11

    move-object/from16 v21, p12

    move-object/from16 v22, p13

    move-object/from16 v23, p14

    .line 91
    invoke-direct/range {v1 .. v23}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
            "Ljava/security/interfaces/RSAPrivateCrtKey;",
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

    .line 62
    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
            "Ljava/security/interfaces/RSAPrivateCrtKey;",
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

    .line 72
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v2

    .line 73
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v3

    .line 74
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v4

    .line 75
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v5

    .line 76
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v6

    .line 77
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v7

    .line 78
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v8

    .line 79
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    move-object/from16 v19, p10

    move-object/from16 v20, p11

    move-object/from16 v21, p12

    move-object/from16 v22, p13

    move-object/from16 v23, p14

    move-object/from16 v24, p15

    .line 80
    invoke-direct/range {v1 .. v24}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
            "Ljava/security/interfaces/RSAPrivateCrtKey;",
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

    .line 63
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v2

    .line 64
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v3

    .line 65
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v4

    .line 66
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v5

    .line 67
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v6

    .line 68
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v7

    .line 69
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v8

    .line 70
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    move-object/from16 v19, p10

    move-object/from16 v20, p11

    move-object/from16 v21, p12

    move-object/from16 v22, p13

    move-object/from16 v23, p14

    .line 71
    invoke-direct/range {v1 .. v23}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
            "Ljava/security/interfaces/RSAPrivateKey;",
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

    .line 56
    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
            "Ljava/security/interfaces/RSAPrivateKey;",
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

    .line 58
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v2

    .line 59
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v3

    .line 60
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    .line 61
    invoke-direct/range {v1 .. v17}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/security/KeyStore;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/interfaces/RSAPublicKey;",
            "Ljava/security/interfaces/RSAPrivateKey;",
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

    .line 57
    invoke-direct/range {v0 .. v15}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/nimbusds/jose/jwk/RSAKey;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->qi:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/nimbusds/jose/jwk/RSAKey;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/nimbusds/jose/jwk/RSAKey;)Ljava/security/PrivateKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->privateKey:Ljava/security/PrivateKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public static load(Ljava/security/KeyStore;Ljava/lang/String;[C)Lcom/nimbusds/jose/jwk/RSAKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    instance-of v1, v1, Ljava/security/interfaces/RSAPublicKey;

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/RSAKey;->parse(Ljava/security/cert/X509Certificate;)Lcom/nimbusds/jose/jwk/RSAKey;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;-><init>(Lcom/nimbusds/jose/jwk/RSAKey;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->build()Lcom/nimbusds/jose/jwk/RSAKey;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 43
    .line 44
    .line 45
    move-result-object p0
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    instance-of p1, p0, Ljava/security/interfaces/RSAPrivateKey;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    new-instance p1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 51
    .line 52
    invoke-direct {p1, v0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;-><init>(Lcom/nimbusds/jose/jwk/RSAKey;)V

    .line 53
    .line 54
    .line 55
    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->privateKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->build()Lcom/nimbusds/jose/jwk/RSAKey;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_1
    instance-of p1, p0, Ljava/security/PrivateKey;

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    const-string p1, "RSA"

    .line 71
    .line 72
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    new-instance p1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 83
    .line 84
    invoke-direct {p1, v0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;-><init>(Lcom/nimbusds/jose/jwk/RSAKey;)V

    .line 85
    .line 86
    .line 87
    check-cast p0, Ljava/security/PrivateKey;

    .line 88
    .line 89
    invoke-virtual {p1, p0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->privateKey(Ljava/security/PrivateKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->build()Lcom/nimbusds/jose/jwk/RSAKey;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :cond_2
    return-object v0

    .line 99
    :catch_0
    move-exception p0

    .line 100
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v1, "Couldn\'t retrieve private RSA key (bad pin?): "

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_3
    const-string p0, "Couldn\'t load RSA JWK: The key algorithm is not RSA"

    .line 125
    .line 126
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-object v2
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/RSAKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 229
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/RSAKey;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/security/cert/X509Certificate;)Lcom/nimbusds/jose/jwk/RSAKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    instance-of v0, v0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 232
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 233
    new-instance v2, Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    invoke-direct {v2, v0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    .line 234
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/KeyUse;->from(Ljava/security/cert/X509Certificate;)Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/nimbusds/jose/util/Base64;->encode([B)Lcom/nimbusds/jose/util/Base64;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->expirationTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->notBeforeTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    move-result-object p0

    .line 240
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->build()Lcom/nimbusds/jose/jwk/RSAKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 241
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t encode x5c parameter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 242
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t encode x5t parameter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 243
    :cond_0
    const-string p0, "The public key of the X.509 certificate is not RSA"

    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/RSAKey;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/RSAKey;"
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
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

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
    move-result v1

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    const-string v1, "n"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string v1, "e"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const-string v1, "d"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    const-string v1, "p"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    const-string v1, "q"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    const-string v1, "dp"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    const-string v1, "dq"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    const-string v4, "qi"

    .line 58
    .line 59
    invoke-static {v0, v4}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    const-string v4, "oth"

    .line 64
    .line 65
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    if-eqz v13, :cond_2

    .line 70
    .line 71
    invoke-static {v0, v4}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONArray(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    new-instance v13, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v14

    .line 83
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    if-eqz v14, :cond_1

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    instance-of v15, v14, Ljava/util/Map;

    .line 101
    .line 102
    if-eqz v15, :cond_0

    .line 103
    .line 104
    check-cast v14, Ljava/util/Map;

    .line 105
    .line 106
    const-string v15, "r"

    .line 107
    .line 108
    invoke-static {v14, v15}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 109
    .line 110
    .line 111
    move-result-object v15

    .line 112
    const/16 v28, 0x0

    .line 113
    .line 114
    invoke-static {v14, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const-string v3, "t"

    .line 119
    .line 120
    invoke-static {v14, v3}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    :try_start_0
    new-instance v14, Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;

    .line 125
    .line 126
    invoke-direct {v14, v15, v2, v3}, Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const/4 v1, 0x0

    .line 139
    invoke-static {v1, v0}, Ly5;->e(ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-object v28

    .line 143
    :cond_0
    const/16 v28, 0x0

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    const/16 v28, 0x0

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    const/16 v28, 0x0

    .line 150
    .line 151
    move-object/from16 v13, v28

    .line 152
    .line 153
    :goto_1
    :try_start_1
    new-instance v4, Lcom/nimbusds/jose/jwk/RSAKey;

    .line 154
    .line 155
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyUse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/KeyUse;

    .line 156
    .line 157
    .line 158
    move-result-object v15

    .line 159
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyOperations(Ljava/util/Map;)Ljava/util/Set;

    .line 160
    .line 161
    .line 162
    move-result-object v16

    .line 163
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseAlgorithm(Ljava/util/Map;)Lcom/nimbusds/jose/Algorithm;

    .line 164
    .line 165
    .line 166
    move-result-object v17

    .line 167
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyID(Ljava/util/Map;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v18

    .line 171
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertURL(Ljava/util/Map;)Ljava/net/URI;

    .line 172
    .line 173
    .line 174
    move-result-object v19

    .line 175
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertThumbprint(Ljava/util/Map;)Lcom/nimbusds/jose/util/Base64URL;

    .line 176
    .line 177
    .line 178
    move-result-object v20

    .line 179
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertSHA256Thumbprint(Ljava/util/Map;)Lcom/nimbusds/jose/util/Base64URL;

    .line 180
    .line 181
    .line 182
    move-result-object v21

    .line 183
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseX509CertChain(Ljava/util/Map;)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v22

    .line 187
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseExpirationTime(Ljava/util/Map;)Ljava/util/Date;

    .line 188
    .line 189
    .line 190
    move-result-object v23

    .line 191
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseNotBeforeTime(Ljava/util/Map;)Ljava/util/Date;

    .line 192
    .line 193
    .line 194
    move-result-object v24

    .line 195
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseIssueTime(Ljava/util/Map;)Ljava/util/Date;

    .line 196
    .line 197
    .line 198
    move-result-object v25

    .line 199
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKMetadata;->parseKeyRevocation(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 200
    .line 201
    .line 202
    move-result-object v26

    .line 203
    const/16 v27, 0x0

    .line 204
    .line 205
    const/4 v14, 0x0

    .line 206
    invoke-direct/range {v4 .. v27}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/security/PrivateKey;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    .line 208
    .line 209
    return-object v4

    .line 210
    :catch_1
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const/4 v1, 0x0

    .line 216
    invoke-static {v1, v0}, Ly5;->e(ILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-object v28

    .line 220
    :cond_3
    const/4 v1, 0x0

    .line 221
    const/16 v28, 0x0

    .line 222
    .line 223
    const-string v0, "The key type \"kty\" must be RSA"

    .line 224
    .line 225
    invoke-static {v1, v0}, Ly5;->e(ILjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-object v28
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
    instance-of v1, p1, Lcom/nimbusds/jose/jwk/RSAKey;

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
    check-cast p1, Lcom/nimbusds/jose/jwk/RSAKey;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/RSAKey;->n:Lcom/nimbusds/jose/util/Base64URL;

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
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 31
    .line 32
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/RSAKey;->e:Lcom/nimbusds/jose/util/Base64URL;

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
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 41
    .line 42
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/RSAKey;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 43
    .line 44
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 51
    .line 52
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/RSAKey;->p:Lcom/nimbusds/jose/util/Base64URL;

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
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/RSAKey;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 63
    .line 64
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 71
    .line 72
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/RSAKey;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 73
    .line 74
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 81
    .line 82
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/RSAKey;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 83
    .line 84
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->qi:Lcom/nimbusds/jose/util/Base64URL;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/RSAKey;->qi:Lcom/nimbusds/jose/util/Base64URL;

    .line 93
    .line 94
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    .line 101
    .line 102
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    .line 103
    .line 104
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->privateKey:Ljava/security/PrivateKey;

    .line 111
    .line 112
    iget-object p1, p1, Lcom/nimbusds/jose/jwk/RSAKey;->privateKey:Ljava/security/PrivateKey;

    .line 113
    .line 114
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_3

    .line 119
    .line 120
    return v0

    .line 121
    :cond_3
    return v2
.end method

.method public getFirstCRTCoefficient()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->qi:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFirstFactorCRTExponent()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFirstPrimeFactor()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getModulus()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOtherPrimes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPrivateExponent()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPublicExponent()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
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
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->e:Lcom/nimbusds/jose/util/Base64URL;

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
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v1, "n"

    .line 37
    .line 38
    invoke-virtual {v0, v1, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public getSecondFactorCRTExponent()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSecondPrimeFactor()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 12

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
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/RSAKey;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/nimbusds/jose/jwk/RSAKey;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/nimbusds/jose/jwk/RSAKey;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/nimbusds/jose/jwk/RSAKey;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 16
    .line 17
    iget-object v6, p0, Lcom/nimbusds/jose/jwk/RSAKey;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 18
    .line 19
    iget-object v7, p0, Lcom/nimbusds/jose/jwk/RSAKey;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 20
    .line 21
    iget-object v8, p0, Lcom/nimbusds/jose/jwk/RSAKey;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 22
    .line 23
    iget-object v9, p0, Lcom/nimbusds/jose/jwk/RSAKey;->qi:Lcom/nimbusds/jose/util/Base64URL;

    .line 24
    .line 25
    iget-object v10, p0, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    .line 26
    .line 27
    iget-object v11, p0, Lcom/nimbusds/jose/jwk/RSAKey;->privateKey:Ljava/security/PrivateKey;

    .line 28
    .line 29
    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public isPrivate()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->privateKey:Ljava/security/PrivateKey;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public matches(Ljava/security/cert/X509Certificate;)Z
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->getParsedX509CertChain()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    return p1

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :catch_0
    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Lcom/nimbusds/jose/util/IntegerOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public toJSONObject()Ljava/util/Map;
    .locals 7
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
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "n"

    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "e"

    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 28
    .line 29
    const-string v2, "d"

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    const-string v3, "p"

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const-string v3, "q"

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    const-string v3, "dp"

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    const-string v3, "dq"

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_4
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->qi:Lcom/nimbusds/jose/util/Base64URL;

    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    const-string v3, "qi"

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    :cond_5
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    .line 106
    .line 107
    if-eqz v1, :cond_7

    .line 108
    .line 109
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_7

    .line 114
    .line 115
    invoke-static {}, Lcom/nimbusds/jose/util/JSONArrayUtils;->newJSONArray()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_6

    .line 130
    .line 131
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;

    .line 136
    .line 137
    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v3}, Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;->access$1000(Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;)Lcom/nimbusds/jose/util/Base64URL;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v5}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    const-string v6, "r"

    .line 150
    .line 151
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    invoke-static {v3}, Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;->access$1100(Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;)Lcom/nimbusds/jose/util/Base64URL;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v5}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    invoke-static {v3}, Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;->access$1200(Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;)Lcom/nimbusds/jose/util/Base64URL;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    const-string v5, "t"

    .line 174
    .line 175
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_6
    const-string p0, "oth"

    .line 183
    .line 184
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    :cond_7
    return-object v0
.end method

.method public toKeyPair()Ljava/security/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/security/KeyPair;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->toRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->toPrivateKey()Ljava/security/PrivateKey;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, v1, p0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public toPrivateKey()Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->toRSAPrivateKey()Ljava/security/interfaces/RSAPrivateKey;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->privateKey:Ljava/security/PrivateKey;

    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic toPublicJWK()Lcom/nimbusds/jose/jwk/JWK;
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->toPublicJWK()Lcom/nimbusds/jose/jwk/RSAKey;

    move-result-object p0

    return-object p0
.end method

.method public toPublicJWK()Lcom/nimbusds/jose/jwk/RSAKey;
    .locals 16

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/RSAKey;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/RSAKey;->getModulus()Lcom/nimbusds/jose/util/Base64URL;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/nimbusds/jose/jwk/RSAKey;->getPublicExponent()Lcom/nimbusds/jose/util/Base64URL;

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
    invoke-direct/range {v0 .. v15}, Lcom/nimbusds/jose/jwk/RSAKey;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jwk/KeyUse;Ljava/util/Set;Lcom/nimbusds/jose/Algorithm;Ljava/lang/String;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/nimbusds/jose/jwk/KeyRevocation;Ljava/security/KeyStore;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public toPublicKey()Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->toRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public toRSAPrivateKey()Ljava/security/interfaces/RSAPrivateKey;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->d:Lcom/nimbusds/jose/util/Base64URL;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance p0, Ljava/security/spec/RSAPrivateKeySpec;

    .line 24
    .line 25
    invoke-direct {p0, v2, v4}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->p:Lcom/nimbusds/jose/util/Base64URL;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->q:Lcom/nimbusds/jose/util/Base64URL;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->dp:Lcom/nimbusds/jose/util/Base64URL;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->dq:Lcom/nimbusds/jose/util/Base64URL;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->qi:Lcom/nimbusds/jose/util/Base64URL;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    new-array v10, v0, [Ljava/security/spec/RSAOtherPrimeInfo;

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-ge v0, v1, :cond_2

    .line 92
    .line 93
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/RSAKey;->oth:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;->getPrimeFactor()Lcom/nimbusds/jose/util/Base64URL;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-virtual {v11}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;->getFactorCRTExponent()Lcom/nimbusds/jose/util/Base64URL;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-virtual {v12}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/RSAKey$OtherPrimesInfo;->getFactorCRTCoefficient()Lcom/nimbusds/jose/util/Base64URL;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    new-instance v13, Ljava/security/spec/RSAOtherPrimeInfo;

    .line 126
    .line 127
    invoke-direct {v13, v11, v12, v1}, Ljava/security/spec/RSAOtherPrimeInfo;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 128
    .line 129
    .line 130
    aput-object v13, v10, v0

    .line 131
    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    new-instance v1, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;

    .line 136
    .line 137
    invoke-direct/range {v1 .. v10}, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/security/spec/RSAOtherPrimeInfo;)V

    .line 138
    .line 139
    .line 140
    :goto_1
    move-object p0, v1

    .line 141
    goto :goto_2

    .line 142
    :cond_3
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 143
    .line 144
    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :goto_2
    :try_start_0
    const-string v0, "RSA"

    .line 149
    .line 150
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    return-object p0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    move-object p0, v0

    .line 163
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    throw v0
.end method

.method public toRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->n:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/RSAKey;->e:Lcom/nimbusds/jose/util/Base64URL;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->decodeToBigInteger()Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    .line 14
    .line 15
    invoke-direct {v1, v0, p0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    const-string p0, "RSA"

    .line 19
    .line 20
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    return-object p0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public bridge synthetic toRevokedJWK(Lcom/nimbusds/jose/jwk/KeyRevocation;)Lcom/nimbusds/jose/jwk/JWK;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/RSAKey;->toRevokedJWK(Lcom/nimbusds/jose/jwk/KeyRevocation;)Lcom/nimbusds/jose/jwk/RSAKey;

    move-result-object p0

    return-object p0
.end method

.method public toRevokedJWK(Lcom/nimbusds/jose/jwk/KeyRevocation;)Lcom/nimbusds/jose/jwk/RSAKey;
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
    new-instance v0, Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;-><init>(Lcom/nimbusds/jose/jwk/RSAKey;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->keyRevocation(Lcom/nimbusds/jose/jwk/KeyRevocation;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->build()Lcom/nimbusds/jose/jwk/RSAKey;

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
