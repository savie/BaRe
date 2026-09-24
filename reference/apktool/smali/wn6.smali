.class public final Lwn6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I


# virtual methods
.method public final a([BII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwn6;->a:[B

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    sub-int/2addr v1, p2

    .line 5
    if-lt v1, p3, :cond_2

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    iget v2, p0, Lwn6;->d:I

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    if-gt p3, v1, :cond_1

    .line 12
    .line 13
    iget v1, p0, Lwn6;->b:I

    .line 14
    .line 15
    add-int v2, v1, p3

    .line 16
    .line 17
    array-length v3, v0

    .line 18
    if-gt v2, v3, :cond_0

    .line 19
    .line 20
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    array-length v2, v0

    .line 25
    sub-int/2addr v2, v1

    .line 26
    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    add-int/2addr p2, v2

    .line 30
    const/4 v1, 0x0

    .line 31
    sub-int v2, p3, v2

    .line 32
    .line 33
    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget p1, p0, Lwn6;->b:I

    .line 37
    .line 38
    add-int/2addr p1, p3

    .line 39
    array-length p2, v0

    .line 40
    rem-int/2addr p1, p2

    .line 41
    iput p1, p0, Lwn6;->b:I

    .line 42
    .line 43
    iget p1, p0, Lwn6;->d:I

    .line 44
    .line 45
    add-int/2addr p1, p3

    .line 46
    iput p1, p0, Lwn6;->d:I

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    const-string p0, "Size of bytes to be written is greater than available buffer space"

    .line 50
    .line 51
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const-string p0, "Bytes to write do not exist in source"

    .line 56
    .line 57
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
