.class public final enum Lu54;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lu54;

.field public static final enum APPS:Lu54;

.field public static final enum FOLDERS:Lu54;

.field public static final enum QUICK_ACTIONS:Lu54;

.field public static final enum SHORTCUTS:Lu54;


# instance fields
.field private final order:I


# direct methods
.method private static final synthetic $values()[Lu54;
    .locals 4

    .line 1
    sget-object v0, Lu54;->SHORTCUTS:Lu54;

    .line 2
    .line 3
    sget-object v1, Lu54;->APPS:Lu54;

    .line 4
    .line 5
    sget-object v2, Lu54;->FOLDERS:Lu54;

    .line 6
    .line 7
    sget-object v3, Lu54;->QUICK_ACTIONS:Lu54;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lu54;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu54;

    .line 2
    .line 3
    const-string v1, "SHORTCUTS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lu54;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lu54;->SHORTCUTS:Lu54;

    .line 10
    .line 11
    new-instance v0, Lu54;

    .line 12
    .line 13
    const-string v1, "APPS"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lu54;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lu54;->APPS:Lu54;

    .line 20
    .line 21
    new-instance v0, Lu54;

    .line 22
    .line 23
    const-string v1, "FOLDERS"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lu54;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lu54;->FOLDERS:Lu54;

    .line 30
    .line 31
    new-instance v0, Lu54;

    .line 32
    .line 33
    const-string v1, "QUICK_ACTIONS"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lu54;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lu54;->QUICK_ACTIONS:Lu54;

    .line 40
    .line 41
    invoke-static {}, Lu54;->$values()[Lu54;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lu54;->$VALUES:[Lu54;

    .line 46
    .line 47
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lu54;->$ENTRIES:Ljx2;

    .line 52
    .line 53
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
    iput p3, p0, Lu54;->order:I

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
    sget-object v0, Lu54;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu54;
    .locals 1

    .line 1
    const-class v0, Lu54;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lu54;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lu54;
    .locals 1

    .line 1
    sget-object v0, Lu54;->$VALUES:[Lu54;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lu54;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getOrder()I
    .locals 0

    .line 1
    iget p0, p0, Lu54;->order:I

    .line 2
    .line 3
    return p0
.end method
