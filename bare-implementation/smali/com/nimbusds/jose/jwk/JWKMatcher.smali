.class public Lcom/nimbusds/jose/jwk/JWKMatcher;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    }
.end annotation


# instance fields
.field private final algs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final curves:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation
.end field

.field private final ids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSizeBits:I

.field private final minSizeBits:I

.field private final nonRevokedOnly:Z

.field private final ops:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final privateOnly:Z

.field private final publicOnly:Z

.field private final revokedOnly:Z

.field private final sizesBits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;"
        }
    .end annotation
.end field

.field private final uses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;"
        }
    .end annotation
.end field

.field private final withIDOnly:Z

.field private final withUseOnly:Z

.field private final withX5COnly:Z

.field private final x5tS256s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 25
    invoke-direct/range {v0 .. v9}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZII)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 19
    invoke-direct/range {v0 .. v10}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZII",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    .line 20
    invoke-direct/range {v0 .. v11}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;Ljava/util/Set;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    .line 21
    invoke-direct/range {v0 .. v13}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    .line 22
    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;)V"
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

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    .line 23
    invoke-direct/range {v0 .. v15}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    .line 24
    invoke-direct/range {v0 .. v17}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZZZIILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZZZIILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZZZII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->types:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->uses:Ljava/util/Set;

    .line 4
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    .line 5
    iput-object p4, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->algs:Ljava/util/Set;

    .line 6
    iput-object p5, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ids:Ljava/util/Set;

    .line 7
    iput-boolean p6, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->withUseOnly:Z

    .line 8
    iput-boolean p7, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->withIDOnly:Z

    .line 9
    iput-boolean p8, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->privateOnly:Z

    .line 10
    iput-boolean p9, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->publicOnly:Z

    .line 11
    iput-boolean p10, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->nonRevokedOnly:Z

    .line 12
    iput-boolean p11, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->revokedOnly:Z

    .line 13
    iput p12, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    .line 14
    iput p13, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    .line 15
    iput-object p14, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->sizesBits:Ljava/util/Set;

    .line 16
    iput-object p15, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->curves:Ljava/util/Set;

    move-object/from16 p1, p16

    .line 17
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->x5tS256s:Ljava/util/Set;

    move/from16 p1, p17

    .line 18
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->withX5COnly:Z

    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x3d

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const-string p1, "ANY"

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :goto_0
    const/16 p1, 0x20

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public static forJWEHeader(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;
    .locals 4

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/nimbusds/jose/jwk/KeyType;->forAlgorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/KeyType;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getKeyID()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyUse;->ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    filled-new-array {v1, v2}, [Lcom/nimbusds/jose/jwk/KeyUse;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyUses([Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const/4 v1, 0x2

    .line 42
    new-array v1, v1, [Lcom/nimbusds/jose/Algorithm;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    aput-object p0, v1, v3

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    aput-object v2, v1, p0

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public static forJWSHeader(Lcom/nimbusds/jose/JWSHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->HMAC_SHA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    new-instance v1, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 35
    .line 36
    invoke-direct {v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/KeyType;->forAlgorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/KeyType;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v1, p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, v4}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->privateOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-array v1, v3, [Lcom/nimbusds/jose/Algorithm;

    .line 60
    .line 61
    aput-object v0, v1, v2

    .line 62
    .line 63
    aput-object v5, v1, v4

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_1
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->ED:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    new-instance v1, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 83
    .line 84
    invoke-direct {v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/KeyType;->forAlgorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/KeyType;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {v1, p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 104
    .line 105
    filled-new-array {v1, v5}, [Lcom/nimbusds/jose/jwk/KeyUse;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyUses([Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    new-array v1, v3, [Lcom/nimbusds/jose/Algorithm;

    .line 114
    .line 115
    aput-object v0, v1, v2

    .line 116
    .line 117
    aput-object v5, v1, v4

    .line 118
    .line 119
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/Curve;->forJWSAlgorithm(Lcom/nimbusds/jose/JWSAlgorithm;)Ljava/util/Set;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->curves(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :cond_2
    return-object v5

    .line 137
    :cond_3
    :goto_0
    new-instance v1, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 138
    .line 139
    invoke-direct {v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/KeyType;->forAlgorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/KeyType;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    sget-object v6, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 159
    .line 160
    filled-new-array {v6, v5}, [Lcom/nimbusds/jose/jwk/KeyUse;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyUses([Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    new-array v3, v3, [Lcom/nimbusds/jose/Algorithm;

    .line 169
    .line 170
    aput-object v0, v3, v2

    .line 171
    .line 172
    aput-object v5, v3, v4

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    return-object p0
.end method


# virtual methods
.method public getAlgorithms()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->algs:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCurves()Ljava/util/Set;
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
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->curves:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKeyIDs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ids:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKeyOperations()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKeySizes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->sizesBits:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKeyTypes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->types:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKeyUses()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->uses:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMaxKeySize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    .line 2
    .line 3
    return p0
.end method

.method public getMaxSize()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getMaxKeySize()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public getMinKeySize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    .line 2
    .line 3
    return p0
.end method

.method public getMinSize()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getMinKeySize()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public getX509CertSHA256Thumbprints()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->x5tS256s:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public hasKeyID()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->isWithKeyIDOnly()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public hasKeyUse()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->isWithKeyUseOnly()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public hasX509CertChain()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->isWithX509CertChainOnly()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public isNonRevokedOnly()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->nonRevokedOnly:Z

    .line 2
    .line 3
    return p0
.end method

.method public isPrivateOnly()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->privateOnly:Z

    .line 2
    .line 3
    return p0
.end method

.method public isPublicOnly()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->publicOnly:Z

    .line 2
    .line 3
    return p0
.end method

.method public isRevokedOnly()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->revokedOnly:Z

    .line 2
    .line 3
    return p0
.end method

.method public isWithKeyIDOnly()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->withIDOnly:Z

    .line 2
    .line 3
    return p0
.end method

.method public isWithKeyUseOnly()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->withUseOnly:Z

    .line 2
    .line 3
    return p0
.end method

.method public isWithX509CertChainOnly()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->withX5COnly:Z

    .line 2
    .line 3
    return p0
.end method

.method public matches(Lcom/nimbusds/jose/jwk/JWK;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->withUseOnly:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->withIDOnly:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    :cond_1
    return v1

    .line 38
    :cond_2
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->privateOnly:Z

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    return v1

    .line 49
    :cond_3
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->publicOnly:Z

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    return v1

    .line 60
    :cond_4
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->nonRevokedOnly:Z

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyRevocation()Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    return v1

    .line 71
    :cond_5
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->revokedOnly:Z

    .line 72
    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyRevocation()Lcom/nimbusds/jose/jwk/KeyRevocation;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-nez v0, :cond_6

    .line 80
    .line 81
    return v1

    .line 82
    :cond_6
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->types:Ljava/util/Set;

    .line 83
    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_7

    .line 95
    .line 96
    return v1

    .line 97
    :cond_7
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->uses:Ljava/util/Set;

    .line 98
    .line 99
    if-eqz v0, :cond_8

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_8

    .line 110
    .line 111
    return v1

    .line 112
    :cond_8
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    .line 113
    .line 114
    if-eqz v0, :cond_b

    .line 115
    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_9

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-nez v0, :cond_9

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_9
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_a

    .line 135
    .line 136
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-interface {v0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_a
    return v1

    .line 150
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->algs:Ljava/util/Set;

    .line 151
    .line 152
    if-eqz v0, :cond_c

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_c

    .line 163
    .line 164
    return v1

    .line 165
    :cond_c
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ids:Ljava/util/Set;

    .line 166
    .line 167
    if-eqz v0, :cond_d

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_d

    .line 178
    .line 179
    return v1

    .line 180
    :cond_d
    iget v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    .line 181
    .line 182
    if-lez v0, :cond_e

    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->size()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    iget v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    .line 189
    .line 190
    if-ge v0, v2, :cond_e

    .line 191
    .line 192
    return v1

    .line 193
    :cond_e
    iget v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    .line 194
    .line 195
    if-lez v0, :cond_f

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->size()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    iget v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    .line 202
    .line 203
    if-le v0, v2, :cond_f

    .line 204
    .line 205
    return v1

    .line 206
    :cond_f
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->sizesBits:Ljava/util/Set;

    .line 207
    .line 208
    if-eqz v0, :cond_10

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->size()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_10

    .line 223
    .line 224
    return v1

    .line 225
    :cond_10
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->curves:Ljava/util/Set;

    .line 226
    .line 227
    if-eqz v0, :cond_12

    .line 228
    .line 229
    instance-of v2, p1, Lcom/nimbusds/jose/jwk/CurveBasedJWK;

    .line 230
    .line 231
    if-nez v2, :cond_11

    .line 232
    .line 233
    return v1

    .line 234
    :cond_11
    move-object v2, p1

    .line 235
    check-cast v2, Lcom/nimbusds/jose/jwk/CurveBasedJWK;

    .line 236
    .line 237
    invoke-interface {v2}, Lcom/nimbusds/jose/jwk/CurveBasedJWK;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-nez v0, :cond_12

    .line 246
    .line 247
    return v1

    .line 248
    :cond_12
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->x5tS256s:Ljava/util/Set;

    .line 249
    .line 250
    if-eqz v0, :cond_14

    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    if-eqz v0, :cond_13

    .line 257
    .line 258
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-nez v0, :cond_13

    .line 267
    .line 268
    :try_start_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Lcom/nimbusds/jose/util/Base64;

    .line 277
    .line 278
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {v0}, Lcom/nimbusds/jose/util/X509CertUtils;->parseWithException([B)Ljava/security/cert/X509Certificate;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->x5tS256s:Ljava/util/Set;

    .line 287
    .line 288
    invoke-static {v0}, Lcom/nimbusds/jose/util/X509CertUtils;->computeSHA256Thumbprint(Ljava/security/cert/X509Certificate;)Lcom/nimbusds/jose/util/Base64URL;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    goto :goto_1

    .line 297
    :catch_0
    :cond_13
    move v0, v1

    .line 298
    :goto_1
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->x5tS256s:Ljava/util/Set;

    .line 299
    .line 300
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-nez v0, :cond_14

    .line 309
    .line 310
    if-nez v2, :cond_14

    .line 311
    .line 312
    return v1

    .line 313
    :cond_14
    iget-boolean p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->withX5COnly:Z

    .line 314
    .line 315
    const/4 v0, 0x1

    .line 316
    if-eqz p0, :cond_16

    .line 317
    .line 318
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    if-eqz p0, :cond_15

    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 329
    .line 330
    .line 331
    move-result p0

    .line 332
    if-nez p0, :cond_15

    .line 333
    .line 334
    move v1, v0

    .line 335
    :cond_15
    return v1

    .line 336
    :cond_16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "kty"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->types:Ljava/util/Set;

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "use"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->uses:Ljava/util/Set;

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "key_ops"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ops:Ljava/util/Set;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "alg"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->algs:Ljava/util/Set;

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "kid"

    .line 35
    .line 36
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->ids:Ljava/util/Set;

    .line 37
    .line 38
    invoke-static {v0, v1, v2}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->withUseOnly:Z

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    const-string v1, "with_use_only=true "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->withIDOnly:Z

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    const-string v1, "with_id_only=true "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->privateOnly:Z

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    const-string v1, "private_only=true "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->publicOnly:Z

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    const-string v1, "public_only=true "

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->nonRevokedOnly:Z

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    const-string v1, "non_revoked_only=true "

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->revokedOnly:Z

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    const-string v1, "revoked_only=true "

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_5
    iget v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    .line 96
    .line 97
    const-string v2, " "

    .line 98
    .line 99
    if-lez v1, :cond_6

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v3, "min_size="

    .line 104
    .line 105
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget v3, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->minSizeBits:I

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :cond_6
    iget v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    .line 124
    .line 125
    if-lez v1, :cond_7

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v3, "max_size="

    .line 130
    .line 131
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget v3, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->maxSizeBits:I

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    :cond_7
    const-string v1, "size"

    .line 150
    .line 151
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->sizesBits:Ljava/util/Set;

    .line 152
    .line 153
    invoke-static {v0, v1, v2}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 154
    .line 155
    .line 156
    const-string v1, "crv"

    .line 157
    .line 158
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->curves:Ljava/util/Set;

    .line 159
    .line 160
    invoke-static {v0, v1, v2}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 161
    .line 162
    .line 163
    const-string v1, "x5t#S256"

    .line 164
    .line 165
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->x5tS256s:Ljava/util/Set;

    .line 166
    .line 167
    invoke-static {v0, v1, v2}, Lcom/nimbusds/jose/jwk/JWKMatcher;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 168
    .line 169
    .line 170
    iget-boolean p0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->withX5COnly:Z

    .line 171
    .line 172
    if-eqz p0, :cond_8

    .line 173
    .line 174
    const-string p0, "with_x5c_only=true"

    .line 175
    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0
.end method
