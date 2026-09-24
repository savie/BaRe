.class public final synthetic Lkx;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lgv7;

.field public final synthetic d:Lgv7;

.field public final synthetic e:Lgv7;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgv7;Lgv7;Lgv7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkx;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lkx;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lkx;->c:Lgv7;

    .line 9
    .line 10
    iput-object p4, p0, Lkx;->d:Lgv7;

    .line 11
    .line 12
    iput-object p5, p0, Lkx;->e:Lgv7;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Lji;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lmx;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lmx;-><init>(Lji;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lji;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, " "

    .line 16
    .line 17
    filled-new-array {v2}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x6

    .line 22
    invoke-static {v1, v2, v3}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lkx;->c:Lgv7;

    .line 27
    .line 28
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Ljava/util/List;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x1

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_1

    .line 43
    .line 44
    :cond_0
    move v4, v6

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_0

    .line 55
    .line 56
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_4

    .line 78
    .line 79
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v9, v7, v6}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-eqz v9, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    :goto_1
    move v4, v5

    .line 93
    :goto_2
    iput-boolean v4, v0, Lmx;->b:Z

    .line 94
    .line 95
    invoke-virtual {p1}, Lji;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    iget-object v7, p0, Lkx;->a:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v4, v7, v6}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    iput-boolean v4, v0, Lmx;->c:Z

    .line 106
    .line 107
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-static {v4, v7, v6}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    iput-boolean v4, v0, Lmx;->f:Z

    .line 116
    .line 117
    iget-object v4, p0, Lkx;->b:Ljava/lang/String;

    .line 118
    .line 119
    if-eqz v4, :cond_6

    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-nez v7, :cond_5

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    new-instance v7, Lyq;

    .line 129
    .line 130
    invoke-direct {v7, v6, v1, v4}, Lyq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Lgv7;

    .line 134
    .line 135
    invoke-direct {v1, v7}, Lgv7;-><init>(Lbt3;)V

    .line 136
    .line 137
    .line 138
    new-instance v7, Llx;

    .line 139
    .line 140
    invoke-direct {v7, v5, p1, v4}, Llx;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    new-instance v4, Lgv7;

    .line 144
    .line 145
    invoke-direct {v4, v7}, Lgv7;-><init>(Lbt3;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Ljava/lang/Boolean;

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_7

    .line 159
    .line 160
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Ljava/lang/Boolean;

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_6

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_6
    :goto_3
    move v1, v5

    .line 174
    goto :goto_5

    .line 175
    :cond_7
    :goto_4
    move v1, v6

    .line 176
    :goto_5
    iput-boolean v1, v0, Lmx;->d:Z

    .line 177
    .line 178
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const-string v4, "."

    .line 183
    .line 184
    filled-new-array {v4}, [Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-static {v1, v4, v3}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    check-cast v2, Ljava/util/List;

    .line 197
    .line 198
    if-eqz v2, :cond_9

    .line 199
    .line 200
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_9

    .line 205
    .line 206
    :cond_8
    move v1, v6

    .line 207
    goto :goto_8

    .line 208
    :cond_9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_8

    .line 217
    .line 218
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Ljava/lang/String;

    .line 223
    .line 224
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-eqz v4, :cond_a

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    if-eqz v7, :cond_c

    .line 240
    .line 241
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    check-cast v7, Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v7, v3, v6}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    if-eqz v7, :cond_b

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_c
    :goto_7
    move v1, v5

    .line 255
    :goto_8
    iput-boolean v1, v0, Lmx;->e:Z

    .line 256
    .line 257
    invoke-virtual {p1}, Lji;->getName()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    iget-object v1, p0, Lkx;->d:Lgv7;

    .line 262
    .line 263
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Lai6;

    .line 268
    .line 269
    const-string v2, ""

    .line 270
    .line 271
    invoke-virtual {v1, p1, v2}, Lai6;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    iget-object p0, p0, Lkx;->e:Lgv7;

    .line 276
    .line 277
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    check-cast v1, Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-lez v1, :cond_d

    .line 288
    .line 289
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    check-cast p0, Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {p1, p0, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 296
    .line 297
    .line 298
    move-result p0

    .line 299
    if-eqz p0, :cond_d

    .line 300
    .line 301
    move v5, v6

    .line 302
    :cond_d
    iput-boolean v5, v0, Lmx;->g:Z

    .line 303
    .line 304
    return-object v0
.end method
