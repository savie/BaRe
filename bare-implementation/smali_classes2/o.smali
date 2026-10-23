.class public final Lo;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgg7;


# instance fields
.field public final synthetic a:I

.field public final b:Z

.field public c:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    iput p2, p0, Lo;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-boolean p3, p0, Lo;->b:Z

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x4

    .line 12
    .line 13
    iput p1, p0, Lo;->c:I

    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-boolean p3, p0, Lo;->b:Z

    .line 20
    .line 21
    iput p1, p0, Lo;->c:I

    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b([BII)I
    .locals 11

    .line 1
    iget v0, p0, Lo;->a:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lo;->b:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    add-int/2addr p3, p2

    .line 10
    add-int/lit8 p3, p3, -0x4

    .line 11
    .line 12
    move v0, p2

    .line 13
    :goto_0
    if-gt v0, p3, :cond_2

    .line 14
    .line 15
    aget-byte v3, p1, v0

    .line 16
    .line 17
    and-int/lit16 v3, v3, 0xfc

    .line 18
    .line 19
    const/16 v4, 0x48

    .line 20
    .line 21
    if-ne v3, v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v3, v0, 0x3

    .line 24
    .line 25
    aget-byte v3, p1, v3

    .line 26
    .line 27
    and-int/lit8 v3, v3, 0x3

    .line 28
    .line 29
    if-ne v3, v2, :cond_1

    .line 30
    .line 31
    invoke-static {p1, v0}, Lpe4;->o([BI)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget v4, p0, Lo;->c:I

    .line 36
    .line 37
    add-int/2addr v4, v0

    .line 38
    sub-int/2addr v4, p2

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    neg-int v4, v4

    .line 42
    :cond_0
    add-int/2addr v3, v4

    .line 43
    const v4, 0x3fffffc

    .line 44
    .line 45
    .line 46
    and-int/2addr v3, v4

    .line 47
    const v4, 0x48000001

    .line 48
    .line 49
    .line 50
    or-int/2addr v3, v4

    .line 51
    invoke-static {p1, v0, v3}, Lpe4;->B([BII)V

    .line 52
    .line 53
    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sub-int/2addr v0, p2

    .line 58
    iget p1, p0, Lo;->c:I

    .line 59
    .line 60
    add-int/2addr p1, v0

    .line 61
    iput p1, p0, Lo;->c:I

    .line 62
    .line 63
    return v0

    .line 64
    :pswitch_0
    add-int/2addr p3, p2

    .line 65
    add-int/lit8 p3, p3, -0x4

    .line 66
    .line 67
    move v0, p2

    .line 68
    :goto_1
    if-gt v0, p3, :cond_5

    .line 69
    .line 70
    add-int/lit8 v3, v0, 0x1

    .line 71
    .line 72
    aget-byte v4, p1, v3

    .line 73
    .line 74
    and-int/lit16 v5, v4, 0xf8

    .line 75
    .line 76
    const/16 v6, 0xf0

    .line 77
    .line 78
    if-ne v5, v6, :cond_4

    .line 79
    .line 80
    add-int/lit8 v5, v0, 0x3

    .line 81
    .line 82
    aget-byte v7, p1, v5

    .line 83
    .line 84
    and-int/lit16 v8, v7, 0xf8

    .line 85
    .line 86
    const/16 v9, 0xf8

    .line 87
    .line 88
    if-ne v8, v9, :cond_4

    .line 89
    .line 90
    and-int/lit8 v4, v4, 0x7

    .line 91
    .line 92
    shl-int/lit8 v4, v4, 0x13

    .line 93
    .line 94
    aget-byte v8, p1, v0

    .line 95
    .line 96
    and-int/lit16 v8, v8, 0xff

    .line 97
    .line 98
    shl-int/lit8 v8, v8, 0xb

    .line 99
    .line 100
    or-int/2addr v4, v8

    .line 101
    and-int/lit8 v7, v7, 0x7

    .line 102
    .line 103
    shl-int/lit8 v7, v7, 0x8

    .line 104
    .line 105
    or-int/2addr v4, v7

    .line 106
    add-int/lit8 v7, v0, 0x2

    .line 107
    .line 108
    aget-byte v8, p1, v7

    .line 109
    .line 110
    and-int/lit16 v8, v8, 0xff

    .line 111
    .line 112
    or-int/2addr v4, v8

    .line 113
    shl-int/2addr v4, v2

    .line 114
    iget v8, p0, Lo;->c:I

    .line 115
    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    add-int/2addr v8, v0

    .line 119
    sub-int/2addr v8, p2

    .line 120
    add-int/2addr v8, v4

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    add-int/2addr v8, v0

    .line 123
    sub-int/2addr v8, p2

    .line 124
    sub-int v8, v4, v8

    .line 125
    .line 126
    :goto_2
    ushr-int/lit8 v4, v8, 0x1

    .line 127
    .line 128
    ushr-int/lit8 v10, v8, 0x14

    .line 129
    .line 130
    and-int/lit8 v10, v10, 0x7

    .line 131
    .line 132
    or-int/2addr v6, v10

    .line 133
    int-to-byte v6, v6

    .line 134
    aput-byte v6, p1, v3

    .line 135
    .line 136
    ushr-int/lit8 v3, v8, 0xc

    .line 137
    .line 138
    int-to-byte v3, v3

    .line 139
    aput-byte v3, p1, v0

    .line 140
    .line 141
    ushr-int/lit8 v0, v8, 0x9

    .line 142
    .line 143
    and-int/lit8 v0, v0, 0x7

    .line 144
    .line 145
    or-int/2addr v0, v9

    .line 146
    int-to-byte v0, v0

    .line 147
    aput-byte v0, p1, v5

    .line 148
    .line 149
    int-to-byte v0, v4

    .line 150
    aput-byte v0, p1, v7

    .line 151
    .line 152
    move v0, v7

    .line 153
    :cond_4
    add-int/lit8 v0, v0, 0x2

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    sub-int/2addr v0, p2

    .line 157
    iget p1, p0, Lo;->c:I

    .line 158
    .line 159
    add-int/2addr p1, v0

    .line 160
    iput p1, p0, Lo;->c:I

    .line 161
    .line 162
    return v0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
