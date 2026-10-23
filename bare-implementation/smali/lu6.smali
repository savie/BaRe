.class public final enum Llu6;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsx2;


# static fields
.field public static final enum b:Llu6;

.field public static final synthetic c:[Llu6;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Llu6;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-string v4, "SMB2_SHAREFLAG_MANUAL_CACHING"

    .line 7
    .line 8
    invoke-direct {v0, v4, v2, v3, v1}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Llu6;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const-wide/16 v3, 0x10

    .line 15
    .line 16
    const-string v5, "SMB2_SHAREFLAG_AUTO_CACHING"

    .line 17
    .line 18
    invoke-direct {v1, v5, v3, v4, v2}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Llu6;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    const-wide/16 v4, 0x20

    .line 25
    .line 26
    const-string v6, "SMB2_SHAREFLAG_VDO_CACHING"

    .line 27
    .line 28
    invoke-direct {v2, v6, v4, v5, v3}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Llu6;

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    const-wide/16 v5, 0x30

    .line 35
    .line 36
    const-string v7, "SMB2_SHAREFLAG_NO_CACHING"

    .line 37
    .line 38
    invoke-direct {v3, v7, v5, v6, v4}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Llu6;

    .line 42
    .line 43
    const/4 v5, 0x4

    .line 44
    const-wide/16 v6, 0x1

    .line 45
    .line 46
    const-string v8, "SMB2_SHAREFLAG_DFS"

    .line 47
    .line 48
    invoke-direct {v4, v8, v6, v7, v5}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 49
    .line 50
    .line 51
    new-instance v5, Llu6;

    .line 52
    .line 53
    const/4 v6, 0x5

    .line 54
    const-wide/16 v7, 0x2

    .line 55
    .line 56
    const-string v9, "SMB2_SHAREFLAG_DFS_ROOT"

    .line 57
    .line 58
    invoke-direct {v5, v9, v7, v8, v6}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Llu6;

    .line 62
    .line 63
    const/4 v7, 0x6

    .line 64
    const-wide/16 v8, 0x100

    .line 65
    .line 66
    const-string v10, "SMB2_SHAREFLAG_RESTRICT_EXCLUSIVE_OPENS"

    .line 67
    .line 68
    invoke-direct {v6, v10, v8, v9, v7}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 69
    .line 70
    .line 71
    new-instance v7, Llu6;

    .line 72
    .line 73
    const/4 v8, 0x7

    .line 74
    const-wide/16 v9, 0x200

    .line 75
    .line 76
    const-string v11, "SMB2_SHAREFLAG_FORCE_SHARED_DELETE"

    .line 77
    .line 78
    invoke-direct {v7, v11, v9, v10, v8}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 79
    .line 80
    .line 81
    new-instance v8, Llu6;

    .line 82
    .line 83
    const/16 v9, 0x8

    .line 84
    .line 85
    const-wide/16 v10, 0x400

    .line 86
    .line 87
    const-string v12, "SMB2_SHAREFLAG_ALLOW_NAMESPACE_CACHING"

    .line 88
    .line 89
    invoke-direct {v8, v12, v10, v11, v9}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 90
    .line 91
    .line 92
    new-instance v9, Llu6;

    .line 93
    .line 94
    const/16 v10, 0x9

    .line 95
    .line 96
    const-wide/16 v11, 0x800

    .line 97
    .line 98
    const-string v13, "SMB2_SHAREFLAG_ACCESS_BASED_DIRECTORY_ENUM"

    .line 99
    .line 100
    invoke-direct {v9, v13, v11, v12, v10}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 101
    .line 102
    .line 103
    new-instance v10, Llu6;

    .line 104
    .line 105
    const/16 v11, 0xa

    .line 106
    .line 107
    const-wide/16 v12, 0x1000

    .line 108
    .line 109
    const-string v14, "SMB2_SHAREFLAG_FORCE_LEVELII_OPLOCK"

    .line 110
    .line 111
    invoke-direct {v10, v14, v12, v13, v11}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 112
    .line 113
    .line 114
    new-instance v11, Llu6;

    .line 115
    .line 116
    const/16 v12, 0xb

    .line 117
    .line 118
    const-wide/16 v13, 0x2000

    .line 119
    .line 120
    const-string v15, "SMB2_SHAREFLAG_ENABLE_HASH_V1"

    .line 121
    .line 122
    invoke-direct {v11, v15, v13, v14, v12}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 123
    .line 124
    .line 125
    new-instance v12, Llu6;

    .line 126
    .line 127
    const/16 v13, 0xc

    .line 128
    .line 129
    const-wide/16 v14, 0x4000

    .line 130
    .line 131
    move-object/from16 v16, v0

    .line 132
    .line 133
    const-string v0, "SMB2_SHAREFLAG_ENABLE_HASH_V2"

    .line 134
    .line 135
    invoke-direct {v12, v0, v14, v15, v13}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 136
    .line 137
    .line 138
    new-instance v13, Llu6;

    .line 139
    .line 140
    const/16 v0, 0xd

    .line 141
    .line 142
    const-wide/32 v14, 0x8000

    .line 143
    .line 144
    .line 145
    move-object/from16 v17, v1

    .line 146
    .line 147
    const-string v1, "SMB2_SHAREFLAG_ENCRYPT_DATA"

    .line 148
    .line 149
    invoke-direct {v13, v1, v14, v15, v0}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 150
    .line 151
    .line 152
    sput-object v13, Llu6;->b:Llu6;

    .line 153
    .line 154
    new-instance v14, Llu6;

    .line 155
    .line 156
    const/16 v0, 0xe

    .line 157
    .line 158
    move-object v15, v2

    .line 159
    const-wide/32 v1, 0x40000

    .line 160
    .line 161
    .line 162
    move-object/from16 v18, v3

    .line 163
    .line 164
    const-string v3, "SMB2_SHAREFLAG_IDENTITY_REMOTING"

    .line 165
    .line 166
    invoke-direct {v14, v3, v1, v2, v0}, Llu6;-><init>(Ljava/lang/String;JI)V

    .line 167
    .line 168
    .line 169
    move-object v2, v15

    .line 170
    move-object/from16 v0, v16

    .line 171
    .line 172
    move-object/from16 v1, v17

    .line 173
    .line 174
    move-object/from16 v3, v18

    .line 175
    .line 176
    filled-new-array/range {v0 .. v14}, [Llu6;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    sput-object v0, Llu6;->c:[Llu6;

    .line 181
    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Llu6;->a:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llu6;
    .locals 1

    .line 1
    const-class v0, Llu6;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Llu6;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Llu6;
    .locals 1

    .line 1
    sget-object v0, Llu6;->c:[Llu6;

    .line 2
    .line 3
    invoke-virtual {v0}, [Llu6;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Llu6;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Llu6;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
