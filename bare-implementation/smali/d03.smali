.class public final Ld03;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lx94;


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 0

    .line 1
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Ljava/nio/ByteBuffer;Lm35;)I
    .locals 1

    .line 1
    sget-object v0, Lay0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    new-instance v0, Lyx0;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lyx0;-><init>(Ljava/nio/ByteBuffer;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p2}, Ld03;->d(Ljava/io/InputStream;Lm35;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final c(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 0

    .line 1
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Ljava/io/InputStream;Lm35;)I
    .locals 0

    .line 1
    new-instance p0, Lc03;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lc03;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "Orientation"

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lc03;->c(Ljava/lang/String;)Lyz2;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    iget-object p0, p0, Lc03;->f:Ljava/nio/ByteOrder;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lyz2;->e(Ljava/nio/ByteOrder;)I

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    if-nez p0, :cond_1

    .line 24
    .line 25
    const/4 p0, -0x1

    .line 26
    :cond_1
    return p0
.end method
