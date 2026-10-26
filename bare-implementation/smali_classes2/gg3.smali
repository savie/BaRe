.class public final Lgg3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lgg3;

.field public static volatile b:Lxf3;

.field public static final c:Lex6;

.field public static volatile d:Lwf3;

.field public static final e:Lex6;

.field public static f:J

.field public static g:J

.field public static h:Lbl7;

.field public static i:Z

.field public static final j:Lzc2;

.field public static final k:Lcg3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lgg3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgg3;->a:Lgg3;

    .line 7
    .line 8
    sget-object v0, Lxf3;->UNKNOWN:Lxf3;

    .line 9
    .line 10
    sput-object v0, Lgg3;->b:Lxf3;

    .line 11
    .line 12
    new-instance v0, Lex6;

    .line 13
    .line 14
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lgg3;->c:Lex6;

    .line 18
    .line 19
    sget-object v0, Lwf3;->IDLE:Lwf3;

    .line 20
    .line 21
    sput-object v0, Lgg3;->d:Lwf3;

    .line 22
    .line 23
    new-instance v1, Lex6;

    .line 24
    .line 25
    invoke-direct {v1}, Lzy4;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Lgg3;->e:Lex6;

    .line 32
    .line 33
    invoke-static {}, Lig3;->b()Lig3;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lig3;->a()V

    .line 38
    .line 39
    .line 40
    const-string v1, ".info/connected"

    .line 41
    .line 42
    invoke-static {v1}, Lui8;->b(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Lgy5;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Lgy5;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lzc2;

    .line 51
    .line 52
    iget-object v0, v0, Lig3;->c:Lwj6;

    .line 53
    .line 54
    invoke-direct {v1, v0, v2}, Lzc2;-><init>(Lwj6;Lgy5;)V

    .line 55
    .line 56
    .line 57
    sput-object v1, Lgg3;->j:Lzc2;

    .line 58
    .line 59
    new-instance v0, Lcg3;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lgg3;->k:Lcg3;

    .line 65
    .line 66
    return-void
.end method

.method public static a(Lil0;Lyf3;)Landroid/text/SpannedString;
    .locals 10

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f13024f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "\n\n"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 19
    .line 20
    .line 21
    const v2, 0x7f13024c

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 32
    .line 33
    .line 34
    const v2, 0x7f13024b

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v2}, Lgg3;->c(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const v2, 0x7f130251

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v3, p1, Lyf3;->a:Lzf3;

    .line 58
    .line 59
    iget-object v4, v3, Lzf3;->a:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v4, :cond_6

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const v6, -0x2023fbf7

    .line 68
    .line 69
    .line 70
    if-eq v5, v6, :cond_4

    .line 71
    .line 72
    const v6, -0x11dea3cd

    .line 73
    .line 74
    .line 75
    if-eq v5, v6, :cond_2

    .line 76
    .line 77
    const v6, 0x1ad6f

    .line 78
    .line 79
    .line 80
    if-eq v5, v6, :cond_0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const-string v5, "off"

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const-string v4, "Off"

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const-string v5, "hostname"

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-nez v5, :cond_3

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    const-string v4, "Enabled"

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    const-string v5, "opportunistic"

    .line 108
    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_5

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    const-string v4, "Automatic"

    .line 117
    .line 118
    :cond_6
    :goto_0
    iget-object v3, v3, Lzf3;->b:Ljava/lang/String;

    .line 119
    .line 120
    const v5, 0x7f13024d

    .line 121
    .line 122
    .line 123
    if-eqz v3, :cond_9

    .line 124
    .line 125
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_7

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_7
    if-eqz v4, :cond_9

    .line 133
    .line 134
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_8

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_8
    const-string v6, " ("

    .line 142
    .line 143
    const-string v7, ")"

    .line 144
    .line 145
    invoke-static {v3, v6, v4, v7}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    goto :goto_3

    .line 150
    :cond_9
    :goto_1
    if-eqz v3, :cond_b

    .line 151
    .line 152
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-eqz v6, :cond_a

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_a
    move-object v4, v3

    .line 160
    goto :goto_3

    .line 161
    :cond_b
    :goto_2
    if-eqz v4, :cond_c

    .line 162
    .line 163
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_d

    .line 168
    .line 169
    :cond_c
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    :cond_d
    :goto_3
    const/4 v3, 0x0

    .line 177
    invoke-static {v0, p0, v2, v4, v3}, Lgg3;->b(Landroid/text/SpannableStringBuilder;Lil0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const v2, 0x7f13025b

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    iget-boolean v4, p1, Lyf3;->b:Z

    .line 191
    .line 192
    if-eqz v4, :cond_e

    .line 193
    .line 194
    const v5, 0x7f13024e

    .line 195
    .line 196
    .line 197
    :cond_e
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-static {v0, p0, v2, v4, v3}, Lgg3;->b(Landroid/text/SpannableStringBuilder;Lil0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const v2, 0x7f130250

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    iget-object v4, p1, Lyf3;->c:Ljava/util/List;

    .line 218
    .line 219
    const/4 v8, 0x0

    .line 220
    const/16 v9, 0x3f

    .line 221
    .line 222
    const/4 v5, 0x0

    .line 223
    const/4 v6, 0x0

    .line 224
    const/4 v7, 0x0

    .line 225
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-nez v5, :cond_f

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_f
    move-object v4, v3

    .line 237
    :goto_4
    if-nez v4, :cond_10

    .line 238
    .line 239
    const-string v4, "-"

    .line 240
    .line 241
    :cond_10
    invoke-static {v0, p0, v2, v4, v3}, Lgg3;->b(Landroid/text/SpannableStringBuilder;Lil0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 245
    .line 246
    .line 247
    const v2, 0x7f130256

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-static {v0, v2}, Lgg3;->c(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p1, Lyf3;->d:Lag3;

    .line 261
    .line 262
    iget-object v2, p1, Lag3;->a:Ljava/lang/String;

    .line 263
    .line 264
    iget-object p1, p1, Lag3;->b:Ljava/lang/String;

    .line 265
    .line 266
    const-string v3, ""

    .line 267
    .line 268
    invoke-static {v0, p0, v3, v2, p1}, Lgg3;->b(Landroid/text/SpannableStringBuilder;Lil0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 272
    .line 273
    .line 274
    const p1, 0x7f13025a

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    invoke-static {v0, p1}, Lgg3;->c(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    const-string p1, "\n- "

    .line 288
    .line 289
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 290
    .line 291
    .line 292
    const v1, 0x7f13025c

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 303
    .line 304
    .line 305
    const v1, 0x7f13025d

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 316
    .line 317
    .line 318
    const p1, 0x7f13025e

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 326
    .line 327
    .line 328
    new-instance p0, Landroid/text/SpannedString;

    .line 329
    .line 330
    invoke-direct {p0, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    return-object p0
.end method

.method public static final b(Landroid/text/SpannableStringBuilder;Lil0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x11

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v3, ": "

    .line 25
    .line 26
    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-virtual {p0, v0, v2, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 38
    .line 39
    .line 40
    :cond_0
    if-eqz p4, :cond_3

    .line 41
    .line 42
    invoke-static {p4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p2, 0x6

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-static {p3, p4, v0, v0, p2}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    const/4 v2, -0x1

    .line 56
    if-ne p2, v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    invoke-virtual {p3, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 67
    .line 68
    .line 69
    new-instance v0, Lyl1;

    .line 70
    .line 71
    invoke-static {p1}, Lsz8;->r(Landroid/content/Context;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-direct {v0, p1}, Lyl1;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {p0, v0, p1, v2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    add-int/2addr p1, p2

    .line 97
    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    :goto_0
    invoke-virtual {p0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public static final c(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 2
    .line 3
    const v1, 0x3f99999a    # 1.2f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-instance v2, Landroid/text/style/StyleSpan;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/16 v4, 0x11

    .line 31
    .line 32
    invoke-virtual {p0, v2, v3, p1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0, v0, v1, p1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static e(Ljava/util/List;ILjava/util/List;)Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--uid-owner\\s+"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, "(\\D|$)"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const-string v0, "(^|\\s)-d\\s+\\S+"

    .line 28
    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_7

    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    move-object v3, v2

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const-string v5, "-j reject"

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-static {v4, v5, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    const/4 v7, 0x1

    .line 75
    if-nez v5, :cond_2

    .line 76
    .line 77
    const-string v5, "-j drop"

    .line 78
    .line 79
    invoke-static {v4, v5, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move v5, v6

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    :goto_1
    move v5, v7

    .line 89
    :goto_2
    invoke-virtual {p1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-eqz v9, :cond_3

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-eqz v10, :cond_5

    .line 121
    .line 122
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    check-cast v10, Ljava/lang/String;

    .line 127
    .line 128
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 129
    .line 130
    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {v4, v10, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    if-eqz v10, :cond_4

    .line 142
    .line 143
    move v6, v7

    .line 144
    :cond_5
    :goto_3
    if-eqz v5, :cond_0

    .line 145
    .line 146
    if-eqz v8, :cond_0

    .line 147
    .line 148
    if-eqz v3, :cond_6

    .line 149
    .line 150
    if-eqz v6, :cond_0

    .line 151
    .line 152
    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_7
    return-object v1
.end method

.method public static f()Z
    .locals 2

    .line 1
    sget-object v0, Ld45;->b:Ld45;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    sget-object v1, Ld45;->b:Ld45;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    return v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    return v0
.end method

.method public static g(Lil0;Ljava/lang/Integer;Lbt3;Ljava/lang/Integer;Lbt3;)Lwa;
    .locals 11

    .line 1
    const-string v0, "connectivity"

    .line 2
    .line 3
    invoke-static {}, Lgg3;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 12
    .line 13
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :try_start_0
    const-string v3, "private_dns_mode"

    .line 22
    .line 23
    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v3

    .line 29
    new-instance v4, Lbn6;

    .line 30
    .line 31
    invoke-direct {v4, v3}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    move-object v3, v4

    .line 35
    :goto_0
    nop

    .line 36
    instance-of v4, v3, Lbn6;

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    move-object v3, v2

    .line 41
    :cond_1
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move-object v3, v2

    .line 53
    :goto_1
    :try_start_1
    const-string v4, "private_dns_specifier"

    .line 54
    .line 55
    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    goto :goto_2

    .line 60
    :catchall_1
    move-exception v1

    .line 61
    new-instance v4, Lbn6;

    .line 62
    .line 63
    invoke-direct {v4, v1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    move-object v1, v4

    .line 67
    :goto_2
    nop

    .line 68
    instance-of v4, v1, Lbn6;

    .line 69
    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    move-object v1, v2

    .line 73
    :cond_3
    check-cast v1, Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_4

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move-object v1, v2

    .line 85
    :goto_3
    new-instance v4, Lzf3;

    .line 86
    .line 87
    invoke-direct {v4, v3, v1}, Lzf3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Lyf3;

    .line 91
    .line 92
    const/4 v3, 0x1

    .line 93
    const/4 v5, 0x0

    .line 94
    :try_start_2
    sget-object v6, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 95
    .line 96
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    instance-of v7, v6, Landroid/net/ConnectivityManager;

    .line 105
    .line 106
    if-eqz v7, :cond_5

    .line 107
    .line 108
    check-cast v6, Landroid/net/ConnectivityManager;

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :catchall_2
    move-exception v6

    .line 112
    goto :goto_7

    .line 113
    :cond_5
    move-object v6, v2

    .line 114
    :goto_4
    if-eqz v6, :cond_6

    .line 115
    .line 116
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-virtual {v6, v7}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    goto :goto_5

    .line 125
    :cond_6
    move-object v6, v2

    .line 126
    :goto_5
    if-eqz v6, :cond_7

    .line 127
    .line 128
    const/4 v7, 0x4

    .line 129
    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-ne v6, v3, :cond_7

    .line 134
    .line 135
    move v6, v3

    .line 136
    goto :goto_6

    .line 137
    :cond_7
    move v6, v5

    .line 138
    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 142
    goto :goto_8

    .line 143
    :goto_7
    new-instance v7, Lbn6;

    .line 144
    .line 145
    invoke-direct {v7, v6}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    move-object v6, v7

    .line 149
    :goto_8
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 150
    .line 151
    instance-of v8, v6, Lbn6;

    .line 152
    .line 153
    if-eqz v8, :cond_8

    .line 154
    .line 155
    move-object v6, v7

    .line 156
    :cond_8
    check-cast v6, Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    sget-object v7, Lov2;->a:Lov2;

    .line 163
    .line 164
    :try_start_3
    sget-object v8, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 165
    .line 166
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    instance-of v8, v0, Landroid/net/ConnectivityManager;

    .line 175
    .line 176
    if-eqz v8, :cond_9

    .line 177
    .line 178
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 179
    .line 180
    goto :goto_9

    .line 181
    :catchall_3
    move-exception v0

    .line 182
    goto :goto_d

    .line 183
    :cond_9
    move-object v0, v2

    .line 184
    :goto_9
    if-eqz v0, :cond_b

    .line 185
    .line 186
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    if-nez v8, :cond_a

    .line 191
    .line 192
    goto :goto_a

    .line 193
    :cond_a
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-nez v0, :cond_c

    .line 198
    .line 199
    :cond_b
    :goto_a
    move-object v8, v7

    .line 200
    goto :goto_e

    .line 201
    :cond_c
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    new-instance v8, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    :cond_d
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    if-eqz v9, :cond_f

    .line 222
    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    check-cast v9, Ljava/net/InetAddress;

    .line 228
    .line 229
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    if-eqz v9, :cond_e

    .line 234
    .line 235
    invoke-static {v9}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    if-nez v10, :cond_e

    .line 240
    .line 241
    goto :goto_c

    .line 242
    :cond_e
    move-object v9, v2

    .line 243
    :goto_c
    if-eqz v9, :cond_d

    .line 244
    .line 245
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 246
    .line 247
    .line 248
    goto :goto_b

    .line 249
    :goto_d
    new-instance v8, Lbn6;

    .line 250
    .line 251
    invoke-direct {v8, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    :cond_f
    :goto_e
    instance-of v0, v8, Lbn6;

    .line 255
    .line 256
    if-eqz v0, :cond_10

    .line 257
    .line 258
    goto :goto_f

    .line 259
    :cond_10
    move-object v7, v8

    .line 260
    :goto_f
    check-cast v7, Ljava/util/List;

    .line 261
    .line 262
    new-instance v0, Lag3;

    .line 263
    .line 264
    const v8, 0x7f130255

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    invoke-direct {v0, v8}, Lag3;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-direct {v1, v4, v6, v7, v0}, Lyf3;-><init>(Lzf3;ZLjava/util/List;Lag3;)V

    .line 278
    .line 279
    .line 280
    const/high16 v0, 0x41580000    # 13.5f

    .line 281
    .line 282
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    new-instance v4, Lhv1;

    .line 287
    .line 288
    const v6, 0x7f140160

    .line 289
    .line 290
    .line 291
    invoke-direct {v4, p0, v6}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 292
    .line 293
    .line 294
    new-instance v7, Ls35;

    .line 295
    .line 296
    invoke-direct {v7, p0, v6, v4, v0}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 297
    .line 298
    .line 299
    const v0, 0x7f130259

    .line 300
    .line 301
    .line 302
    invoke-virtual {v7, v0}, Lv75;->v(I)V

    .line 303
    .line 304
    .line 305
    invoke-static {p0, v1}, Lgg3;->a(Lil0;Lyf3;)Landroid/text/SpannedString;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v4, v7, Lva;->b:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v4, Lra;

    .line 312
    .line 313
    iput-object v0, v4, Lra;->f:Ljava/lang/CharSequence;

    .line 314
    .line 315
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    new-instance v0, Lwi2;

    .line 320
    .line 321
    invoke-direct {v0, p2, v3}, Lwi2;-><init>(Ljava/lang/Object;I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v7, p1, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 325
    .line 326
    .line 327
    if-eqz p3, :cond_11

    .line 328
    .line 329
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    new-instance p2, Lvf3;

    .line 334
    .line 335
    invoke-direct {p2, p4, v5}, Lvf3;-><init>(Ljava/lang/Object;I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v7, p1, p2}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 339
    .line 340
    .line 341
    :cond_11
    invoke-virtual {v7}, Ls35;->m()Lwa;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    sget-object p2, Lzn4;->a:Lzn4;

    .line 346
    .line 347
    new-instance p2, Lj41;

    .line 348
    .line 349
    invoke-direct {p2, p0, p1, v1, v2}, Lj41;-><init>(Lil0;Lwa;Lyf3;Ljv1;)V

    .line 350
    .line 351
    .line 352
    invoke-static {v2, p2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 353
    .line 354
    .line 355
    return-object p1
.end method

.method public static synthetic h(Lsa1;Ljava/lang/Integer;Lah;Lej;I)Lwa;
    .locals 2

    .line 1
    and-int/lit8 v0, p4, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p2, v1

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x10

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p3, v1

    .line 12
    :cond_1
    invoke-static {p0, p1, p2, v1, p3}, Lgg3;->g(Lil0;Ljava/lang/Integer;Lbt3;Ljava/lang/Integer;Lbt3;)Lwa;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    sget-object v0, Lwf3;->IDLE:Lwf3;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgg3;->i(Lwf3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized i(Lwf3;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lgg3;->d:Lwf3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    sget-object v0, Lwf3;->IDLE:Lwf3;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    sput-wide v0, Lgg3;->f:J

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    sput-object p1, Lgg3;->d:Lwf3;

    .line 20
    .line 21
    sget-object v0, Lgg3;->e:Lex6;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lex6;->k(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    throw p1
.end method

.method public final declared-synchronized j(Lxf3;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lxf3;->CONNECTED:Lxf3;

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    sget-wide v0, Lgg3;->g:J

    .line 7
    .line 8
    const-wide/16 v2, 0x1

    .line 9
    .line 10
    add-long/2addr v0, v2

    .line 11
    sput-wide v0, Lgg3;->g:J

    .line 12
    .line 13
    sget-object v0, Lgg3;->h:Lbl7;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lci4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    move-object p1, v0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :goto_0
    sput-object v1, Lgg3;->h:Lbl7;

    .line 26
    .line 27
    invoke-virtual {p0}, Lgg3;->d()V

    .line 28
    .line 29
    .line 30
    :cond_1
    sget-object v0, Lgg3;->b:Lxf3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-ne v0, p1, :cond_2

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :cond_2
    :try_start_1
    sput-object p1, Lgg3;->b:Lxf3;

    .line 37
    .line 38
    sget-object v0, Lgg3;->c:Lex6;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lbg3;->a:[I

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    aget p1, v0, p1

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    if-eq p1, v0, :cond_6

    .line 53
    .line 54
    const/4 v0, 0x2

    .line 55
    if-eq p1, v0, :cond_5

    .line 56
    .line 57
    const/4 v0, 0x3

    .line 58
    if-eq p1, v0, :cond_4

    .line 59
    .line 60
    const/4 v0, 0x4

    .line 61
    if-ne p1, v0, :cond_3

    .line 62
    .line 63
    sget-object p1, Lvr6;->INSTANCE:Lvr6;

    .line 64
    .line 65
    const-string v0, "FCW"

    .line 66
    .line 67
    const-string v1, "Firebase not connected"

    .line 68
    .line 69
    sget-object v2, Lvr6$a;->YELLOW:Lvr6$a;

    .line 70
    .line 71
    invoke-virtual {p1, v0, v1, v2}, Lvr6;->e(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    new-instance p1, Lmn5;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_4
    sget-object p1, Lvr6;->INSTANCE:Lvr6;

    .line 82
    .line 83
    const-string v0, "FCW"

    .line 84
    .line 85
    const-string v1, "Firebase successfully connected"

    .line 86
    .line 87
    sget-object v2, Lvr6$a;->GREEN:Lvr6$a;

    .line 88
    .line 89
    invoke-virtual {p1, v0, v1, v2}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 94
    .line 95
    const-string v1, "FCW"

    .line 96
    .line 97
    const-string v2, "Firebase connecting"

    .line 98
    .line 99
    const/4 v4, 0x4

    .line 100
    const/4 v5, 0x0

    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 107
    .line 108
    const-string v1, "FCW"

    .line 109
    .line 110
    const-string v2, "Firebase connection state unknown"

    .line 111
    .line 112
    const/4 v4, 0x4

    .line 113
    const/4 v5, 0x0

    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .line 117
    .line 118
    :goto_1
    monitor-exit p0

    .line 119
    return-void

    .line 120
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    throw p1
.end method

.method public final k(JLkv1;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    instance-of v2, v0, Lfg3;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lfg3;

    .line 11
    .line 12
    iget v3, v2, Lfg3;->e:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lfg3;->e:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lfg3;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lfg3;-><init>(Lgg3;Lkv1;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lfg3;->c:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lyx1;->a:Lyx1;

    .line 32
    .line 33
    iget v4, v2, Lfg3;->e:I

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    if-ne v4, v5, :cond_1

    .line 39
    .line 40
    iget-wide v6, v2, Lfg3;->b:J

    .line 41
    .line 42
    iget-wide v8, v2, Lfg3;->a:J

    .line 43
    .line 44
    invoke-static {v0}, Llg7;->H(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move-wide/from16 v16, v8

    .line 48
    .line 49
    move-wide v8, v6

    .line 50
    move-wide/from16 v6, v16

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    return-object v0

    .line 60
    :cond_2
    invoke-static {v0}, Llg7;->H(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lgg3;->f()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v1}, Lgg3;->d()V

    .line 70
    .line 71
    .line 72
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_3
    sget-object v0, Lgg3;->b:Lxf3;

    .line 76
    .line 77
    sget-object v4, Lxf3;->CONNECTED:Lxf3;

    .line 78
    .line 79
    if-ne v0, v4, :cond_4

    .line 80
    .line 81
    invoke-virtual {v1}, Lgg3;->d()V

    .line 82
    .line 83
    .line 84
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_4
    sget-object v0, Lxf3;->CONNECTING:Lxf3;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Lgg3;->j(Lxf3;)V

    .line 90
    .line 91
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 94
    .line 95
    .line 96
    move-result-wide v6

    .line 97
    sget-object v0, Lgg3;->d:Lwf3;

    .line 98
    .line 99
    sget-object v4, Lwf3;->WAITING:Lwf3;

    .line 100
    .line 101
    if-ne v0, v4, :cond_5

    .line 102
    .line 103
    sget-wide v8, Lgg3;->f:J

    .line 104
    .line 105
    cmp-long v0, v8, v6

    .line 106
    .line 107
    if-gtz v0, :cond_6

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    goto/16 :goto_7

    .line 112
    .line 113
    :cond_5
    :goto_1
    add-long v6, v6, p1

    .line 114
    .line 115
    sput-wide v6, Lgg3;->f:J

    .line 116
    .line 117
    :cond_6
    invoke-virtual {v1, v4}, Lgg3;->i(Lwf3;)V

    .line 118
    .line 119
    .line 120
    sget-wide v6, Lgg3;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    monitor-exit p0

    .line 123
    move-wide v8, v6

    .line 124
    move-wide/from16 v6, p1

    .line 125
    .line 126
    :cond_7
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 127
    .line 128
    .line 129
    move-result-wide v10

    .line 130
    cmp-long v0, v10, v8

    .line 131
    .line 132
    if-gez v0, :cond_b

    .line 133
    .line 134
    sget-object v0, Lgg3;->b:Lxf3;

    .line 135
    .line 136
    sget-object v4, Lxf3;->CONNECTED:Lxf3;

    .line 137
    .line 138
    if-ne v0, v4, :cond_8

    .line 139
    .line 140
    invoke-virtual {v1}, Lgg3;->d()V

    .line 141
    .line 142
    .line 143
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_8
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 147
    .line 148
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Lai8;->i(Landroid/content/Context;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_9

    .line 157
    .line 158
    invoke-virtual {v1}, Lgg3;->d()V

    .line 159
    .line 160
    .line 161
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 162
    .line 163
    return-object v0

    .line 164
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 165
    .line 166
    .line 167
    move-result-wide v10

    .line 168
    sub-long v10, v8, v10

    .line 169
    .line 170
    const-wide/16 v12, 0x0

    .line 171
    .line 172
    cmp-long v0, v10, v12

    .line 173
    .line 174
    if-gtz v0, :cond_a

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_a
    const-wide/16 v14, 0x1388

    .line 178
    .line 179
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 180
    .line 181
    .line 182
    move-result-wide v10

    .line 183
    :try_start_1
    invoke-static {}, Lre3;->b()Lzc2;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const-string v14, "health"

    .line 188
    .line 189
    invoke-virtual {v0, v14}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-string v14, "enabled"

    .line 194
    .line 195
    invoke-virtual {v0, v14}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    iget-object v14, v0, Lzc2;->a:Lwj6;

    .line 200
    .line 201
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    new-instance v15, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 205
    .line 206
    invoke-direct {v15}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    .line 208
    .line 209
    move-wide/from16 p1, v12

    .line 210
    .line 211
    :try_start_2
    new-instance v12, Luj6;

    .line 212
    .line 213
    invoke-direct {v12, v14, v0, v15, v14}, Luj6;-><init>(Lwj6;Lzc2;Lcom/google/android/gms/tasks/TaskCompletionSource;Lwj6;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v14, v12}, Lwj6;->n(Ljava/lang/Runnable;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v15}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 224
    .line 225
    invoke-static {v0, v10, v11, v12}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v4}, Lgg3;->j(Lxf3;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Lgg3;->d()V

    .line 232
    .line 233
    .line 234
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 235
    .line 236
    return-object v0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    goto :goto_3

    .line 239
    :catch_1
    move-exception v0

    .line 240
    move-wide/from16 p1, v12

    .line 241
    .line 242
    :goto_3
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 243
    .line 244
    const-string v11, "FCW"

    .line 245
    .line 246
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    const-string v4, "Backend health probe failed: "

    .line 251
    .line 252
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    const/4 v14, 0x4

    .line 257
    const/4 v15, 0x0

    .line 258
    const/4 v13, 0x0

    .line 259
    invoke-static/range {v10 .. v15}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 263
    .line 264
    .line 265
    move-result-wide v10

    .line 266
    sub-long v10, v8, v10

    .line 267
    .line 268
    const-wide/16 v12, 0x3e8

    .line 269
    .line 270
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 271
    .line 272
    .line 273
    move-result-wide v10

    .line 274
    cmp-long v0, v10, p1

    .line 275
    .line 276
    if-lez v0, :cond_7

    .line 277
    .line 278
    iput-wide v6, v2, Lfg3;->a:J

    .line 279
    .line 280
    iput-wide v8, v2, Lfg3;->b:J

    .line 281
    .line 282
    iput v5, v2, Lfg3;->e:I

    .line 283
    .line 284
    invoke-static {v10, v11, v2}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    if-ne v0, v3, :cond_7

    .line 289
    .line 290
    return-object v3

    .line 291
    :cond_b
    :goto_4
    sget-object v0, Lgg3;->b:Lxf3;

    .line 292
    .line 293
    sget-object v2, Lxf3;->CONNECTED:Lxf3;

    .line 294
    .line 295
    if-ne v0, v2, :cond_c

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_c
    const/4 v5, 0x0

    .line 299
    :goto_5
    if-nez v5, :cond_d

    .line 300
    .line 301
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 302
    .line 303
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v0}, Lai8;->i(Landroid/content/Context;)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_d

    .line 312
    .line 313
    sget-object v0, Lxf3;->DISCONNECTED:Lxf3;

    .line 314
    .line 315
    invoke-virtual {v1, v0}, Lgg3;->j(Lxf3;)V

    .line 316
    .line 317
    .line 318
    sget-object v0, Lwf3;->TIMED_OUT:Lwf3;

    .line 319
    .line 320
    invoke-virtual {v1, v0}, Lgg3;->i(Lwf3;)V

    .line 321
    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_d
    invoke-virtual {v1}, Lgg3;->d()V

    .line 325
    .line 326
    .line 327
    :goto_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    return-object v0

    .line 332
    :goto_7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    throw v0
.end method
