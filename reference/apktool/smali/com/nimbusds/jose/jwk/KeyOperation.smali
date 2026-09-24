.class public final enum Lcom/nimbusds/jose/jwk/KeyOperation;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nimbusds/jose/jwk/KeyOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nimbusds/jose/jwk/KeyOperation;

.field public static final enum DECRYPT:Lcom/nimbusds/jose/jwk/KeyOperation;

.field public static final enum DERIVE_BITS:Lcom/nimbusds/jose/jwk/KeyOperation;

.field public static final enum DERIVE_KEY:Lcom/nimbusds/jose/jwk/KeyOperation;

.field public static final enum ENCRYPT:Lcom/nimbusds/jose/jwk/KeyOperation;

.field public static final enum SIGN:Lcom/nimbusds/jose/jwk/KeyOperation;

.field public static final enum UNWRAP_KEY:Lcom/nimbusds/jose/jwk/KeyOperation;

.field public static final enum VERIFY:Lcom/nimbusds/jose/jwk/KeyOperation;

.field public static final enum WRAP_KEY:Lcom/nimbusds/jose/jwk/KeyOperation;


# instance fields
.field private final identifier:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/nimbusds/jose/jwk/KeyOperation;
    .locals 8

    .line 1
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyOperation;->SIGN:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 2
    .line 3
    sget-object v1, Lcom/nimbusds/jose/jwk/KeyOperation;->VERIFY:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 4
    .line 5
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyOperation;->ENCRYPT:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 6
    .line 7
    sget-object v3, Lcom/nimbusds/jose/jwk/KeyOperation;->DECRYPT:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 8
    .line 9
    sget-object v4, Lcom/nimbusds/jose/jwk/KeyOperation;->WRAP_KEY:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 10
    .line 11
    sget-object v5, Lcom/nimbusds/jose/jwk/KeyOperation;->UNWRAP_KEY:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 12
    .line 13
    sget-object v6, Lcom/nimbusds/jose/jwk/KeyOperation;->DERIVE_KEY:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 14
    .line 15
    sget-object v7, Lcom/nimbusds/jose/jwk/KeyOperation;->DERIVE_BITS:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "sign"

    .line 5
    .line 6
    const-string v3, "SIGN"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/jwk/KeyOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyOperation;->SIGN:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 12
    .line 13
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "verify"

    .line 17
    .line 18
    const-string v3, "VERIFY"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/jwk/KeyOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyOperation;->VERIFY:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 24
    .line 25
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "encrypt"

    .line 29
    .line 30
    const-string v3, "ENCRYPT"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/jwk/KeyOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyOperation;->ENCRYPT:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 36
    .line 37
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "decrypt"

    .line 41
    .line 42
    const-string v3, "DECRYPT"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/jwk/KeyOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyOperation;->DECRYPT:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 48
    .line 49
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "wrapKey"

    .line 53
    .line 54
    const-string v3, "WRAP_KEY"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/jwk/KeyOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyOperation;->WRAP_KEY:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 60
    .line 61
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "unwrapKey"

    .line 65
    .line 66
    const-string v3, "UNWRAP_KEY"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/jwk/KeyOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyOperation;->UNWRAP_KEY:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 72
    .line 73
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "deriveKey"

    .line 77
    .line 78
    const-string v3, "DERIVE_KEY"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/jwk/KeyOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyOperation;->DERIVE_KEY:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 84
    .line 85
    new-instance v0, Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "deriveBits"

    .line 89
    .line 90
    const-string v3, "DERIVE_BITS"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/jwk/KeyOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyOperation;->DERIVE_BITS:Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 96
    .line 97
    invoke-static {}, Lcom/nimbusds/jose/jwk/KeyOperation;->$values()[Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/nimbusds/jose/jwk/KeyOperation;->$VALUES:[Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 102
    .line 103
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/KeyOperation;->identifier:Ljava/lang/String;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "The key operation identifier must not be null"

    .line 10
    .line 11
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method public static parse(Ljava/util/List;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_5

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lcom/nimbusds/jose/jwk/KeyOperation;->values()[Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    array-length v4, v3

    .line 34
    const/4 v5, 0x0

    .line 35
    move v6, v5

    .line 36
    :goto_1
    if-ge v6, v4, :cond_3

    .line 37
    .line 38
    aget-object v7, v3, v6

    .line 39
    .line 40
    invoke-virtual {v7}, Lcom/nimbusds/jose/jwk/KeyOperation;->identifier()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move-object v7, v0

    .line 55
    :goto_2
    if-eqz v7, :cond_4

    .line 56
    .line 57
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    const-string p0, "Invalid JWK operation: "

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v5, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_5
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/KeyOperation;
    .locals 1

    .line 1
    const-class v0, Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/nimbusds/jose/jwk/KeyOperation;
    .locals 1

    .line 1
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyOperation;->$VALUES:[Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/nimbusds/jose/jwk/KeyOperation;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/nimbusds/jose/jwk/KeyOperation;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public identifier()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/KeyOperation;->identifier:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/KeyOperation;->identifier()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
