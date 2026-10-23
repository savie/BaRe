.class public final Lcom/nimbusds/jose/jwk/KeyType;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation


# static fields
.field public static final EC:Lcom/nimbusds/jose/jwk/KeyType;

.field public static final OCT:Lcom/nimbusds/jose/jwk/KeyType;

.field public static final OKP:Lcom/nimbusds/jose/jwk/KeyType;

.field public static final RSA:Lcom/nimbusds/jose/jwk/KeyType;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final requirement:Lcom/nimbusds/jose/Requirement;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyType;

    .line 2
    .line 3
    const-string v1, "EC"

    .line 4
    .line 5
    sget-object v2, Lcom/nimbusds/jose/Requirement;->RECOMMENDED:Lcom/nimbusds/jose/Requirement;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/nimbusds/jose/jwk/KeyType;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 11
    .line 12
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyType;

    .line 13
    .line 14
    const-string v1, "RSA"

    .line 15
    .line 16
    sget-object v2, Lcom/nimbusds/jose/Requirement;->REQUIRED:Lcom/nimbusds/jose/Requirement;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/nimbusds/jose/jwk/KeyType;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    .line 22
    .line 23
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyType;

    .line 24
    .line 25
    sget-object v1, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    .line 26
    .line 27
    const-string v2, "oct"

    .line 28
    .line 29
    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/jwk/KeyType;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    .line 33
    .line 34
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyType;

    .line 35
    .line 36
    const-string v2, "OKP"

    .line 37
    .line 38
    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/jwk/KeyType;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyType;->OKP:Lcom/nimbusds/jose/jwk/KeyType;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/KeyType;->value:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/KeyType;->requirement:Lcom/nimbusds/jose/Requirement;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "The key type value must not be null"

    .line 12
    .line 13
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method

.method public static forAlgorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/KeyType;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->HMAC_SHA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_3
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_4
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm$Family;->ECDH_ES:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_5
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm;->DIR:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 61
    .line 62
    invoke-virtual {v1, p0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_6

    .line 67
    .line 68
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_6
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm$Family;->AES_GCM_KW:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 72
    .line 73
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_7

    .line 78
    .line 79
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_7
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm$Family;->AES_KW:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 83
    .line 84
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_8

    .line 89
    .line 90
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_8
    sget-object v1, Lcom/nimbusds/jose/JWEAlgorithm$Family;->PBES2:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    .line 94
    .line 95
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_9

    .line 100
    .line 101
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_9
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->ED:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    .line 105
    .line 106
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_a

    .line 111
    .line 112
    sget-object p0, Lcom/nimbusds/jose/jwk/KeyType;->OKP:Lcom/nimbusds/jose/jwk/KeyType;

    .line 113
    .line 114
    return-object p0

    .line 115
    :cond_a
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/KeyType;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_2
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyType;->OKP:Lcom/nimbusds/jose/jwk/KeyType;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/KeyType;->getValue()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_3
    new-instance v1, Lcom/nimbusds/jose/jwk/KeyType;

    .line 57
    .line 58
    invoke-direct {v1, p0, v0}, Lcom/nimbusds/jose/jwk/KeyType;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_4
    const-string p0, "The key type to parse must not be null"

    .line 63
    .line 64
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/KeyType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyType;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public getRequirement()Lcom/nimbusds/jose/Requirement;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/KeyType;->requirement:Lcom/nimbusds/jose/Requirement;

    .line 2
    .line 3
    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/KeyType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/KeyType;->value:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/KeyType;->value:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONStringUtils;->toJSONString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/KeyType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
