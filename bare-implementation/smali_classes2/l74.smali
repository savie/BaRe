.class public final Ll74;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgg7;


# static fields
.field public static final c:[I


# instance fields
.field public final a:Z

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Ll74;->c:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x6
        0x6
        0x0
        0x0
        0x7
        0x7
        0x4
        0x4
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Ll74;->a:Z

    .line 5
    .line 6
    iput p1, p0, Ll74;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    add-int v1, p2, p3

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    move/from16 v3, p2

    .line 9
    .line 10
    :goto_0
    if-gt v3, v1, :cond_7

    .line 11
    .line 12
    aget-byte v4, p1, v3

    .line 13
    .line 14
    and-int/lit8 v4, v4, 0x1f

    .line 15
    .line 16
    sget-object v5, Ll74;->c:[I

    .line 17
    .line 18
    aget v4, v5, v4

    .line 19
    .line 20
    const/4 v6, 0x5

    .line 21
    const/4 v7, 0x0

    .line 22
    :goto_1
    const/4 v8, 0x3

    .line 23
    if-ge v7, v8, :cond_6

    .line 24
    .line 25
    ushr-int v8, v4, v7

    .line 26
    .line 27
    and-int/lit8 v8, v8, 0x1

    .line 28
    .line 29
    if-nez v8, :cond_1

    .line 30
    .line 31
    move/from16 p3, v2

    .line 32
    .line 33
    move/from16 v16, v3

    .line 34
    .line 35
    :cond_0
    :goto_2
    move/from16 v20, v6

    .line 36
    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :cond_1
    ushr-int/lit8 v8, v6, 0x3

    .line 40
    .line 41
    and-int/lit8 v9, v6, 0x7

    .line 42
    .line 43
    const-wide/16 v10, 0x0

    .line 44
    .line 45
    move-wide v13, v10

    .line 46
    const/4 v12, 0x0

    .line 47
    :goto_3
    const/4 v15, 0x6

    .line 48
    if-ge v12, v15, :cond_2

    .line 49
    .line 50
    add-int v15, v3, v8

    .line 51
    .line 52
    add-int/2addr v15, v12

    .line 53
    aget-byte v15, p1, v15

    .line 54
    .line 55
    move/from16 p3, v2

    .line 56
    .line 57
    move/from16 v16, v3

    .line 58
    .line 59
    int-to-long v2, v15

    .line 60
    const-wide/16 v17, 0xff

    .line 61
    .line 62
    and-long v2, v2, v17

    .line 63
    .line 64
    mul-int/lit8 v15, v12, 0x8

    .line 65
    .line 66
    shl-long/2addr v2, v15

    .line 67
    or-long/2addr v13, v2

    .line 68
    add-int/lit8 v12, v12, 0x1

    .line 69
    .line 70
    move/from16 v2, p3

    .line 71
    .line 72
    move/from16 v3, v16

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_2
    move/from16 p3, v2

    .line 76
    .line 77
    move/from16 v16, v3

    .line 78
    .line 79
    ushr-long v2, v13, v9

    .line 80
    .line 81
    const/16 v12, 0x25

    .line 82
    .line 83
    ushr-long v17, v2, v12

    .line 84
    .line 85
    const-wide/16 v19, 0xf

    .line 86
    .line 87
    and-long v17, v17, v19

    .line 88
    .line 89
    const-wide/16 v19, 0x5

    .line 90
    .line 91
    cmp-long v12, v17, v19

    .line 92
    .line 93
    if-nez v12, :cond_0

    .line 94
    .line 95
    const/16 v12, 0x9

    .line 96
    .line 97
    ushr-long v17, v2, v12

    .line 98
    .line 99
    const-wide/16 v19, 0x7

    .line 100
    .line 101
    and-long v17, v17, v19

    .line 102
    .line 103
    cmp-long v10, v17, v10

    .line 104
    .line 105
    if-eqz v10, :cond_3

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    const/16 v10, 0xd

    .line 109
    .line 110
    ushr-long v11, v2, v10

    .line 111
    .line 112
    const-wide/32 v17, 0xfffff

    .line 113
    .line 114
    .line 115
    and-long v11, v11, v17

    .line 116
    .line 117
    long-to-int v11, v11

    .line 118
    const/16 v12, 0x24

    .line 119
    .line 120
    move/from16 v20, v6

    .line 121
    .line 122
    ushr-long v5, v2, v12

    .line 123
    .line 124
    long-to-int v5, v5

    .line 125
    and-int/lit8 v5, v5, 0x1

    .line 126
    .line 127
    shl-int/lit8 v5, v5, 0x14

    .line 128
    .line 129
    or-int/2addr v5, v11

    .line 130
    shl-int/lit8 v5, v5, 0x4

    .line 131
    .line 132
    iget v6, v0, Ll74;->b:I

    .line 133
    .line 134
    iget-boolean v11, v0, Ll74;->a:Z

    .line 135
    .line 136
    if-eqz v11, :cond_4

    .line 137
    .line 138
    add-int v6, v6, v16

    .line 139
    .line 140
    sub-int v6, v6, p2

    .line 141
    .line 142
    add-int/2addr v6, v5

    .line 143
    goto :goto_4

    .line 144
    :cond_4
    add-int v6, v6, v16

    .line 145
    .line 146
    sub-int v6, v6, p2

    .line 147
    .line 148
    sub-int v6, v5, v6

    .line 149
    .line 150
    :goto_4
    ushr-int/lit8 v5, v6, 0x4

    .line 151
    .line 152
    const-wide v11, -0x11ffffe001L

    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    and-long/2addr v2, v11

    .line 158
    int-to-long v5, v5

    .line 159
    and-long v11, v5, v17

    .line 160
    .line 161
    shl-long v10, v11, v10

    .line 162
    .line 163
    or-long/2addr v2, v10

    .line 164
    const-wide/32 v10, 0x100000

    .line 165
    .line 166
    .line 167
    and-long/2addr v5, v10

    .line 168
    shl-long v5, v5, p3

    .line 169
    .line 170
    or-long/2addr v2, v5

    .line 171
    const-wide/16 v5, 0x1

    .line 172
    .line 173
    shl-long v10, v5, v9

    .line 174
    .line 175
    sub-long/2addr v10, v5

    .line 176
    and-long v5, v13, v10

    .line 177
    .line 178
    shl-long/2addr v2, v9

    .line 179
    or-long/2addr v2, v5

    .line 180
    const/4 v5, 0x0

    .line 181
    :goto_5
    if-ge v5, v15, :cond_5

    .line 182
    .line 183
    add-int v6, v16, v8

    .line 184
    .line 185
    add-int/2addr v6, v5

    .line 186
    mul-int/lit8 v9, v5, 0x8

    .line 187
    .line 188
    ushr-long v9, v2, v9

    .line 189
    .line 190
    long-to-int v9, v9

    .line 191
    int-to-byte v9, v9

    .line 192
    aput-byte v9, p1, v6

    .line 193
    .line 194
    add-int/lit8 v5, v5, 0x1

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_5
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 198
    .line 199
    add-int/lit8 v6, v20, 0x29

    .line 200
    .line 201
    move/from16 v2, p3

    .line 202
    .line 203
    move/from16 v3, v16

    .line 204
    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :cond_6
    move/from16 p3, v2

    .line 208
    .line 209
    move/from16 v16, v3

    .line 210
    .line 211
    add-int/lit8 v3, v16, 0x10

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_7
    move/from16 v16, v3

    .line 216
    .line 217
    sub-int v3, v16, p2

    .line 218
    .line 219
    iget v1, v0, Ll74;->b:I

    .line 220
    .line 221
    add-int/2addr v1, v3

    .line 222
    iput v1, v0, Ll74;->b:I

    .line 223
    .line 224
    return v3
.end method
