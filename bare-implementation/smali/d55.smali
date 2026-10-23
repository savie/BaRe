.class public final Ld55;
.super Lpr1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final b(Ljava/lang/String;)Lg23;
    .locals 14

    .line 1
    new-instance v0, Lg23;

    .line 2
    .line 3
    invoke-direct {v0}, Lg23;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lg23;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lpr1;->h(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_8

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lpr1;->g(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/16 v2, 0x14

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lpr1;->g(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const/16 v4, 0x15

    .line 31
    .line 32
    invoke-virtual {p0, v4}, Lpr1;->g(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v4, " "

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/16 v4, 0x16

    .line 45
    .line 46
    invoke-virtual {p0, v4}, Lpr1;->g(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/16 v4, 0x17

    .line 58
    .line 59
    invoke-virtual {p0, v4}, Lpr1;->g(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const/16 v5, 0x18

    .line 64
    .line 65
    invoke-virtual {p0, v5}, Lpr1;->g(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    :try_start_0
    iget-object v6, p0, Lpr1;->d:Lp23;

    .line 70
    .line 71
    invoke-virtual {v6, v3}, Lp23;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iput-object v3, v0, Lg23;->e:Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    :catch_0
    const/4 v3, 0x0

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/16 v6, 0x2d

    .line 83
    .line 84
    const/4 v7, 0x3

    .line 85
    const/4 v8, 0x2

    .line 86
    if-eq v1, v6, :cond_1

    .line 87
    .line 88
    const/16 v6, 0x6c

    .line 89
    .line 90
    if-eq v1, v6, :cond_0

    .line 91
    .line 92
    packed-switch v1, :pswitch_data_0

    .line 93
    .line 94
    .line 95
    move v6, v3

    .line 96
    move v1, v7

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    :pswitch_0
    move v6, v3

    .line 99
    move v1, v8

    .line 100
    goto :goto_0

    .line 101
    :pswitch_1
    move v1, p1

    .line 102
    move v6, v3

    .line 103
    goto :goto_0

    .line 104
    :pswitch_2
    move v6, p1

    .line 105
    move v1, v3

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    :pswitch_3
    move v1, v3

    .line 108
    move v6, v1

    .line 109
    :goto_0
    iput v1, v0, Lg23;->a:I

    .line 110
    .line 111
    const/4 v9, 0x4

    .line 112
    move v10, v3

    .line 113
    move v11, v9

    .line 114
    :goto_1
    if-ge v10, v7, :cond_3

    .line 115
    .line 116
    invoke-virtual {p0, v11}, Lpr1;->g(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    const-string v13, "-"

    .line 121
    .line 122
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    xor-int/2addr v12, p1

    .line 127
    invoke-virtual {v0, v10, v3, v12}, Lg23;->a(IIZ)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v12, v11, 0x1

    .line 131
    .line 132
    invoke-virtual {p0, v12}, Lpr1;->g(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    xor-int/2addr v12, p1

    .line 141
    invoke-virtual {v0, v10, p1, v12}, Lg23;->a(IIZ)V

    .line 142
    .line 143
    .line 144
    add-int/lit8 v12, v11, 0x2

    .line 145
    .line 146
    invoke-virtual {p0, v12}, Lpr1;->g(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    if-nez v13, :cond_2

    .line 155
    .line 156
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 161
    .line 162
    .line 163
    move-result v12

    .line 164
    if-nez v12, :cond_2

    .line 165
    .line 166
    move v12, p1

    .line 167
    goto :goto_2

    .line 168
    :cond_2
    move v12, v3

    .line 169
    :goto_2
    invoke-virtual {v0, v10, v8, v12}, Lg23;->a(IIZ)V

    .line 170
    .line 171
    .line 172
    add-int/lit8 v10, v10, 0x1

    .line 173
    .line 174
    add-int/lit8 v11, v11, 0x4

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_3
    if-nez v6, :cond_4

    .line 178
    .line 179
    :try_start_1
    const-string p0, "0"

    .line 180
    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .line 183
    .line 184
    :catch_1
    :cond_4
    :try_start_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 185
    .line 186
    .line 187
    move-result-wide p0

    .line 188
    iput-wide p0, v0, Lg23;->b:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 189
    .line 190
    :catch_2
    if-nez v5, :cond_5

    .line 191
    .line 192
    iput-object v4, v0, Lg23;->d:Ljava/lang/String;

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_5
    invoke-static {v4, v5}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    if-ne v1, v8, :cond_7

    .line 200
    .line 201
    const-string p1, " -> "

    .line 202
    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    const/4 v1, -0x1

    .line 208
    if-ne p1, v1, :cond_6

    .line 209
    .line 210
    iput-object p0, v0, Lg23;->d:Ljava/lang/String;

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_6
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    iput-object v1, v0, Lg23;->d:Ljava/lang/String;

    .line 218
    .line 219
    add-int/2addr p1, v9

    .line 220
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_7
    iput-object p0, v0, Lg23;->d:Ljava/lang/String;

    .line 225
    .line 226
    :goto_3
    return-object v0

    .line 227
    :cond_8
    const/4 p0, 0x0

    .line 228
    return-object p0

    .line 229
    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final f()Le23;
    .locals 3

    .line 1
    new-instance p0, Le23;

    .line 2
    .line 3
    const-string v0, "MMM d yyyy"

    .line 4
    .line 5
    const-string v1, "MMM d HH:mm"

    .line 6
    .line 7
    const-string v2, "UNIX"

    .line 8
    .line 9
    invoke-direct {p0, v2, v0, v1}, Le23;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
