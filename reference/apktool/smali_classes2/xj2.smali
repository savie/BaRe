.class public final enum Lxj2;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lxj2;

.field public static final enum BackedUp:Lxj2;

.field public static final enum DriveNotConnected:Lxj2;

.field public static final enum Loading:Lxj2;

.field public static final enum NetworkError:Lxj2;

.field public static final enum NoBackup:Lxj2;


# direct methods
.method private static final synthetic $values()[Lxj2;
    .locals 5

    .line 1
    sget-object v0, Lxj2;->Loading:Lxj2;

    .line 2
    .line 3
    sget-object v1, Lxj2;->NoBackup:Lxj2;

    .line 4
    .line 5
    sget-object v2, Lxj2;->DriveNotConnected:Lxj2;

    .line 6
    .line 7
    sget-object v3, Lxj2;->NetworkError:Lxj2;

    .line 8
    .line 9
    sget-object v4, Lxj2;->BackedUp:Lxj2;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lxj2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lxj2;

    .line 2
    .line 3
    const-string v1, "Loading"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lxj2;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lxj2;->Loading:Lxj2;

    .line 10
    .line 11
    new-instance v0, Lxj2;

    .line 12
    .line 13
    const-string v1, "NoBackup"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lxj2;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lxj2;->NoBackup:Lxj2;

    .line 20
    .line 21
    new-instance v0, Lxj2;

    .line 22
    .line 23
    const-string v1, "DriveNotConnected"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lxj2;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lxj2;->DriveNotConnected:Lxj2;

    .line 30
    .line 31
    new-instance v0, Lxj2;

    .line 32
    .line 33
    const-string v1, "NetworkError"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lxj2;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lxj2;->NetworkError:Lxj2;

    .line 40
    .line 41
    new-instance v0, Lxj2;

    .line 42
    .line 43
    const-string v1, "BackedUp"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lxj2;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lxj2;->BackedUp:Lxj2;

    .line 50
    .line 51
    invoke-static {}, Lxj2;->$values()[Lxj2;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lxj2;->$VALUES:[Lxj2;

    .line 56
    .line 57
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lxj2;->$ENTRIES:Ljx2;

    .line 62
    .line 63
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
    sget-object v0, Lxj2;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lxj2;
    .locals 1

    .line 1
    const-class v0, Lxj2;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lxj2;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lxj2;
    .locals 1

    .line 1
    sget-object v0, Lxj2;->$VALUES:[Lxj2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lxj2;

    .line 8
    .line 9
    return-object v0
.end method
