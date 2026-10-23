.class public final Lf0;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final D(Lz0;Ln1;)V
    .locals 0

    .line 1
    check-cast p1, Lh0;

    .line 2
    .line 3
    iget-object p0, p1, Lr1;->b:[B

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p1, Lh0;->c:Ljava/math/BigInteger;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iput-object p0, p1, Lr1;->b:[B

    .line 14
    .line 15
    :cond_0
    iget-object p0, p1, Lr1;->b:[B

    .line 16
    .line 17
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final E(Lz0;)I
    .locals 0

    .line 1
    check-cast p1, Lh0;

    .line 2
    .line 3
    iget-object p0, p1, Lr1;->b:[B

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p1, Lh0;->c:Ljava/math/BigInteger;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iput-object p0, p1, Lr1;->b:[B

    .line 14
    .line 15
    :cond_0
    iget-object p0, p1, Lr1;->b:[B

    .line 16
    .line 17
    array-length p0, p0

    .line 18
    return p0
.end method
