.class public final enum Lex;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lex;

.field public static final enum DECOMPRESS:Lex;

.field public static final enum UNPACK:Lex;

.field public static final enum UNTAR:Lex;

.field public static final enum UNTAR_DATA:Lex;

.field public static final enum UNTAR_DEDATA:Lex;


# instance fields
.field private final taskProgressRatio:F


# direct methods
.method private static final synthetic $values()[Lex;
    .locals 5

    .line 1
    sget-object v0, Lex;->UNPACK:Lex;

    .line 2
    .line 3
    sget-object v1, Lex;->DECOMPRESS:Lex;

    .line 4
    .line 5
    sget-object v2, Lex;->UNTAR:Lex;

    .line 6
    .line 7
    sget-object v3, Lex;->UNTAR_DATA:Lex;

    .line 8
    .line 9
    sget-object v4, Lex;->UNTAR_DEDATA:Lex;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lex;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lex;

    .line 2
    .line 3
    const/4 v4, 0x1

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "UNPACK"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct/range {v0 .. v5}, Lex;-><init>(Ljava/lang/String;IFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lex;->UNPACK:Lex;

    .line 13
    .line 14
    new-instance v1, Lex;

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    const-string v2, "DECOMPRESS"

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-direct/range {v1 .. v6}, Lex;-><init>(Ljava/lang/String;IFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lex;->DECOMPRESS:Lex;

    .line 26
    .line 27
    new-instance v0, Lex;

    .line 28
    .line 29
    const-string v1, "UNTAR"

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    const/high16 v3, 0x3f000000    # 0.5f

    .line 33
    .line 34
    invoke-direct {v0, v1, v2, v3}, Lex;-><init>(Ljava/lang/String;IF)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lex;->UNTAR:Lex;

    .line 38
    .line 39
    new-instance v0, Lex;

    .line 40
    .line 41
    const-string v1, "UNTAR_DATA"

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    invoke-direct {v0, v1, v2, v3}, Lex;-><init>(Ljava/lang/String;IF)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lex;->UNTAR_DATA:Lex;

    .line 48
    .line 49
    new-instance v0, Lex;

    .line 50
    .line 51
    const-string v1, "UNTAR_DEDATA"

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    invoke-direct {v0, v1, v2, v3}, Lex;-><init>(Ljava/lang/String;IF)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lex;->UNTAR_DEDATA:Lex;

    .line 58
    .line 59
    invoke-static {}, Lex;->$values()[Lex;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lex;->$VALUES:[Lex;

    .line 64
    .line 65
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lex;->$ENTRIES:Ljx2;

    .line 70
    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lex;->taskProgressRatio:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/high16 p3, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lex;-><init>(Ljava/lang/String;IF)V

    .line 8
    .line 9
    .line 10
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
    sget-object v0, Lex;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lex;
    .locals 1

    .line 1
    const-class v0, Lex;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lex;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lex;
    .locals 1

    .line 1
    sget-object v0, Lex;->$VALUES:[Lex;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lex;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getTaskProgressRatio()F
    .locals 0

    .line 1
    iget p0, p0, Lex;->taskProgressRatio:F

    .line 2
    .line 3
    return p0
.end method
