.class public final Lex8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgg7;


# static fields
.field public static final d:[Z

.field public static final e:[I


# instance fields
.field public final a:Z

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [Z

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lex8;->d:[Z

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lex8;->e:[I

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lex8;->c:I

    .line 6
    .line 7
    iput-boolean p2, p0, Lex8;->a:Z

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x5

    .line 10
    .line 11
    iput p1, p0, Lex8;->b:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 9

    .line 1
    add-int/lit8 v0, p2, -0x1

    .line 2
    .line 3
    add-int/2addr p3, p2

    .line 4
    add-int/lit8 p3, p3, -0x5

    .line 5
    .line 6
    move v1, p2

    .line 7
    :goto_0
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-gt v1, p3, :cond_a

    .line 10
    .line 11
    aget-byte v4, p1, v1

    .line 12
    .line 13
    and-int/lit16 v4, v4, 0xfe

    .line 14
    .line 15
    const/16 v5, 0xe8

    .line 16
    .line 17
    if-eq v4, v5, :cond_0

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_0
    sub-int v0, v1, v0

    .line 22
    .line 23
    and-int/lit8 v4, v0, -0x4

    .line 24
    .line 25
    const/16 v5, 0xff

    .line 26
    .line 27
    sget-object v6, Lex8;->e:[I

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    iput v2, p0, Lex8;->c:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget v2, p0, Lex8;->c:I

    .line 35
    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    shl-int v0, v2, v0

    .line 39
    .line 40
    and-int/lit8 v0, v0, 0x7

    .line 41
    .line 42
    iput v0, p0, Lex8;->c:I

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    sget-object v2, Lex8;->d:[Z

    .line 47
    .line 48
    aget-boolean v2, v2, v0

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    add-int/lit8 v2, v1, 0x4

    .line 53
    .line 54
    aget v4, v6, v0

    .line 55
    .line 56
    sub-int/2addr v2, v4

    .line 57
    aget-byte v2, p1, v2

    .line 58
    .line 59
    and-int/2addr v2, v5

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    if-ne v2, v5, :cond_3

    .line 63
    .line 64
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    or-int/2addr v0, v3

    .line 67
    iput v0, p0, Lex8;->c:I

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    :goto_1
    add-int/lit8 v4, v1, 0x4

    .line 71
    .line 72
    aget-byte v0, p1, v4

    .line 73
    .line 74
    and-int/2addr v0, v5

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    if-ne v0, v5, :cond_4

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    iget v0, p0, Lex8;->c:I

    .line 81
    .line 82
    shl-int/2addr v0, v3

    .line 83
    or-int/2addr v0, v3

    .line 84
    iput v0, p0, Lex8;->c:I

    .line 85
    .line 86
    :goto_2
    move v0, v1

    .line 87
    goto :goto_7

    .line 88
    :cond_5
    :goto_3
    add-int/lit8 v7, v1, 0x1

    .line 89
    .line 90
    invoke-static {p1, v7}, Lpe4;->p([BI)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    :goto_4
    iget v2, p0, Lex8;->b:I

    .line 95
    .line 96
    iget-boolean v8, p0, Lex8;->a:Z

    .line 97
    .line 98
    if-eqz v8, :cond_6

    .line 99
    .line 100
    add-int/2addr v2, v1

    .line 101
    sub-int/2addr v2, p2

    .line 102
    add-int/2addr v2, v0

    .line 103
    goto :goto_5

    .line 104
    :cond_6
    add-int/2addr v2, v1

    .line 105
    sub-int/2addr v2, p2

    .line 106
    sub-int v2, v0, v2

    .line 107
    .line 108
    :goto_5
    iget v0, p0, Lex8;->c:I

    .line 109
    .line 110
    if-nez v0, :cond_7

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_7
    aget v0, v6, v0

    .line 114
    .line 115
    mul-int/lit8 v0, v0, 0x8

    .line 116
    .line 117
    rsub-int/lit8 v8, v0, 0x18

    .line 118
    .line 119
    ushr-int v8, v2, v8

    .line 120
    .line 121
    int-to-byte v8, v8

    .line 122
    and-int/2addr v8, v5

    .line 123
    if-eqz v8, :cond_9

    .line 124
    .line 125
    if-ne v8, v5, :cond_8

    .line 126
    .line 127
    goto :goto_8

    .line 128
    :cond_8
    :goto_6
    shl-int/lit8 v0, v2, 0x7

    .line 129
    .line 130
    shr-int/lit8 v0, v0, 0x7

    .line 131
    .line 132
    invoke-static {p1, v7, v0}, Lpe4;->C([BII)V

    .line 133
    .line 134
    .line 135
    move v0, v1

    .line 136
    move v1, v4

    .line 137
    :goto_7
    add-int/2addr v1, v3

    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_9
    :goto_8
    rsub-int/lit8 v0, v0, 0x20

    .line 141
    .line 142
    shl-int v0, v3, v0

    .line 143
    .line 144
    sub-int/2addr v0, v3

    .line 145
    xor-int/2addr v0, v2

    .line 146
    goto :goto_4

    .line 147
    :cond_a
    sub-int p1, v1, v0

    .line 148
    .line 149
    and-int/lit8 p3, p1, -0x4

    .line 150
    .line 151
    if-eqz p3, :cond_b

    .line 152
    .line 153
    goto :goto_9

    .line 154
    :cond_b
    iget p3, p0, Lex8;->c:I

    .line 155
    .line 156
    sub-int/2addr p1, v3

    .line 157
    shl-int v2, p3, p1

    .line 158
    .line 159
    :goto_9
    iput v2, p0, Lex8;->c:I

    .line 160
    .line 161
    sub-int/2addr v1, p2

    .line 162
    iget p1, p0, Lex8;->b:I

    .line 163
    .line 164
    add-int/2addr p1, v1

    .line 165
    iput p1, p0, Lex8;->b:I

    .line 166
    .line 167
    return v1
.end method
