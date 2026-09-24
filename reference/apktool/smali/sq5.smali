.class public final Lsq5;
.super Lpr1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(Le23;)V
    .locals 1

    .line 1
    const-string v0, "(\\S+)\\s+(?:(\\d+)\\s+)?(?:(\\S+)\\s+(\\S+)\\s+)?(\\*STMF|\\*DIR|\\*FILE|\\*MEM)\\s+((\\S+\\s*)+)?"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lpr1;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lpr1;->a(Le23;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lg23;
    .locals 8

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
    if-eqz p1, :cond_c

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lpr1;->g(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-virtual {p0, v1}, Lpr1;->g(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x3

    .line 24
    invoke-virtual {p0, v2}, Lpr1;->g(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3}, Lsq5;->i(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x4

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v4}, Lpr1;->g(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3}, Lsq5;->i(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v3, ""

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2}, Lpr1;->g(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, " "

    .line 62
    .line 63
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v4}, Lpr1;->g(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :goto_1
    const/4 v4, 0x5

    .line 78
    invoke-virtual {p0, v4}, Lpr1;->g(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/4 v5, 0x6

    .line 83
    invoke-virtual {p0, v5}, Lpr1;->g(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    :try_start_0
    iget-object p0, p0, Lpr1;->d:Lp23;

    .line 88
    .line 89
    invoke-virtual {p0, v3}, Lp23;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    iput-object p0, v0, Lg23;->e:Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    :catch_0
    const-string p0, "*STMF"

    .line 96
    .line 97
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    const/16 v6, 0x2f

    .line 102
    .line 103
    const/4 v7, 0x0

    .line 104
    if-eqz p0, :cond_3

    .line 105
    .line 106
    invoke-static {v1}, Lsq5;->i(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_c

    .line 111
    .line 112
    invoke-static {v5}, Lsq5;->i(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_2

    .line 117
    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :cond_2
    move p0, p1

    .line 121
    move v2, v7

    .line 122
    goto :goto_4

    .line 123
    :cond_3
    const-string p0, "*DIR"

    .line 124
    .line 125
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-eqz p0, :cond_5

    .line 130
    .line 131
    invoke-static {v1}, Lsq5;->i(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-nez p0, :cond_c

    .line 136
    .line 137
    invoke-static {v5}, Lsq5;->i(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-eqz p0, :cond_4

    .line 142
    .line 143
    goto/16 :goto_5

    .line 144
    .line 145
    :cond_4
    move p0, p1

    .line 146
    :goto_2
    move v2, p0

    .line 147
    goto :goto_4

    .line 148
    :cond_5
    const-string p0, "*FILE"

    .line 149
    .line 150
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-eqz p0, :cond_7

    .line 155
    .line 156
    if-eqz v5, :cond_c

    .line 157
    .line 158
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 159
    .line 160
    invoke-virtual {v5, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    const-string v2, ".SAVF"

    .line 165
    .line 166
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-nez p0, :cond_6

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_6
    :goto_3
    move p0, v7

    .line 174
    goto :goto_2

    .line 175
    :cond_7
    const-string p0, "*MEM"

    .line 176
    .line 177
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_9

    .line 182
    .line 183
    invoke-static {v5}, Lsq5;->i(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-nez p0, :cond_c

    .line 188
    .line 189
    invoke-static {v1}, Lsq5;->i(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    if-eqz p0, :cond_c

    .line 194
    .line 195
    invoke-static {v3}, Lsq5;->i(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    if-nez p0, :cond_8

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_8
    sget-char p0, Ljava/io/File;->separatorChar:C

    .line 203
    .line 204
    invoke-virtual {v5, v6, p0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    goto :goto_3

    .line 209
    :cond_9
    move p0, p1

    .line 210
    :goto_4
    iput v2, v0, Lg23;->a:I

    .line 211
    .line 212
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 213
    .line 214
    .line 215
    move-result-wide v1

    .line 216
    iput-wide v1, v0, Lg23;->b:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    .line 218
    :catch_1
    const-string v1, "/"

    .line 219
    .line 220
    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_a

    .line 225
    .line 226
    invoke-static {p1, v7, v5}, Lxs1;->g(IILjava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    :cond_a
    if-eqz p0, :cond_b

    .line 231
    .line 232
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    .line 233
    .line 234
    .line 235
    move-result p0

    .line 236
    const/4 v1, -0x1

    .line 237
    if-le p0, v1, :cond_b

    .line 238
    .line 239
    add-int/2addr p0, p1

    .line 240
    invoke-virtual {v5, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    :cond_b
    iput-object v5, v0, Lg23;->d:Ljava/lang/String;

    .line 245
    .line 246
    return-object v0

    .line 247
    :cond_c
    :goto_5
    const/4 p0, 0x0

    .line 248
    return-object p0
.end method

.method public final f()Le23;
    .locals 3

    .line 1
    new-instance p0, Le23;

    .line 2
    .line 3
    const-string v0, "yy/MM/dd HH:mm:ss"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "OS/400"

    .line 7
    .line 8
    invoke-direct {p0, v2, v0, v1}, Le23;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
