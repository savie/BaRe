.class public final enum Lw63;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsx2;


# static fields
.field public static final enum b:Lw63;

.field public static final enum c:Lw63;

.field public static final synthetic d:[Lw63;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lw63;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x20

    .line 5
    .line 6
    const-string v4, "FILE_ATTRIBUTE_ARCHIVE"

    .line 7
    .line 8
    invoke-direct {v0, v4, v2, v3, v1}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lw63;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const-wide/16 v3, 0x800

    .line 15
    .line 16
    const-string v5, "FILE_ATTRIBUTE_COMPRESSED"

    .line 17
    .line 18
    invoke-direct {v1, v5, v3, v4, v2}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lw63;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    const-wide/16 v4, 0x10

    .line 25
    .line 26
    const-string v6, "FILE_ATTRIBUTE_DIRECTORY"

    .line 27
    .line 28
    invoke-direct {v2, v6, v4, v5, v3}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lw63;->b:Lw63;

    .line 32
    .line 33
    new-instance v3, Lw63;

    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    const-wide/16 v5, 0x4000

    .line 37
    .line 38
    const-string v7, "FILE_ATTRIBUTE_ENCRYPTED"

    .line 39
    .line 40
    invoke-direct {v3, v7, v5, v6, v4}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Lw63;

    .line 44
    .line 45
    const/4 v5, 0x4

    .line 46
    const-wide/16 v6, 0x2

    .line 47
    .line 48
    const-string v8, "FILE_ATTRIBUTE_HIDDEN"

    .line 49
    .line 50
    invoke-direct {v4, v8, v6, v7, v5}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 51
    .line 52
    .line 53
    new-instance v5, Lw63;

    .line 54
    .line 55
    const/4 v6, 0x5

    .line 56
    const-wide/16 v7, 0x80

    .line 57
    .line 58
    const-string v9, "FILE_ATTRIBUTE_NORMAL"

    .line 59
    .line 60
    invoke-direct {v5, v9, v7, v8, v6}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 61
    .line 62
    .line 63
    sput-object v5, Lw63;->c:Lw63;

    .line 64
    .line 65
    new-instance v6, Lw63;

    .line 66
    .line 67
    const/4 v7, 0x6

    .line 68
    const-wide/16 v8, 0x2000

    .line 69
    .line 70
    const-string v10, "FILE_ATTRIBUTE_NOT_CONTENT_INDEXED"

    .line 71
    .line 72
    invoke-direct {v6, v10, v8, v9, v7}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 73
    .line 74
    .line 75
    new-instance v7, Lw63;

    .line 76
    .line 77
    const/4 v8, 0x7

    .line 78
    const-wide/16 v9, 0x1000

    .line 79
    .line 80
    const-string v11, "FILE_ATTRIBUTE_OFFLINE"

    .line 81
    .line 82
    invoke-direct {v7, v11, v9, v10, v8}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 83
    .line 84
    .line 85
    new-instance v8, Lw63;

    .line 86
    .line 87
    const/16 v9, 0x8

    .line 88
    .line 89
    const-wide/16 v10, 0x1

    .line 90
    .line 91
    const-string v12, "FILE_ATTRIBUTE_READONLY"

    .line 92
    .line 93
    invoke-direct {v8, v12, v10, v11, v9}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 94
    .line 95
    .line 96
    new-instance v9, Lw63;

    .line 97
    .line 98
    const/16 v10, 0x9

    .line 99
    .line 100
    const-wide/16 v11, 0x400

    .line 101
    .line 102
    const-string v13, "FILE_ATTRIBUTE_REPARSE_POINT"

    .line 103
    .line 104
    invoke-direct {v9, v13, v11, v12, v10}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 105
    .line 106
    .line 107
    new-instance v10, Lw63;

    .line 108
    .line 109
    const/16 v11, 0xa

    .line 110
    .line 111
    const-wide/16 v12, 0x200

    .line 112
    .line 113
    const-string v14, "FILE_ATTRIBUTE_SPARSE_FILE"

    .line 114
    .line 115
    invoke-direct {v10, v14, v12, v13, v11}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 116
    .line 117
    .line 118
    new-instance v11, Lw63;

    .line 119
    .line 120
    const/16 v12, 0xb

    .line 121
    .line 122
    const-wide/16 v13, 0x4

    .line 123
    .line 124
    const-string v15, "FILE_ATTRIBUTE_SYSTEM"

    .line 125
    .line 126
    invoke-direct {v11, v15, v13, v14, v12}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 127
    .line 128
    .line 129
    new-instance v12, Lw63;

    .line 130
    .line 131
    const/16 v13, 0xc

    .line 132
    .line 133
    const-wide/16 v14, 0x100

    .line 134
    .line 135
    move-object/from16 v16, v0

    .line 136
    .line 137
    const-string v0, "FILE_ATTRIBUTE_TEMPORARY"

    .line 138
    .line 139
    invoke-direct {v12, v0, v14, v15, v13}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 140
    .line 141
    .line 142
    new-instance v13, Lw63;

    .line 143
    .line 144
    const/16 v0, 0xd

    .line 145
    .line 146
    const-wide/32 v14, 0x8000

    .line 147
    .line 148
    .line 149
    move-object/from16 v17, v1

    .line 150
    .line 151
    const-string v1, "FILE_ATTRIBUTE_INTEGRITY_STREAM"

    .line 152
    .line 153
    invoke-direct {v13, v1, v14, v15, v0}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 154
    .line 155
    .line 156
    new-instance v14, Lw63;

    .line 157
    .line 158
    const/16 v0, 0xe

    .line 159
    .line 160
    move-object v15, v2

    .line 161
    const-wide/32 v1, 0x20000

    .line 162
    .line 163
    .line 164
    move-object/from16 v18, v3

    .line 165
    .line 166
    const-string v3, "FILE_ATTRIBUTE_NO_SCRUB_DATA"

    .line 167
    .line 168
    invoke-direct {v14, v3, v1, v2, v0}, Lw63;-><init>(Ljava/lang/String;JI)V

    .line 169
    .line 170
    .line 171
    move-object v2, v15

    .line 172
    move-object/from16 v0, v16

    .line 173
    .line 174
    move-object/from16 v1, v17

    .line 175
    .line 176
    move-object/from16 v3, v18

    .line 177
    .line 178
    filled-new-array/range {v0 .. v14}, [Lw63;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    sput-object v0, Lw63;->d:[Lw63;

    .line 183
    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lw63;->a:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw63;
    .locals 1

    .line 1
    const-class v0, Lw63;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lw63;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lw63;
    .locals 1

    .line 1
    sget-object v0, Lw63;->d:[Lw63;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lw63;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lw63;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lw63;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
