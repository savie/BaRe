.class public final Lhu3;
.super Lsz8;


# virtual methods
.method public final A0(SS)S
    .locals 8

    .line 1
    int-to-long v0, p1

    .line 2
    int-to-long p1, p2

    .line 3
    const/4 v2, 0x6

    .line 4
    shl-long v2, p1, v2

    .line 5
    .line 6
    const-wide/16 v4, 0x40

    .line 7
    .line 8
    and-long/2addr v4, v0

    .line 9
    mul-long/2addr v2, v4

    .line 10
    const/4 v4, 0x7

    .line 11
    shl-long v4, v0, v4

    .line 12
    .line 13
    xor-long/2addr v0, v4

    .line 14
    const-wide/16 v4, 0x4001

    .line 15
    .line 16
    and-long/2addr v4, v0

    .line 17
    mul-long/2addr v4, p1

    .line 18
    xor-long/2addr v2, v4

    .line 19
    const/4 v4, 0x1

    .line 20
    shl-long v4, p1, v4

    .line 21
    .line 22
    const-wide/32 v6, 0x8002

    .line 23
    .line 24
    .line 25
    and-long/2addr v6, v0

    .line 26
    mul-long/2addr v4, v6

    .line 27
    xor-long/2addr v2, v4

    .line 28
    const/4 v4, 0x2

    .line 29
    shl-long v4, p1, v4

    .line 30
    .line 31
    const-wide/32 v6, 0x10004

    .line 32
    .line 33
    .line 34
    and-long/2addr v6, v0

    .line 35
    mul-long/2addr v4, v6

    .line 36
    xor-long/2addr v2, v4

    .line 37
    const/4 v4, 0x3

    .line 38
    shl-long v4, p1, v4

    .line 39
    .line 40
    const-wide/32 v6, 0x20008

    .line 41
    .line 42
    .line 43
    and-long/2addr v6, v0

    .line 44
    mul-long/2addr v4, v6

    .line 45
    xor-long/2addr v2, v4

    .line 46
    const/4 v4, 0x4

    .line 47
    shl-long v4, p1, v4

    .line 48
    .line 49
    const-wide/32 v6, 0x40010

    .line 50
    .line 51
    .line 52
    and-long/2addr v6, v0

    .line 53
    mul-long/2addr v4, v6

    .line 54
    xor-long/2addr v2, v4

    .line 55
    const/4 v4, 0x5

    .line 56
    shl-long/2addr p1, v4

    .line 57
    const-wide/32 v4, 0x80020

    .line 58
    .line 59
    .line 60
    and-long/2addr v0, v4

    .line 61
    mul-long/2addr p1, v0

    .line 62
    xor-long/2addr p1, v2

    .line 63
    const-wide v0, 0x1ffc000000L

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    and-long/2addr v0, p1

    .line 69
    const/16 v2, 0x12

    .line 70
    .line 71
    ushr-long v2, v0, v2

    .line 72
    .line 73
    const/16 v4, 0x14

    .line 74
    .line 75
    ushr-long v4, v0, v4

    .line 76
    .line 77
    xor-long/2addr v2, v4

    .line 78
    const/16 v4, 0x18

    .line 79
    .line 80
    ushr-long v4, v0, v4

    .line 81
    .line 82
    xor-long/2addr v2, v4

    .line 83
    const/16 v4, 0x1a

    .line 84
    .line 85
    ushr-long/2addr v0, v4

    .line 86
    xor-long/2addr v0, v2

    .line 87
    xor-long/2addr p1, v0

    .line 88
    long-to-int p1, p1

    .line 89
    const p2, 0x3ffffff

    .line 90
    .line 91
    .line 92
    and-int/2addr p1, p2

    .line 93
    invoke-virtual {p0, p1}, Lhu3;->y0(I)S

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    return p0
.end method

.method public final C(S)S
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p1}, Lhu3;->A0(SS)S

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1, p1}, Lhu3;->z0(SS)S

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Llg7;->k(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lhu3;->y0(I)S

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Llg7;->k(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0, v0}, Lhu3;->y0(I)S

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, v0, p1}, Lhu3;->z0(SS)S

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v0}, Llg7;->k(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Lhu3;->y0(I)S

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Llg7;->k(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0, v0}, Lhu3;->y0(I)S

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p0, v0, p1}, Lhu3;->z0(SS)S

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, p1, v0}, Lhu3;->A0(SS)S

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0
.end method

.method public final D(SS)S
    .locals 4

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    mul-int/2addr v0, p1

    .line 4
    const/4 v1, 0x1

    .line 5
    move v2, v1

    .line 6
    :goto_0
    const/16 v3, 0xd

    .line 7
    .line 8
    if-ge v2, v3, :cond_0

    .line 9
    .line 10
    shl-int v3, v1, v2

    .line 11
    .line 12
    and-int/2addr v3, p2

    .line 13
    mul-int/2addr v3, p1

    .line 14
    xor-int/2addr v0, v3

    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Lhu3;->y0(I)S

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final y0(I)S
    .locals 4

    .line 1
    and-int/lit16 p0, p1, 0x1fff

    .line 2
    .line 3
    ushr-int/lit8 p1, p1, 0xd

    .line 4
    .line 5
    shl-int/lit8 v0, p1, 0x4

    .line 6
    .line 7
    shl-int/lit8 v1, p1, 0x3

    .line 8
    .line 9
    xor-int/2addr v0, v1

    .line 10
    shl-int/lit8 v1, p1, 0x1

    .line 11
    .line 12
    xor-int/2addr v0, v1

    .line 13
    ushr-int/lit8 v1, v0, 0xd

    .line 14
    .line 15
    and-int/lit16 v0, v0, 0x1fff

    .line 16
    .line 17
    shl-int/lit8 v2, v1, 0x4

    .line 18
    .line 19
    shl-int/lit8 v3, v1, 0x3

    .line 20
    .line 21
    xor-int/2addr v2, v3

    .line 22
    shl-int/lit8 v3, v1, 0x1

    .line 23
    .line 24
    xor-int/2addr v2, v3

    .line 25
    xor-int/2addr p0, p1

    .line 26
    xor-int/2addr p0, v1

    .line 27
    xor-int/2addr p0, v0

    .line 28
    xor-int/2addr p0, v2

    .line 29
    int-to-short p0, p0

    .line 30
    return p0
.end method

.method public final z0(SS)S
    .locals 9

    .line 1
    int-to-long v0, p1

    .line 2
    int-to-long p1, p2

    .line 3
    const/16 v2, 0x12

    .line 4
    .line 5
    shl-long v3, p1, v2

    .line 6
    .line 7
    const-wide/16 v5, 0x40

    .line 8
    .line 9
    and-long/2addr v5, v0

    .line 10
    mul-long/2addr v3, v5

    .line 11
    const/16 v5, 0x15

    .line 12
    .line 13
    shl-long v5, v0, v5

    .line 14
    .line 15
    xor-long/2addr v0, v5

    .line 16
    const-wide/32 v5, 0x10000001

    .line 17
    .line 18
    .line 19
    and-long/2addr v5, v0

    .line 20
    mul-long/2addr v5, p1

    .line 21
    xor-long/2addr v3, v5

    .line 22
    const/4 v5, 0x3

    .line 23
    shl-long v5, p1, v5

    .line 24
    .line 25
    const-wide/32 v7, 0x20000002

    .line 26
    .line 27
    .line 28
    and-long/2addr v7, v0

    .line 29
    mul-long/2addr v5, v7

    .line 30
    xor-long/2addr v3, v5

    .line 31
    const/4 v5, 0x6

    .line 32
    shl-long v5, p1, v5

    .line 33
    .line 34
    const-wide/32 v7, 0x40000004

    .line 35
    .line 36
    .line 37
    and-long/2addr v7, v0

    .line 38
    mul-long/2addr v5, v7

    .line 39
    xor-long/2addr v3, v5

    .line 40
    const/16 v5, 0x9

    .line 41
    .line 42
    shl-long v5, p1, v5

    .line 43
    .line 44
    const-wide v7, 0x80000008L

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    and-long/2addr v7, v0

    .line 50
    mul-long/2addr v5, v7

    .line 51
    xor-long/2addr v3, v5

    .line 52
    const/16 v5, 0xc

    .line 53
    .line 54
    shl-long v5, p1, v5

    .line 55
    .line 56
    const-wide v7, 0x100000010L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    and-long/2addr v7, v0

    .line 62
    mul-long/2addr v5, v7

    .line 63
    xor-long/2addr v3, v5

    .line 64
    const/16 v5, 0xf

    .line 65
    .line 66
    shl-long/2addr p1, v5

    .line 67
    const-wide v5, 0x200000020L

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    and-long/2addr v0, v5

    .line 73
    mul-long/2addr p1, v0

    .line 74
    xor-long/2addr p1, v3

    .line 75
    const-wide v0, 0x1ffff80000000000L

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    and-long/2addr v0, p1

    .line 81
    ushr-long v3, v0, v2

    .line 82
    .line 83
    const/16 v5, 0x14

    .line 84
    .line 85
    ushr-long v6, v0, v5

    .line 86
    .line 87
    xor-long/2addr v3, v6

    .line 88
    const/16 v6, 0x18

    .line 89
    .line 90
    ushr-long v7, v0, v6

    .line 91
    .line 92
    xor-long/2addr v3, v7

    .line 93
    const/16 v7, 0x1a

    .line 94
    .line 95
    ushr-long/2addr v0, v7

    .line 96
    xor-long/2addr v0, v3

    .line 97
    xor-long/2addr p1, v0

    .line 98
    const-wide v0, 0x7fffc000000L

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    and-long/2addr v0, p1

    .line 104
    ushr-long v2, v0, v2

    .line 105
    .line 106
    ushr-long v4, v0, v5

    .line 107
    .line 108
    xor-long/2addr v2, v4

    .line 109
    ushr-long v4, v0, v6

    .line 110
    .line 111
    xor-long/2addr v2, v4

    .line 112
    ushr-long/2addr v0, v7

    .line 113
    xor-long/2addr v0, v2

    .line 114
    xor-long/2addr p1, v0

    .line 115
    long-to-int p1, p1

    .line 116
    const p2, 0x3ffffff

    .line 117
    .line 118
    .line 119
    and-int/2addr p1, p2

    .line 120
    invoke-virtual {p0, p1}, Lhu3;->y0(I)S

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    return p0
.end method
