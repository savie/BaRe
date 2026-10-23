.class public final Lol7;
.super Lqi4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Lbn4;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget p0, p1, Lbn4;->k:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lbn4;->h()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    :cond_0
    const/16 v0, 0x10

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-ne p0, v0, :cond_1

    .line 13
    .line 14
    iput v1, p1, Lbn4;->k:I

    .line 15
    .line 16
    iget-object p0, p1, Lbn4;->d:[I

    .line 17
    .line 18
    iget v0, p1, Lbn4;->a:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    aget v1, p0, v0

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    aput v1, p0, v0

    .line 27
    .line 28
    iget-wide p0, p1, Lbn4;->n:J

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_1
    const/16 v0, 0x11

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const-string v3, "Expected a long but was "

    .line 36
    .line 37
    const/16 v4, 0xb

    .line 38
    .line 39
    if-ne p0, v0, :cond_2

    .line 40
    .line 41
    iget-object p0, p1, Lbn4;->f:Lnw0;

    .line 42
    .line 43
    iget v0, p1, Lbn4;->p:I

    .line 44
    .line 45
    int-to-long v5, v0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 50
    .line 51
    invoke-virtual {p0, v5, v6, v0}, Lnw0;->u(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iput-object p0, p1, Lbn4;->q:Ljava/lang/String;

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v0, 0x9

    .line 59
    .line 60
    if-eq p0, v0, :cond_5

    .line 61
    .line 62
    const/16 v5, 0x8

    .line 63
    .line 64
    if-ne p0, v5, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    if-ne p0, v4, :cond_4

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    invoke-virtual {p1}, Lbn4;->W()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-static {p0}, Leq3;->s(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p1}, Lbn4;->r()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p0, p1, v3}, Lq;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object v2

    .line 86
    :cond_5
    :goto_0
    if-ne p0, v0, :cond_6

    .line 87
    .line 88
    sget-object p0, Lbn4;->t:Lhy0;

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Lbn4;->O(Lhy0;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    goto :goto_1

    .line 95
    :cond_6
    sget-object p0, Lbn4;->r:Lhy0;

    .line 96
    .line 97
    invoke-virtual {p1, p0}, Lbn4;->O(Lhy0;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    :goto_1
    iput-object p0, p1, Lbn4;->q:Ljava/lang/String;

    .line 102
    .line 103
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v5

    .line 107
    iput v1, p1, Lbn4;->k:I

    .line 108
    .line 109
    iget-object p0, p1, Lbn4;->d:[I

    .line 110
    .line 111
    iget v0, p1, Lbn4;->a:I

    .line 112
    .line 113
    add-int/lit8 v0, v0, -0x1

    .line 114
    .line 115
    aget v7, p0, v0

    .line 116
    .line 117
    add-int/lit8 v7, v7, 0x1

    .line 118
    .line 119
    aput v7, p0, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    move-wide p0, v5

    .line 122
    goto :goto_3

    .line 123
    :catch_0
    :goto_2
    iput v4, p1, Lbn4;->k:I

    .line 124
    .line 125
    :try_start_1
    new-instance p0, Ljava/math/BigDecimal;

    .line 126
    .line 127
    iget-object v0, p1, Lbn4;->q:Ljava/lang/String;

    .line 128
    .line 129
    invoke-direct {p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 133
    .line 134
    .line 135
    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    iput-object v2, p1, Lbn4;->q:Ljava/lang/String;

    .line 137
    .line 138
    iput v1, p1, Lbn4;->k:I

    .line 139
    .line 140
    iget-object p0, p1, Lbn4;->d:[I

    .line 141
    .line 142
    iget p1, p1, Lbn4;->a:I

    .line 143
    .line 144
    add-int/lit8 p1, p1, -0x1

    .line 145
    .line 146
    aget v0, p0, p1

    .line 147
    .line 148
    add-int/lit8 v0, v0, 0x1

    .line 149
    .line 150
    aput v0, p0, p1

    .line 151
    .line 152
    move-wide p0, v3

    .line 153
    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :catch_1
    iget-object p0, p1, Lbn4;->q:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {p1}, Lbn4;->r()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {p0, p1, v3}, Lq;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-object v2
.end method

.method public final e(Ldn4;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p1, v0, v1}, Ldn4;->v(J)Ldn4;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "JsonAdapter(Long)"

    .line 2
    .line 3
    return-object p0
.end method
