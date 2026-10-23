.class public final Lcom/nimbusds/jose/jwk/JWKParameterNames;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "alg"

.field public static final ELLIPTIC_CURVE:Ljava/lang/String; = "crv"

.field public static final ELLIPTIC_CURVE_PRIVATE_KEY:Ljava/lang/String; = "d"

.field public static final ELLIPTIC_CURVE_X_COORDINATE:Ljava/lang/String; = "x"

.field public static final ELLIPTIC_CURVE_Y_COORDINATE:Ljava/lang/String; = "y"

.field public static final EXPIRATION_TIME:Ljava/lang/String; = "exp"

.field public static final ISSUED_AT:Ljava/lang/String; = "iat"

.field public static final KEY_ID:Ljava/lang/String; = "kid"

.field public static final KEY_OPS:Ljava/lang/String; = "key_ops"

.field public static final KEY_TYPE:Ljava/lang/String; = "kty"

.field public static final NOT_BEFORE:Ljava/lang/String; = "nbf"

.field public static final OCT_KEY_VALUE:Ljava/lang/String; = "k"

.field public static final OKP_PRIVATE_KEY:Ljava/lang/String; = "d"

.field public static final OKP_PUBLIC_KEY:Ljava/lang/String; = "x"

.field public static final OKP_SUBTYPE:Ljava/lang/String; = "crv"

.field public static final PUBLIC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_KEY_USE:Ljava/lang/String; = "use"

.field public static final REVOKED:Ljava/lang/String; = "revoked"

.field public static final RSA_EXPONENT:Ljava/lang/String; = "e"

.field public static final RSA_FIRST_CRT_COEFFICIENT:Ljava/lang/String; = "qi"

.field public static final RSA_FIRST_FACTOR_CRT_EXPONENT:Ljava/lang/String; = "dp"

.field public static final RSA_FIRST_PRIME_FACTOR:Ljava/lang/String; = "p"

.field public static final RSA_MODULUS:Ljava/lang/String; = "n"

.field public static final RSA_OTHER_PRIMES:Ljava/lang/String; = "oth"

.field public static final RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT:Ljava/lang/String; = "t"

.field public static final RSA_OTHER_PRIMES__FACTOR_CRT_EXPONENT:Ljava/lang/String; = "d"

.field public static final RSA_OTHER_PRIMES__PRIME_FACTOR:Ljava/lang/String; = "r"

.field public static final RSA_PRIVATE_EXPONENT:Ljava/lang/String; = "d"

.field public static final RSA_SECOND_FACTOR_CRT_EXPONENT:Ljava/lang/String; = "dq"

.field public static final RSA_SECOND_PRIME_FACTOR:Ljava/lang/String; = "q"

.field public static final X_509_CERT_CHAIN:Ljava/lang/String; = "x5c"

.field public static final X_509_CERT_SHA_1_THUMBPRINT:Ljava/lang/String; = "x5t"

.field public static final X_509_CERT_SHA_256_THUMBPRINT:Ljava/lang/String; = "x5t#S256"

.field public static final X_509_CERT_URL:Ljava/lang/String; = "x5u"


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v19, "crv"

    .line 4
    .line 5
    const-string v20, "x"

    .line 6
    .line 7
    const-string v1, "kty"

    .line 8
    .line 9
    const-string v2, "use"

    .line 10
    .line 11
    const-string v3, "key_ops"

    .line 12
    .line 13
    const-string v4, "alg"

    .line 14
    .line 15
    const-string v5, "kid"

    .line 16
    .line 17
    const-string v6, "x5u"

    .line 18
    .line 19
    const-string v7, "x5c"

    .line 20
    .line 21
    const-string v8, "x5t"

    .line 22
    .line 23
    const-string v9, "x5t#S256"

    .line 24
    .line 25
    const-string v10, "exp"

    .line 26
    .line 27
    const-string v11, "nbf"

    .line 28
    .line 29
    const-string v12, "iat"

    .line 30
    .line 31
    const-string v13, "revoked"

    .line 32
    .line 33
    const-string v14, "crv"

    .line 34
    .line 35
    const-string v15, "x"

    .line 36
    .line 37
    const-string v16, "y"

    .line 38
    .line 39
    const-string v17, "n"

    .line 40
    .line 41
    const-string v18, "e"

    .line 42
    .line 43
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/nimbusds/jose/jwk/JWKParameterNames;->PUBLIC:Ljava/util/Set;

    .line 55
    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
