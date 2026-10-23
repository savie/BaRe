.class public final enum Lvk3;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lvk3;

.field public static final enum Asc:Lvk3;

.field public static final Companion:Luk3;

.field public static final enum Desc:Lvk3;

.field private static final default:Lvk3;


# direct methods
.method private static final synthetic $values()[Lvk3;
    .locals 2

    .line 1
    sget-object v0, Lvk3;->Asc:Lvk3;

    .line 2
    .line 3
    sget-object v1, Lvk3;->Desc:Lvk3;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lvk3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lvk3;

    .line 2
    .line 3
    const-string v1, "Asc"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lvk3;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lvk3;->Asc:Lvk3;

    .line 10
    .line 11
    new-instance v1, Lvk3;

    .line 12
    .line 13
    const-string v2, "Desc"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lvk3;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lvk3;->Desc:Lvk3;

    .line 20
    .line 21
    invoke-static {}, Lvk3;->$values()[Lvk3;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Lvk3;->$VALUES:[Lvk3;

    .line 26
    .line 27
    invoke-static {v1}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sput-object v1, Lvk3;->$ENTRIES:Ljx2;

    .line 32
    .line 33
    new-instance v1, Luk3;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    sput-object v1, Lvk3;->Companion:Luk3;

    .line 39
    .line 40
    sput-object v0, Lvk3;->default:Lvk3;

    .line 41
    .line 42
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

.method public static final synthetic access$getDefault$cp()Lvk3;
    .locals 1

    .line 1
    sget-object v0, Lvk3;->default:Lvk3;

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
    sget-object v0, Lvk3;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lvk3;
    .locals 1

    .line 1
    const-class v0, Lvk3;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lvk3;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lvk3;
    .locals 1

    .line 1
    sget-object v0, Lvk3;->$VALUES:[Lvk3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lvk3;

    .line 8
    .line 9
    return-object v0
.end method
