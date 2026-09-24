.class public final enum Lkt6;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsx2;


# static fields
.field public static final enum b:Lkt6;

.field public static final enum c:Lkt6;

.field public static final synthetic d:[Lkt6;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lkt6;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    const-string v4, "SMB2_FLAGS_SERVER_TO_REDIR"

    .line 7
    .line 8
    invoke-direct {v0, v4, v2, v3, v1}, Lkt6;-><init>(Ljava/lang/String;JI)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lkt6;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const-wide/16 v3, 0x2

    .line 15
    .line 16
    const-string v5, "SMB2_FLAGS_ASYNC_COMMAND"

    .line 17
    .line 18
    invoke-direct {v1, v5, v3, v4, v2}, Lkt6;-><init>(Ljava/lang/String;JI)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lkt6;->b:Lkt6;

    .line 22
    .line 23
    new-instance v2, Lkt6;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    const-wide/16 v4, 0x4

    .line 27
    .line 28
    const-string v6, "SMB2_FLAGS_RELATED_OPERATIONS"

    .line 29
    .line 30
    invoke-direct {v2, v6, v4, v5, v3}, Lkt6;-><init>(Ljava/lang/String;JI)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lkt6;

    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    const-wide/16 v5, 0x8

    .line 37
    .line 38
    const-string v7, "SMB2_FLAGS_SIGNED"

    .line 39
    .line 40
    invoke-direct {v3, v7, v5, v6, v4}, Lkt6;-><init>(Ljava/lang/String;JI)V

    .line 41
    .line 42
    .line 43
    sput-object v3, Lkt6;->c:Lkt6;

    .line 44
    .line 45
    new-instance v4, Lkt6;

    .line 46
    .line 47
    const/4 v5, 0x4

    .line 48
    const-wide/16 v6, 0x70

    .line 49
    .line 50
    const-string v8, "SMB2_FLAGS_PRIORITY_MASK"

    .line 51
    .line 52
    invoke-direct {v4, v8, v6, v7, v5}, Lkt6;-><init>(Ljava/lang/String;JI)V

    .line 53
    .line 54
    .line 55
    new-instance v5, Lkt6;

    .line 56
    .line 57
    const/4 v6, 0x5

    .line 58
    const-wide/32 v7, 0x10000000

    .line 59
    .line 60
    .line 61
    const-string v9, "SMB2_FLAGS_DFS_OPERATIONS"

    .line 62
    .line 63
    invoke-direct {v5, v9, v7, v8, v6}, Lkt6;-><init>(Ljava/lang/String;JI)V

    .line 64
    .line 65
    .line 66
    new-instance v6, Lkt6;

    .line 67
    .line 68
    const/4 v7, 0x6

    .line 69
    const-wide/32 v8, 0x20000000

    .line 70
    .line 71
    .line 72
    const-string v10, "SMB2_FLAGS_REPLAY_OPERATION"

    .line 73
    .line 74
    invoke-direct {v6, v10, v8, v9, v7}, Lkt6;-><init>(Ljava/lang/String;JI)V

    .line 75
    .line 76
    .line 77
    filled-new-array/range {v0 .. v6}, [Lkt6;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lkt6;->d:[Lkt6;

    .line 82
    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lkt6;->a:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkt6;
    .locals 1

    .line 1
    const-class v0, Lkt6;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkt6;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lkt6;
    .locals 1

    .line 1
    sget-object v0, Lkt6;->d:[Lkt6;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lkt6;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lkt6;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lkt6;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
