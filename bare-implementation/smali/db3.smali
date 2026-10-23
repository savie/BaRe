.class public final enum Ldb3;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Ldb3;

.field public static final enum AuthInfo:Ldb3;

.field public static final enum BaseFolder:Ldb3;

.field public static final enum KeyDerivation:Ldb3;

.field public static final enum KeyPair:Ldb3;

.field public static final enum Login:Ldb3;

.field public static final enum MetadataKeys:Ldb3;

.field public static final enum SessionValidation:Ldb3;


# instance fields
.field private final logLabel:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Ldb3;
    .locals 7

    .line 1
    sget-object v0, Ldb3;->AuthInfo:Ldb3;

    .line 2
    .line 3
    sget-object v1, Ldb3;->KeyDerivation:Ldb3;

    .line 4
    .line 5
    sget-object v2, Ldb3;->Login:Ldb3;

    .line 6
    .line 7
    sget-object v3, Ldb3;->MetadataKeys:Ldb3;

    .line 8
    .line 9
    sget-object v4, Ldb3;->KeyPair:Ldb3;

    .line 10
    .line 11
    sget-object v5, Ldb3;->BaseFolder:Ldb3;

    .line 12
    .line 13
    sget-object v6, Ldb3;->SessionValidation:Ldb3;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ldb3;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ldb3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "auth info"

    .line 5
    .line 6
    const-string v3, "AuthInfo"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Ldb3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Ldb3;->AuthInfo:Ldb3;

    .line 12
    .line 13
    new-instance v0, Ldb3;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "key derivation"

    .line 17
    .line 18
    const-string v3, "KeyDerivation"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Ldb3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Ldb3;->KeyDerivation:Ldb3;

    .line 24
    .line 25
    new-instance v0, Ldb3;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "login"

    .line 29
    .line 30
    const-string v3, "Login"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Ldb3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Ldb3;->Login:Ldb3;

    .line 36
    .line 37
    new-instance v0, Ldb3;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "metadata-key recovery"

    .line 41
    .line 42
    const-string v3, "MetadataKeys"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Ldb3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Ldb3;->MetadataKeys:Ldb3;

    .line 48
    .line 49
    new-instance v0, Ldb3;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "key-pair recovery"

    .line 53
    .line 54
    const-string v3, "KeyPair"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Ldb3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Ldb3;->KeyPair:Ldb3;

    .line 60
    .line 61
    new-instance v0, Ldb3;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "base-folder lookup"

    .line 65
    .line 66
    const-string v3, "BaseFolder"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Ldb3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Ldb3;->BaseFolder:Ldb3;

    .line 72
    .line 73
    new-instance v0, Ldb3;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "persisted-session validation"

    .line 77
    .line 78
    const-string v3, "SessionValidation"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Ldb3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Ldb3;->SessionValidation:Ldb3;

    .line 84
    .line 85
    invoke-static {}, Ldb3;->$values()[Ldb3;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Ldb3;->$VALUES:[Ldb3;

    .line 90
    .line 91
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Ldb3;->$ENTRIES:Ljx2;

    .line 96
    .line 97
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
    iput-object p3, p0, Ldb3;->logLabel:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Ljx2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljx2;"
        }
    .end annotation

    .line 1
    sget-object v0, Ldb3;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldb3;
    .locals 1

    .line 1
    const-class v0, Ldb3;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ldb3;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ldb3;
    .locals 1

    .line 1
    sget-object v0, Ldb3;->$VALUES:[Ldb3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ldb3;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getLogLabel()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ldb3;->logLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
