.class public final enum Liw2;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Liw2;

.field public static final enum BOOLEAN:Liw2;

.field public static final Companion:Lhw2;

.field public static final enum FLOAT:Liw2;

.field public static final enum INT:Liw2;

.field public static final enum LONG:Liw2;

.field public static final enum STRING:Liw2;

.field public static final enum STRING_SET:Liw2;


# instance fields
.field private final id:I


# direct methods
.method private static final synthetic $values()[Liw2;
    .locals 6

    .line 1
    sget-object v0, Liw2;->STRING:Liw2;

    .line 2
    .line 3
    sget-object v1, Liw2;->STRING_SET:Liw2;

    .line 4
    .line 5
    sget-object v2, Liw2;->INT:Liw2;

    .line 6
    .line 7
    sget-object v3, Liw2;->LONG:Liw2;

    .line 8
    .line 9
    sget-object v4, Liw2;->FLOAT:Liw2;

    .line 10
    .line 11
    sget-object v5, Liw2;->BOOLEAN:Liw2;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Liw2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Liw2;

    .line 2
    .line 3
    const-string v1, "STRING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Liw2;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Liw2;->STRING:Liw2;

    .line 10
    .line 11
    new-instance v0, Liw2;

    .line 12
    .line 13
    const-string v1, "STRING_SET"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Liw2;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Liw2;->STRING_SET:Liw2;

    .line 20
    .line 21
    new-instance v0, Liw2;

    .line 22
    .line 23
    const-string v1, "INT"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Liw2;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Liw2;->INT:Liw2;

    .line 30
    .line 31
    new-instance v0, Liw2;

    .line 32
    .line 33
    const-string v1, "LONG"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Liw2;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Liw2;->LONG:Liw2;

    .line 40
    .line 41
    new-instance v0, Liw2;

    .line 42
    .line 43
    const-string v1, "FLOAT"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Liw2;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Liw2;->FLOAT:Liw2;

    .line 50
    .line 51
    new-instance v0, Liw2;

    .line 52
    .line 53
    const-string v1, "BOOLEAN"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Liw2;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Liw2;->BOOLEAN:Liw2;

    .line 60
    .line 61
    invoke-static {}, Liw2;->$values()[Liw2;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Liw2;->$VALUES:[Liw2;

    .line 66
    .line 67
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Liw2;->$ENTRIES:Ljx2;

    .line 72
    .line 73
    new-instance v0, Lhw2;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    sput-object v0, Liw2;->Companion:Lhw2;

    .line 79
    .line 80
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
    iput p3, p0, Liw2;->id:I

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
    sget-object v0, Liw2;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Liw2;
    .locals 1

    .line 1
    const-class v0, Liw2;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Liw2;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Liw2;
    .locals 1

    .line 1
    sget-object v0, Liw2;->$VALUES:[Liw2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Liw2;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Liw2;->id:I

    .line 2
    .line 3
    return p0
.end method
