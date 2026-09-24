.class public final La93;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:J

.field public b:Lwn6;


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget-object p0, p0, La93;->b:Lwn6;

    .line 2
    .line 3
    iget p0, p0, Lwn6;->d:I

    .line 4
    .line 5
    return p0
.end method

.method public final b([B)I
    .locals 6

    .line 1
    iget-object p0, p0, La93;->b:Lwn6;

    .line 2
    .line 3
    iget-object v0, p0, Lwn6;->a:[B

    .line 4
    .line 5
    iget v1, p0, Lwn6;->d:I

    .line 6
    .line 7
    array-length v2, p1

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    array-length v1, p1

    .line 12
    :goto_0
    iget v2, p0, Lwn6;->c:I

    .line 13
    .line 14
    add-int v3, v2, v1

    .line 15
    .line 16
    array-length v4, v0

    .line 17
    const/4 v5, 0x0

    .line 18
    if-gt v3, v4, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v2, p1, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    array-length v3, v0

    .line 25
    sub-int/2addr v3, v2

    .line 26
    invoke-static {v0, v2, p1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    sub-int v2, v1, v3

    .line 30
    .line 31
    invoke-static {v0, v5, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    :goto_1
    iget p1, p0, Lwn6;->c:I

    .line 35
    .line 36
    add-int/2addr p1, v1

    .line 37
    array-length v0, v0

    .line 38
    rem-int/2addr p1, v0

    .line 39
    iput p1, p0, Lwn6;->c:I

    .line 40
    .line 41
    iget p1, p0, Lwn6;->d:I

    .line 42
    .line 43
    sub-int/2addr p1, v1

    .line 44
    iput p1, p0, Lwn6;->d:I

    .line 45
    .line 46
    return v1
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method
