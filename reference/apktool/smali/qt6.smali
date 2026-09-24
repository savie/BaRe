.class public final Lqt6;
.super Lmt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public b:Ljava/lang/String;


# virtual methods
.method public final c(Lzu6;)V
    .locals 5

    .line 1
    sget-object v0, Lh51;->d:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    iget-object v1, p1, Low0;->b:Lvw2;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, -0x1

    .line 17
    sparse-switch v3, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :sswitch_0
    const-string v3, "UTF-16LE"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v4, 0x3

    .line 31
    goto :goto_0

    .line 32
    :sswitch_1
    const-string v3, "UTF-16BE"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v4, 0x2

    .line 42
    goto :goto_0

    .line 43
    :sswitch_2
    const-string v3, "UTF-8"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v4, 0x1

    .line 53
    goto :goto_0

    .line 54
    :sswitch_3
    const-string v3, "UTF-16"

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v4, 0x0

    .line 64
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 65
    .line 66
    .line 67
    new-instance p0, Ljava/nio/charset/UnsupportedCharsetException;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :pswitch_0
    sget-object v0, Lh51;->c:Ljava/nio/charset/Charset;

    .line 78
    .line 79
    invoke-static {p1, v0}, Lvw2;->b(Low0;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    goto :goto_2

    .line 84
    :pswitch_1
    sget-object v0, Lh51;->b:Ljava/nio/charset/Charset;

    .line 85
    .line 86
    invoke-static {p1, v0}, Lvw2;->b(Low0;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_2

    .line 91
    :pswitch_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Low0;->n()B

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    :goto_1
    if-eqz v2, :cond_4

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Low0;->n()B

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    new-instance p1, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-direct {p1, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :pswitch_3
    invoke-virtual {v1, p1}, Lvw2;->c(Lzu6;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :goto_2
    iput-object p1, p0, Lqt6;->b:Ljava/lang/String;

    .line 125
    .line 126
    return-void

    .line 127
    :sswitch_data_0
    .sparse-switch
        -0x6a33dbd5 -> :sswitch_3
        0x4d50972 -> :sswitch_2
        0x5353cdae -> :sswitch_1
        0x5353cee4 -> :sswitch_0
    .end sparse-switch

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lzu6;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lqt6;->b:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lh51;->d:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Low0;->h(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lqt6;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    mul-int/lit8 p0, p0, 0x2

    .line 15
    .line 16
    add-int/lit8 p0, p0, 0x2

    .line 17
    .line 18
    return p0
.end method
