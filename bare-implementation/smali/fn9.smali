.class public final Lfn9;
.super Lgk1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final B()I
    .locals 0

    .line 1
    const/16 p0, 0x18

    .line 2
    .line 3
    return p0
.end method

.method public final G([II)[I
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x6

    .line 3
    const/4 v2, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x10

    .line 7
    .line 8
    new-array v0, v0, [I

    .line 9
    .line 10
    iget-object p0, p0, Lgk1;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, [I

    .line 13
    .line 14
    invoke-static {p0, p1}, Lym9;->e([I[I)[I

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object v1, Lym9;->a:[I

    .line 19
    .line 20
    array-length v3, v1

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    array-length v1, v1

    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    invoke-static {p0, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    const/16 p0, 0xc

    .line 32
    .line 33
    aput p2, v0, p0

    .line 34
    .line 35
    const/16 p0, 0xd

    .line 36
    .line 37
    aput v4, v0, p0

    .line 38
    .line 39
    const/4 p0, 0x4

    .line 40
    aget p0, p1, p0

    .line 41
    .line 42
    const/16 p2, 0xe

    .line 43
    .line 44
    aput p0, v0, p2

    .line 45
    .line 46
    const/16 p0, 0xf

    .line 47
    .line 48
    aget p1, p1, v2

    .line 49
    .line 50
    aput p1, v0, p0

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_0
    array-length p0, p1

    .line 54
    shl-int/2addr p0, v2

    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string p1, "XChaCha20 uses 192-bit nonces, but got a %d-bit nonce"

    .line 64
    .line 65
    invoke-static {p1, p0}, Ll0;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    return-object p0
.end method
