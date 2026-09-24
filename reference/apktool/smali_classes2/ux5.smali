.class public final enum Lux5;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lux5;

.field public static final enum STANDARD_PASSWORD:Lux5;

.field public static final enum USER_PASSWORD:Lux5;


# direct methods
.method private static final synthetic $values()[Lux5;
    .locals 2

    .line 1
    sget-object v0, Lux5;->STANDARD_PASSWORD:Lux5;

    .line 2
    .line 3
    sget-object v1, Lux5;->USER_PASSWORD:Lux5;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lux5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lux5;

    .line 2
    .line 3
    const-string v1, "STANDARD_PASSWORD"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lux5;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lux5;->STANDARD_PASSWORD:Lux5;

    .line 10
    .line 11
    new-instance v0, Lux5;

    .line 12
    .line 13
    const-string v1, "USER_PASSWORD"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lux5;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lux5;->USER_PASSWORD:Lux5;

    .line 20
    .line 21
    invoke-static {}, Lux5;->$values()[Lux5;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lux5;->$VALUES:[Lux5;

    .line 26
    .line 27
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lux5;->$ENTRIES:Ljx2;

    .line 32
    .line 33
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
    sget-object v0, Lux5;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lux5;
    .locals 1

    .line 1
    const-class v0, Lux5;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lux5;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lux5;
    .locals 1

    .line 1
    sget-object v0, Lux5;->$VALUES:[Lux5;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lux5;

    .line 8
    .line 9
    return-object v0
.end method
