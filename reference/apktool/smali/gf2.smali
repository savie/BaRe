.class public abstract Lgf2;
.super Ljava/lang/Object;

# interfaces
.implements Lxs0;


# virtual methods
.method public final b([BII[BI)I
    .locals 4

    .line 1
    invoke-interface {p0}, Lxs0;->getBlockSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int v1, p3, v0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p1, p4, :cond_0

    .line 9
    .line 10
    new-array p1, v1, [B

    .line 11
    .line 12
    invoke-static {p4, p2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    move p2, v2

    .line 16
    :cond_0
    move v1, v2

    .line 17
    :goto_0
    if-eq v2, p3, :cond_1

    .line 18
    .line 19
    add-int v3, p5, v1

    .line 20
    .line 21
    invoke-interface {p0, p1, p4, p2, v3}, Lxs0;->j([B[BII)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-int/2addr v1, v3

    .line 26
    add-int/2addr p2, v0

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v1
.end method
