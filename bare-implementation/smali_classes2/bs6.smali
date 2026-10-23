.class public final Lbs6;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lp53;


# instance fields
.field public final l:Lk28;

.field public final m:Z

.field public final n:I


# direct methods
.method public constructor <init>(Lk28;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lbs6;->l:Lk28;

    .line 6
    .line 7
    iput-boolean p2, p0, Lbs6;->m:Z

    .line 8
    .line 9
    invoke-static {p1}, Lsz8;->z(Landroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lbs6;->n:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lgm7;->m(I)Ljl0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljv6;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljv6;->getTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    invoke-static {p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final h(Lfh6;I)V
    .locals 10

    .line 1
    check-cast p1, Las6;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Ljv6;

    .line 9
    .line 10
    iget-object p0, p1, Las6;->x:Lbs6;

    .line 11
    .line 12
    iget v6, p0, Lbs6;->n:I

    .line 13
    .line 14
    iget-object v7, p0, Lbs6;->l:Lk28;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v1, p1, Las6;->u:Landroid/widget/TextView;

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    invoke-virtual {v0, v8}, Ljv6;->getTimeString(Z)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object v9, p1, Las6;->v:Landroid/widget/TextView;

    .line 30
    .line 31
    const/4 v4, 0x6

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static/range {v0 .. v5}, Ljv6;->toString$default(Ljv6;ZZZILjava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/16 v3, 0x4000

    .line 48
    .line 49
    const/4 v4, 0x1

    .line 50
    if-gt v2, v3, :cond_0

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/16 v5, 0x1fed

    .line 64
    .line 65
    if-le v5, v3, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move v3, v5

    .line 69
    :goto_0
    if-gt v4, v3, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-ge v3, v5, :cond_2

    .line 76
    .line 77
    add-int/lit8 v5, v3, -0x1

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_2

    .line 98
    .line 99
    add-int/lit8 v3, v3, -0x1

    .line 100
    .line 101
    :cond_2
    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v3, "\n\u2026 [SwiftLogger preview truncated] \u2026\n"

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    add-int/lit16 v3, v3, -0x1fee

    .line 118
    .line 119
    if-gez v3, :cond_3

    .line 120
    .line 121
    move v3, v8

    .line 122
    :cond_3
    if-gt v4, v3, :cond_4

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-ge v3, v5, :cond_4

    .line 129
    .line 130
    add-int/lit8 v5, v3, -0x1

    .line 131
    .line 132
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_4

    .line 141
    .line 142
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_4

    .line 151
    .line 152
    add-int/lit8 v3, v3, 0x1

    .line 153
    .line 154
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    :goto_1
    invoke-virtual {v0}, Ljv6;->getLogColor()Lvr6$a;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    if-eqz v2, :cond_8

    .line 170
    .line 171
    sget-object v3, Lzr6;->a:[I

    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    aget v2, v3, v2

    .line 178
    .line 179
    if-eq v2, v4, :cond_9

    .line 180
    .line 181
    const/4 v3, 0x2

    .line 182
    if-eq v2, v3, :cond_7

    .line 183
    .line 184
    const/4 v3, 0x3

    .line 185
    if-eq v2, v3, :cond_6

    .line 186
    .line 187
    const/4 v3, 0x4

    .line 188
    if-ne v2, v3, :cond_5

    .line 189
    .line 190
    invoke-static {v7}, Lsz8;->r(Landroid/content/Context;)I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    goto :goto_2

    .line 195
    :cond_5
    invoke-static {}, Lq;->j()V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    const v2, 0x7f060023

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, v2}, Landroid/content/Context;->getColor(I)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-static {v7, v2}, Lio4;->c(Landroid/content/Context;I)I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    goto :goto_2

    .line 214
    :cond_7
    invoke-static {v7}, Lsz8;->w(Landroid/content/Context;)I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    goto :goto_2

    .line 219
    :cond_8
    invoke-virtual {v0}, Ljv6;->getMessageType()I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    const/4 v3, 0x6

    .line 224
    if-ne v2, v3, :cond_9

    .line 225
    .line 226
    invoke-static {v7}, Lsz8;->r(Landroid/content/Context;)I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    :cond_9
    :goto_2
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    .line 232
    .line 233
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 234
    .line 235
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljv6;->getMessageType()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    const/4 v3, 0x5

    .line 243
    if-ne v0, v3, :cond_a

    .line 244
    .line 245
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 246
    .line 247
    invoke-direct {v0, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    const/16 v5, 0x11

    .line 262
    .line 263
    invoke-virtual {v2, v0, v3, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_a
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 268
    .line 269
    .line 270
    :goto_3
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    iget-boolean v0, p0, Lbs6;->m:Z

    .line 274
    .line 275
    if-eqz v0, :cond_c

    .line 276
    .line 277
    invoke-virtual {p0}, Lgm7;->b()I

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    sub-int/2addr p0, v4

    .line 282
    if-ne p2, p0, :cond_b

    .line 283
    .line 284
    move v8, v4

    .line 285
    :cond_b
    iget-object p0, p1, Las6;->w:Landroid/view/View;

    .line 286
    .line 287
    invoke-static {p0, v8}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 288
    .line 289
    .line 290
    :cond_c
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0174

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 7

    .line 1
    new-instance p2, Las6;

    .line 2
    .line 3
    const v0, 0x7f0a021d

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    const v0, 0x7f0a04bb

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const v0, 0x7f0a0562

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v4, v1

    .line 31
    check-cast v4, Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    const v0, 0x7f0a05b9

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    move-object v5, v1

    .line 43
    check-cast v5, Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    new-instance v1, Lkc;

    .line 48
    .line 49
    move-object v2, p1

    .line 50
    check-cast v2, Landroid/widget/LinearLayout;

    .line 51
    .line 52
    const/4 v6, 0x5

    .line 53
    invoke-direct/range {v1 .. v6}, Lkc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, p0, v1}, Las6;-><init>(Lbs6;Lkc;)V

    .line 57
    .line 58
    .line 59
    return-object p2

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "Missing required view with ID: "

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method
