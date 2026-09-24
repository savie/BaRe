.class public final enum Lbt6;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsx2;


# static fields
.field public static final enum b:Lbt6;

.field public static final enum c:Lbt6;

.field public static final synthetic d:[Lbt6;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lbt6;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    const-string v4, "SMB2_GLOBAL_CAP_DFS"

    .line 7
    .line 8
    invoke-direct {v0, v4, v2, v3, v1}, Lbt6;-><init>(Ljava/lang/String;JI)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lbt6;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const-wide/16 v3, 0x2

    .line 15
    .line 16
    const-string v5, "SMB2_GLOBAL_CAP_LEASING"

    .line 17
    .line 18
    invoke-direct {v1, v5, v3, v4, v2}, Lbt6;-><init>(Ljava/lang/String;JI)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lbt6;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    const-wide/16 v4, 0x4

    .line 25
    .line 26
    const-string v6, "SMB2_GLOBAL_CAP_LARGE_MTU"

    .line 27
    .line 28
    invoke-direct {v2, v6, v4, v5, v3}, Lbt6;-><init>(Ljava/lang/String;JI)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lbt6;->b:Lbt6;

    .line 32
    .line 33
    new-instance v3, Lbt6;

    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    const-wide/16 v5, 0x8

    .line 37
    .line 38
    const-string v7, "SMB2_GLOBAL_CAP_MULTI_CHANNEL"

    .line 39
    .line 40
    invoke-direct {v3, v7, v5, v6, v4}, Lbt6;-><init>(Ljava/lang/String;JI)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Lbt6;

    .line 44
    .line 45
    const/4 v5, 0x4

    .line 46
    const-wide/16 v6, 0x10

    .line 47
    .line 48
    const-string v8, "SMB2_GLOBAL_CAP_PERSISTENT_HANDLES"

    .line 49
    .line 50
    invoke-direct {v4, v8, v6, v7, v5}, Lbt6;-><init>(Ljava/lang/String;JI)V

    .line 51
    .line 52
    .line 53
    new-instance v5, Lbt6;

    .line 54
    .line 55
    const/4 v6, 0x5

    .line 56
    const-wide/16 v7, 0x20

    .line 57
    .line 58
    const-string v9, "SMB2_GLOBAL_CAP_DIRECTORY_LEASING"

    .line 59
    .line 60
    invoke-direct {v5, v9, v7, v8, v6}, Lbt6;-><init>(Ljava/lang/String;JI)V

    .line 61
    .line 62
    .line 63
    new-instance v6, Lbt6;

    .line 64
    .line 65
    const/4 v7, 0x6

    .line 66
    const-wide/16 v8, 0x40

    .line 67
    .line 68
    const-string v10, "SMB2_GLOBAL_CAP_ENCRYPTION"

    .line 69
    .line 70
    invoke-direct {v6, v10, v8, v9, v7}, Lbt6;-><init>(Ljava/lang/String;JI)V

    .line 71
    .line 72
    .line 73
    sput-object v6, Lbt6;->c:Lbt6;

    .line 74
    .line 75
    filled-new-array/range {v0 .. v6}, [Lbt6;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lbt6;->d:[Lbt6;

    .line 80
    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lbt6;->a:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbt6;
    .locals 1

    .line 1
    const-class v0, Lbt6;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbt6;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lbt6;
    .locals 1

    .line 1
    sget-object v0, Lbt6;->d:[Lbt6;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lbt6;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lbt6;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lbt6;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
