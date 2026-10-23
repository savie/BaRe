.class public final Lme6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgg7;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lme6;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b([BII)I
    .locals 8

    .line 1
    add-int/2addr p3, p2

    .line 2
    add-int/lit8 p3, p3, -0x8

    .line 3
    .line 4
    move v0, p2

    .line 5
    :goto_0
    if-gt v0, p3, :cond_6

    .line 6
    .line 7
    aget-byte v1, p1, v0

    .line 8
    .line 9
    and-int/lit16 v2, v1, 0xff

    .line 10
    .line 11
    const/16 v3, 0xef

    .line 12
    .line 13
    if-ne v2, v3, :cond_1

    .line 14
    .line 15
    add-int/lit8 v1, v0, 0x1

    .line 16
    .line 17
    aget-byte v2, p1, v1

    .line 18
    .line 19
    and-int/lit8 v3, v2, 0xd

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v3, v0, 0x2

    .line 26
    .line 27
    aget-byte v4, p1, v3

    .line 28
    .line 29
    and-int/lit16 v4, v4, 0xff

    .line 30
    .line 31
    add-int/lit8 v5, v0, 0x3

    .line 32
    .line 33
    aget-byte v6, p1, v5

    .line 34
    .line 35
    and-int/lit16 v6, v6, 0xff

    .line 36
    .line 37
    iget v7, p0, Lme6;->a:I

    .line 38
    .line 39
    add-int/2addr v7, v0

    .line 40
    sub-int/2addr v7, p2

    .line 41
    and-int/lit16 v0, v2, 0xf0

    .line 42
    .line 43
    shl-int/lit8 v0, v0, 0xd

    .line 44
    .line 45
    shl-int/lit8 v4, v4, 0x9

    .line 46
    .line 47
    or-int/2addr v0, v4

    .line 48
    shl-int/lit8 v4, v6, 0x1

    .line 49
    .line 50
    or-int/2addr v0, v4

    .line 51
    sub-int/2addr v0, v7

    .line 52
    and-int/lit8 v2, v2, 0xf

    .line 53
    .line 54
    ushr-int/lit8 v4, v0, 0x8

    .line 55
    .line 56
    and-int/lit16 v4, v4, 0xf0

    .line 57
    .line 58
    or-int/2addr v2, v4

    .line 59
    int-to-byte v2, v2

    .line 60
    aput-byte v2, p1, v1

    .line 61
    .line 62
    ushr-int/lit8 v1, v0, 0x10

    .line 63
    .line 64
    and-int/lit8 v1, v1, 0xf

    .line 65
    .line 66
    ushr-int/lit8 v2, v0, 0x7

    .line 67
    .line 68
    and-int/lit8 v2, v2, 0x10

    .line 69
    .line 70
    or-int/2addr v1, v2

    .line 71
    shl-int/lit8 v2, v0, 0x4

    .line 72
    .line 73
    and-int/lit16 v2, v2, 0xe0

    .line 74
    .line 75
    or-int/2addr v1, v2

    .line 76
    int-to-byte v1, v1

    .line 77
    aput-byte v1, p1, v3

    .line 78
    .line 79
    ushr-int/lit8 v1, v0, 0x4

    .line 80
    .line 81
    and-int/lit8 v1, v1, 0x7f

    .line 82
    .line 83
    ushr-int/lit8 v0, v0, 0xd

    .line 84
    .line 85
    and-int/lit16 v0, v0, 0x80

    .line 86
    .line 87
    or-int/2addr v0, v1

    .line 88
    int-to-byte v0, v0

    .line 89
    aput-byte v0, p1, v5

    .line 90
    .line 91
    move v0, v3

    .line 92
    goto :goto_3

    .line 93
    :cond_1
    and-int/lit8 v1, v1, 0x7f

    .line 94
    .line 95
    const/16 v3, 0x17

    .line 96
    .line 97
    if-ne v1, v3, :cond_5

    .line 98
    .line 99
    add-int/lit8 v1, v0, 0x1

    .line 100
    .line 101
    aget-byte v1, p1, v1

    .line 102
    .line 103
    and-int/lit16 v1, v1, 0xff

    .line 104
    .line 105
    shl-int/lit8 v1, v1, 0x8

    .line 106
    .line 107
    or-int/2addr v1, v2

    .line 108
    add-int/lit8 v2, v0, 0x2

    .line 109
    .line 110
    aget-byte v4, p1, v2

    .line 111
    .line 112
    and-int/lit16 v4, v4, 0xff

    .line 113
    .line 114
    shl-int/lit8 v4, v4, 0x10

    .line 115
    .line 116
    or-int/2addr v1, v4

    .line 117
    add-int/lit8 v4, v0, 0x3

    .line 118
    .line 119
    aget-byte v4, p1, v4

    .line 120
    .line 121
    and-int/lit16 v4, v4, 0xff

    .line 122
    .line 123
    shl-int/lit8 v4, v4, 0x18

    .line 124
    .line 125
    or-int/2addr v1, v4

    .line 126
    and-int/lit16 v4, v1, 0xe80

    .line 127
    .line 128
    if-eqz v4, :cond_3

    .line 129
    .line 130
    add-int/lit8 v2, v0, 0x4

    .line 131
    .line 132
    invoke-static {p1, v2}, Lpe4;->p([BI)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    shl-int/lit8 v4, v1, 0x8

    .line 137
    .line 138
    xor-int/2addr v4, v3

    .line 139
    const v5, 0xf8003

    .line 140
    .line 141
    .line 142
    and-int/2addr v4, v5

    .line 143
    const/4 v5, 0x3

    .line 144
    if-eq v4, v5, :cond_2

    .line 145
    .line 146
    :goto_1
    move v0, v2

    .line 147
    goto :goto_3

    .line 148
    :cond_2
    and-int/lit16 v1, v1, -0x1000

    .line 149
    .line 150
    ushr-int/lit8 v2, v3, 0x14

    .line 151
    .line 152
    add-int/2addr v1, v2

    .line 153
    shl-int/lit8 v2, v3, 0xc

    .line 154
    .line 155
    or-int/lit16 v2, v2, 0x117

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_3
    ushr-int/lit8 v4, v1, 0x1b

    .line 159
    .line 160
    add-int/lit16 v5, v1, -0x3100

    .line 161
    .line 162
    and-int/lit16 v5, v5, 0x3f80

    .line 163
    .line 164
    and-int/lit8 v6, v4, 0x1d

    .line 165
    .line 166
    if-lt v5, v6, :cond_4

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_4
    add-int/lit8 v2, v0, 0x4

    .line 170
    .line 171
    invoke-static {p1, v2}, Lpe4;->o([BI)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    iget v5, p0, Lme6;->a:I

    .line 176
    .line 177
    add-int/2addr v5, v0

    .line 178
    sub-int/2addr v5, p2

    .line 179
    sub-int/2addr v2, v5

    .line 180
    ushr-int/lit8 v1, v1, 0xc

    .line 181
    .line 182
    shl-int/lit8 v5, v2, 0x14

    .line 183
    .line 184
    or-int/2addr v1, v5

    .line 185
    shl-int/lit8 v4, v4, 0x7

    .line 186
    .line 187
    or-int/2addr v3, v4

    .line 188
    add-int/lit16 v2, v2, 0x800

    .line 189
    .line 190
    and-int/lit16 v2, v2, -0x1000

    .line 191
    .line 192
    or-int/2addr v2, v3

    .line 193
    :goto_2
    invoke-static {p1, v0, v2}, Lpe4;->C([BII)V

    .line 194
    .line 195
    .line 196
    add-int/lit8 v2, v0, 0x4

    .line 197
    .line 198
    invoke-static {p1, v2, v1}, Lpe4;->C([BII)V

    .line 199
    .line 200
    .line 201
    add-int/lit8 v0, v0, 0x6

    .line 202
    .line 203
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x2

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_6
    sub-int/2addr v0, p2

    .line 208
    iget p1, p0, Lme6;->a:I

    .line 209
    .line 210
    add-int/2addr p1, v0

    .line 211
    iput p1, p0, Lme6;->a:I

    .line 212
    .line 213
    return v0
.end method
