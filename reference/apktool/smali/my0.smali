.class public final Lmy0;
.super Ljava/lang/Object;

# interfaces
.implements Lb55;


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:Lly0;

.field public e:I


# virtual methods
.method public final a(B)V
    .locals 4

    .line 1
    iget v0, p0, Lmy0;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lmy0;->b:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lmy0;->d:Lly0;

    .line 9
    .line 10
    iget-object v2, p0, Lmy0;->a:[B

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v1, v2, v3, v3}, Lly0;->j([B[BII)I

    .line 14
    .line 15
    .line 16
    iput v3, p0, Lmy0;->c:I

    .line 17
    .line 18
    :cond_0
    iget v0, p0, Lmy0;->c:I

    .line 19
    .line 20
    add-int/lit8 v2, v0, 0x1

    .line 21
    .line 22
    iput v2, p0, Lmy0;->c:I

    .line 23
    .line 24
    aput-byte p1, v1, v0

    .line 25
    .line 26
    return-void
.end method

.method public final b()I
    .locals 0

    .line 1
    iget p0, p0, Lmy0;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public final c(Lz61;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmy0;->d:Lly0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget-object v3, p0, Lmy0;->b:[B

    .line 6
    .line 7
    array-length v4, v3

    .line 8
    if-ge v2, v4, :cond_0

    .line 9
    .line 10
    aput-byte v1, v3, v2

    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput v1, p0, Lmy0;->c:I

    .line 16
    .line 17
    invoke-virtual {v0}, Lly0;->reset()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    invoke-virtual {v0, p0, p1}, Lly0;->a(ZLz61;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final doFinal([BI)I
    .locals 6

    .line 1
    iget p2, p0, Lmy0;->e:I

    .line 2
    .line 3
    iget-object v0, p0, Lmy0;->a:[B

    .line 4
    .line 5
    iget-object v1, p0, Lmy0;->b:[B

    .line 6
    .line 7
    iget-object v2, p0, Lmy0;->d:Lly0;

    .line 8
    .line 9
    iget-object v3, v2, Lly0;->e:Lxs0;

    .line 10
    .line 11
    invoke-interface {v3}, Lxs0;->getBlockSize()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    :goto_0
    iget v4, p0, Lmy0;->c:I

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-ge v4, v3, :cond_0

    .line 19
    .line 20
    aput-byte v5, v1, v4

    .line 21
    .line 22
    add-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    iput v4, p0, Lmy0;->c:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v2, v1, v0, v5, v5}, Lly0;->j([B[BII)I

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v5, p1, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    move p1, v5

    .line 34
    :goto_1
    array-length v0, v1

    .line 35
    if-ge p1, v0, :cond_1

    .line 36
    .line 37
    aput-byte v5, v1, p1

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iput v5, p0, Lmy0;->c:I

    .line 43
    .line 44
    invoke-virtual {v2}, Lly0;->reset()V

    .line 45
    .line 46
    .line 47
    return p2
.end method

.method public final update([BII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmy0;->a:[B

    .line 2
    .line 3
    iget-object v1, p0, Lmy0;->b:[B

    .line 4
    .line 5
    iget-object v2, p0, Lmy0;->d:Lly0;

    .line 6
    .line 7
    if-ltz p3, :cond_1

    .line 8
    .line 9
    iget-object v3, v2, Lly0;->e:Lxs0;

    .line 10
    .line 11
    invoke-interface {v3}, Lxs0;->getBlockSize()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget v4, p0, Lmy0;->c:I

    .line 16
    .line 17
    sub-int v5, v3, v4

    .line 18
    .line 19
    if-le p3, v5, :cond_0

    .line 20
    .line 21
    invoke-static {p1, p2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v2, v1, v0, v4, v4}, Lly0;->j([B[BII)I

    .line 26
    .line 27
    .line 28
    iput v4, p0, Lmy0;->c:I

    .line 29
    .line 30
    sub-int/2addr p3, v5

    .line 31
    add-int/2addr p2, v5

    .line 32
    :goto_0
    if-le p3, v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2, p1, v0, p2, v4}, Lly0;->j([B[BII)I

    .line 35
    .line 36
    .line 37
    sub-int/2addr p3, v3

    .line 38
    add-int/2addr p2, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget v0, p0, Lmy0;->c:I

    .line 41
    .line 42
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    iget p1, p0, Lmy0;->c:I

    .line 46
    .line 47
    add-int/2addr p1, p3

    .line 48
    iput p1, p0, Lmy0;->c:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    const-string p0, "Can\'t have a negative input length!"

    .line 52
    .line 53
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
