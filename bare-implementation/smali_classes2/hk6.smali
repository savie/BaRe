.class public final enum Lhk6;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lhk6;

.field public static final enum CloudError:Lhk6;

.field public static final enum DriveNotConnected:Lhk6;

.field public static final enum Empty:Lhk6;

.field public static final enum Loading:Lhk6;

.field public static final enum NetworkError:Lhk6;

.field public static final enum Success:Lhk6;


# direct methods
.method private static final synthetic $values()[Lhk6;
    .locals 6

    .line 1
    sget-object v0, Lhk6;->Loading:Lhk6;

    .line 2
    .line 3
    sget-object v1, Lhk6;->Success:Lhk6;

    .line 4
    .line 5
    sget-object v2, Lhk6;->Empty:Lhk6;

    .line 6
    .line 7
    sget-object v3, Lhk6;->DriveNotConnected:Lhk6;

    .line 8
    .line 9
    sget-object v4, Lhk6;->CloudError:Lhk6;

    .line 10
    .line 11
    sget-object v5, Lhk6;->NetworkError:Lhk6;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lhk6;

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
    new-instance v0, Lhk6;

    .line 2
    .line 3
    const-string v1, "Loading"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lhk6;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lhk6;->Loading:Lhk6;

    .line 10
    .line 11
    new-instance v0, Lhk6;

    .line 12
    .line 13
    const-string v1, "Success"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lhk6;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lhk6;->Success:Lhk6;

    .line 20
    .line 21
    new-instance v0, Lhk6;

    .line 22
    .line 23
    const-string v1, "Empty"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lhk6;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lhk6;->Empty:Lhk6;

    .line 30
    .line 31
    new-instance v0, Lhk6;

    .line 32
    .line 33
    const-string v1, "DriveNotConnected"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lhk6;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lhk6;->DriveNotConnected:Lhk6;

    .line 40
    .line 41
    new-instance v0, Lhk6;

    .line 42
    .line 43
    const-string v1, "CloudError"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lhk6;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lhk6;->CloudError:Lhk6;

    .line 50
    .line 51
    new-instance v0, Lhk6;

    .line 52
    .line 53
    const-string v1, "NetworkError"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lhk6;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lhk6;->NetworkError:Lhk6;

    .line 60
    .line 61
    invoke-static {}, Lhk6;->$values()[Lhk6;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lhk6;->$VALUES:[Lhk6;

    .line 66
    .line 67
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lhk6;->$ENTRIES:Ljx2;

    .line 72
    .line 73
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
    sget-object v0, Lhk6;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lhk6;
    .locals 1

    .line 1
    const-class v0, Lhk6;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lhk6;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lhk6;
    .locals 1

    .line 1
    sget-object v0, Lhk6;->$VALUES:[Lhk6;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lhk6;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    .line 1
    sget-object v0, Lhk6;->Empty:Lhk6;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final isError()Z
    .locals 1

    .line 1
    sget-object v0, Lhk6;->DriveNotConnected:Lhk6;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lhk6;->CloudError:Lhk6;

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lhk6;->NetworkError:Lhk6;

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public final isLoading()Z
    .locals 1

    .line 1
    sget-object v0, Lhk6;->Loading:Lhk6;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method
