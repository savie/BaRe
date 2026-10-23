.class public final Lx69;
.super Lw69;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw69;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lx69;->d:[B

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final c(I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lx69;->d:[B

    .line 2
    .line 3
    aget-byte p0, p0, p1

    .line 4
    .line 5
    return p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Lx69;->d:[B

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    return p0
.end method

.method public final f(II)Lw69;
    .locals 1

    .line 1
    iget-object p0, p0, Lx69;->d:[B

    .line 2
    .line 3
    array-length p1, p0

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0, p2, p1}, Lt69;->e(III)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    sget-object p0, Lt69;->b:Lx69;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p2, Lv69;

    .line 15
    .line 16
    invoke-direct {p2, p0, v0, p1}, Lv69;-><init>([BII)V

    .line 17
    .line 18
    .line 19
    return-object p2
.end method

.method public final i([BI)V
    .locals 1

    .line 1
    iget-object p0, p0, Lx69;->d:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final k(Lt69;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lx69;

    .line 2
    .line 3
    iget-object v1, p0, Lx69;->d:[B

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lx69;

    .line 8
    .line 9
    iget-object p0, p1, Lx69;->d:[B

    .line 10
    .line 11
    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    instance-of v0, p1, Lv69;

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    array-length p0, v1

    .line 21
    invoke-virtual {p1}, Lt69;->d()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x0

    .line 26
    if-gt p0, v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Lt69;->d()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-gt p0, v0, :cond_2

    .line 33
    .line 34
    instance-of v0, p1, Lx69;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    check-cast p1, Lx69;

    .line 39
    .line 40
    iget-object p1, p1, Lx69;->d:[B

    .line 41
    .line 42
    invoke-static {v1, v2, v2, p1, p0}, Lt69;->l([BII[BI)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :cond_1
    check-cast p1, Lv69;

    .line 48
    .line 49
    iget-object v0, p1, Lv69;->d:[B

    .line 50
    .line 51
    iget p1, p1, Lv69;->e:I

    .line 52
    .line 53
    invoke-static {v1, v2, p1, v0, p0}, Lt69;->l([BII[BI)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :cond_2
    invoke-virtual {p1}, Lt69;->d()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const-string v0, "Ran off end of other: 0, "

    .line 63
    .line 64
    const-string v1, ", "

    .line 65
    .line 66
    invoke-static {v0, p0, p1, v1}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return v2

    .line 74
    :cond_3
    array-length p1, v1

    .line 75
    invoke-static {p0, p1}, Ll0;->c(II)V

    .line 76
    .line 77
    .line 78
    return v2

    .line 79
    :cond_4
    invoke-virtual {p1, p0}, Lt69;->k(Lt69;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    return p0
.end method

.method public final p(Lc79;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lx69;->d:[B

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    invoke-virtual {p1, p0, v0, v1}, Lc79;->i([BII)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final s(II)I
    .locals 1

    .line 1
    iget-object p0, p0, Lx69;->d:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p0, v0, p2}, Ll79;->a(I[BII)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final t()Ly69;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lx69;->d:[B

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    invoke-static {p0, v0, v1}, Lgk1;->E([BII)Ly69;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
