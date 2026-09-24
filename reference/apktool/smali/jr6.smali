.class public final Ljr6;
.super Lgo4;

# interfaces
.implements Ljx6;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/16 v0, 0xe0

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x100

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x180

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x200

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "\'bitLength\' "

    .line 19
    .line 20
    const-string v0, " not supported for SHA-3"

    .line 21
    .line 22
    invoke-static {p1, p0, v0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lgo4;-><init>(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final b(Lxb5;)V
    .locals 0

    .line 1
    check-cast p1, Ljr6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lgo4;->h(Lgo4;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final copy()Lxb5;
    .locals 1

    .line 1
    new-instance v0, Ljr6;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgo4;-><init>(Lgo4;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final doFinal([BI)I
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, v0}, Lgo4;->g(II)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lgo4;->f:I

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    invoke-virtual {p0, p2, v0, v1, p1}, Lgo4;->k(IJ[B)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lgo4;->reset()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lgo4;->c()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SHA3-"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lgo4;->f:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
