.class public final enum Lvr6$a;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvr6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lvr6$a;

.field public static final enum DEFAULT:Lvr6$a;

.field public static final enum GREEN:Lvr6$a;

.field public static final enum RED:Lvr6$a;

.field public static final enum YELLOW:Lvr6$a;


# direct methods
.method private static final synthetic $values()[Lvr6$a;
    .locals 4

    .line 1
    sget-object v0, Lvr6$a;->DEFAULT:Lvr6$a;

    .line 2
    .line 3
    sget-object v1, Lvr6$a;->GREEN:Lvr6$a;

    .line 4
    .line 5
    sget-object v2, Lvr6$a;->YELLOW:Lvr6$a;

    .line 6
    .line 7
    sget-object v3, Lvr6$a;->RED:Lvr6$a;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lvr6$a;

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
    new-instance v0, Lvr6$a;

    .line 2
    .line 3
    const-string v1, "DEFAULT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lvr6$a;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lvr6$a;->DEFAULT:Lvr6$a;

    .line 10
    .line 11
    new-instance v0, Lvr6$a;

    .line 12
    .line 13
    const-string v1, "GREEN"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lvr6$a;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lvr6$a;->GREEN:Lvr6$a;

    .line 20
    .line 21
    new-instance v0, Lvr6$a;

    .line 22
    .line 23
    const-string v1, "YELLOW"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lvr6$a;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lvr6$a;->YELLOW:Lvr6$a;

    .line 30
    .line 31
    new-instance v0, Lvr6$a;

    .line 32
    .line 33
    const-string v1, "RED"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lvr6$a;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lvr6$a;->RED:Lvr6$a;

    .line 40
    .line 41
    invoke-static {}, Lvr6$a;->$values()[Lvr6$a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lvr6$a;->$VALUES:[Lvr6$a;

    .line 46
    .line 47
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lvr6$a;->$ENTRIES:Ljx2;

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
    sget-object v0, Lvr6$a;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lvr6$a;
    .locals 1

    .line 1
    const-class v0, Lvr6$a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lvr6$a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lvr6$a;
    .locals 1

    .line 1
    sget-object v0, Lvr6$a;->$VALUES:[Lvr6$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lvr6$a;

    .line 8
    .line 9
    return-object v0
.end method
