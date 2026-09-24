.class final Lcom/jcraft/jsch/jzlib/Deflate;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/jzlib/Deflate$Config;
    }
.end annotation


# static fields
.field public static final w0:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

.field public static final x0:[Ljava/lang/String;


# instance fields
.field public G:[S

.field public H:[S

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:[S

.field public final a:Lcom/jcraft/jsch/jzlib/ZStream;

.field public a0:[S

.field public b:I

.field public b0:[S

.field public c:[B

.field public final c0:Lcom/jcraft/jsch/jzlib/Tree;

.field public d:I

.field public final d0:Lcom/jcraft/jsch/jzlib/Tree;

.field public e:I

.field public final e0:Lcom/jcraft/jsch/jzlib/Tree;

.field public f:I

.field public f0:[S

.field public g0:[S

.field public h0:[I

.field public i0:I

.field public j0:I

.field public k:I

.field public k0:[B

.field public l0:[B

.field public m0:I

.field public n:B

.field public n0:I

.field public o0:I

.field public p:I

.field public p0:I

.field public q:I

.field public q0:I

.field public r:I

.field public r0:I

.field public s0:I

.field public t:I

.field public t0:S

.field public u0:I

.field public v0:Lcom/jcraft/jsch/jzlib/GZIPHeader;

.field public x:[B

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 4
    .line 5
    sput-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->w0:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 6
    .line 7
    new-instance v1, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 15
    .line 16
    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    new-instance v3, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 20
    .line 21
    const/4 v7, 0x4

    .line 22
    const/4 v8, 0x1

    .line 23
    const/4 v4, 0x4

    .line 24
    const/4 v5, 0x4

    .line 25
    const/16 v6, 0x8

    .line 26
    .line 27
    invoke-direct/range {v3 .. v8}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    aput-object v3, v0, v1

    .line 32
    .line 33
    new-instance v4, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 34
    .line 35
    const/16 v8, 0x8

    .line 36
    .line 37
    const/4 v9, 0x1

    .line 38
    const/4 v6, 0x5

    .line 39
    const/16 v7, 0x10

    .line 40
    .line 41
    invoke-direct/range {v4 .. v9}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    aput-object v4, v0, v1

    .line 46
    .line 47
    new-instance v5, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 48
    .line 49
    const/16 v9, 0x20

    .line 50
    .line 51
    const/4 v10, 0x1

    .line 52
    const/4 v6, 0x4

    .line 53
    const/4 v7, 0x6

    .line 54
    const/16 v8, 0x20

    .line 55
    .line 56
    invoke-direct/range {v5 .. v10}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x3

    .line 60
    aput-object v5, v0, v1

    .line 61
    .line 62
    new-instance v6, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 63
    .line 64
    const/16 v10, 0x10

    .line 65
    .line 66
    const/4 v11, 0x2

    .line 67
    const/4 v7, 0x4

    .line 68
    const/4 v8, 0x4

    .line 69
    const/16 v9, 0x10

    .line 70
    .line 71
    invoke-direct/range {v6 .. v11}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 72
    .line 73
    .line 74
    const/4 v1, 0x4

    .line 75
    aput-object v6, v0, v1

    .line 76
    .line 77
    new-instance v7, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 78
    .line 79
    const/16 v11, 0x20

    .line 80
    .line 81
    const/4 v12, 0x2

    .line 82
    const/16 v8, 0x8

    .line 83
    .line 84
    const/16 v10, 0x20

    .line 85
    .line 86
    invoke-direct/range {v7 .. v12}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 87
    .line 88
    .line 89
    const/4 v1, 0x5

    .line 90
    aput-object v7, v0, v1

    .line 91
    .line 92
    new-instance v8, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 93
    .line 94
    const/16 v12, 0x80

    .line 95
    .line 96
    const/4 v13, 0x2

    .line 97
    const/16 v9, 0x8

    .line 98
    .line 99
    const/16 v10, 0x10

    .line 100
    .line 101
    const/16 v11, 0x80

    .line 102
    .line 103
    invoke-direct/range {v8 .. v13}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 104
    .line 105
    .line 106
    const/4 v1, 0x6

    .line 107
    aput-object v8, v0, v1

    .line 108
    .line 109
    new-instance v2, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 110
    .line 111
    const/16 v6, 0x100

    .line 112
    .line 113
    const/4 v7, 0x2

    .line 114
    const/16 v3, 0x8

    .line 115
    .line 116
    const/16 v4, 0x20

    .line 117
    .line 118
    const/16 v5, 0x80

    .line 119
    .line 120
    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 121
    .line 122
    .line 123
    const/4 v1, 0x7

    .line 124
    aput-object v2, v0, v1

    .line 125
    .line 126
    new-instance v3, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 127
    .line 128
    const/16 v7, 0x400

    .line 129
    .line 130
    const/4 v8, 0x2

    .line 131
    const/16 v6, 0x102

    .line 132
    .line 133
    invoke-direct/range {v3 .. v8}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 134
    .line 135
    .line 136
    const/16 v1, 0x8

    .line 137
    .line 138
    aput-object v3, v0, v1

    .line 139
    .line 140
    new-instance v4, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 141
    .line 142
    const/16 v8, 0x1000

    .line 143
    .line 144
    const/4 v9, 0x2

    .line 145
    const/16 v5, 0x20

    .line 146
    .line 147
    const/16 v7, 0x102

    .line 148
    .line 149
    invoke-direct/range {v4 .. v9}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 150
    .line 151
    .line 152
    const/16 v1, 0x9

    .line 153
    .line 154
    aput-object v4, v0, v1

    .line 155
    .line 156
    const-string v13, "incompatible version"

    .line 157
    .line 158
    const-string v14, ""

    .line 159
    .line 160
    const-string v5, "need dictionary"

    .line 161
    .line 162
    const-string v6, "stream end"

    .line 163
    .line 164
    const-string v7, ""

    .line 165
    .line 166
    const-string v8, "file error"

    .line 167
    .line 168
    const-string v9, "stream error"

    .line 169
    .line 170
    const-string v10, "data error"

    .line 171
    .line 172
    const-string v11, "insufficient memory"

    .line 173
    .line 174
    const-string v12, "buffer error"

    .line 175
    .line 176
    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    sput-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->x0:[Ljava/lang/String;

    .line 181
    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/jzlib/ZStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->k:I

    .line 6
    .line 7
    new-instance v0, Lcom/jcraft/jsch/jzlib/Tree;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->c0:Lcom/jcraft/jsch/jzlib/Tree;

    .line 13
    .line 14
    new-instance v0, Lcom/jcraft/jsch/jzlib/Tree;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d0:Lcom/jcraft/jsch/jzlib/Tree;

    .line 20
    .line 21
    new-instance v0, Lcom/jcraft/jsch/jzlib/Tree;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->e0:Lcom/jcraft/jsch/jzlib/Tree;

    .line 27
    .line 28
    const/16 v0, 0x10

    .line 29
    .line 30
    new-array v1, v0, [S

    .line 31
    .line 32
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->f0:[S

    .line 33
    .line 34
    new-array v0, v0, [S

    .line 35
    .line 36
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->g0:[S

    .line 37
    .line 38
    const/16 v0, 0x23d

    .line 39
    .line 40
    new-array v1, v0, [I

    .line 41
    .line 42
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->h0:[I

    .line 43
    .line 44
    new-array v0, v0, [B

    .line 45
    .line 46
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->k0:[B

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->v0:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->a:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 52
    .line 53
    const/16 p1, 0x47a

    .line 54
    .line 55
    new-array p1, p1, [S

    .line 56
    .line 57
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 58
    .line 59
    const/16 p1, 0x7a

    .line 60
    .line 61
    new-array p1, p1, [S

    .line 62
    .line 63
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->a0:[S

    .line 64
    .line 65
    const/16 p1, 0x4e

    .line 66
    .line 67
    new-array p1, p1, [S

    .line 68
    .line 69
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 70
    .line 71
    return-void
.end method

.method public static e([S)[S
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-array v1, v0, [S

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    return-object v1
.end method


# virtual methods
.method public final a(II)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->c:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->o0:I

    .line 4
    .line 5
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->n0:I

    .line 6
    .line 7
    mul-int/lit8 v3, v2, 0x2

    .line 8
    .line 9
    add-int/2addr v3, v1

    .line 10
    ushr-int/lit8 v1, p1, 0x8

    .line 11
    .line 12
    int-to-byte v1, v1

    .line 13
    aput-byte v1, v0, v3

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    add-int/2addr v3, v1

    .line 17
    int-to-byte v4, p1

    .line 18
    aput-byte v4, v0, v3

    .line 19
    .line 20
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l0:[B

    .line 21
    .line 22
    int-to-byte v3, p2

    .line 23
    aput-byte v3, v0, v2

    .line 24
    .line 25
    add-int/2addr v2, v1

    .line 26
    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->n0:I

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 32
    .line 33
    mul-int/2addr p2, v0

    .line 34
    aget-short v3, p1, p2

    .line 35
    .line 36
    add-int/2addr v3, v1

    .line 37
    int-to-short v3, v3

    .line 38
    aput-short v3, p1, p2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->r0:I

    .line 42
    .line 43
    add-int/2addr v3, v1

    .line 44
    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->r0:I

    .line 45
    .line 46
    add-int/lit8 p1, p1, -0x1

    .line 47
    .line 48
    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 49
    .line 50
    sget-object v4, Lcom/jcraft/jsch/jzlib/Tree;->i:[B

    .line 51
    .line 52
    aget-byte p2, v4, p2

    .line 53
    .line 54
    add-int/lit16 p2, p2, 0x101

    .line 55
    .line 56
    mul-int/2addr p2, v0

    .line 57
    aget-short v4, v3, p2

    .line 58
    .line 59
    add-int/2addr v4, v1

    .line 60
    int-to-short v4, v4

    .line 61
    aput-short v4, v3, p2

    .line 62
    .line 63
    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->a0:[S

    .line 64
    .line 65
    sget-object v3, Lcom/jcraft/jsch/jzlib/Tree;->h:[B

    .line 66
    .line 67
    const/16 v4, 0x100

    .line 68
    .line 69
    if-ge p1, v4, :cond_1

    .line 70
    .line 71
    aget-byte p1, v3, p1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    ushr-int/lit8 p1, p1, 0x7

    .line 75
    .line 76
    add-int/2addr p1, v4

    .line 77
    aget-byte p1, v3, p1

    .line 78
    .line 79
    :goto_0
    mul-int/2addr p1, v0

    .line 80
    aget-short v3, p2, p1

    .line 81
    .line 82
    add-int/2addr v3, v1

    .line 83
    int-to-short v3, v3

    .line 84
    aput-short v3, p2, p1

    .line 85
    .line 86
    :goto_1
    and-int/lit16 p1, v2, 0x1fff

    .line 87
    .line 88
    const/4 p2, 0x0

    .line 89
    if-nez p1, :cond_3

    .line 90
    .line 91
    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->W:I

    .line 92
    .line 93
    if-le p1, v0, :cond_3

    .line 94
    .line 95
    mul-int/lit8 v2, v2, 0x8

    .line 96
    .line 97
    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 98
    .line 99
    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->M:I

    .line 100
    .line 101
    sub-int/2addr p1, v3

    .line 102
    move v3, p2

    .line 103
    :goto_2
    const/16 v4, 0x1e

    .line 104
    .line 105
    if-ge v3, v4, :cond_2

    .line 106
    .line 107
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->a0:[S

    .line 108
    .line 109
    mul-int/lit8 v5, v3, 0x2

    .line 110
    .line 111
    aget-short v4, v4, v5

    .line 112
    .line 113
    sget-object v5, Lcom/jcraft/jsch/jzlib/Tree;->e:[I

    .line 114
    .line 115
    aget v5, v5, v3

    .line 116
    .line 117
    add-int/lit8 v5, v5, 0x5

    .line 118
    .line 119
    mul-int/2addr v5, v4

    .line 120
    add-int/2addr v2, v5

    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    ushr-int/lit8 v2, v2, 0x3

    .line 125
    .line 126
    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->r0:I

    .line 127
    .line 128
    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->n0:I

    .line 129
    .line 130
    div-int/2addr v4, v0

    .line 131
    if-ge v3, v4, :cond_3

    .line 132
    .line 133
    div-int/2addr p1, v0

    .line 134
    if-ge v2, p1, :cond_3

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_3
    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->n0:I

    .line 138
    .line 139
    iget p0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->m0:I

    .line 140
    .line 141
    sub-int/2addr p0, v1

    .line 142
    if-ne p1, p0, :cond_4

    .line 143
    .line 144
    :goto_3
    return v1

    .line 145
    :cond_4
    return p2
.end method

.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->p(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 14
    .line 15
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/16 v1, 0x8

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    iget-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 23
    .line 24
    int-to-byte v0, v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 26
    .line 27
    .line 28
    iget-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 29
    .line 30
    ushr-int/2addr v0, v1

    .line 31
    int-to-short v0, v0

    .line 32
    iput-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 33
    .line 34
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final c([S[S)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->n0:I

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->c:[B

    .line 9
    .line 10
    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->o0:I

    .line 11
    .line 12
    mul-int/lit8 v4, v0, 0x2

    .line 13
    .line 14
    add-int/2addr v4, v3

    .line 15
    aget-byte v3, v2, v4

    .line 16
    .line 17
    shl-int/lit8 v3, v3, 0x8

    .line 18
    .line 19
    const v5, 0xff00

    .line 20
    .line 21
    .line 22
    and-int/2addr v3, v5

    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    aget-byte v2, v2, v4

    .line 26
    .line 27
    and-int/lit16 v2, v2, 0xff

    .line 28
    .line 29
    or-int/2addr v2, v3

    .line 30
    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l0:[B

    .line 31
    .line 32
    aget-byte v3, v3, v0

    .line 33
    .line 34
    and-int/lit16 v3, v3, 0xff

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v3, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->s(I[S)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    sget-object v4, Lcom/jcraft/jsch/jzlib/Tree;->i:[B

    .line 45
    .line 46
    aget-byte v4, v4, v3

    .line 47
    .line 48
    add-int/lit16 v5, v4, 0x101

    .line 49
    .line 50
    invoke-virtual {p0, v5, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->s(I[S)V

    .line 51
    .line 52
    .line 53
    sget-object v5, Lcom/jcraft/jsch/jzlib/Tree;->d:[I

    .line 54
    .line 55
    aget v5, v5, v4

    .line 56
    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    sget-object v6, Lcom/jcraft/jsch/jzlib/Tree;->j:[I

    .line 60
    .line 61
    aget v4, v6, v4

    .line 62
    .line 63
    sub-int/2addr v3, v4

    .line 64
    invoke-virtual {p0, v3, v5}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 65
    .line 66
    .line 67
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 68
    .line 69
    sget-object v3, Lcom/jcraft/jsch/jzlib/Tree;->h:[B

    .line 70
    .line 71
    if-ge v2, v1, :cond_3

    .line 72
    .line 73
    aget-byte v3, v3, v2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    ushr-int/lit8 v4, v2, 0x7

    .line 77
    .line 78
    add-int/2addr v4, v1

    .line 79
    aget-byte v3, v3, v4

    .line 80
    .line 81
    :goto_0
    invoke-virtual {p0, v3, p2}, Lcom/jcraft/jsch/jzlib/Deflate;->s(I[S)V

    .line 82
    .line 83
    .line 84
    sget-object v4, Lcom/jcraft/jsch/jzlib/Tree;->e:[I

    .line 85
    .line 86
    aget v4, v4, v3

    .line 87
    .line 88
    if-eqz v4, :cond_4

    .line 89
    .line 90
    sget-object v5, Lcom/jcraft/jsch/jzlib/Tree;->k:[I

    .line 91
    .line 92
    aget v3, v5, v3

    .line 93
    .line 94
    sub-int/2addr v2, v3

    .line 95
    invoke-virtual {p0, v2, v4}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_1
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->n0:I

    .line 99
    .line 100
    if-lt v0, v2, :cond_0

    .line 101
    .line 102
    :cond_5
    invoke-virtual {p0, v1, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->s(I[S)V

    .line 103
    .line 104
    .line 105
    const/16 p2, 0x201

    .line 106
    .line 107
    aget-short p1, p1, p2

    .line 108
    .line 109
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->s0:I

    .line 110
    .line 111
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/jcraft/jsch/jzlib/Deflate;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->c:[B

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->c:[B

    .line 17
    .line 18
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l0:[B

    .line 19
    .line 20
    array-length v1, v0

    .line 21
    new-array v2, v1, [B

    .line 22
    .line 23
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l0:[B

    .line 27
    .line 28
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 29
    .line 30
    array-length v1, v0

    .line 31
    new-array v2, v1, [B

    .line 32
    .line 33
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 37
    .line 38
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->G:[S

    .line 39
    .line 40
    invoke-static {v0}, Lcom/jcraft/jsch/jzlib/Deflate;->e([S)[S

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->G:[S

    .line 45
    .line 46
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->H:[S

    .line 47
    .line 48
    invoke-static {v0}, Lcom/jcraft/jsch/jzlib/Deflate;->e([S)[S

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->H:[S

    .line 53
    .line 54
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 55
    .line 56
    array-length v1, v0

    .line 57
    new-array v2, v1, [S

    .line 58
    .line 59
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 63
    .line 64
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->a0:[S

    .line 65
    .line 66
    array-length v1, v0

    .line 67
    new-array v2, v1, [S

    .line 68
    .line 69
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->a0:[S

    .line 73
    .line 74
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 75
    .line 76
    array-length v1, v0

    .line 77
    new-array v2, v1, [S

    .line 78
    .line 79
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 83
    .line 84
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->f0:[S

    .line 85
    .line 86
    array-length v1, v0

    .line 87
    new-array v2, v1, [S

    .line 88
    .line 89
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    .line 91
    .line 92
    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->f0:[S

    .line 93
    .line 94
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->g0:[S

    .line 95
    .line 96
    array-length v1, v0

    .line 97
    new-array v2, v1, [S

    .line 98
    .line 99
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    .line 101
    .line 102
    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->g0:[S

    .line 103
    .line 104
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->h0:[I

    .line 105
    .line 106
    array-length v1, v0

    .line 107
    new-array v2, v1, [I

    .line 108
    .line 109
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    .line 111
    .line 112
    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->h0:[I

    .line 113
    .line 114
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->k0:[B

    .line 115
    .line 116
    array-length v1, v0

    .line 117
    new-array v2, v1, [B

    .line 118
    .line 119
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    .line 121
    .line 122
    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->k0:[B

    .line 123
    .line 124
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->c0:Lcom/jcraft/jsch/jzlib/Tree;

    .line 125
    .line 126
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 127
    .line 128
    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Tree;->a:[S

    .line 129
    .line 130
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d0:Lcom/jcraft/jsch/jzlib/Tree;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->a0:[S

    .line 133
    .line 134
    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Tree;->a:[S

    .line 135
    .line 136
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->e0:Lcom/jcraft/jsch/jzlib/Tree;

    .line 137
    .line 138
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 139
    .line 140
    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Tree;->a:[S

    .line 141
    .line 142
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->v0:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 143
    .line 144
    if-eqz v0, :cond_0

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/GZIPHeader;->clone()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 151
    .line 152
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->v0:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 153
    .line 154
    :cond_0
    return-object p0
.end method

.method public final d(III)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->a:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    const/4 v3, 0x6

    .line 8
    if-ne p1, v2, :cond_0

    .line 9
    .line 10
    move p1, v3

    .line 11
    :cond_0
    const/16 v2, 0xf

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x2

    .line 15
    const/4 v6, 0x1

    .line 16
    if-gez p2, :cond_1

    .line 17
    .line 18
    neg-int p2, p2

    .line 19
    move v7, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-le p2, v2, :cond_2

    .line 22
    .line 23
    add-int/lit8 p2, p2, -0x10

    .line 24
    .line 25
    new-instance v7, Lcom/jcraft/jsch/jzlib/CRC32;

    .line 26
    .line 27
    invoke-direct {v7}, Lcom/jcraft/jsch/jzlib/CRC32;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v7, v0, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 31
    .line 32
    move v7, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v7, v6

    .line 35
    :goto_0
    if-lt p3, v6, :cond_5

    .line 36
    .line 37
    const/16 v8, 0x9

    .line 38
    .line 39
    if-gt p3, v8, :cond_5

    .line 40
    .line 41
    if-lt p2, v8, :cond_5

    .line 42
    .line 43
    if-gt p2, v2, :cond_5

    .line 44
    .line 45
    if-ltz p1, :cond_5

    .line 46
    .line 47
    if-gt p1, v8, :cond_5

    .line 48
    .line 49
    iput-object p0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->j:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 50
    .line 51
    iput v7, p0, Lcom/jcraft/jsch/jzlib/Deflate;->k:I

    .line 52
    .line 53
    iput p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->r:I

    .line 54
    .line 55
    shl-int p2, v6, p2

    .line 56
    .line 57
    iput p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->q:I

    .line 58
    .line 59
    add-int/lit8 v2, p2, -0x1

    .line 60
    .line 61
    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->t:I

    .line 62
    .line 63
    add-int/lit8 v2, p3, 0x7

    .line 64
    .line 65
    shl-int v2, v6, v2

    .line 66
    .line 67
    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->J:I

    .line 68
    .line 69
    add-int/lit8 v8, v2, -0x1

    .line 70
    .line 71
    iput v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->K:I

    .line 72
    .line 73
    add-int/lit8 v8, p3, 0x9

    .line 74
    .line 75
    div-int/lit8 v8, v8, 0x3

    .line 76
    .line 77
    iput v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->L:I

    .line 78
    .line 79
    mul-int/lit8 v8, p2, 0x2

    .line 80
    .line 81
    new-array v8, v8, [B

    .line 82
    .line 83
    iput-object v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 84
    .line 85
    new-array p2, p2, [S

    .line 86
    .line 87
    iput-object p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->G:[S

    .line 88
    .line 89
    new-array p2, v2, [S

    .line 90
    .line 91
    iput-object p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->H:[S

    .line 92
    .line 93
    add-int/2addr p3, v3

    .line 94
    shl-int p2, v6, p3

    .line 95
    .line 96
    iput p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->m0:I

    .line 97
    .line 98
    mul-int/lit8 p3, p2, 0x3

    .line 99
    .line 100
    new-array v2, p3, [B

    .line 101
    .line 102
    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->c:[B

    .line 103
    .line 104
    iput p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d:I

    .line 105
    .line 106
    iput p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->o0:I

    .line 107
    .line 108
    new-array p2, p2, [B

    .line 109
    .line 110
    iput-object p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l0:[B

    .line 111
    .line 112
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->W:I

    .line 113
    .line 114
    const-wide/16 p1, 0x0

    .line 115
    .line 116
    iput-wide p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->h:J

    .line 117
    .line 118
    iput-wide p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 119
    .line 120
    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 121
    .line 122
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->f:I

    .line 123
    .line 124
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->e:I

    .line 125
    .line 126
    if-nez v7, :cond_3

    .line 127
    .line 128
    const/16 p1, 0x71

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    const/16 p1, 0x2a

    .line 132
    .line 133
    :goto_1
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->b:I

    .line 134
    .line 135
    iget-object p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 136
    .line 137
    invoke-interface {p1}, Lcom/jcraft/jsch/jzlib/Checksum;->reset()V

    .line 138
    .line 139
    .line 140
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->p:I

    .line 141
    .line 142
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 143
    .line 144
    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->c0:Lcom/jcraft/jsch/jzlib/Tree;

    .line 145
    .line 146
    iput-object p1, p2, Lcom/jcraft/jsch/jzlib/Tree;->a:[S

    .line 147
    .line 148
    sget-object p1, Lcom/jcraft/jsch/jzlib/StaticTree;->h:Lcom/jcraft/jsch/jzlib/StaticTree;

    .line 149
    .line 150
    iput-object p1, p2, Lcom/jcraft/jsch/jzlib/Tree;->c:Lcom/jcraft/jsch/jzlib/StaticTree;

    .line 151
    .line 152
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->a0:[S

    .line 153
    .line 154
    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d0:Lcom/jcraft/jsch/jzlib/Tree;

    .line 155
    .line 156
    iput-object p1, p2, Lcom/jcraft/jsch/jzlib/Tree;->a:[S

    .line 157
    .line 158
    sget-object p1, Lcom/jcraft/jsch/jzlib/StaticTree;->i:Lcom/jcraft/jsch/jzlib/StaticTree;

    .line 159
    .line 160
    iput-object p1, p2, Lcom/jcraft/jsch/jzlib/Tree;->c:Lcom/jcraft/jsch/jzlib/StaticTree;

    .line 161
    .line 162
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 163
    .line 164
    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->e0:Lcom/jcraft/jsch/jzlib/Tree;

    .line 165
    .line 166
    iput-object p1, p2, Lcom/jcraft/jsch/jzlib/Tree;->a:[S

    .line 167
    .line 168
    sget-object p1, Lcom/jcraft/jsch/jzlib/StaticTree;->j:Lcom/jcraft/jsch/jzlib/StaticTree;

    .line 169
    .line 170
    iput-object p1, p2, Lcom/jcraft/jsch/jzlib/Tree;->c:Lcom/jcraft/jsch/jzlib/StaticTree;

    .line 171
    .line 172
    iput-short v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 173
    .line 174
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 175
    .line 176
    const/16 p1, 0x8

    .line 177
    .line 178
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->s0:I

    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->j()V

    .line 181
    .line 182
    .line 183
    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->q:I

    .line 184
    .line 185
    mul-int/2addr p1, v5

    .line 186
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->y:I

    .line 187
    .line 188
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->H:[S

    .line 189
    .line 190
    iget p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->J:I

    .line 191
    .line 192
    sub-int/2addr p2, v6

    .line 193
    aput-short v4, p1, p2

    .line 194
    .line 195
    move p1, v4

    .line 196
    :goto_2
    iget p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->J:I

    .line 197
    .line 198
    sub-int/2addr p2, v6

    .line 199
    if-ge p1, p2, :cond_4

    .line 200
    .line 201
    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->H:[S

    .line 202
    .line 203
    aput-short v4, p2, p1

    .line 204
    .line 205
    add-int/lit8 p1, p1, 0x1

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_4
    sget-object p1, Lcom/jcraft/jsch/jzlib/Deflate;->w0:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 209
    .line 210
    iget p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->W:I

    .line 211
    .line 212
    aget-object p1, p1, p2

    .line 213
    .line 214
    iget p2, p1, Lcom/jcraft/jsch/jzlib/Deflate$Config;->b:I

    .line 215
    .line 216
    iput p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->V:I

    .line 217
    .line 218
    iget p2, p1, Lcom/jcraft/jsch/jzlib/Deflate$Config;->a:I

    .line 219
    .line 220
    iput p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->X:I

    .line 221
    .line 222
    iget p2, p1, Lcom/jcraft/jsch/jzlib/Deflate$Config;->c:I

    .line 223
    .line 224
    iput p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Y:I

    .line 225
    .line 226
    iget p1, p1, Lcom/jcraft/jsch/jzlib/Deflate$Config;->d:I

    .line 227
    .line 228
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->U:I

    .line 229
    .line 230
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 231
    .line 232
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->M:I

    .line 233
    .line 234
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 235
    .line 236
    iput v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->T:I

    .line 237
    .line 238
    iput v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->N:I

    .line 239
    .line 240
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->P:I

    .line 241
    .line 242
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->I:I

    .line 243
    .line 244
    return v4

    .line 245
    :cond_5
    const/4 p0, -0x2

    .line 246
    return p0
.end method

.method public final f()V
    .locals 10

    .line 1
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->y:I

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 7
    .line 8
    sub-int/2addr v0, v2

    .line 9
    const/16 v3, 0x106

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->q:I

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    const/4 v1, -0x1

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->q:I

    .line 28
    .line 29
    add-int v6, v5, v5

    .line 30
    .line 31
    sub-int/2addr v6, v3

    .line 32
    if-lt v2, v6, :cond_7

    .line 33
    .line 34
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 35
    .line 36
    invoke-static {v2, v5, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->R:I

    .line 40
    .line 41
    iget v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->q:I

    .line 42
    .line 43
    sub-int/2addr v2, v5

    .line 44
    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->R:I

    .line 45
    .line 46
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 47
    .line 48
    sub-int/2addr v2, v5

    .line 49
    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 50
    .line 51
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->M:I

    .line 52
    .line 53
    sub-int/2addr v2, v5

    .line 54
    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->M:I

    .line 55
    .line 56
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->J:I

    .line 57
    .line 58
    move v5, v2

    .line 59
    :cond_3
    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->H:[S

    .line 60
    .line 61
    add-int/2addr v2, v1

    .line 62
    aget-short v7, v6, v2

    .line 63
    .line 64
    const v8, 0xffff

    .line 65
    .line 66
    .line 67
    and-int/2addr v7, v8

    .line 68
    iget v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->q:I

    .line 69
    .line 70
    if-lt v7, v9, :cond_4

    .line 71
    .line 72
    sub-int/2addr v7, v9

    .line 73
    int-to-short v7, v7

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    move v7, v4

    .line 76
    :goto_0
    aput-short v7, v6, v2

    .line 77
    .line 78
    add-int/2addr v5, v1

    .line 79
    if-nez v5, :cond_3

    .line 80
    .line 81
    move v2, v9

    .line 82
    :cond_5
    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->G:[S

    .line 83
    .line 84
    add-int/2addr v9, v1

    .line 85
    aget-short v6, v5, v9

    .line 86
    .line 87
    and-int/2addr v6, v8

    .line 88
    iget v7, p0, Lcom/jcraft/jsch/jzlib/Deflate;->q:I

    .line 89
    .line 90
    if-lt v6, v7, :cond_6

    .line 91
    .line 92
    sub-int/2addr v6, v7

    .line 93
    int-to-short v6, v6

    .line 94
    goto :goto_1

    .line 95
    :cond_6
    move v6, v4

    .line 96
    :goto_1
    aput-short v6, v5, v9

    .line 97
    .line 98
    add-int/2addr v2, v1

    .line 99
    if-nez v2, :cond_5

    .line 100
    .line 101
    add-int/2addr v0, v7

    .line 102
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->a:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 103
    .line 104
    iget v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 105
    .line 106
    if-nez v2, :cond_8

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_8
    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 110
    .line 111
    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 112
    .line 113
    iget v7, p0, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 114
    .line 115
    add-int/2addr v6, v7

    .line 116
    if-le v2, v0, :cond_9

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_9
    move v0, v2

    .line 120
    :goto_3
    if-nez v0, :cond_a

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_a
    sub-int/2addr v2, v0

    .line 124
    iput v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 125
    .line 126
    iget-object v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->j:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 127
    .line 128
    iget v2, v2, Lcom/jcraft/jsch/jzlib/Deflate;->k:I

    .line 129
    .line 130
    if-eqz v2, :cond_b

    .line 131
    .line 132
    iget-object v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 133
    .line 134
    iget-object v4, v1, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 135
    .line 136
    iget v7, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 137
    .line 138
    invoke-interface {v2, v4, v7, v0}, Lcom/jcraft/jsch/jzlib/Checksum;->update([BII)V

    .line 139
    .line 140
    .line 141
    :cond_b
    iget-object v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 142
    .line 143
    iget v4, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 144
    .line 145
    invoke-static {v2, v4, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    .line 147
    .line 148
    iget v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 149
    .line 150
    add-int/2addr v2, v0

    .line 151
    iput v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 152
    .line 153
    iget-wide v4, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 154
    .line 155
    int-to-long v6, v0

    .line 156
    add-long/2addr v4, v6

    .line 157
    iput-wide v4, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 158
    .line 159
    move v4, v0

    .line 160
    :goto_4
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 161
    .line 162
    add-int/2addr v0, v4

    .line 163
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 164
    .line 165
    const/4 v2, 0x3

    .line 166
    if-lt v0, v2, :cond_c

    .line 167
    .line 168
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 169
    .line 170
    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 171
    .line 172
    aget-byte v5, v2, v4

    .line 173
    .line 174
    and-int/lit16 v5, v5, 0xff

    .line 175
    .line 176
    iput v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->I:I

    .line 177
    .line 178
    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->L:I

    .line 179
    .line 180
    shl-int/2addr v5, v6

    .line 181
    add-int/lit8 v4, v4, 0x1

    .line 182
    .line 183
    aget-byte v2, v2, v4

    .line 184
    .line 185
    and-int/lit16 v2, v2, 0xff

    .line 186
    .line 187
    xor-int/2addr v2, v5

    .line 188
    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->K:I

    .line 189
    .line 190
    and-int/2addr v2, v4

    .line 191
    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->I:I

    .line 192
    .line 193
    :cond_c
    if-ge v0, v3, :cond_d

    .line 194
    .line 195
    iget v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 196
    .line 197
    if-nez v0, :cond_0

    .line 198
    .line 199
    :cond_d
    :goto_5
    return-void
.end method

.method public final h(Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->M:I

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    if-ltz v2, :cond_0

    .line 9
    .line 10
    move v4, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v4, v3

    .line 13
    :goto_0
    iget v5, v0, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 14
    .line 15
    sub-int/2addr v5, v2

    .line 16
    iget v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->W:I

    .line 17
    .line 18
    const/4 v6, 0x3

    .line 19
    const/4 v7, 0x0

    .line 20
    sget-object v8, Lcom/jcraft/jsch/jzlib/Tree;->g:[B

    .line 21
    .line 22
    iget-object v9, v0, Lcom/jcraft/jsch/jzlib/Deflate;->d0:Lcom/jcraft/jsch/jzlib/Tree;

    .line 23
    .line 24
    iget-object v10, v0, Lcom/jcraft/jsch/jzlib/Deflate;->c0:Lcom/jcraft/jsch/jzlib/Tree;

    .line 25
    .line 26
    const/4 v11, 0x1

    .line 27
    const/4 v12, 0x2

    .line 28
    if-lez v2, :cond_8

    .line 29
    .line 30
    iget-byte v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->n:B

    .line 31
    .line 32
    if-ne v2, v12, :cond_5

    .line 33
    .line 34
    move v2, v7

    .line 35
    move v13, v2

    .line 36
    :goto_1
    const/4 v14, 0x7

    .line 37
    if-ge v2, v14, :cond_1

    .line 38
    .line 39
    iget-object v14, v0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 40
    .line 41
    mul-int/lit8 v15, v2, 0x2

    .line 42
    .line 43
    aget-short v14, v14, v15

    .line 44
    .line 45
    add-int/2addr v13, v14

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v14, v7

    .line 50
    :goto_2
    const/16 v15, 0x80

    .line 51
    .line 52
    if-ge v2, v15, :cond_2

    .line 53
    .line 54
    iget-object v15, v0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 55
    .line 56
    mul-int/lit8 v16, v2, 0x2

    .line 57
    .line 58
    aget-short v15, v15, v16

    .line 59
    .line 60
    add-int/2addr v14, v15

    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    :goto_3
    const/16 v15, 0x100

    .line 65
    .line 66
    if-ge v2, v15, :cond_3

    .line 67
    .line 68
    iget-object v15, v0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 69
    .line 70
    mul-int/lit8 v16, v2, 0x2

    .line 71
    .line 72
    aget-short v15, v15, v16

    .line 73
    .line 74
    add-int/2addr v13, v15

    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    ushr-int/lit8 v2, v14, 0x2

    .line 79
    .line 80
    if-le v13, v2, :cond_4

    .line 81
    .line 82
    move v2, v7

    .line 83
    goto :goto_4

    .line 84
    :cond_4
    move v2, v11

    .line 85
    :goto_4
    int-to-byte v2, v2

    .line 86
    iput-byte v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->n:B

    .line 87
    .line 88
    :cond_5
    invoke-virtual {v10, v0}, Lcom/jcraft/jsch/jzlib/Tree;->a(Lcom/jcraft/jsch/jzlib/Deflate;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v0}, Lcom/jcraft/jsch/jzlib/Tree;->a(Lcom/jcraft/jsch/jzlib/Deflate;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 95
    .line 96
    iget v13, v10, Lcom/jcraft/jsch/jzlib/Tree;->b:I

    .line 97
    .line 98
    invoke-virtual {v0, v13, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->q(I[S)V

    .line 99
    .line 100
    .line 101
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->a0:[S

    .line 102
    .line 103
    iget v13, v9, Lcom/jcraft/jsch/jzlib/Tree;->b:I

    .line 104
    .line 105
    invoke-virtual {v0, v13, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->q(I[S)V

    .line 106
    .line 107
    .line 108
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->e0:Lcom/jcraft/jsch/jzlib/Tree;

    .line 109
    .line 110
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/jzlib/Tree;->a(Lcom/jcraft/jsch/jzlib/Deflate;)V

    .line 111
    .line 112
    .line 113
    const/16 v2, 0x12

    .line 114
    .line 115
    :goto_5
    if-lt v2, v6, :cond_7

    .line 116
    .line 117
    iget-object v13, v0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 118
    .line 119
    aget-byte v14, v8, v2

    .line 120
    .line 121
    mul-int/2addr v14, v12

    .line 122
    add-int/2addr v14, v11

    .line 123
    aget-short v13, v13, v14

    .line 124
    .line 125
    if-eqz v13, :cond_6

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_7
    :goto_6
    iget v13, v0, Lcom/jcraft/jsch/jzlib/Deflate;->p0:I

    .line 132
    .line 133
    add-int/lit8 v14, v2, 0x1

    .line 134
    .line 135
    mul-int/2addr v14, v6

    .line 136
    add-int/lit8 v14, v14, 0xe

    .line 137
    .line 138
    add-int/2addr v14, v13

    .line 139
    iput v14, v0, Lcom/jcraft/jsch/jzlib/Deflate;->p0:I

    .line 140
    .line 141
    add-int/lit8 v14, v14, 0xa

    .line 142
    .line 143
    ushr-int/lit8 v13, v14, 0x3

    .line 144
    .line 145
    iget v14, v0, Lcom/jcraft/jsch/jzlib/Deflate;->q0:I

    .line 146
    .line 147
    add-int/lit8 v14, v14, 0xa

    .line 148
    .line 149
    ushr-int/2addr v14, v6

    .line 150
    if-gt v14, v13, :cond_9

    .line 151
    .line 152
    move v13, v14

    .line 153
    goto :goto_7

    .line 154
    :cond_8
    add-int/lit8 v13, v5, 0x5

    .line 155
    .line 156
    move v2, v7

    .line 157
    move v14, v13

    .line 158
    :cond_9
    :goto_7
    add-int/lit8 v15, v5, 0x4

    .line 159
    .line 160
    move/from16 v16, v11

    .line 161
    .line 162
    const/16 v11, 0x8

    .line 163
    .line 164
    if-gt v15, v13, :cond_c

    .line 165
    .line 166
    if-eq v4, v3, :cond_c

    .line 167
    .line 168
    invoke-virtual {v0, v1, v6}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 169
    .line 170
    .line 171
    iget v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 172
    .line 173
    if-le v2, v11, :cond_a

    .line 174
    .line 175
    iget-short v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->p(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_8

    .line 181
    :cond_a
    if-lez v2, :cond_b

    .line 182
    .line 183
    iget-short v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 184
    .line 185
    int-to-byte v2, v2

    .line 186
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 187
    .line 188
    .line 189
    :cond_b
    :goto_8
    iput-short v7, v0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 190
    .line 191
    iput v7, v0, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 192
    .line 193
    iput v11, v0, Lcom/jcraft/jsch/jzlib/Deflate;->s0:I

    .line 194
    .line 195
    int-to-short v2, v5

    .line 196
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->p(I)V

    .line 197
    .line 198
    .line 199
    not-int v2, v5

    .line 200
    int-to-short v2, v2

    .line 201
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->p(I)V

    .line 202
    .line 203
    .line 204
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 205
    .line 206
    invoke-virtual {v0, v2, v4, v5}, Lcom/jcraft/jsch/jzlib/Deflate;->o([BII)V

    .line 207
    .line 208
    .line 209
    goto :goto_a

    .line 210
    :cond_c
    if-ne v14, v13, :cond_d

    .line 211
    .line 212
    add-int/lit8 v2, v1, 0x2

    .line 213
    .line 214
    invoke-virtual {v0, v2, v6}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 215
    .line 216
    .line 217
    sget-object v2, Lcom/jcraft/jsch/jzlib/StaticTree;->f:[S

    .line 218
    .line 219
    sget-object v3, Lcom/jcraft/jsch/jzlib/StaticTree;->g:[S

    .line 220
    .line 221
    invoke-virtual {v0, v2, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->c([S[S)V

    .line 222
    .line 223
    .line 224
    goto :goto_a

    .line 225
    :cond_d
    add-int/lit8 v3, v1, 0x4

    .line 226
    .line 227
    invoke-virtual {v0, v3, v6}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 228
    .line 229
    .line 230
    iget v3, v10, Lcom/jcraft/jsch/jzlib/Tree;->b:I

    .line 231
    .line 232
    iget v4, v9, Lcom/jcraft/jsch/jzlib/Tree;->b:I

    .line 233
    .line 234
    add-int/lit8 v5, v2, 0x1

    .line 235
    .line 236
    add-int/lit16 v9, v3, -0x100

    .line 237
    .line 238
    const/4 v10, 0x5

    .line 239
    invoke-virtual {v0, v9, v10}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v4, v10}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 243
    .line 244
    .line 245
    add-int/lit8 v2, v2, -0x3

    .line 246
    .line 247
    const/4 v9, 0x4

    .line 248
    invoke-virtual {v0, v2, v9}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 249
    .line 250
    .line 251
    move v2, v7

    .line 252
    :goto_9
    if-ge v2, v5, :cond_e

    .line 253
    .line 254
    iget-object v9, v0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 255
    .line 256
    aget-byte v10, v8, v2

    .line 257
    .line 258
    mul-int/2addr v10, v12

    .line 259
    add-int/lit8 v10, v10, 0x1

    .line 260
    .line 261
    aget-short v9, v9, v10

    .line 262
    .line 263
    invoke-virtual {v0, v9, v6}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 264
    .line 265
    .line 266
    add-int/lit8 v2, v2, 0x1

    .line 267
    .line 268
    goto :goto_9

    .line 269
    :cond_e
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 270
    .line 271
    invoke-virtual {v0, v3, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->t(I[S)V

    .line 272
    .line 273
    .line 274
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->a0:[S

    .line 275
    .line 276
    invoke-virtual {v0, v4, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->t(I[S)V

    .line 277
    .line 278
    .line 279
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 280
    .line 281
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/Deflate;->a0:[S

    .line 282
    .line 283
    invoke-virtual {v0, v2, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->c([S[S)V

    .line 284
    .line 285
    .line 286
    :goto_a
    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Deflate;->j()V

    .line 287
    .line 288
    .line 289
    if-eqz v1, :cond_11

    .line 290
    .line 291
    iget v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 292
    .line 293
    if-le v1, v11, :cond_f

    .line 294
    .line 295
    iget-short v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->p(I)V

    .line 298
    .line 299
    .line 300
    goto :goto_b

    .line 301
    :cond_f
    if-lez v1, :cond_10

    .line 302
    .line 303
    iget-short v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 304
    .line 305
    int-to-byte v1, v1

    .line 306
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 307
    .line 308
    .line 309
    :cond_10
    :goto_b
    iput-short v7, v0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 310
    .line 311
    iput v7, v0, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 312
    .line 313
    :cond_11
    iget v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 314
    .line 315
    iput v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->M:I

    .line 316
    .line 317
    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/Deflate;->a:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 318
    .line 319
    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/ZStream;->a()V

    .line 320
    .line 321
    .line 322
    return-void
.end method

.method public final declared-synchronized i()Lcom/jcraft/jsch/jzlib/GZIPHeader;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->v0:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/jcraft/jsch/jzlib/GZIPHeader;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->v0:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->v0:Lcom/jcraft/jsch/jzlib/GZIPHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v0
.end method

.method public final j()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0x11e

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 8
    .line 9
    mul-int/lit8 v3, v1, 0x2

    .line 10
    .line 11
    aput-short v0, v2, v3

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v0

    .line 17
    :goto_1
    const/16 v2, 0x1e

    .line 18
    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->a0:[S

    .line 22
    .line 23
    mul-int/lit8 v3, v1, 0x2

    .line 24
    .line 25
    aput-short v0, v2, v3

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v0

    .line 31
    :goto_2
    const/16 v2, 0x13

    .line 32
    .line 33
    if-ge v1, v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 36
    .line 37
    mul-int/lit8 v3, v1, 0x2

    .line 38
    .line 39
    aput-short v0, v2, v3

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->Z:[S

    .line 45
    .line 46
    const/16 v2, 0x200

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    aput-short v3, v1, v2

    .line 50
    .line 51
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->q0:I

    .line 52
    .line 53
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->p0:I

    .line 54
    .line 55
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->r0:I

    .line 56
    .line 57
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->n0:I

    .line 58
    .line 59
    return-void
.end method

.method public final k(I)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->U:I

    .line 4
    .line 5
    iget v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 6
    .line 7
    iget v3, v0, Lcom/jcraft/jsch/jzlib/Deflate;->T:I

    .line 8
    .line 9
    iget v4, v0, Lcom/jcraft/jsch/jzlib/Deflate;->q:I

    .line 10
    .line 11
    add-int/lit16 v5, v4, -0x106

    .line 12
    .line 13
    if-le v2, v5, :cond_0

    .line 14
    .line 15
    add-int/lit16 v4, v4, -0x106

    .line 16
    .line 17
    sub-int v4, v2, v4

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v4, 0x0

    .line 21
    :goto_0
    iget v5, v0, Lcom/jcraft/jsch/jzlib/Deflate;->Y:I

    .line 22
    .line 23
    iget v6, v0, Lcom/jcraft/jsch/jzlib/Deflate;->t:I

    .line 24
    .line 25
    add-int/lit16 v7, v2, 0x102

    .line 26
    .line 27
    iget-object v8, v0, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 28
    .line 29
    add-int v9, v2, v3

    .line 30
    .line 31
    add-int/lit8 v10, v9, -0x1

    .line 32
    .line 33
    aget-byte v10, v8, v10

    .line 34
    .line 35
    aget-byte v8, v8, v9

    .line 36
    .line 37
    iget v9, v0, Lcom/jcraft/jsch/jzlib/Deflate;->X:I

    .line 38
    .line 39
    if-lt v3, v9, :cond_1

    .line 40
    .line 41
    shr-int/lit8 v1, v1, 0x2

    .line 42
    .line 43
    :cond_1
    iget v9, v0, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 44
    .line 45
    move v11, v2

    .line 46
    if-le v5, v9, :cond_2

    .line 47
    .line 48
    :goto_1
    move v5, v3

    .line 49
    move v3, v1

    .line 50
    move/from16 v1, p1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v9, v5

    .line 54
    goto :goto_1

    .line 55
    :goto_2
    iget-object v12, v0, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 56
    .line 57
    add-int v13, v1, v5

    .line 58
    .line 59
    aget-byte v14, v12, v13

    .line 60
    .line 61
    if-ne v14, v8, :cond_3

    .line 62
    .line 63
    add-int/lit8 v13, v13, -0x1

    .line 64
    .line 65
    aget-byte v13, v12, v13

    .line 66
    .line 67
    if-ne v13, v10, :cond_3

    .line 68
    .line 69
    aget-byte v13, v12, v1

    .line 70
    .line 71
    aget-byte v14, v12, v11

    .line 72
    .line 73
    if-ne v13, v14, :cond_3

    .line 74
    .line 75
    add-int/lit8 v13, v1, 0x1

    .line 76
    .line 77
    aget-byte v13, v12, v13

    .line 78
    .line 79
    add-int/lit8 v14, v11, 0x1

    .line 80
    .line 81
    aget-byte v12, v12, v14

    .line 82
    .line 83
    if-eq v13, v12, :cond_4

    .line 84
    .line 85
    :cond_3
    move/from16 v17, v2

    .line 86
    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :cond_4
    add-int/lit8 v11, v11, 0x2

    .line 90
    .line 91
    add-int/lit8 v12, v1, 0x2

    .line 92
    .line 93
    :goto_3
    iget-object v13, v0, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 94
    .line 95
    add-int/lit8 v14, v11, 0x1

    .line 96
    .line 97
    aget-byte v15, v13, v14

    .line 98
    .line 99
    add-int/lit8 v16, v12, 0x1

    .line 100
    .line 101
    move/from16 v17, v2

    .line 102
    .line 103
    aget-byte v2, v13, v16

    .line 104
    .line 105
    if-ne v15, v2, :cond_7

    .line 106
    .line 107
    add-int/lit8 v14, v11, 0x2

    .line 108
    .line 109
    aget-byte v2, v13, v14

    .line 110
    .line 111
    add-int/lit8 v15, v12, 0x2

    .line 112
    .line 113
    aget-byte v15, v13, v15

    .line 114
    .line 115
    if-ne v2, v15, :cond_7

    .line 116
    .line 117
    add-int/lit8 v14, v11, 0x3

    .line 118
    .line 119
    aget-byte v2, v13, v14

    .line 120
    .line 121
    add-int/lit8 v15, v12, 0x3

    .line 122
    .line 123
    aget-byte v15, v13, v15

    .line 124
    .line 125
    if-ne v2, v15, :cond_7

    .line 126
    .line 127
    add-int/lit8 v14, v11, 0x4

    .line 128
    .line 129
    aget-byte v2, v13, v14

    .line 130
    .line 131
    add-int/lit8 v15, v12, 0x4

    .line 132
    .line 133
    aget-byte v15, v13, v15

    .line 134
    .line 135
    if-ne v2, v15, :cond_7

    .line 136
    .line 137
    add-int/lit8 v14, v11, 0x5

    .line 138
    .line 139
    aget-byte v2, v13, v14

    .line 140
    .line 141
    add-int/lit8 v15, v12, 0x5

    .line 142
    .line 143
    aget-byte v15, v13, v15

    .line 144
    .line 145
    if-ne v2, v15, :cond_7

    .line 146
    .line 147
    add-int/lit8 v14, v11, 0x6

    .line 148
    .line 149
    aget-byte v2, v13, v14

    .line 150
    .line 151
    add-int/lit8 v15, v12, 0x6

    .line 152
    .line 153
    aget-byte v15, v13, v15

    .line 154
    .line 155
    if-ne v2, v15, :cond_7

    .line 156
    .line 157
    add-int/lit8 v14, v11, 0x7

    .line 158
    .line 159
    aget-byte v2, v13, v14

    .line 160
    .line 161
    add-int/lit8 v15, v12, 0x7

    .line 162
    .line 163
    aget-byte v15, v13, v15

    .line 164
    .line 165
    if-ne v2, v15, :cond_7

    .line 166
    .line 167
    add-int/lit8 v11, v11, 0x8

    .line 168
    .line 169
    aget-byte v2, v13, v11

    .line 170
    .line 171
    add-int/lit8 v12, v12, 0x8

    .line 172
    .line 173
    aget-byte v14, v13, v12

    .line 174
    .line 175
    if-ne v2, v14, :cond_6

    .line 176
    .line 177
    if-lt v11, v7, :cond_5

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_5
    move/from16 v2, v17

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_6
    :goto_4
    move v14, v11

    .line 184
    :cond_7
    sub-int v2, v7, v14

    .line 185
    .line 186
    rsub-int v2, v2, 0x102

    .line 187
    .line 188
    if-le v2, v5, :cond_9

    .line 189
    .line 190
    iput v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->R:I

    .line 191
    .line 192
    if-lt v2, v9, :cond_8

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_8
    add-int v5, v17, v2

    .line 196
    .line 197
    add-int/lit8 v8, v5, -0x1

    .line 198
    .line 199
    aget-byte v8, v13, v8

    .line 200
    .line 201
    aget-byte v5, v13, v5

    .line 202
    .line 203
    move v10, v8

    .line 204
    move/from16 v11, v17

    .line 205
    .line 206
    move v8, v5

    .line 207
    move v5, v2

    .line 208
    goto :goto_5

    .line 209
    :cond_9
    move/from16 v11, v17

    .line 210
    .line 211
    :goto_5
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->G:[S

    .line 212
    .line 213
    and-int/2addr v1, v6

    .line 214
    aget-short v1, v2, v1

    .line 215
    .line 216
    const v2, 0xffff

    .line 217
    .line 218
    .line 219
    and-int/2addr v1, v2

    .line 220
    if-le v1, v4, :cond_b

    .line 221
    .line 222
    add-int/lit8 v3, v3, -0x1

    .line 223
    .line 224
    if-nez v3, :cond_a

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_a
    move/from16 v2, v17

    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :cond_b
    :goto_6
    move v2, v5

    .line 232
    :goto_7
    iget v0, v0, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 233
    .line 234
    if-gt v2, v0, :cond_c

    .line 235
    .line 236
    return v2

    .line 237
    :cond_c
    return v0
.end method

.method public final l(I[S)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->h0:[I

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    shl-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    :goto_0
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->i0:I

    .line 8
    .line 9
    if-gt v1, v2, :cond_3

    .line 10
    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->h0:[I

    .line 14
    .line 15
    add-int/lit8 v3, v1, 0x1

    .line 16
    .line 17
    aget v4, v2, v3

    .line 18
    .line 19
    aget v2, v2, v1

    .line 20
    .line 21
    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->k0:[B

    .line 22
    .line 23
    mul-int/lit8 v6, v4, 0x2

    .line 24
    .line 25
    aget-short v6, p2, v6

    .line 26
    .line 27
    mul-int/lit8 v7, v2, 0x2

    .line 28
    .line 29
    aget-short v7, p2, v7

    .line 30
    .line 31
    if-lt v6, v7, :cond_0

    .line 32
    .line 33
    if-ne v6, v7, :cond_1

    .line 34
    .line 35
    aget-byte v4, v5, v4

    .line 36
    .line 37
    aget-byte v2, v5, v2

    .line 38
    .line 39
    if-gt v4, v2, :cond_1

    .line 40
    .line 41
    :cond_0
    move v1, v3

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->h0:[I

    .line 43
    .line 44
    aget v3, v2, v1

    .line 45
    .line 46
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->k0:[B

    .line 47
    .line 48
    mul-int/lit8 v5, v0, 0x2

    .line 49
    .line 50
    aget-short v5, p2, v5

    .line 51
    .line 52
    mul-int/lit8 v6, v3, 0x2

    .line 53
    .line 54
    aget-short v6, p2, v6

    .line 55
    .line 56
    if-lt v5, v6, :cond_3

    .line 57
    .line 58
    if-ne v5, v6, :cond_2

    .line 59
    .line 60
    aget-byte v5, v4, v0

    .line 61
    .line 62
    aget-byte v4, v4, v3

    .line 63
    .line 64
    if-gt v5, v4, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    aput v3, v2, p1

    .line 68
    .line 69
    shl-int/lit8 p1, v1, 0x1

    .line 70
    .line 71
    move v8, v1

    .line 72
    move v1, p1

    .line 73
    move p1, v8

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->h0:[I

    .line 76
    .line 77
    aput v0, p0, p1

    .line 78
    .line 79
    return-void
.end method

.method public final m(I)V
    .locals 1

    .line 1
    shr-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 5
    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final n(B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->c:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->f:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->f:I

    .line 8
    .line 9
    aput-byte p1, v0, v1

    .line 10
    .line 11
    return-void
.end method

.method public final o([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->c:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->f:I

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->f:I

    .line 9
    .line 10
    add-int/2addr p1, p3

    .line 11
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->f:I

    .line 12
    .line 13
    return-void
.end method

.method public final p(I)V
    .locals 1

    .line 1
    int-to-byte v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 3
    .line 4
    .line 5
    ushr-int/lit8 p1, p1, 0x8

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final q(I[S)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    aget-short v1, p2, v0

    .line 3
    .line 4
    const/16 v2, 0x8a

    .line 5
    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x7

    .line 8
    const/4 v5, 0x4

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    move v6, v2

    .line 12
    move v7, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v6, v4

    .line 15
    move v7, v5

    .line 16
    :goto_0
    add-int/lit8 v8, p1, 0x1

    .line 17
    .line 18
    mul-int/lit8 v8, v8, 0x2

    .line 19
    .line 20
    add-int/2addr v8, v0

    .line 21
    const/4 v9, -0x1

    .line 22
    aput-short v9, p2, v8

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    move v10, v8

    .line 26
    move v11, v10

    .line 27
    :goto_1
    if-gt v10, p1, :cond_8

    .line 28
    .line 29
    add-int/lit8 v10, v10, 0x1

    .line 30
    .line 31
    mul-int/lit8 v12, v10, 0x2

    .line 32
    .line 33
    add-int/2addr v12, v0

    .line 34
    aget-short v12, p2, v12

    .line 35
    .line 36
    add-int/2addr v11, v0

    .line 37
    if-ge v11, v6, :cond_1

    .line 38
    .line 39
    if-ne v1, v12, :cond_1

    .line 40
    .line 41
    goto :goto_5

    .line 42
    :cond_1
    if-ge v11, v7, :cond_2

    .line 43
    .line 44
    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 45
    .line 46
    mul-int/lit8 v7, v1, 0x2

    .line 47
    .line 48
    aget-short v9, v6, v7

    .line 49
    .line 50
    int-to-short v11, v11

    .line 51
    add-int/2addr v9, v11

    .line 52
    int-to-short v9, v9

    .line 53
    aput-short v9, v6, v7

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    if-eqz v1, :cond_4

    .line 57
    .line 58
    if-eq v1, v9, :cond_3

    .line 59
    .line 60
    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 61
    .line 62
    mul-int/lit8 v7, v1, 0x2

    .line 63
    .line 64
    aget-short v9, v6, v7

    .line 65
    .line 66
    add-int/2addr v9, v0

    .line 67
    int-to-short v9, v9

    .line 68
    aput-short v9, v6, v7

    .line 69
    .line 70
    :cond_3
    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 71
    .line 72
    const/16 v7, 0x20

    .line 73
    .line 74
    aget-short v9, v6, v7

    .line 75
    .line 76
    add-int/2addr v9, v0

    .line 77
    int-to-short v9, v9

    .line 78
    aput-short v9, v6, v7

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 82
    .line 83
    const/16 v7, 0xa

    .line 84
    .line 85
    if-gt v11, v7, :cond_5

    .line 86
    .line 87
    const/16 v7, 0x22

    .line 88
    .line 89
    aget-short v9, v6, v7

    .line 90
    .line 91
    add-int/2addr v9, v0

    .line 92
    int-to-short v9, v9

    .line 93
    aput-short v9, v6, v7

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    const/16 v7, 0x24

    .line 97
    .line 98
    aget-short v9, v6, v7

    .line 99
    .line 100
    add-int/2addr v9, v0

    .line 101
    int-to-short v9, v9

    .line 102
    aput-short v9, v6, v7

    .line 103
    .line 104
    :goto_2
    if-nez v12, :cond_6

    .line 105
    .line 106
    move v9, v1

    .line 107
    move v6, v2

    .line 108
    :goto_3
    move v7, v3

    .line 109
    :goto_4
    move v11, v8

    .line 110
    goto :goto_5

    .line 111
    :cond_6
    if-ne v1, v12, :cond_7

    .line 112
    .line 113
    const/4 v6, 0x6

    .line 114
    move v9, v1

    .line 115
    goto :goto_3

    .line 116
    :cond_7
    move v9, v1

    .line 117
    move v6, v4

    .line 118
    move v7, v5

    .line 119
    goto :goto_4

    .line 120
    :goto_5
    move v1, v12

    .line 121
    goto :goto_1

    .line 122
    :cond_8
    return-void
.end method

.method public final r(II)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 2
    .line 3
    rsub-int/lit8 v1, p2, 0x10

    .line 4
    .line 5
    iget-short v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 6
    .line 7
    const v3, 0xffff

    .line 8
    .line 9
    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    shl-int v0, p1, v0

    .line 13
    .line 14
    and-int/2addr v0, v3

    .line 15
    int-to-short v0, v0

    .line 16
    or-int/2addr v0, v2

    .line 17
    int-to-short v0, v0

    .line 18
    iput-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->p(I)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 24
    .line 25
    rsub-int/lit8 v1, v0, 0x10

    .line 26
    .line 27
    ushr-int/2addr p1, v1

    .line 28
    int-to-short p1, p1

    .line 29
    iput-short p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 30
    .line 31
    add-int/lit8 p2, p2, -0x10

    .line 32
    .line 33
    add-int/2addr p2, v0

    .line 34
    iput p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    shl-int/2addr p1, v0

    .line 38
    and-int/2addr p1, v3

    .line 39
    int-to-short p1, p1

    .line 40
    or-int/2addr p1, v2

    .line 41
    int-to-short p1, p1

    .line 42
    iput-short p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 43
    .line 44
    add-int/2addr v0, p2

    .line 45
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 46
    .line 47
    return-void
.end method

.method public final s(I[S)V
    .locals 2

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    aget-short v0, p2, p1

    .line 4
    .line 5
    const v1, 0xffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    aget-short p1, p2, p1

    .line 12
    .line 13
    and-int/2addr p1, v1

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final t(I[S)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-short v2, p2, v1

    .line 5
    .line 6
    const/16 v3, 0x8a

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x7

    .line 10
    const/4 v6, 0x4

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    move v7, v3

    .line 14
    move v8, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v7, v5

    .line 17
    move v8, v6

    .line 18
    :goto_0
    const/4 v9, -0x1

    .line 19
    const/4 v10, 0x0

    .line 20
    move/from16 v11, p1

    .line 21
    .line 22
    move v14, v9

    .line 23
    move v12, v10

    .line 24
    move v13, v12

    .line 25
    :goto_1
    if-gt v12, v11, :cond_9

    .line 26
    .line 27
    add-int/lit8 v12, v12, 0x1

    .line 28
    .line 29
    mul-int/lit8 v15, v12, 0x2

    .line 30
    .line 31
    add-int/2addr v15, v1

    .line 32
    aget-short v15, p2, v15

    .line 33
    .line 34
    add-int/lit8 v1, v13, 0x1

    .line 35
    .line 36
    if-ge v1, v7, :cond_1

    .line 37
    .line 38
    if-ne v2, v15, :cond_1

    .line 39
    .line 40
    move v13, v1

    .line 41
    goto :goto_6

    .line 42
    :cond_1
    if-ge v1, v8, :cond_3

    .line 43
    .line 44
    :cond_2
    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 45
    .line 46
    invoke-virtual {v0, v2, v7}, Lcom/jcraft/jsch/jzlib/Deflate;->s(I[S)V

    .line 47
    .line 48
    .line 49
    add-int/2addr v1, v9

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    if-eqz v2, :cond_5

    .line 54
    .line 55
    if-eq v2, v14, :cond_4

    .line 56
    .line 57
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->s(I[S)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    move v13, v1

    .line 64
    :goto_2
    const/16 v1, 0x10

    .line 65
    .line 66
    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 67
    .line 68
    invoke-virtual {v0, v1, v7}, Lcom/jcraft/jsch/jzlib/Deflate;->s(I[S)V

    .line 69
    .line 70
    .line 71
    sub-int/2addr v13, v4

    .line 72
    const/4 v1, 0x2

    .line 73
    invoke-virtual {v0, v13, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_5
    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/Deflate;->b0:[S

    .line 78
    .line 79
    const/16 v8, 0xa

    .line 80
    .line 81
    if-gt v1, v8, :cond_6

    .line 82
    .line 83
    const/16 v1, 0x11

    .line 84
    .line 85
    invoke-virtual {v0, v1, v7}, Lcom/jcraft/jsch/jzlib/Deflate;->s(I[S)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v13, v13, -0x2

    .line 89
    .line 90
    invoke-virtual {v0, v13, v4}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_6
    const/16 v1, 0x12

    .line 95
    .line 96
    invoke-virtual {v0, v1, v7}, Lcom/jcraft/jsch/jzlib/Deflate;->s(I[S)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v13, v13, -0xa

    .line 100
    .line 101
    invoke-virtual {v0, v13, v5}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 102
    .line 103
    .line 104
    :goto_3
    if-nez v15, :cond_7

    .line 105
    .line 106
    move v14, v2

    .line 107
    move v7, v3

    .line 108
    :goto_4
    move v8, v4

    .line 109
    :goto_5
    move v13, v10

    .line 110
    goto :goto_6

    .line 111
    :cond_7
    if-ne v2, v15, :cond_8

    .line 112
    .line 113
    const/4 v1, 0x6

    .line 114
    move v7, v1

    .line 115
    move v14, v2

    .line 116
    goto :goto_4

    .line 117
    :cond_8
    move v14, v2

    .line 118
    move v7, v5

    .line 119
    move v8, v6

    .line 120
    goto :goto_5

    .line 121
    :goto_6
    move v2, v15

    .line 122
    const/4 v1, 0x1

    .line 123
    goto :goto_1

    .line 124
    :cond_9
    return-void
.end method
