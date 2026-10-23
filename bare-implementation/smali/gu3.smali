.class public final Lgu3;
.super Lsz8;


# virtual methods
.method public final C(S)S
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lgu3;->z0(S)S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lgu3;->D(SS)S

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lgu3;->z0(S)S

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v1}, Lgu3;->z0(S)S

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0, v1, v0}, Lgu3;->D(SS)S

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0, v1}, Lgu3;->z0(S)S

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0, v2}, Lgu3;->z0(S)S

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p0, v2}, Lgu3;->z0(S)S

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p0, v2}, Lgu3;->z0(S)S

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p0, v2, v1}, Lgu3;->D(SS)S

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p0, v1}, Lgu3;->z0(S)S

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p0, v1}, Lgu3;->z0(S)S

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p0, v1, v0}, Lgu3;->D(SS)S

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p0, v0}, Lgu3;->z0(S)S

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0, v0, p1}, Lgu3;->D(SS)S

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {p0, p1}, Lgu3;->z0(S)S

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
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
    const/16 v3, 0xc

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
    invoke-virtual {p0, v0}, Lgu3;->y0(I)S

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final y0(I)S
    .locals 3

    .line 1
    and-int/lit16 p0, p1, 0xfff

    .line 2
    .line 3
    ushr-int/lit8 v0, p1, 0xc

    .line 4
    .line 5
    const v1, 0x1ff000

    .line 6
    .line 7
    .line 8
    and-int/2addr v1, p1

    .line 9
    ushr-int/lit8 v1, v1, 0x9

    .line 10
    .line 11
    const/high16 v2, 0xe00000

    .line 12
    .line 13
    and-int/2addr v2, p1

    .line 14
    ushr-int/lit8 v2, v2, 0x12

    .line 15
    .line 16
    ushr-int/lit8 p1, p1, 0x15

    .line 17
    .line 18
    xor-int/2addr p0, v0

    .line 19
    xor-int/2addr p0, v1

    .line 20
    xor-int/2addr p0, v2

    .line 21
    xor-int/2addr p0, p1

    .line 22
    int-to-short p0, p0

    .line 23
    return p0
.end method

.method public final z0(S)S
    .locals 0

    .line 1
    invoke-static {p1}, Llg7;->k(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lgu3;->y0(I)S

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
