.class public Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/jwk/JWKMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private algs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;"
        }
    .end annotation
.end field

.field private curves:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation
.end field

.field private ids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxSizeBits:I

.field private minSizeBits:I

.field private nonRevokedOnly:Z

.field private ops:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field private privateOnly:Z

.field private publicOnly:Z

.field private revokedOnly:Z

.field private sizesBits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private types:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;"
        }
    .end annotation
.end field

.field private uses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;"
        }
    .end annotation
.end field

.field private withIDOnly:Z

.field private withUseOnly:Z

.field private withX5COnly:Z

.field private x5tS256s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withUseOnly:Z

    .line 128
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withIDOnly:Z

    .line 129
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->privateOnly:Z

    .line 130
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->publicOnly:Z

    .line 131
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->nonRevokedOnly:Z

    .line 132
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->revokedOnly:Z

    .line 133
    iput v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->minSizeBits:I

    .line 134
    iput v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->maxSizeBits:I

    .line 135
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withX5COnly:Z

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWKMatcher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withUseOnly:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withIDOnly:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->privateOnly:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->publicOnly:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->nonRevokedOnly:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->revokedOnly:Z

    .line 16
    .line 17
    iput v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->minSizeBits:I

    .line 18
    .line 19
    iput v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->maxSizeBits:I

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withX5COnly:Z

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getKeyTypes()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->types:Ljava/util/Set;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getKeyUses()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->uses:Ljava/util/Set;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getKeyOperations()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ops:Ljava/util/Set;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getAlgorithms()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algs:Ljava/util/Set;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getKeyIDs()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ids:Ljava/util/Set;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->isWithKeyUseOnly()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withUseOnly:Z

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->isWithKeyIDOnly()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withIDOnly:Z

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->isPrivateOnly()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->privateOnly:Z

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->isPublicOnly()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->publicOnly:Z

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->isNonRevokedOnly()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->nonRevokedOnly:Z

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->isNonRevokedOnly()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->revokedOnly:Z

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getMinKeySize()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iput v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->minSizeBits:I

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getMaxKeySize()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iput v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->maxSizeBits:I

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getKeySizes()Ljava/util/Set;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->sizesBits:Ljava/util/Set;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getCurves()Ljava/util/Set;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->curves:Ljava/util/Set;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getX509CertSHA256Thumbprints()Ljava/util/Set;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->x5tS256s:Ljava/util/Set;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->isWithX509CertChainOnly()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withX5COnly:Z

    .line 124
    .line 125
    return-void
.end method


# virtual methods
.method public algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algs:Ljava/util/Set;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algs:Ljava/util/Set;

    .line 17
    .line 18
    return-object p0
.end method

.method public algorithms(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algs:Ljava/util/Set;

    return-object p0
.end method

.method public varargs algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/jwk/JWKMatcher;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/nimbusds/jose/jwk/JWKMatcher;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->types:Ljava/util/Set;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->uses:Ljava/util/Set;

    .line 10
    .line 11
    move-object v4, v3

    .line 12
    iget-object v3, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ops:Ljava/util/Set;

    .line 13
    .line 14
    move-object v5, v4

    .line 15
    iget-object v4, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algs:Ljava/util/Set;

    .line 16
    .line 17
    move-object v6, v5

    .line 18
    iget-object v5, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ids:Ljava/util/Set;

    .line 19
    .line 20
    move-object v7, v6

    .line 21
    iget-boolean v6, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withUseOnly:Z

    .line 22
    .line 23
    move-object v8, v7

    .line 24
    iget-boolean v7, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withIDOnly:Z

    .line 25
    .line 26
    move-object v9, v8

    .line 27
    iget-boolean v8, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->privateOnly:Z

    .line 28
    .line 29
    move-object v10, v9

    .line 30
    iget-boolean v9, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->publicOnly:Z

    .line 31
    .line 32
    move-object v11, v10

    .line 33
    iget-boolean v10, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->nonRevokedOnly:Z

    .line 34
    .line 35
    move-object v12, v11

    .line 36
    iget-boolean v11, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->revokedOnly:Z

    .line 37
    .line 38
    move-object v13, v12

    .line 39
    iget v12, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->minSizeBits:I

    .line 40
    .line 41
    move-object v14, v13

    .line 42
    iget v13, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->maxSizeBits:I

    .line 43
    .line 44
    move-object v15, v14

    .line 45
    iget-object v14, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->sizesBits:Ljava/util/Set;

    .line 46
    .line 47
    move-object/from16 v16, v15

    .line 48
    .line 49
    iget-object v15, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->curves:Ljava/util/Set;

    .line 50
    .line 51
    move-object/from16 v17, v1

    .line 52
    .line 53
    iget-object v1, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->x5tS256s:Ljava/util/Set;

    .line 54
    .line 55
    iget-boolean v0, v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withX5COnly:Z

    .line 56
    .line 57
    move-object/from16 v18, v17

    .line 58
    .line 59
    move/from16 v17, v0

    .line 60
    .line 61
    move-object/from16 v0, v16

    .line 62
    .line 63
    move-object/from16 v16, v1

    .line 64
    .line 65
    move-object/from16 v1, v18

    .line 66
    .line 67
    invoke-direct/range {v0 .. v17}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZZZIILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 68
    .line 69
    .line 70
    return-object v0
.end method

.method public curve(Lcom/nimbusds/jose/jwk/Curve;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->curves:Ljava/util/Set;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->curves:Ljava/util/Set;

    .line 12
    .line 13
    return-object p0
.end method

.method public curves(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->curves:Ljava/util/Set;

    return-object p0
.end method

.method public varargs curves([Lcom/nimbusds/jose/jwk/Curve;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->curves(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public hasKeyID(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withKeyIDOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public hasKeyUse(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withKeyUseOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public hasX509CertChain(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withX509CertChainOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ids:Ljava/util/Set;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ids:Ljava/util/Set;

    .line 17
    .line 18
    return-object p0
.end method

.method public keyIDs(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ids:Ljava/util/Set;

    return-object p0
.end method

.method public varargs keyIDs([Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyIDs(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public keyOperation(Lcom/nimbusds/jose/jwk/KeyOperation;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ops:Ljava/util/Set;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ops:Ljava/util/Set;

    .line 17
    .line 18
    return-object p0
.end method

.method public keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->ops:Ljava/util/Set;

    return-object p0
.end method

.method public varargs keyOperations([Lcom/nimbusds/jose/jwk/KeyOperation;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public keySize(I)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->sizesBits:Ljava/util/Set;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->sizesBits:Ljava/util/Set;

    .line 16
    .line 17
    return-object p0
.end method

.method public keySizes(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->sizesBits:Ljava/util/Set;

    return-object p0
.end method

.method public varargs keySizes([I)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget v3, p1, v2

    .line 11
    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keySizes(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->types:Ljava/util/Set;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->types:Ljava/util/Set;

    .line 17
    .line 18
    return-object p0
.end method

.method public keyTypes(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->types:Ljava/util/Set;

    return-object p0
.end method

.method public varargs keyTypes([Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyTypes(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->uses:Ljava/util/Set;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->uses:Ljava/util/Set;

    .line 17
    .line 18
    return-object p0
.end method

.method public keyUses(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->uses:Ljava/util/Set;

    return-object p0
.end method

.method public varargs keyUses([Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyUses(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public maxKeySize(I)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->maxSizeBits:I

    .line 2
    .line 3
    return-object p0
.end method

.method public minKeySize(I)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->minSizeBits:I

    .line 2
    .line 3
    return-object p0
.end method

.method public nonRevokedOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->nonRevokedOnly:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public privateOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->privateOnly:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public publicOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->publicOnly:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public revokedOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->revokedOnly:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public withKeyIDOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withIDOnly:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public withKeyUseOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withUseOnly:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public withX509CertChainOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->withX5COnly:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->x5tS256s:Ljava/util/Set;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->x5tS256s:Ljava/util/Set;

    .line 12
    .line 13
    return-object p0
.end method

.method public x509CertSHA256Thumbprints(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->x5tS256s:Ljava/util/Set;

    return-object p0
.end method

.method public varargs x509CertSHA256Thumbprints([Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->x509CertSHA256Thumbprints(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
