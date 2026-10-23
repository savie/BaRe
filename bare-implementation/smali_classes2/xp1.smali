.class public final enum Lxp1;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lxp1;

.field public static final Companion:Lwp1;

.field private static final DEFAULT:Lxp1;

.field public static final enum FAST:Lxp1;

.field public static final enum FASTEST:Lxp1;

.field public static final enum MAXIMUM:Lxp1;

.field public static final enum NORMAL:Lxp1;

.field public static final enum NO_COMPRESSION:Lxp1;

.field public static final enum ULTRA:Lxp1;


# instance fields
.field private final level:I


# direct methods
.method private static final synthetic $values()[Lxp1;
    .locals 6

    .line 1
    sget-object v0, Lxp1;->NO_COMPRESSION:Lxp1;

    .line 2
    .line 3
    sget-object v1, Lxp1;->FASTEST:Lxp1;

    .line 4
    .line 5
    sget-object v2, Lxp1;->FAST:Lxp1;

    .line 6
    .line 7
    sget-object v3, Lxp1;->NORMAL:Lxp1;

    .line 8
    .line 9
    sget-object v4, Lxp1;->MAXIMUM:Lxp1;

    .line 10
    .line 11
    sget-object v5, Lxp1;->ULTRA:Lxp1;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lxp1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lxp1;

    .line 2
    .line 3
    const-string v1, "NO_COMPRESSION"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lxp1;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lxp1;->NO_COMPRESSION:Lxp1;

    .line 10
    .line 11
    new-instance v0, Lxp1;

    .line 12
    .line 13
    const-string v1, "FASTEST"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lxp1;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lxp1;->FASTEST:Lxp1;

    .line 20
    .line 21
    new-instance v1, Lxp1;

    .line 22
    .line 23
    const-string v2, "FAST"

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v4, 0x3

    .line 27
    invoke-direct {v1, v2, v3, v4}, Lxp1;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v1, Lxp1;->FAST:Lxp1;

    .line 31
    .line 32
    new-instance v1, Lxp1;

    .line 33
    .line 34
    const-string v2, "NORMAL"

    .line 35
    .line 36
    const/4 v3, 0x5

    .line 37
    invoke-direct {v1, v2, v4, v3}, Lxp1;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v1, Lxp1;->NORMAL:Lxp1;

    .line 41
    .line 42
    new-instance v1, Lxp1;

    .line 43
    .line 44
    const/4 v2, 0x4

    .line 45
    const/4 v4, 0x7

    .line 46
    const-string v5, "MAXIMUM"

    .line 47
    .line 48
    invoke-direct {v1, v5, v2, v4}, Lxp1;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v1, Lxp1;->MAXIMUM:Lxp1;

    .line 52
    .line 53
    new-instance v1, Lxp1;

    .line 54
    .line 55
    const-string v2, "ULTRA"

    .line 56
    .line 57
    const/16 v4, 0x9

    .line 58
    .line 59
    invoke-direct {v1, v2, v3, v4}, Lxp1;-><init>(Ljava/lang/String;II)V

    .line 60
    .line 61
    .line 62
    sput-object v1, Lxp1;->ULTRA:Lxp1;

    .line 63
    .line 64
    invoke-static {}, Lxp1;->$values()[Lxp1;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    sput-object v1, Lxp1;->$VALUES:[Lxp1;

    .line 69
    .line 70
    invoke-static {v1}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sput-object v1, Lxp1;->$ENTRIES:Ljx2;

    .line 75
    .line 76
    new-instance v1, Lwp1;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    sput-object v1, Lxp1;->Companion:Lwp1;

    .line 82
    .line 83
    sput-object v0, Lxp1;->DEFAULT:Lxp1;

    .line 84
    .line 85
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lxp1;->level:I

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Lxp1;
    .locals 1

    .line 1
    sget-object v0, Lxp1;->DEFAULT:Lxp1;

    .line 2
    .line 3
    return-object v0
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
    sget-object v0, Lxp1;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lxp1;
    .locals 1

    .line 1
    const-class v0, Lxp1;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lxp1;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lxp1;
    .locals 1

    .line 1
    sget-object v0, Lxp1;->$VALUES:[Lxp1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lxp1;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getLevel()I
    .locals 0

    .line 1
    iget p0, p0, Lxp1;->level:I

    .line 2
    .line 3
    return p0
.end method
