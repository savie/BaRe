.class public final Lei2;
.super Lj3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/InputStream;JLkk1;[BI)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p5, Lkk1;->d:[B

    .line 2
    .line 3
    invoke-static {p0}, Lod2;->o(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p3, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    move p0, p3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    aget-byte p0, p0, p1

    .line 14
    .line 15
    and-int/lit16 p0, p0, 0xff

    .line 16
    .line 17
    add-int/2addr p0, p3

    .line 18
    :goto_0
    if-lt p0, p3, :cond_1

    .line 19
    .line 20
    const/16 p1, 0x100

    .line 21
    .line 22
    if-gt p0, p1, :cond_1

    .line 23
    .line 24
    sget-object p1, Lv40;->a:Lv40;

    .line 25
    .line 26
    new-instance p1, Lgi2;

    .line 27
    .line 28
    invoke-direct {p1, p2, p0}, Lgi2;-><init>(Ljava/io/InputStream;I)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_1
    const-string p1, "Delta distance must be in the range [1, 256]: "

    .line 33
    .line 34
    invoke-static {p0, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Ly5;->h(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public final b(Ljava/lang/Object;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    .line 1
    const/4 p0, 0x1

    .line 2
    invoke-static {p0, p1}, Lj3;->e(ILjava/lang/Object;)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    :try_start_0
    new-instance v0, Lhi2;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput p0, v0, Lhi2;->a:I

    .line 12
    .line 13
    if-lt p1, p0, :cond_0

    .line 14
    .line 15
    const/16 p0, 0x100

    .line 16
    .line 17
    if-gt p1, p0, :cond_0

    .line 18
    .line 19
    iput p1, v0, Lhi2;->a:I

    .line 20
    .line 21
    new-instance p0, Lpe3;

    .line 22
    .line 23
    invoke-direct {p0, p2}, Lpe3;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lv40;->a:Lv40;

    .line 27
    .line 28
    new-instance p1, Lii2;

    .line 29
    .line 30
    invoke-direct {p1, p0, v0}, Lii2;-><init>(Lpe3;Lhi2;)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    new-instance p0, Lhf8;

    .line 35
    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, "Delta distance must be in the range [1, 256]: "

    .line 39
    .line 40
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0
    :try_end_0
    .catch Lhf8; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method

.method public final c(Ljava/lang/Object;)[B
    .locals 1

    .line 1
    const/4 p0, 0x1

    .line 2
    invoke-static {p0, p1}, Lj3;->e(ILjava/lang/Object;)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    sub-int/2addr p1, p0

    .line 7
    int-to-byte p1, p1

    .line 8
    new-array p0, p0, [B

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    aput-byte p1, p0, v0

    .line 12
    .line 13
    return-object p0
.end method

.method public final d(Lkk1;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p1, Lkk1;->d:[B

    .line 2
    .line 3
    invoke-static {p0}, Lod2;->o(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    aget-byte p0, p0, p1

    .line 13
    .line 14
    and-int/lit16 p0, p0, 0xff

    .line 15
    .line 16
    add-int/2addr v0, p0

    .line 17
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
