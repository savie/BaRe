.class public final Lfi2;
.super Lgk1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final d0([B[BII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lgk1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    iget p0, p0, Lgk1;->a:I

    .line 6
    .line 7
    invoke-static {p4, p0}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v1, :cond_0

    .line 14
    .line 15
    add-int v4, p3, v3

    .line 16
    .line 17
    aget-byte v4, p1, v4

    .line 18
    .line 19
    aget-byte v5, v0, v3

    .line 20
    .line 21
    sub-int/2addr v4, v5

    .line 22
    int-to-byte v4, v4

    .line 23
    aput-byte v4, p2, v3

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-lt p4, p0, :cond_1

    .line 29
    .line 30
    add-int v1, p3, p4

    .line 31
    .line 32
    sub-int/2addr v1, p0

    .line 33
    invoke-static {p1, v1, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    sub-int v1, p0, v3

    .line 38
    .line 39
    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    :goto_1
    if-ge v3, p4, :cond_2

    .line 46
    .line 47
    add-int v0, p3, v3

    .line 48
    .line 49
    aget-byte v1, p1, v0

    .line 50
    .line 51
    sub-int/2addr v0, p0

    .line 52
    aget-byte v0, p1, v0

    .line 53
    .line 54
    sub-int/2addr v1, v0

    .line 55
    int-to-byte v0, v1

    .line 56
    aput-byte v0, p2, v3

    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    return-void
.end method
