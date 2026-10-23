.class public final Lcom/nimbusds/jose/JWSAlgorithm$Family;
.super Lcom/nimbusds/jose/AlgorithmFamily;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/JWSAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Family"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/AlgorithmFamily<",
        "Lcom/nimbusds/jose/JWSAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

.field public static final ED:Lcom/nimbusds/jose/JWSAlgorithm$Family;

.field public static final HMAC_SHA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

.field public static final RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

.field public static final SIGNATURE:Lcom/nimbusds/jose/JWSAlgorithm$Family;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 2
    .line 3
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm;->HS256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 4
    .line 5
    sget-object v2, Lcom/nimbusds/jose/JWSAlgorithm;->HS384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 6
    .line 7
    sget-object v3, Lcom/nimbusds/jose/JWSAlgorithm;->HS512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 8
    .line 9
    filled-new-array {v1, v2, v3}, [Lcom/nimbusds/jose/JWSAlgorithm;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/JWSAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWSAlgorithm;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->HMAC_SHA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 17
    .line 18
    new-instance v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 19
    .line 20
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm;->RS256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 21
    .line 22
    sget-object v2, Lcom/nimbusds/jose/JWSAlgorithm;->RS384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 23
    .line 24
    sget-object v3, Lcom/nimbusds/jose/JWSAlgorithm;->RS512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 25
    .line 26
    sget-object v4, Lcom/nimbusds/jose/JWSAlgorithm;->PS256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 27
    .line 28
    sget-object v5, Lcom/nimbusds/jose/JWSAlgorithm;->PS384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 29
    .line 30
    sget-object v6, Lcom/nimbusds/jose/JWSAlgorithm;->PS512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 31
    .line 32
    filled-new-array/range {v1 .. v6}, [Lcom/nimbusds/jose/JWSAlgorithm;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/JWSAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWSAlgorithm;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 40
    .line 41
    new-instance v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 42
    .line 43
    sget-object v2, Lcom/nimbusds/jose/JWSAlgorithm;->ES256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 44
    .line 45
    sget-object v3, Lcom/nimbusds/jose/JWSAlgorithm;->ES256K:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 46
    .line 47
    sget-object v4, Lcom/nimbusds/jose/JWSAlgorithm;->ES384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 48
    .line 49
    sget-object v5, Lcom/nimbusds/jose/JWSAlgorithm;->ES512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 50
    .line 51
    filled-new-array {v2, v3, v4, v5}, [Lcom/nimbusds/jose/JWSAlgorithm;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-direct {v1, v2}, Lcom/nimbusds/jose/JWSAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWSAlgorithm;)V

    .line 56
    .line 57
    .line 58
    sput-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 59
    .line 60
    new-instance v2, Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 61
    .line 62
    sget-object v3, Lcom/nimbusds/jose/JWSAlgorithm;->EdDSA:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 63
    .line 64
    sget-object v4, Lcom/nimbusds/jose/JWSAlgorithm;->Ed25519:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 65
    .line 66
    sget-object v5, Lcom/nimbusds/jose/JWSAlgorithm;->Ed448:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 67
    .line 68
    filled-new-array {v3, v4, v5}, [Lcom/nimbusds/jose/JWSAlgorithm;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-direct {v2, v3}, Lcom/nimbusds/jose/JWSAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWSAlgorithm;)V

    .line 73
    .line 74
    .line 75
    sput-object v2, Lcom/nimbusds/jose/JWSAlgorithm$Family;->ED:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 76
    .line 77
    new-instance v3, Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    new-array v5, v4, [Lcom/nimbusds/jose/JWSAlgorithm;

    .line 81
    .line 82
    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-array v5, v4, [Lcom/nimbusds/jose/JWSAlgorithm;

    .line 87
    .line 88
    invoke-virtual {v1, v5}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, [Lcom/nimbusds/jose/JWSAlgorithm;

    .line 93
    .line 94
    new-array v4, v4, [Lcom/nimbusds/jose/JWSAlgorithm;

    .line 95
    .line 96
    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, [Lcom/nimbusds/jose/JWSAlgorithm;

    .line 101
    .line 102
    filled-new-array {v1, v2}, [[Lcom/nimbusds/jose/JWSAlgorithm;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Lcom/nimbusds/jose/util/ArrayUtils;->concat([Ljava/lang/Object;[[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, [Lcom/nimbusds/jose/JWSAlgorithm;

    .line 111
    .line 112
    invoke-direct {v3, v0}, Lcom/nimbusds/jose/JWSAlgorithm$Family;-><init>([Lcom/nimbusds/jose/JWSAlgorithm;)V

    .line 113
    .line 114
    .line 115
    sput-object v3, Lcom/nimbusds/jose/JWSAlgorithm$Family;->SIGNATURE:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 116
    .line 117
    return-void
.end method

.method public varargs constructor <init>([Lcom/nimbusds/jose/JWSAlgorithm;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;-><init>([Lcom/nimbusds/jose/Algorithm;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Lcom/nimbusds/jose/Algorithm;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->add(Lcom/nimbusds/jose/Algorithm;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->addAll(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->remove(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->removeAll(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nimbusds/jose/AlgorithmFamily;->retainAll(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
