.class public final Ls;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final C(Lm2;[B)Lz0;
    .locals 7

    .line 1
    iget-object v0, p1, Lm2;->d:Ld0;

    .line 2
    .line 3
    sget-object v1, Ld0;->c:Ld0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lp0;

    .line 10
    .line 11
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lnh4;

    .line 14
    .line 15
    invoke-direct {v0, p0, p2}, Lp0;-><init>(Lnh4;[B)V

    .line 16
    .line 17
    .line 18
    iget-object p0, v0, Lp0;->a:Lnh4;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    :try_start_1
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 21
    .line 22
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    .line 24
    .line 25
    move v1, v3

    .line 26
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-lez v4, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lnh4;->m(Lp0;)Lm2;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget v5, v4, Lm2;->b:I

    .line 40
    .line 41
    iget v6, p1, Lm2;->b:I

    .line 42
    .line 43
    if-ne v5, v6, :cond_1

    .line 44
    .line 45
    move v5, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v5, v3

    .line 48
    :goto_1
    const-string v6, "Expected an ASN.1 BIT STRING as Constructed object, got: %s"

    .line 49
    .line 50
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    invoke-static {v0}, Lnh4;->l(Lp0;)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-static {v4, v0}, Lnh4;->n(ILp0;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    array-length v5, v4

    .line 65
    sub-int/2addr v5, v2

    .line 66
    invoke-virtual {p2, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-gtz v5, :cond_0

    .line 74
    .line 75
    aget-byte v1, v4, v3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_3
    new-instance p0, Lv;

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-direct {p0, p1, p2, v1}, Lv;-><init>(Lm2;[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    .line 101
    .line 102
    return-object p0

    .line 103
    :catch_0
    move-exception p0

    .line 104
    goto :goto_4

    .line 105
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :catchall_1
    move-exception p1

    .line 110
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 114
    :goto_4
    new-instance p1, Lo1;

    .line 115
    .line 116
    const-string p2, "Unable to parse Constructed ASN.1 BIT STRING"

    .line 117
    .line 118
    new-array v0, v3, [Ljava/lang/Object;

    .line 119
    .line 120
    invoke-direct {p1, p0, p2, v0}, Lo1;-><init>(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_4
    aget-byte p0, p2, v3

    .line 125
    .line 126
    array-length v0, p2

    .line 127
    invoke-static {p2, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    new-instance v0, Lv;

    .line 132
    .line 133
    invoke-direct {v0, p1, p2, p0}, Lv;-><init>(Lm2;[BI)V

    .line 134
    .line 135
    .line 136
    return-object v0
.end method
