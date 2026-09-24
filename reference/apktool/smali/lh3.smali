.class public final Llh3;
.super Ljava/io/ByteArrayOutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a()[B
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget p0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    .line 5
    .line 6
    if-ne v1, p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string p0, "Size supplied is too small"

    .line 10
    .line 11
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method
