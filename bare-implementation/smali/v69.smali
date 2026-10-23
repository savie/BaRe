.class public final Lv69;
.super Lw69;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:[B

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>([BII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lw69;-><init>()V

    .line 2
    .line 3
    .line 4
    add-int v0, p2, p3

    .line 5
    .line 6
    array-length v1, p1

    .line 7
    invoke-static {p2, v0, v1}, Lt69;->e(III)I

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lv69;->d:[B

    .line 11
    .line 12
    iput p2, p0, Lv69;->e:I

    .line 13
    .line 14
    iput p3, p0, Lv69;->f:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final c(I)B
    .locals 1

    .line 1
    iget v0, p0, Lv69;->e:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget-object p0, p0, Lv69;->d:[B

    .line 5
    .line 6
    aget-byte p0, p0, v0

    .line 7
    .line 8
    return p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget p0, p0, Lv69;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public final f(II)Lw69;
    .locals 2

    .line 1
    iget v0, p0, Lv69;->f:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lt69;->e(III)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    sget-object p0, Lt69;->b:Lx69;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lv69;

    .line 13
    .line 14
    iget v1, p0, Lv69;->e:I

    .line 15
    .line 16
    add-int/2addr v1, p1

    .line 17
    iget-object p0, p0, Lv69;->d:[B

    .line 18
    .line 19
    invoke-direct {v0, p0, v1, p2}, Lv69;-><init>([BII)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final i([BI)V
    .locals 2

    .line 1
    iget v0, p0, Lv69;->e:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lv69;->d:[B

    .line 5
    .line 6
    invoke-static {p0, v0, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final k(Lt69;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lx69;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p1, Lv69;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, p0}, Lt69;->k(Lt69;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lt69;->d()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lv69;->f:I

    .line 20
    .line 21
    if-gt v1, v0, :cond_5

    .line 22
    .line 23
    invoke-virtual {p1}, Lt69;->d()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x0

    .line 28
    if-gt v1, v0, :cond_4

    .line 29
    .line 30
    instance-of v0, p1, Lx69;

    .line 31
    .line 32
    iget-object v3, p0, Lv69;->d:[B

    .line 33
    .line 34
    iget v4, p0, Lv69;->e:I

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    check-cast p1, Lx69;

    .line 39
    .line 40
    iget-object p0, p1, Lx69;->d:[B

    .line 41
    .line 42
    invoke-static {v3, v4, v2, p0, v1}, Lt69;->l([BII[BI)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :cond_2
    instance-of v0, p1, Lv69;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    check-cast p1, Lv69;

    .line 52
    .line 53
    iget-object p0, p1, Lv69;->d:[B

    .line 54
    .line 55
    iget p1, p1, Lv69;->e:I

    .line 56
    .line 57
    invoke-static {v3, v4, p1, p0, v1}, Lt69;->l([BII[BI)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    :cond_3
    invoke-virtual {p1, v2, v1}, Lt69;->f(II)Lw69;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    add-int/2addr v1, v4

    .line 67
    invoke-virtual {p0, v4, v1}, Lv69;->f(II)Lw69;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p1, p0}, Lt69;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0

    .line 76
    :cond_4
    invoke-virtual {p1}, Lt69;->d()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    const-string p1, "Ran off end of other: 0, "

    .line 81
    .line 82
    const-string v0, ", "

    .line 83
    .line 84
    invoke-static {p1, v1, p0, v0}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return v2

    .line 92
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v0, "Length too large: "

    .line 97
    .line 98
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0
.end method

.method public final p(Lc79;)V
    .locals 2

    .line 1
    iget v0, p0, Lv69;->e:I

    .line 2
    .line 3
    iget v1, p0, Lv69;->f:I

    .line 4
    .line 5
    iget-object p0, p0, Lv69;->d:[B

    .line 6
    .line 7
    invoke-virtual {p1, p0, v0, v1}, Lc79;->i([BII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final s(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lv69;->d:[B

    .line 2
    .line 3
    iget p0, p0, Lv69;->e:I

    .line 4
    .line 5
    invoke-static {p1, v0, p0, p2}, Ll79;->a(I[BII)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final t()Ly69;
    .locals 2

    .line 1
    iget v0, p0, Lv69;->e:I

    .line 2
    .line 3
    iget v1, p0, Lv69;->f:I

    .line 4
    .line 5
    iget-object p0, p0, Lv69;->d:[B

    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lgk1;->E([BII)Ly69;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
