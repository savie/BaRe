.class public final Lcom/nimbusds/jose/JWEHeader;
.super Lcom/nimbusds/jose/CommonSEHeader;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/JWEHeader$Builder;
    }
.end annotation


# static fields
.field private static final REGISTERED_PARAMETER_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final apu:Lcom/nimbusds/jose/util/Base64URL;

.field private final apv:Lcom/nimbusds/jose/util/Base64URL;

.field private final aud:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final enc:Lcom/nimbusds/jose/EncryptionMethod;

.field private final epk:Lcom/nimbusds/jose/jwk/JWK;

.field private final iss:Ljava/lang/String;

.field private final iv:Lcom/nimbusds/jose/util/Base64URL;

.field private final p2c:I

.field private final p2s:Lcom/nimbusds/jose/util/Base64URL;

.field private final skid:Ljava/lang/String;

.field private final sub:Ljava/lang/String;

.field private final tag:Lcom/nimbusds/jose/util/Base64URL;

.field private final zip:Lcom/nimbusds/jose/CompressionAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "alg"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const-string v1, "enc"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string v1, "epk"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v1, "zip"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const-string v1, "jku"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    const-string v1, "jwk"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const-string v1, "x5u"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    const-string v1, "x5t"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    const-string v1, "x5t#S256"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    const-string v1, "x5c"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    const-string v1, "kid"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    const-string v1, "typ"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    const-string v1, "cty"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    const-string v1, "crit"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    const-string v1, "apu"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    const-string v1, "apv"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const-string v1, "p2s"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    const-string v1, "p2c"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    const-string v1, "iv"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    const-string v1, "tag"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    const-string v1, "skid"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    const-string v1, "iss"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    const-string v1, "sub"

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    const-string v1, "aud"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    const-string v1, "authTag"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sput-object v0, Lcom/nimbusds/jose/JWEHeader;->REGISTERED_PARAMETER_NAMES:Ljava/util/Set;

    .line 136
    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/EncryptionMethod;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Lcom/nimbusds/jose/jwk/JWK;Lcom/nimbusds/jose/CompressionAlgorithm;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;ILcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/Algorithm;",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/jwk/JWK;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/nimbusds/jose/jwk/JWK;",
            "Lcom/nimbusds/jose/CompressionAlgorithm;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "I",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p13

    move-object v1, p0

    move-object/from16 v2, p1

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

    move-object/from16 v13, p25

    move-object/from16 v14, p26

    .line 1
    invoke-direct/range {v1 .. v14}, Lcom/nimbusds/jose/CommonSEHeader;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nimbusds/jose/Algorithm;->NONE:Lcom/nimbusds/jose/Algorithm;

    invoke-virtual {v4}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-string p0, "The JWE algorithm cannot be \"none\""

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    const-string p0, "Ephemeral public key should not be a private key"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_3
    :goto_1
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p2

    iput-object v2, p0, Lcom/nimbusds/jose/JWEHeader;->enc:Lcom/nimbusds/jose/EncryptionMethod;

    .line 7
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->epk:Lcom/nimbusds/jose/jwk/JWK;

    move-object/from16 v0, p14

    .line 8
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->zip:Lcom/nimbusds/jose/CompressionAlgorithm;

    move-object/from16 v0, p15

    .line 9
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->apu:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v0, p16

    .line 10
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->apv:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v0, p17

    .line 11
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->p2s:Lcom/nimbusds/jose/util/Base64URL;

    move/from16 v0, p18

    .line 12
    iput v0, p0, Lcom/nimbusds/jose/JWEHeader;->p2c:I

    move-object/from16 v0, p19

    .line 13
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->iv:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v0, p20

    .line 14
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->tag:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v0, p21

    .line 15
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->skid:Ljava/lang/String;

    move-object/from16 v0, p22

    .line 16
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->iss:Ljava/lang/String;

    move-object/from16 v0, p23

    .line 17
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->sub:Ljava/lang/String;

    move-object/from16 v0, p24

    .line 18
    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->aud:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/EncryptionMethod;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Lcom/nimbusds/jose/jwk/JWK;Lcom/nimbusds/jose/CompressionAlgorithm;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;ILcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/lang/String;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/Algorithm;",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/jwk/JWK;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/nimbusds/jose/jwk/JWK;",
            "Lcom/nimbusds/jose/CompressionAlgorithm;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "I",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v23, 0x0

    const/16 v24, 0x0

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

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v25, p22

    move-object/from16 v26, p23

    .line 20
    invoke-direct/range {v0 .. v26}, Lcom/nimbusds/jose/JWEHeader;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/EncryptionMethod;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Lcom/nimbusds/jose/jwk/JWK;Lcom/nimbusds/jose/CompressionAlgorithm;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;ILcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/EncryptionMethod;)V
    .locals 27

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 21
    invoke-direct/range {v0 .. v26}, Lcom/nimbusds/jose/JWEHeader;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/EncryptionMethod;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Lcom/nimbusds/jose/jwk/JWK;Lcom/nimbusds/jose/CompressionAlgorithm;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;ILcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/JWEAlgorithm;Lcom/nimbusds/jose/EncryptionMethod;)V
    .locals 27

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 19
    invoke-direct/range {v0 .. v26}, Lcom/nimbusds/jose/JWEHeader;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/EncryptionMethod;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Lcom/nimbusds/jose/jwk/JWK;Lcom/nimbusds/jose/CompressionAlgorithm;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;ILcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/JWEHeader;)V
    .locals 27

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v2

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/Header;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    move-result-object v3

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/Header;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/Header;->getCriticalParams()Ljava/util/Set;

    move-result-object v5

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getJWKURL()Ljava/net/URI;

    move-result-object v6

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getJWK()Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v7

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertURL()Ljava/net/URI;

    move-result-object v8

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v9

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v10

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertChain()Ljava/util/List;

    move-result-object v11

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getKeyID()Ljava/lang/String;

    move-result-object v12

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getEphemeralPublicKey()Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v13

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getCompressionAlgorithm()Lcom/nimbusds/jose/CompressionAlgorithm;

    move-result-object v14

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getAgreementPartyUInfo()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v15

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getAgreementPartyVInfo()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v16

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Salt()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v17

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Count()I

    move-result v18

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getIV()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v19

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getAuthTag()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v20

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getSenderKeyID()Ljava/lang/String;

    move-result-object v21

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getIssuer()Ljava/lang/String;

    move-result-object v22

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getSubject()Ljava/lang/String;

    move-result-object v23

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getAudience()Ljava/util/List;

    move-result-object v24

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/Header;->getCustomParams()Ljava/util/Map;

    move-result-object v25

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/Header;->getParsedBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v26

    move-object/from16 v0, p0

    .line 48
    invoke-direct/range {v0 .. v26}, Lcom/nimbusds/jose/JWEHeader;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/EncryptionMethod;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Lcom/nimbusds/jose/jwk/JWK;Lcom/nimbusds/jose/CompressionAlgorithm;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;ILcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method public static getRegisteredParameterNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/JWEHeader;->REGISTERED_PARAMETER_NAMES:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static parse(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 557
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->decodeToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nimbusds/jose/JWEHeader;->parse(Ljava/lang/String;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 555
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nimbusds/jose/JWEHeader;->parse(Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v0, 0x4e20

    .line 556
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/nimbusds/jose/JWEHeader;->parse(Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/util/Map;)Lcom/nimbusds/jose/JWEHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/JWEHeader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 554
    invoke-static {p0, v0}, Lcom/nimbusds/jose/JWEHeader;->parse(Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ")",
            "Lcom/nimbusds/jose/JWEHeader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/JWEHeader;->parseEncryptionMethod(Ljava/util/Map;)Lcom/nimbusds/jose/EncryptionMethod;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/nimbusds/jose/JWEHeader$Builder;-><init>(Lcom/nimbusds/jose/EncryptionMethod;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/nimbusds/jose/JWEHeader$Builder;->parsedBase64URL(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1a

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "alg"

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/nimbusds/jose/JWEAlgorithm;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWEAlgorithm;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->alg(Lcom/nimbusds/jose/JWEAlgorithm;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string v2, "enc"

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-string v2, "typ"

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    new-instance v2, Lcom/nimbusds/jose/JOSEObjectType;

    .line 79
    .line 80
    invoke-direct {v2, v1}, Lcom/nimbusds/jose/JOSEObjectType;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v2}, Lcom/nimbusds/jose/JWEHeader$Builder;->type(Lcom/nimbusds/jose/JOSEObjectType;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    const-string v2, "cty"

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->contentType(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    const-string v2, "crit"

    .line 106
    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getStringList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_0

    .line 118
    .line 119
    new-instance v2, Ljava/util/HashSet;

    .line 120
    .line 121
    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v2}, Lcom/nimbusds/jose/JWEHeader$Builder;->criticalParams(Ljava/util/Set;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    goto :goto_0

    .line 129
    :cond_5
    const-string v2, "jku"

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_6

    .line 136
    .line 137
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getURI(Ljava/util/Map;Ljava/lang/String;)Ljava/net/URI;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->jwkURL(Ljava/net/URI;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    goto :goto_0

    .line 146
    :cond_6
    const-string v2, "jwk"

    .line 147
    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_7

    .line 153
    .line 154
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Lcom/nimbusds/jose/CommonSEHeader;->parsePublicJWK(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/JWK;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->jwk(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_7
    const-string v2, "x5u"

    .line 169
    .line 170
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_8

    .line 175
    .line 176
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getURI(Ljava/util/Map;Ljava/lang/String;)Ljava/net/URI;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_8
    const-string v2, "x5t"

    .line 187
    .line 188
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_9

    .line 193
    .line 194
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_9
    const-string v2, "x5t#S256"

    .line 209
    .line 210
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_a

    .line 215
    .line 216
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_a
    const-string v2, "x5c"

    .line 231
    .line 232
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_b

    .line 237
    .line 238
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONArray(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-static {v1}, Lcom/nimbusds/jose/util/X509CertChainUtils;->toBase64List(Ljava/util/List;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_b
    const-string v2, "kid"

    .line 253
    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_c

    .line 259
    .line 260
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :cond_c
    const-string v2, "epk"

    .line 271
    .line 272
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_d

    .line 277
    .line 278
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-static {v1}, Lcom/nimbusds/jose/jwk/JWK;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/jwk/JWK;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->ephemeralPublicKey(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    goto/16 :goto_0

    .line 291
    .line 292
    :cond_d
    const-string v2, "zip"

    .line 293
    .line 294
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eqz v2, :cond_e

    .line 299
    .line 300
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    if-eqz v1, :cond_0

    .line 305
    .line 306
    new-instance v2, Lcom/nimbusds/jose/CompressionAlgorithm;

    .line 307
    .line 308
    invoke-direct {v2, v1}, Lcom/nimbusds/jose/CompressionAlgorithm;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1, v2}, Lcom/nimbusds/jose/JWEHeader$Builder;->compressionAlgorithm(Lcom/nimbusds/jose/CompressionAlgorithm;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    goto/16 :goto_0

    .line 316
    .line 317
    :cond_e
    const-string v2, "apu"

    .line 318
    .line 319
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-eqz v2, :cond_f

    .line 324
    .line 325
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->agreementPartyUInfo(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :cond_f
    const-string v2, "apv"

    .line 340
    .line 341
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-eqz v2, :cond_10

    .line 346
    .line 347
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->agreementPartyVInfo(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :cond_10
    const-string v2, "p2s"

    .line 362
    .line 363
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-eqz v2, :cond_11

    .line 368
    .line 369
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->pbes2Salt(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :cond_11
    const-string v2, "p2c"

    .line 384
    .line 385
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    if-eqz v2, :cond_12

    .line 390
    .line 391
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getInt(Ljava/util/Map;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->pbes2Count(I)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :cond_12
    const-string v2, "iv"

    .line 402
    .line 403
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-eqz v2, :cond_13

    .line 408
    .line 409
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->iv(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :cond_13
    const-string v2, "tag"

    .line 424
    .line 425
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    if-eqz v2, :cond_14

    .line 430
    .line 431
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->authTag(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    goto/16 :goto_0

    .line 444
    .line 445
    :cond_14
    const-string v2, "skid"

    .line 446
    .line 447
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-eqz v2, :cond_15

    .line 452
    .line 453
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->senderKeyID(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    goto/16 :goto_0

    .line 462
    .line 463
    :cond_15
    const-string v2, "iss"

    .line 464
    .line 465
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    if-eqz v2, :cond_16

    .line 470
    .line 471
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->issuer(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    goto/16 :goto_0

    .line 480
    .line 481
    :cond_16
    const-string v2, "sub"

    .line 482
    .line 483
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    if-eqz v2, :cond_17

    .line 488
    .line 489
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->subject(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    goto/16 :goto_0

    .line 498
    .line 499
    :cond_17
    const-string v2, "aud"

    .line 500
    .line 501
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    if-eqz v2, :cond_19

    .line 506
    .line 507
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    instance-of v2, v2, Ljava/lang/String;

    .line 512
    .line 513
    if-eqz v2, :cond_18

    .line 514
    .line 515
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->audience(Ljava/util/List;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    goto/16 :goto_0

    .line 528
    .line 529
    :cond_18
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getStringList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->audience(Ljava/util/List;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    goto/16 :goto_0

    .line 538
    .line 539
    :cond_19
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    invoke-virtual {p1, v1, v2}, Lcom/nimbusds/jose/JWEHeader$Builder;->customParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :cond_1a
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader$Builder;->build()Lcom/nimbusds/jose/JWEHeader;

    .line 550
    .line 551
    .line 552
    move-result-object p0

    .line 553
    return-object p0
.end method

.method private static parseEncryptionMethod(Ljava/util/Map;)Lcom/nimbusds/jose/EncryptionMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/EncryptionMethod;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const-string v0, "enc"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/nimbusds/jose/EncryptionMethod;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/EncryptionMethod;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public getAgreementPartyUInfo()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEHeader;->apu:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAgreementPartyVInfo()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEHeader;->apv:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic getAlgorithm()Lcom/nimbusds/jose/Algorithm;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method public getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/Header;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/nimbusds/jose/JWEAlgorithm;

    .line 6
    .line 7
    return-object p0
.end method

.method public getAudience()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEHeader;->aud:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method

.method public getAuthTag()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEHeader;->tag:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCompressionAlgorithm()Lcom/nimbusds/jose/CompressionAlgorithm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEHeader;->zip:Lcom/nimbusds/jose/CompressionAlgorithm;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEHeader;->enc:Lcom/nimbusds/jose/EncryptionMethod;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEphemeralPublicKey()Lcom/nimbusds/jose/jwk/JWK;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEHeader;->epk:Lcom/nimbusds/jose/jwk/JWK;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIV()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEHeader;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIncludedParams()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/CommonSEHeader;->getIncludedParams()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->enc:Lcom/nimbusds/jose/EncryptionMethod;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "enc"

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->epk:Lcom/nimbusds/jose/jwk/JWK;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const-string v1, "epk"

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->zip:Lcom/nimbusds/jose/CompressionAlgorithm;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    const-string v1, "zip"

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->apu:Lcom/nimbusds/jose/util/Base64URL;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    const-string v1, "apu"

    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_3
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->apv:Lcom/nimbusds/jose/util/Base64URL;

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    const-string v1, "apv"

    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_4
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->p2s:Lcom/nimbusds/jose/util/Base64URL;

    .line 51
    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    const-string v1, "p2s"

    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_5
    iget v1, p0, Lcom/nimbusds/jose/JWEHeader;->p2c:I

    .line 60
    .line 61
    if-lez v1, :cond_6

    .line 62
    .line 63
    const-string v1, "p2c"

    .line 64
    .line 65
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_6
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 69
    .line 70
    if-eqz v1, :cond_7

    .line 71
    .line 72
    const-string v1, "iv"

    .line 73
    .line 74
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_7
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->tag:Lcom/nimbusds/jose/util/Base64URL;

    .line 78
    .line 79
    if-eqz v1, :cond_8

    .line 80
    .line 81
    const-string v1, "tag"

    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_8
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->skid:Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v1, :cond_9

    .line 89
    .line 90
    const-string v1, "skid"

    .line 91
    .line 92
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_9
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->iss:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v1, :cond_a

    .line 98
    .line 99
    const-string v1, "iss"

    .line 100
    .line 101
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_a
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->sub:Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v1, :cond_b

    .line 107
    .line 108
    const-string v1, "sub"

    .line 109
    .line 110
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_b
    iget-object p0, p0, Lcom/nimbusds/jose/JWEHeader;->aud:Ljava/util/List;

    .line 114
    .line 115
    if-eqz p0, :cond_c

    .line 116
    .line 117
    const-string p0, "aud"

    .line 118
    .line 119
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_c
    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEHeader;->iss:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic getJWK()Lcom/nimbusds/jose/jwk/JWK;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/CommonSEHeader;->getJWK()Lcom/nimbusds/jose/jwk/JWK;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public bridge synthetic getJWKURL()Ljava/net/URI;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/CommonSEHeader;->getJWKURL()Ljava/net/URI;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public bridge synthetic getKeyID()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/CommonSEHeader;->getKeyID()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getPBES2Count()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/nimbusds/jose/JWEHeader;->p2c:I

    .line 2
    .line 3
    return p0
.end method

.method public getPBES2Salt()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEHeader;->p2s:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSenderKeyID()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEHeader;->skid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEHeader;->sub:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic getX509CertChain()Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/CommonSEHeader;->getX509CertChain()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public bridge synthetic getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/CommonSEHeader;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public bridge synthetic getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/CommonSEHeader;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public bridge synthetic getX509CertURL()Ljava/net/URI;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/CommonSEHeader;->getX509CertURL()Ljava/net/URI;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public toJSONObject()Ljava/util/Map;
    .locals 5
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
    invoke-super {p0}, Lcom/nimbusds/jose/CommonSEHeader;->toJSONObject()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->enc:Lcom/nimbusds/jose/EncryptionMethod;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v2, "enc"

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/nimbusds/jose/Algorithm;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->epk:Lcom/nimbusds/jose/jwk/JWK;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const-string v2, "epk"

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->zip:Lcom/nimbusds/jose/CompressionAlgorithm;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const-string v2, "zip"

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/nimbusds/jose/CompressionAlgorithm;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->apu:Lcom/nimbusds/jose/util/Base64URL;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    const-string v2, "apu"

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->apv:Lcom/nimbusds/jose/util/Base64URL;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    const-string v2, "apv"

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->p2s:Lcom/nimbusds/jose/util/Base64URL;

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    const-string v2, "p2s"

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_5
    iget v1, p0, Lcom/nimbusds/jose/JWEHeader;->p2c:I

    .line 84
    .line 85
    if-lez v1, :cond_6

    .line 86
    .line 87
    const-string v2, "p2c"

    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_6
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 97
    .line 98
    if-eqz v1, :cond_7

    .line 99
    .line 100
    const-string v2, "iv"

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_7
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->tag:Lcom/nimbusds/jose/util/Base64URL;

    .line 110
    .line 111
    if-eqz v1, :cond_8

    .line 112
    .line 113
    const-string v2, "tag"

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_8
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->skid:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz v1, :cond_9

    .line 125
    .line 126
    const-string v2, "skid"

    .line 127
    .line 128
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    :cond_9
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->iss:Ljava/lang/String;

    .line 132
    .line 133
    if-eqz v1, :cond_a

    .line 134
    .line 135
    const-string v2, "iss"

    .line 136
    .line 137
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_a
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->sub:Ljava/lang/String;

    .line 141
    .line 142
    if-eqz v1, :cond_b

    .line 143
    .line 144
    const-string v2, "sub"

    .line 145
    .line 146
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :cond_b
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->aud:Ljava/util/List;

    .line 150
    .line 151
    if-eqz v1, :cond_d

    .line 152
    .line 153
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iget-object v2, p0, Lcom/nimbusds/jose/JWEHeader;->aud:Ljava/util/List;

    .line 158
    .line 159
    const-string v3, "aud"

    .line 160
    .line 161
    const/4 v4, 0x1

    .line 162
    if-ne v1, v4, :cond_c

    .line 163
    .line 164
    const/4 p0, 0x0

    .line 165
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    return-object v0

    .line 173
    :cond_c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-nez v1, :cond_d

    .line 178
    .line 179
    iget-object p0, p0, Lcom/nimbusds/jose/JWEHeader;->aud:Ljava/util/List;

    .line 180
    .line 181
    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    :cond_d
    return-object v0
.end method
