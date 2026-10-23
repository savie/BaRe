.class public final Lvs0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final e:[C

.field public static final f:[I

.field public static final g:[I


# instance fields
.field public a:Lts0;

.field public final b:[I

.field public final c:[[I

.field public d:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [C

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lvs0;->e:[C

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    new-array v1, v1, [I

    .line 13
    .line 14
    fill-array-data v1, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v1, Lvs0;->f:[I

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    fill-array-data v0, :array_2

    .line 22
    .line 23
    .line 24
    sput-object v0, Lvs0;->g:[I

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    :array_1
    .array-data 4
        0x6a09e667
        -0x4498517b
        0x3c6ef372
        -0x5ab00ac6
        0x510e527f
        -0x64fa9774
        0x1f83d9ab
        0x5be0cd19
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    :array_2
    .array-data 4
        0x2
        0x6
        0x3
        0xa
        0x7
        0x0
        0x4
        0xd
        0x1
        0xb
        0xc
        0x5
        0x9
        0xe
        0xf
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x36

    .line 5
    .line 6
    new-array v0, v0, [[I

    .line 7
    .line 8
    iput-object v0, p0, Lvs0;->c:[[I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-byte v0, p0, Lvs0;->d:B

    .line 12
    .line 13
    new-instance v0, Lts0;

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    sget-object v3, Lvs0;->f:[I

    .line 18
    .line 19
    invoke-direct {v0, v3, v1, v2}, Lts0;-><init>([IJ)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lvs0;->a:Lts0;

    .line 23
    .line 24
    iput-object v3, p0, Lvs0;->b:[I

    .line 25
    .line 26
    return-void
.end method

.method public static a([I[IJII)[I
    .locals 8

    .line 1
    const-wide v0, 0xffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long v2, p2, v0

    .line 7
    .line 8
    long-to-int v2, v2

    .line 9
    const/16 v3, 0x20

    .line 10
    .line 11
    shr-long/2addr p2, v3

    .line 12
    and-long/2addr p2, v0

    .line 13
    long-to-int p2, p2

    .line 14
    const/16 p3, 0x10

    .line 15
    .line 16
    new-array p3, p3, [I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    aget v1, p0, v0

    .line 20
    .line 21
    aput v1, p3, v0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    aget v3, p0, v1

    .line 25
    .line 26
    aput v3, p3, v1

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    aget v4, p0, v3

    .line 30
    .line 31
    aput v4, p3, v3

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    aget v5, p0, v4

    .line 35
    .line 36
    aput v5, p3, v4

    .line 37
    .line 38
    const/4 v5, 0x4

    .line 39
    aget v6, p0, v5

    .line 40
    .line 41
    aput v6, p3, v5

    .line 42
    .line 43
    const/4 v5, 0x5

    .line 44
    aget v6, p0, v5

    .line 45
    .line 46
    aput v6, p3, v5

    .line 47
    .line 48
    const/4 v5, 0x6

    .line 49
    aget v6, p0, v5

    .line 50
    .line 51
    aput v6, p3, v5

    .line 52
    .line 53
    const/4 v5, 0x7

    .line 54
    aget v6, p0, v5

    .line 55
    .line 56
    aput v6, p3, v5

    .line 57
    .line 58
    sget-object v5, Lvs0;->f:[I

    .line 59
    .line 60
    aget v6, v5, v0

    .line 61
    .line 62
    const/16 v7, 0x8

    .line 63
    .line 64
    aput v6, p3, v7

    .line 65
    .line 66
    const/16 v6, 0x9

    .line 67
    .line 68
    aget v1, v5, v1

    .line 69
    .line 70
    aput v1, p3, v6

    .line 71
    .line 72
    const/16 v1, 0xa

    .line 73
    .line 74
    aget v3, v5, v3

    .line 75
    .line 76
    aput v3, p3, v1

    .line 77
    .line 78
    const/16 v1, 0xb

    .line 79
    .line 80
    aget v3, v5, v4

    .line 81
    .line 82
    aput v3, p3, v1

    .line 83
    .line 84
    const/16 v1, 0xc

    .line 85
    .line 86
    aput v2, p3, v1

    .line 87
    .line 88
    const/16 v1, 0xd

    .line 89
    .line 90
    aput p2, p3, v1

    .line 91
    .line 92
    const/16 p2, 0xe

    .line 93
    .line 94
    aput p4, p3, p2

    .line 95
    .line 96
    const/16 p2, 0xf

    .line 97
    .line 98
    aput p5, p3, p2

    .line 99
    .line 100
    invoke-static {p3, p1}, Lvs0;->f([I[I)V

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lvs0;->e([I)[I

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p3, p1}, Lvs0;->f([I[I)V

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Lvs0;->e([I)[I

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p3, p1}, Lvs0;->f([I[I)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Lvs0;->e([I)[I

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p3, p1}, Lvs0;->f([I[I)V

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Lvs0;->e([I)[I

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p3, p1}, Lvs0;->f([I[I)V

    .line 129
    .line 130
    .line 131
    invoke-static {p1}, Lvs0;->e([I)[I

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p3, p1}, Lvs0;->f([I[I)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lvs0;->e([I)[I

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p3, p1}, Lvs0;->f([I[I)V

    .line 143
    .line 144
    .line 145
    :goto_0
    if-ge v0, v7, :cond_0

    .line 146
    .line 147
    aget p1, p3, v0

    .line 148
    .line 149
    add-int/lit8 p2, v0, 0x8

    .line 150
    .line 151
    aget p4, p3, p2

    .line 152
    .line 153
    xor-int/2addr p1, p4

    .line 154
    aput p1, p3, v0

    .line 155
    .line 156
    aget p1, p3, p2

    .line 157
    .line 158
    aget p4, p0, v0

    .line 159
    .line 160
    xor-int/2addr p1, p4

    .line 161
    aput p1, p3, p2

    .line 162
    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_0
    return-object p3
.end method

.method public static b([IIIIIII)V
    .locals 2

    .line 1
    aget v0, p0, p1

    .line 2
    .line 3
    aget v1, p0, p2

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    add-int/2addr v0, p5

    .line 7
    aput v0, p0, p1

    .line 8
    .line 9
    aget p5, p0, p4

    .line 10
    .line 11
    xor-int/2addr p5, v0

    .line 12
    ushr-int/lit8 v0, p5, 0x10

    .line 13
    .line 14
    shl-int/lit8 p5, p5, 0x10

    .line 15
    .line 16
    or-int/2addr p5, v0

    .line 17
    aput p5, p0, p4

    .line 18
    .line 19
    aget v0, p0, p3

    .line 20
    .line 21
    add-int/2addr v0, p5

    .line 22
    aput v0, p0, p3

    .line 23
    .line 24
    aget p5, p0, p2

    .line 25
    .line 26
    xor-int/2addr p5, v0

    .line 27
    ushr-int/lit8 v0, p5, 0xc

    .line 28
    .line 29
    shl-int/lit8 p5, p5, 0x14

    .line 30
    .line 31
    or-int/2addr p5, v0

    .line 32
    aput p5, p0, p2

    .line 33
    .line 34
    aget v0, p0, p1

    .line 35
    .line 36
    add-int/2addr v0, p5

    .line 37
    add-int/2addr v0, p6

    .line 38
    aput v0, p0, p1

    .line 39
    .line 40
    aget p1, p0, p4

    .line 41
    .line 42
    xor-int/2addr p1, v0

    .line 43
    ushr-int/lit8 p5, p1, 0x8

    .line 44
    .line 45
    shl-int/lit8 p1, p1, 0x18

    .line 46
    .line 47
    or-int/2addr p1, p5

    .line 48
    aput p1, p0, p4

    .line 49
    .line 50
    aget p4, p0, p3

    .line 51
    .line 52
    add-int/2addr p4, p1

    .line 53
    aput p4, p0, p3

    .line 54
    .line 55
    aget p1, p0, p2

    .line 56
    .line 57
    xor-int/2addr p1, p4

    .line 58
    ushr-int/lit8 p3, p1, 0x7

    .line 59
    .line 60
    shl-int/lit8 p1, p1, 0x19

    .line 61
    .line 62
    or-int/2addr p1, p3

    .line 63
    aput p1, p0, p2

    .line 64
    .line 65
    return-void
.end method

.method public static d([I[I[I)Lus0;
    .locals 8

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v3, v0, [I

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v4, v2

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget v5, p0, v2

    .line 12
    .line 13
    aput v5, v3, v4

    .line 14
    .line 15
    add-int/lit8 v4, v4, 0x1

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    array-length p0, p1

    .line 21
    :goto_1
    if-ge v1, p0, :cond_1

    .line 22
    .line 23
    aget v0, p1, v1

    .line 24
    .line 25
    aput v0, v3, v4

    .line 26
    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    new-instance v1, Lus0;

    .line 33
    .line 34
    const/16 v6, 0x40

    .line 35
    .line 36
    const/4 v7, 0x4

    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    move-object v2, p2

    .line 40
    invoke-direct/range {v1 .. v7}, Lus0;-><init>([I[IJII)V

    .line 41
    .line 42
    .line 43
    return-object v1
.end method

.method public static e([I)[I
    .locals 4

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    sget-object v3, Lvs0;->g:[I

    .line 9
    .line 10
    aget v3, v3, v2

    .line 11
    .line 12
    aget v3, p0, v3

    .line 13
    .line 14
    aput v3, v1, v2

    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v1
.end method

.method public static f([I[I)V
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v6, p1, v0

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    aget v7, p1, v0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x4

    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const/16 v5, 0xc

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    invoke-static/range {v1 .. v7}, Lvs0;->b([IIIIIII)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    aget v13, p1, v0

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    aget v14, p1, v0

    .line 22
    .line 23
    const/4 v9, 0x1

    .line 24
    const/4 v10, 0x5

    .line 25
    const/16 v11, 0x9

    .line 26
    .line 27
    const/16 v12, 0xd

    .line 28
    .line 29
    move-object v8, p0

    .line 30
    invoke-static/range {v8 .. v14}, Lvs0;->b([IIIIIII)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    aget v13, p1, v0

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    aget v14, p1, v0

    .line 38
    .line 39
    const/4 v9, 0x2

    .line 40
    const/4 v10, 0x6

    .line 41
    const/16 v11, 0xa

    .line 42
    .line 43
    const/16 v12, 0xe

    .line 44
    .line 45
    invoke-static/range {v8 .. v14}, Lvs0;->b([IIIIIII)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x6

    .line 49
    aget v13, p1, v0

    .line 50
    .line 51
    const/4 v0, 0x7

    .line 52
    aget v14, p1, v0

    .line 53
    .line 54
    const/4 v9, 0x3

    .line 55
    const/4 v10, 0x7

    .line 56
    const/16 v11, 0xb

    .line 57
    .line 58
    const/16 v12, 0xf

    .line 59
    .line 60
    invoke-static/range {v8 .. v14}, Lvs0;->b([IIIIIII)V

    .line 61
    .line 62
    .line 63
    const/16 v0, 0x8

    .line 64
    .line 65
    aget v13, p1, v0

    .line 66
    .line 67
    const/16 v0, 0x9

    .line 68
    .line 69
    aget v14, p1, v0

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v10, 0x5

    .line 73
    const/16 v11, 0xa

    .line 74
    .line 75
    invoke-static/range {v8 .. v14}, Lvs0;->b([IIIIIII)V

    .line 76
    .line 77
    .line 78
    const/16 v0, 0xa

    .line 79
    .line 80
    aget v13, p1, v0

    .line 81
    .line 82
    const/16 v0, 0xb

    .line 83
    .line 84
    aget v14, p1, v0

    .line 85
    .line 86
    const/4 v9, 0x1

    .line 87
    const/4 v10, 0x6

    .line 88
    const/16 v11, 0xb

    .line 89
    .line 90
    const/16 v12, 0xc

    .line 91
    .line 92
    invoke-static/range {v8 .. v14}, Lvs0;->b([IIIIIII)V

    .line 93
    .line 94
    .line 95
    const/16 v0, 0xc

    .line 96
    .line 97
    aget v13, p1, v0

    .line 98
    .line 99
    const/16 v0, 0xd

    .line 100
    .line 101
    aget v14, p1, v0

    .line 102
    .line 103
    const/4 v9, 0x2

    .line 104
    const/4 v10, 0x7

    .line 105
    const/16 v11, 0x8

    .line 106
    .line 107
    const/16 v12, 0xd

    .line 108
    .line 109
    invoke-static/range {v8 .. v14}, Lvs0;->b([IIIIIII)V

    .line 110
    .line 111
    .line 112
    const/16 v0, 0xe

    .line 113
    .line 114
    aget v13, p1, v0

    .line 115
    .line 116
    const/16 v0, 0xf

    .line 117
    .line 118
    aget v14, p1, v0

    .line 119
    .line 120
    const/4 v9, 0x3

    .line 121
    const/4 v10, 0x4

    .line 122
    const/16 v11, 0x9

    .line 123
    .line 124
    const/16 v12, 0xe

    .line 125
    .line 126
    invoke-static/range {v8 .. v14}, Lvs0;->b([IIIIIII)V

    .line 127
    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lvs0;->a:Lts0;

    .line 4
    .line 5
    new-instance v2, Lus0;

    .line 6
    .line 7
    iget-object v3, v1, Lts0;->a:[I

    .line 8
    .line 9
    iget-object v4, v1, Lts0;->c:[B

    .line 10
    .line 11
    array-length v5, v4

    .line 12
    const/4 v9, 0x4

    .line 13
    div-int/2addr v5, v9

    .line 14
    move-object v6, v4

    .line 15
    new-array v4, v5, [I

    .line 16
    .line 17
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const/4 v10, 0x0

    .line 28
    move v7, v10

    .line 29
    :goto_0
    if-ge v7, v5, :cond_0

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    aput v8, v4, v7

    .line 36
    .line 37
    add-int/lit8 v7, v7, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-wide v5, v1, Lts0;->b:J

    .line 41
    .line 42
    iget-byte v7, v1, Lts0;->d:B

    .line 43
    .line 44
    iget-byte v1, v1, Lts0;->e:B

    .line 45
    .line 46
    const/4 v11, 0x1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    move v1, v11

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v1, v10

    .line 52
    :goto_1
    or-int/lit8 v8, v1, 0x2

    .line 53
    .line 54
    invoke-direct/range {v2 .. v8}, Lus0;-><init>([I[IJII)V

    .line 55
    .line 56
    .line 57
    iget-byte v1, v0, Lvs0;->d:B

    .line 58
    .line 59
    :goto_2
    if-lez v1, :cond_2

    .line 60
    .line 61
    add-int/lit8 v1, v1, -0x1

    .line 62
    .line 63
    iget-object v3, v0, Lvs0;->c:[[I

    .line 64
    .line 65
    aget-object v3, v3, v1

    .line 66
    .line 67
    invoke-static {v2}, Lus0;->a(Lus0;)[I

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v4, v0, Lvs0;->b:[I

    .line 72
    .line 73
    invoke-static {v3, v2, v4}, Lvs0;->d([I[I[I)Lus0;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const/16 v0, 0x20

    .line 79
    .line 80
    const/16 v1, 0x40

    .line 81
    .line 82
    invoke-static {v0, v1}, Ljava/lang/Math;->floorDiv(II)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    add-int/2addr v3, v11

    .line 87
    new-array v4, v0, [B

    .line 88
    .line 89
    move v5, v10

    .line 90
    move v6, v5

    .line 91
    :goto_3
    if-ge v5, v3, :cond_7

    .line 92
    .line 93
    iget-object v12, v2, Lus0;->a:[I

    .line 94
    .line 95
    iget-object v13, v2, Lus0;->b:[I

    .line 96
    .line 97
    int-to-long v14, v5

    .line 98
    iget v7, v2, Lus0;->d:I

    .line 99
    .line 100
    iget v8, v2, Lus0;->e:I

    .line 101
    .line 102
    or-int/lit8 v17, v8, 0x8

    .line 103
    .line 104
    move/from16 v16, v7

    .line 105
    .line 106
    invoke-static/range {v12 .. v17}, Lvs0;->a([I[IJII)[I

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    move v8, v10

    .line 111
    :goto_4
    const/16 v12, 0x10

    .line 112
    .line 113
    if-ge v8, v12, :cond_6

    .line 114
    .line 115
    aget v12, v7, v8

    .line 116
    .line 117
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 122
    .line 123
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    invoke-virtual {v13, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    array-length v13, v12

    .line 136
    move v14, v10

    .line 137
    :goto_5
    if-ge v14, v13, :cond_5

    .line 138
    .line 139
    aget-byte v15, v12, v14

    .line 140
    .line 141
    aput-byte v15, v4, v6

    .line 142
    .line 143
    add-int/lit8 v6, v6, 0x1

    .line 144
    .line 145
    if-ne v6, v0, :cond_4

    .line 146
    .line 147
    new-array v1, v1, [C

    .line 148
    .line 149
    :goto_6
    if-ge v10, v0, :cond_3

    .line 150
    .line 151
    aget-byte v2, v4, v10

    .line 152
    .line 153
    and-int/lit16 v3, v2, 0xff

    .line 154
    .line 155
    mul-int/lit8 v5, v10, 0x2

    .line 156
    .line 157
    ushr-int/2addr v3, v9

    .line 158
    sget-object v6, Lvs0;->e:[C

    .line 159
    .line 160
    aget-char v3, v6, v3

    .line 161
    .line 162
    aput-char v3, v1, v5

    .line 163
    .line 164
    add-int/2addr v5, v11

    .line 165
    and-int/lit8 v2, v2, 0xf

    .line 166
    .line 167
    aget-char v2, v6, v2

    .line 168
    .line 169
    aput-char v2, v1, v5

    .line 170
    .line 171
    add-int/lit8 v10, v10, 0x1

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 175
    .line 176
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 177
    .line 178
    .line 179
    return-object v0

    .line 180
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_7
    const-string v0, "Uh oh something has gone horribly wrong. Please create an issue on https://github.com/rctcwyvrn/blake3"

    .line 190
    .line 191
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const/4 v0, 0x0

    .line 195
    return-object v0
.end method

.method public final g([B)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    array-length v4, v1

    .line 8
    if-ge v3, v4, :cond_8

    .line 9
    .line 10
    iget-object v4, v0, Lvs0;->a:Lts0;

    .line 11
    .line 12
    iget-byte v5, v4, Lts0;->e:B

    .line 13
    .line 14
    const/16 v6, 0x40

    .line 15
    .line 16
    mul-int/2addr v5, v6

    .line 17
    iget-byte v7, v4, Lts0;->d:B

    .line 18
    .line 19
    add-int/2addr v5, v7

    .line 20
    const/16 v7, 0x8

    .line 21
    .line 22
    const/16 v9, 0x400

    .line 23
    .line 24
    if-ne v5, v9, :cond_3

    .line 25
    .line 26
    iget-object v10, v4, Lts0;->a:[I

    .line 27
    .line 28
    iget-object v5, v4, Lts0;->c:[B

    .line 29
    .line 30
    array-length v11, v5

    .line 31
    div-int/lit8 v11, v11, 0x4

    .line 32
    .line 33
    new-array v12, v11, [I

    .line 34
    .line 35
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 40
    .line 41
    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    move v13, v2

    .line 46
    :goto_1
    if-ge v13, v11, :cond_0

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    .line 49
    .line 50
    .line 51
    move-result v14

    .line 52
    aput v14, v12, v13

    .line 53
    .line 54
    add-int/lit8 v13, v13, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iget-wide v13, v4, Lts0;->b:J

    .line 58
    .line 59
    move-object v11, v12

    .line 60
    move-wide v12, v13

    .line 61
    iget-byte v14, v4, Lts0;->d:B

    .line 62
    .line 63
    iget-byte v4, v4, Lts0;->e:B

    .line 64
    .line 65
    if-nez v4, :cond_1

    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    move v4, v2

    .line 70
    :goto_2
    or-int/lit8 v15, v4, 0x2

    .line 71
    .line 72
    invoke-static/range {v10 .. v15}, Lvs0;->a([I[IJII)[I

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v4, v2, v7}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    iget-object v5, v0, Lvs0;->a:Lts0;

    .line 81
    .line 82
    iget-wide v10, v5, Lts0;->b:J

    .line 83
    .line 84
    const-wide/16 v12, 0x1

    .line 85
    .line 86
    add-long/2addr v10, v12

    .line 87
    move-wide v14, v10

    .line 88
    :goto_3
    and-long v16, v14, v12

    .line 89
    .line 90
    const-wide/16 v18, 0x0

    .line 91
    .line 92
    cmp-long v5, v16, v18

    .line 93
    .line 94
    const/16 v16, 0x1

    .line 95
    .line 96
    iget-byte v8, v0, Lvs0;->d:B

    .line 97
    .line 98
    iget-object v12, v0, Lvs0;->b:[I

    .line 99
    .line 100
    iget-object v13, v0, Lvs0;->c:[[I

    .line 101
    .line 102
    if-nez v5, :cond_2

    .line 103
    .line 104
    add-int/lit8 v8, v8, -0x1

    .line 105
    .line 106
    int-to-byte v5, v8

    .line 107
    iput-byte v5, v0, Lvs0;->d:B

    .line 108
    .line 109
    aget-object v5, v13, v5

    .line 110
    .line 111
    invoke-static {v5, v4, v12}, Lvs0;->d([I[I[I)Lus0;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {v4}, Lus0;->a(Lus0;)[I

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    shr-long v14, v14, v16

    .line 120
    .line 121
    const-wide/16 v12, 0x1

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_2
    aput-object v4, v13, v8

    .line 125
    .line 126
    add-int/lit8 v8, v8, 0x1

    .line 127
    .line 128
    int-to-byte v4, v8

    .line 129
    iput-byte v4, v0, Lvs0;->d:B

    .line 130
    .line 131
    new-instance v4, Lts0;

    .line 132
    .line 133
    invoke-direct {v4, v12, v10, v11}, Lts0;-><init>([IJ)V

    .line 134
    .line 135
    .line 136
    iput-object v4, v0, Lvs0;->a:Lts0;

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_3
    const/16 v16, 0x1

    .line 140
    .line 141
    :goto_4
    iget-object v4, v0, Lvs0;->a:Lts0;

    .line 142
    .line 143
    iget-byte v5, v4, Lts0;->e:B

    .line 144
    .line 145
    mul-int/2addr v5, v6

    .line 146
    iget-byte v4, v4, Lts0;->d:B

    .line 147
    .line 148
    add-int/2addr v5, v4

    .line 149
    sub-int/2addr v9, v5

    .line 150
    array-length v4, v1

    .line 151
    sub-int/2addr v4, v3

    .line 152
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    iget-object v5, v0, Lvs0;->a:Lts0;

    .line 157
    .line 158
    add-int/2addr v4, v3

    .line 159
    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    move v8, v2

    .line 164
    :goto_5
    array-length v9, v3

    .line 165
    if-ge v8, v9, :cond_7

    .line 166
    .line 167
    iget-byte v9, v5, Lts0;->d:B

    .line 168
    .line 169
    if-ne v9, v6, :cond_6

    .line 170
    .line 171
    iget-object v9, v5, Lts0;->c:[B

    .line 172
    .line 173
    array-length v10, v9

    .line 174
    div-int/lit8 v10, v10, 0x4

    .line 175
    .line 176
    new-array v11, v10, [I

    .line 177
    .line 178
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 183
    .line 184
    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    move v12, v2

    .line 189
    :goto_6
    if-ge v12, v10, :cond_4

    .line 190
    .line 191
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    .line 192
    .line 193
    .line 194
    move-result v13

    .line 195
    aput v13, v11, v12

    .line 196
    .line 197
    add-int/lit8 v12, v12, 0x1

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_4
    iget-object v9, v5, Lts0;->a:[I

    .line 201
    .line 202
    iget-wide v12, v5, Lts0;->b:J

    .line 203
    .line 204
    iget-byte v10, v5, Lts0;->e:B

    .line 205
    .line 206
    if-nez v10, :cond_5

    .line 207
    .line 208
    move/from16 v22, v16

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_5
    move/from16 v22, v2

    .line 212
    .line 213
    :goto_7
    const/16 v21, 0x40

    .line 214
    .line 215
    move-object/from16 v17, v9

    .line 216
    .line 217
    move-object/from16 v18, v11

    .line 218
    .line 219
    move-wide/from16 v19, v12

    .line 220
    .line 221
    invoke-static/range {v17 .. v22}, Lvs0;->a([I[IJII)[I

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    invoke-static {v9, v2, v7}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    iput-object v9, v5, Lts0;->a:[I

    .line 230
    .line 231
    iget-byte v9, v5, Lts0;->e:B

    .line 232
    .line 233
    add-int/lit8 v9, v9, 0x1

    .line 234
    .line 235
    int-to-byte v9, v9

    .line 236
    iput-byte v9, v5, Lts0;->e:B

    .line 237
    .line 238
    new-array v9, v6, [B

    .line 239
    .line 240
    iput-object v9, v5, Lts0;->c:[B

    .line 241
    .line 242
    iput-byte v2, v5, Lts0;->d:B

    .line 243
    .line 244
    :cond_6
    iget-byte v9, v5, Lts0;->d:B

    .line 245
    .line 246
    rsub-int/lit8 v9, v9, 0x40

    .line 247
    .line 248
    array-length v10, v3

    .line 249
    sub-int/2addr v10, v8

    .line 250
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    iget-object v10, v5, Lts0;->c:[B

    .line 255
    .line 256
    iget-byte v11, v5, Lts0;->d:B

    .line 257
    .line 258
    invoke-static {v3, v8, v10, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    .line 260
    .line 261
    iget-byte v10, v5, Lts0;->d:B

    .line 262
    .line 263
    add-int/2addr v10, v9

    .line 264
    int-to-byte v10, v10

    .line 265
    iput-byte v10, v5, Lts0;->d:B

    .line 266
    .line 267
    add-int/2addr v8, v9

    .line 268
    goto :goto_5

    .line 269
    :cond_7
    move v3, v4

    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_8
    return-void
.end method
