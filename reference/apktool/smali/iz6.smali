.class public final enum Liz6;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Liz6;

.field public static final enum Auto:Liz6;

.field public static final enum Local:Liz6;

.field public static final enum Root:Liz6;

.field public static final enum Shizuku:Liz6;


# direct methods
.method private static final synthetic $values()[Liz6;
    .locals 4

    .line 1
    sget-object v0, Liz6;->Auto:Liz6;

    .line 2
    .line 3
    sget-object v1, Liz6;->Local:Liz6;

    .line 4
    .line 5
    sget-object v2, Liz6;->Root:Liz6;

    .line 6
    .line 7
    sget-object v3, Liz6;->Shizuku:Liz6;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Liz6;

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
    new-instance v0, Liz6;

    .line 2
    .line 3
    const-string v1, "Auto"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Liz6;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Liz6;->Auto:Liz6;

    .line 10
    .line 11
    new-instance v0, Liz6;

    .line 12
    .line 13
    const-string v1, "Local"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Liz6;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Liz6;->Local:Liz6;

    .line 20
    .line 21
    new-instance v0, Liz6;

    .line 22
    .line 23
    const-string v1, "Root"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Liz6;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Liz6;->Root:Liz6;

    .line 30
    .line 31
    new-instance v0, Liz6;

    .line 32
    .line 33
    const-string v1, "Shizuku"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Liz6;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Liz6;->Shizuku:Liz6;

    .line 40
    .line 41
    invoke-static {}, Liz6;->$values()[Liz6;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Liz6;->$VALUES:[Liz6;

    .line 46
    .line 47
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Liz6;->$ENTRIES:Ljx2;

    .line 52
    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
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
    sget-object v0, Liz6;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Liz6;
    .locals 1

    .line 1
    const-class v0, Liz6;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Liz6;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Liz6;
    .locals 1

    .line 1
    sget-object v0, Liz6;->$VALUES:[Liz6;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Liz6;

    .line 8
    .line 9
    return-object v0
.end method
