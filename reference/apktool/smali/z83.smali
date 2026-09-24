.class public final enum Lz83;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsx2;


# static fields
.field public static final synthetic b:[Lz83;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lz83;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    const-string v4, "FILE_ACTION_ADDED"

    .line 7
    .line 8
    invoke-direct {v0, v4, v2, v3, v1}, Lz83;-><init>(Ljava/lang/String;JI)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lz83;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const-wide/16 v3, 0x2

    .line 15
    .line 16
    const-string v5, "FILE_ACTION_REMOVED"

    .line 17
    .line 18
    invoke-direct {v1, v5, v3, v4, v2}, Lz83;-><init>(Ljava/lang/String;JI)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lz83;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    const-wide/16 v4, 0x3

    .line 25
    .line 26
    const-string v6, "FILE_ACTION_MODIFIED"

    .line 27
    .line 28
    invoke-direct {v2, v6, v4, v5, v3}, Lz83;-><init>(Ljava/lang/String;JI)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lz83;

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    const-wide/16 v5, 0x4

    .line 35
    .line 36
    const-string v7, "FILE_ACTION_RENAMED_OLD_NAME"

    .line 37
    .line 38
    invoke-direct {v3, v7, v5, v6, v4}, Lz83;-><init>(Ljava/lang/String;JI)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Lz83;

    .line 42
    .line 43
    const/4 v5, 0x4

    .line 44
    const-wide/16 v6, 0x5

    .line 45
    .line 46
    const-string v8, "FILE_ACTION_RENAMED_NEW_NAME"

    .line 47
    .line 48
    invoke-direct {v4, v8, v6, v7, v5}, Lz83;-><init>(Ljava/lang/String;JI)V

    .line 49
    .line 50
    .line 51
    new-instance v5, Lz83;

    .line 52
    .line 53
    const/4 v6, 0x5

    .line 54
    const-wide/16 v7, 0x6

    .line 55
    .line 56
    const-string v9, "FILE_ACTION_ADDED_STREAM"

    .line 57
    .line 58
    invoke-direct {v5, v9, v7, v8, v6}, Lz83;-><init>(Ljava/lang/String;JI)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Lz83;

    .line 62
    .line 63
    const/4 v7, 0x6

    .line 64
    const-wide/16 v8, 0x7

    .line 65
    .line 66
    const-string v10, "FILE_ACTION_REMOVED_STREAM"

    .line 67
    .line 68
    invoke-direct {v6, v10, v8, v9, v7}, Lz83;-><init>(Ljava/lang/String;JI)V

    .line 69
    .line 70
    .line 71
    new-instance v7, Lz83;

    .line 72
    .line 73
    const/4 v8, 0x7

    .line 74
    const-wide/16 v9, 0x8

    .line 75
    .line 76
    const-string v11, "FILE_ACTION_MODIFIED_STREAM"

    .line 77
    .line 78
    invoke-direct {v7, v11, v9, v10, v8}, Lz83;-><init>(Ljava/lang/String;JI)V

    .line 79
    .line 80
    .line 81
    new-instance v8, Lz83;

    .line 82
    .line 83
    const/16 v9, 0x8

    .line 84
    .line 85
    const-wide/16 v10, 0x9

    .line 86
    .line 87
    const-string v12, "FILE_ACTION_REMOVED_BY_DELETE"

    .line 88
    .line 89
    invoke-direct {v8, v12, v10, v11, v9}, Lz83;-><init>(Ljava/lang/String;JI)V

    .line 90
    .line 91
    .line 92
    new-instance v9, Lz83;

    .line 93
    .line 94
    const/16 v10, 0x9

    .line 95
    .line 96
    const-wide/16 v11, 0xa

    .line 97
    .line 98
    const-string v13, "FILE_ACTION_ID_NOT_TUNNELLED"

    .line 99
    .line 100
    invoke-direct {v9, v13, v11, v12, v10}, Lz83;-><init>(Ljava/lang/String;JI)V

    .line 101
    .line 102
    .line 103
    new-instance v10, Lz83;

    .line 104
    .line 105
    const/16 v11, 0xa

    .line 106
    .line 107
    const-wide/16 v12, 0xb

    .line 108
    .line 109
    const-string v14, "FILE_ACTION_TUNNELLED_ID_COLLISION"

    .line 110
    .line 111
    invoke-direct {v10, v14, v12, v13, v11}, Lz83;-><init>(Ljava/lang/String;JI)V

    .line 112
    .line 113
    .line 114
    filled-new-array/range {v0 .. v10}, [Lz83;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lz83;->b:[Lz83;

    .line 119
    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lz83;->a:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz83;
    .locals 1

    .line 1
    const-class v0, Lz83;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lz83;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lz83;
    .locals 1

    .line 1
    sget-object v0, Lz83;->b:[Lz83;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lz83;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lz83;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lz83;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
