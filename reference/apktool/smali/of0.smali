.class public final Lof0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ly61;


# instance fields
.field public a:Lke6;


# virtual methods
.method public final a(I[B[B)I
    .locals 6

    .line 1
    iget-object p0, p0, Lof0;->a:Lke6;

    .line 2
    .line 3
    array-length v0, p2

    .line 4
    if-gt p1, v0, :cond_2

    .line 5
    .line 6
    array-length v0, p3

    .line 7
    if-gt p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-ge v0, p1, :cond_0

    .line 11
    .line 12
    iget v1, p0, Lke6;->b:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    and-int/lit16 v1, v1, 0xff

    .line 17
    .line 18
    iput v1, p0, Lke6;->b:I

    .line 19
    .line 20
    iget-object v2, p0, Lke6;->a:[B

    .line 21
    .line 22
    aget-byte v3, v2, v1

    .line 23
    .line 24
    iget v4, p0, Lke6;->c:I

    .line 25
    .line 26
    add-int/2addr v4, v3

    .line 27
    and-int/lit16 v4, v4, 0xff

    .line 28
    .line 29
    iput v4, p0, Lke6;->c:I

    .line 30
    .line 31
    aget-byte v5, v2, v4

    .line 32
    .line 33
    aput-byte v5, v2, v1

    .line 34
    .line 35
    aput-byte v3, v2, v4

    .line 36
    .line 37
    aget-byte v4, p2, v0

    .line 38
    .line 39
    aget-byte v1, v2, v1

    .line 40
    .line 41
    add-int/2addr v1, v3

    .line 42
    and-int/lit16 v1, v1, 0xff

    .line 43
    .line 44
    aget-byte v1, v2, v1

    .line 45
    .line 46
    xor-int/2addr v1, v4

    .line 47
    int-to-byte v1, v1

    .line 48
    aput-byte v1, p3, v0

    .line 49
    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return p1

    .line 54
    :cond_1
    new-instance p0, Ldv5;

    .line 55
    .line 56
    const-string p1, "output buffer too short"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_2
    new-instance p0, Lua2;

    .line 63
    .line 64
    const-string p1, "input buffer too short"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final doFinal([BI)I
    .locals 0

    .line 1
    iget-object p0, p0, Lof0;->a:Lke6;

    .line 2
    .line 3
    iget-object p1, p0, Lke6;->d:[B

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lke6;->a([B)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final init([B)V
    .locals 2

    .line 1
    iget-object p0, p0, Lof0;->a:Lke6;

    .line 2
    .line 3
    new-instance v0, Loo4;

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    invoke-direct {v0, p1, v1}, Loo4;-><init>([BI)V

    .line 7
    .line 8
    .line 9
    iget-object p1, v0, Loo4;->a:[B

    .line 10
    .line 11
    iput-object p1, p0, Lke6;->d:[B

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lke6;->a([B)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Le42;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ld42;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    return-void
.end method
