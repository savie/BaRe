.class public final Lt;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final D(Lz0;Ln1;)V
    .locals 0

    .line 1
    check-cast p1, Lv;

    .line 2
    .line 3
    iget p0, p1, Lv;->c:I

    .line 4
    .line 5
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p1, La2;->b:[B

    .line 9
    .line 10
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final E(Lz0;)I
    .locals 0

    .line 1
    check-cast p1, Lv;

    .line 2
    .line 3
    iget-object p0, p1, La2;->b:[B

    .line 4
    .line 5
    array-length p0, p0

    .line 6
    add-int/lit8 p0, p0, 0x1

    .line 7
    .line 8
    return p0
.end method
