.class public final Lcom/nimbusds/jose/jwk/Curve;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation


# static fields
.field public static final Ed25519:Lcom/nimbusds/jose/jwk/Curve;

.field public static final Ed448:Lcom/nimbusds/jose/jwk/Curve;

.field public static final P_256:Lcom/nimbusds/jose/jwk/Curve;

.field public static final P_256K:Lcom/nimbusds/jose/jwk/Curve;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final P_384:Lcom/nimbusds/jose/jwk/Curve;

.field public static final P_521:Lcom/nimbusds/jose/jwk/Curve;

.field public static final SECP256K1:Lcom/nimbusds/jose/jwk/Curve;

.field public static final X25519:Lcom/nimbusds/jose/jwk/Curve;

.field public static final X448:Lcom/nimbusds/jose/jwk/Curve;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final name:Ljava/lang/String;

.field private final oid:Ljava/lang/String;

.field private final stdName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    .line 2
    .line 3
    const-string v1, "secp256r1"

    .line 4
    .line 5
    const-string v2, "1.2.840.10045.3.1.7"

    .line 6
    .line 7
    const-string v3, "P-256"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    .line 13
    .line 14
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    .line 15
    .line 16
    const-string v1, "secp256k1"

    .line 17
    .line 18
    const-string v2, "1.3.132.0.10"

    .line 19
    .line 20
    invoke-direct {v0, v1, v1, v2}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->SECP256K1:Lcom/nimbusds/jose/jwk/Curve;

    .line 24
    .line 25
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    .line 26
    .line 27
    const-string v3, "P-256K"

    .line 28
    .line 29
    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_256K:Lcom/nimbusds/jose/jwk/Curve;

    .line 33
    .line 34
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    .line 35
    .line 36
    const-string v1, "secp384r1"

    .line 37
    .line 38
    const-string v2, "1.3.132.0.34"

    .line 39
    .line 40
    const-string v3, "P-384"

    .line 41
    .line 42
    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    .line 46
    .line 47
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    .line 48
    .line 49
    const-string v1, "secp521r1"

    .line 50
    .line 51
    const-string v2, "1.3.132.0.35"

    .line 52
    .line 53
    const-string v3, "P-521"

    .line 54
    .line 55
    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    .line 59
    .line 60
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    .line 61
    .line 62
    const-string v1, "Ed25519"

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-direct {v0, v1, v1, v2}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 69
    .line 70
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    .line 71
    .line 72
    const-string v1, "Ed448"

    .line 73
    .line 74
    invoke-direct {v0, v1, v1, v2}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed448:Lcom/nimbusds/jose/jwk/Curve;

    .line 78
    .line 79
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    .line 80
    .line 81
    const-string v1, "X25519"

    .line 82
    .line 83
    invoke-direct {v0, v1, v1, v2}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 87
    .line 88
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    .line 89
    .line 90
    const-string v1, "X448"

    .line 91
    .line 92
    invoke-direct {v0, v1, v1, v2}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/nimbusds/jose/jwk/Curve;->X448:Lcom/nimbusds/jose/jwk/Curve;

    .line 96
    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0, v0}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/Curve;->name:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/Curve;->stdName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/Curve;->oid:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static forECParameterSpec(Ljava/security/spec/ECParameterSpec;)Lcom/nimbusds/jose/jwk/Curve;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/ECParameterTable;->get(Ljava/security/spec/ECParameterSpec;)Lcom/nimbusds/jose/jwk/Curve;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static forJWSAlgorithm(Lcom/nimbusds/jose/JWSAlgorithm;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ")",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    .line 10
    .line 11
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256K:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->SECP256K1:Lcom/nimbusds/jose/jwk/Curve;

    .line 25
    .line 26
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    .line 40
    .line 41
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    .line 55
    .line 56
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->EdDSA:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_4

    .line 68
    .line 69
    new-instance p0, Ljava/util/HashSet;

    .line 70
    .line 71
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 72
    .line 73
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->Ed448:Lcom/nimbusds/jose/jwk/Curve;

    .line 74
    .line 75
    filled-new-array {v0, v1}, [Lcom/nimbusds/jose/jwk/Curve;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_4
    const/4 p0, 0x0

    .line 92
    return-object p0
.end method

.method public static forOID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/Curve;
    .locals 2

    .line 1
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getOID()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->SECP256K1:Lcom/nimbusds/jose/jwk/Curve;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getOID()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getOID()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getOID()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_3
    const/4 p0, 0x0

    .line 54
    return-object p0
.end method

.method public static forStdName(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/Curve;
    .locals 2

    .line 1
    const-string v0, "secp256r1"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_8

    .line 8
    .line 9
    const-string v0, "prime256v1"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "secp256k1"

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->SECP256K1:Lcom/nimbusds/jose/jwk/Curve;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    const-string v0, "secp384r1"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_2
    const-string v0, "secp521r1"

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getStdName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_4
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed448:Lcom/nimbusds/jose/jwk/Curve;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getStdName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_5
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getStdName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_6

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_6
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->X448:Lcom/nimbusds/jose/jwk/Curve;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getStdName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_7

    .line 101
    .line 102
    return-object v0

    .line 103
    :cond_7
    const/4 p0, 0x0

    .line 104
    return-object p0

    .line 105
    :cond_8
    :goto_0
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    .line 106
    .line 107
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/Curve;
    .locals 2

    .line 1
    if-eqz p0, :cond_9

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_9

    .line 12
    .line 13
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_256:Lcom/nimbusds/jose/jwk/Curve;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_256K:Lcom/nimbusds/jose/jwk/Curve;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->SECP256K1:Lcom/nimbusds/jose/jwk/Curve;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_384:Lcom/nimbusds/jose/jwk/Curve;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->P_521:Lcom/nimbusds/jose/jwk/Curve;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_4
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_5
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed448:Lcom/nimbusds/jose/jwk/Curve;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_6
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_7
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->X448:Lcom/nimbusds/jose/jwk/Curve;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_8

    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_8
    new-instance v0, Lcom/nimbusds/jose/jwk/Curve;

    .line 131
    .line 132
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/jwk/Curve;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_9
    const-string p0, "The cryptographic curve string must not be null or empty"

    .line 137
    .line 138
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const/4 p0, 0x0

    .line 142
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/Curve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/Curve;->toString()Ljava/lang/String;

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

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/Curve;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOID()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/Curve;->oid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStdName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/Curve;->stdName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public toECParameterSpec()Ljava/security/spec/ECParameterSpec;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/jwk/ECParameterTable;->get(Lcom/nimbusds/jose/jwk/Curve;)Ljava/security/spec/ECParameterSpec;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/Curve;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
