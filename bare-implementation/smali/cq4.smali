.class public final Lcq4;
.super Lj3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static f(Lkk1;)I
    .locals 4

    .line 1
    iget-object p0, p0, Lkk1;->d:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_4

    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-lt v1, v2, :cond_3

    .line 9
    .line 10
    aget-byte p0, p0, v0

    .line 11
    .line 12
    and-int/lit16 v1, p0, 0xff

    .line 13
    .line 14
    and-int/lit16 v3, p0, 0xc0

    .line 15
    .line 16
    if-nez v3, :cond_2

    .line 17
    .line 18
    const/16 v3, 0x28

    .line 19
    .line 20
    if-gt v1, v3, :cond_1

    .line 21
    .line 22
    if-ne v1, v3, :cond_0

    .line 23
    .line 24
    const/4 p0, -0x1

    .line 25
    return p0

    .line 26
    :cond_0
    and-int/2addr p0, v2

    .line 27
    or-int/lit8 p0, p0, 0x2

    .line 28
    .line 29
    div-int/lit8 v1, v1, 0x2

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0xb

    .line 32
    .line 33
    shl-int/2addr p0, v1

    .line 34
    return p0

    .line 35
    :cond_1
    const-string p0, "Dictionary larger than 4GiB maximum size"

    .line 36
    .line 37
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v0

    .line 41
    :cond_2
    const-string p0, "Unsupported LZMA2 property bits"

    .line 42
    .line 43
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v0

    .line 47
    :cond_3
    const-string p0, "LZMA2 properties too short"

    .line 48
    .line 49
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v0

    .line 53
    :cond_4
    const-string p0, "Missing LZMA2 properties"

    .line 54
    .line 55
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/InputStream;JLkk1;[BI)Ljava/io/InputStream;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p5}, Lcq4;->f(Lkk1;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ldq4;->b(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    div-int/lit16 p1, p1, 0x400

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x68

    .line 12
    .line 13
    if-gt p1, p7, :cond_0

    .line 14
    .line 15
    new-instance p1, Ldq4;

    .line 16
    .line 17
    sget-object p3, Lv40;->a:Lv40;

    .line 18
    .line 19
    invoke-direct {p1, p2, p0, p3}, Ldq4;-><init>(Ljava/io/InputStream;ILv40;)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    new-instance p0, Lzb5;

    .line 24
    .line 25
    int-to-long p1, p1

    .line 26
    invoke-direct {p0, p7, p1, p2}, Lzb5;-><init>(IJ)V

    .line 27
    .line 28
    .line 29
    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Ljava/io/IOException;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final b(Ljava/lang/Object;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    .line 1
    instance-of p0, p1, Leq4;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Leq4;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Leq4;

    .line 9
    .line 10
    invoke-direct {p0}, Leq4;-><init>()V

    .line 11
    .line 12
    .line 13
    const/high16 v0, 0x800000

    .line 14
    .line 15
    invoke-static {v0, p1}, Lj3;->e(ILjava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Leq4;->c(I)V

    .line 20
    .line 21
    .line 22
    move-object p1, p0

    .line 23
    :goto_0
    new-instance p0, Lpe3;

    .line 24
    .line 25
    invoke-direct {p0, p2}, Lpe3;-><init>(Ljava/io/OutputStream;)V

    .line 26
    .line 27
    .line 28
    sget-object p2, Lv40;->a:Lv40;

    .line 29
    .line 30
    invoke-virtual {p1, p0, p2}, Leq4;->b(Lpe3;Lv40;)Loe3;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final c(Ljava/lang/Object;)[B
    .locals 1

    .line 1
    instance-of p0, p1, Leq4;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Leq4;

    .line 6
    .line 7
    iget p0, p1, Leq4;->a:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 p0, 0x800000

    .line 11
    .line 12
    invoke-static {p0, p1}, Lj3;->e(ILjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    rsub-int/lit8 v0, p1, 0x1e

    .line 21
    .line 22
    ushr-int/2addr p0, v0

    .line 23
    add-int/lit8 p0, p0, -0x2

    .line 24
    .line 25
    rsub-int/lit8 p1, p1, 0x13

    .line 26
    .line 27
    mul-int/lit8 p1, p1, 0x2

    .line 28
    .line 29
    add-int/2addr p1, p0

    .line 30
    int-to-byte p0, p1

    .line 31
    const/4 p1, 0x1

    .line 32
    new-array p1, p1, [B

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    aput-byte p0, p1, v0

    .line 36
    .line 37
    return-object p1
.end method

.method public final d(Lkk1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcq4;->f(Lkk1;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
