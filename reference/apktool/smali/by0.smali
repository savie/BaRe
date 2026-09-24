.class public final Lby0;
.super Ljava/io/ByteArrayOutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public a()[B
    .locals 0

    .line 1
    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public b()[B
    .locals 0

    .line 1
    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Lwd7;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget p0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    .line 5
    .line 6
    invoke-interface {p1, v0, v1, p0}, Ljava/io/DataOutput;->write([BII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
