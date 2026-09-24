.class public final Lhu4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lfu;

.field public final b:Z

.field public c:Lj53;

.field public d:Lst4;

.field public final e:Ljava/lang/ref/WeakReference;

.field public f:I

.field public g:Z

.field public h:Z

.field public final i:Ljava/util/ArrayList;

.field public final j:Lkm7;


# direct methods
.method public constructor <init>(Lfu4;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfu;

    .line 5
    .line 6
    invoke-direct {v0}, Lfu;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lhu4;->a:Lfu;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lhu4;->b:Z

    .line 13
    .line 14
    new-instance v0, Lj53;

    .line 15
    .line 16
    invoke-direct {v0}, Lj53;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lhu4;->c:Lj53;

    .line 20
    .line 21
    sget-object v0, Lst4;->b:Lst4;

    .line 22
    .line 23
    iput-object v0, p0, Lhu4;->d:Lst4;

    .line 24
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lhu4;->i:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lhu4;->e:Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    new-instance p1, Lkm7;

    .line 40
    .line 41
    invoke-direct {p1, v0}, Lkm7;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lhu4;->j:Lkm7;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a(Leu4;)V
    .locals 9

    .line 1
    const-string v0, "addObserver"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lhu4;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lhu4;->d:Lst4;

    .line 7
    .line 8
    sget-object v1, Lst4;->a:Lst4;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lst4;->b:Lst4;

    .line 14
    .line 15
    :goto_0
    new-instance v0, Lgu4;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lju4;->a:Ljava/util/HashMap;

    .line 21
    .line 22
    instance-of v2, p1, Lau4;

    .line 23
    .line 24
    instance-of v3, p1, Llu2;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x1

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    new-instance v2, Lef2;

    .line 35
    .line 36
    move-object v3, p1

    .line 37
    check-cast v3, Llu2;

    .line 38
    .line 39
    move-object v8, p1

    .line 40
    check-cast v8, Lau4;

    .line 41
    .line 42
    invoke-direct {v2, v3, v8}, Lef2;-><init>(Llu2;Lau4;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    if-eqz v3, :cond_2

    .line 47
    .line 48
    new-instance v2, Lef2;

    .line 49
    .line 50
    move-object v3, p1

    .line 51
    check-cast v3, Llu2;

    .line 52
    .line 53
    invoke-direct {v2, v3, v5}, Lef2;-><init>(Llu2;Lau4;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    if-eqz v2, :cond_3

    .line 58
    .line 59
    move-object v2, p1

    .line 60
    check-cast v2, Lau4;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Lju4;->b(Ljava/lang/Class;)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ne v3, v4, :cond_6

    .line 72
    .line 73
    sget-object v3, Lju4;->b:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    check-cast v2, Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eq v3, v7, :cond_5

    .line 89
    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    new-array v8, v3, [Lwu3;

    .line 95
    .line 96
    if-gtz v3, :cond_4

    .line 97
    .line 98
    new-instance v2, Lbo1;

    .line 99
    .line 100
    invoke-direct {v2, v8, v7}, Lbo1;-><init>(Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 109
    .line 110
    invoke-static {p0, p1}, Lju4;->a(Ljava/lang/reflect/Constructor;Leu4;)V

    .line 111
    .line 112
    .line 113
    throw v5

    .line 114
    :cond_5
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 119
    .line 120
    invoke-static {p0, p1}, Lju4;->a(Ljava/lang/reflect/Constructor;Leu4;)V

    .line 121
    .line 122
    .line 123
    throw v5

    .line 124
    :cond_6
    new-instance v2, Lvh6;

    .line 125
    .line 126
    invoke-direct {v2, p1}, Lvh6;-><init>(Leu4;)V

    .line 127
    .line 128
    .line 129
    :goto_1
    iput-object v2, v0, Lgu4;->b:Lau4;

    .line 130
    .line 131
    iput-object v1, v0, Lgu4;->a:Lst4;

    .line 132
    .line 133
    iget-object v1, p0, Lhu4;->c:Lj53;

    .line 134
    .line 135
    invoke-virtual {v1, p1}, Lj53;->c(Ljava/lang/Object;)Lxw6;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-eqz v2, :cond_7

    .line 140
    .line 141
    iget-object v1, v2, Lxw6;->b:Ljava/lang/Object;

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_7
    iget-object v2, v1, Lj53;->e:Ljava/util/HashMap;

    .line 145
    .line 146
    new-instance v3, Lxw6;

    .line 147
    .line 148
    invoke-direct {v3, p1, v0}, Lxw6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iget v8, v1, Lbx6;->d:I

    .line 152
    .line 153
    add-int/2addr v8, v7

    .line 154
    iput v8, v1, Lbx6;->d:I

    .line 155
    .line 156
    iget-object v8, v1, Lbx6;->b:Lxw6;

    .line 157
    .line 158
    if-nez v8, :cond_8

    .line 159
    .line 160
    iput-object v3, v1, Lbx6;->a:Lxw6;

    .line 161
    .line 162
    iput-object v3, v1, Lbx6;->b:Lxw6;

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_8
    iput-object v3, v8, Lxw6;->c:Lxw6;

    .line 166
    .line 167
    iput-object v8, v3, Lxw6;->d:Lxw6;

    .line 168
    .line 169
    iput-object v3, v1, Lbx6;->b:Lxw6;

    .line 170
    .line 171
    :goto_2
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-object v1, v5

    .line 175
    :goto_3
    check-cast v1, Lgu4;

    .line 176
    .line 177
    if-eqz v1, :cond_9

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_9
    iget-object v1, p0, Lhu4;->e:Ljava/lang/ref/WeakReference;

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Lfu4;

    .line 187
    .line 188
    if-nez v1, :cond_a

    .line 189
    .line 190
    :goto_4
    return-void

    .line 191
    :cond_a
    iget v2, p0, Lhu4;->f:I

    .line 192
    .line 193
    if-nez v2, :cond_b

    .line 194
    .line 195
    iget-boolean v2, p0, Lhu4;->g:Z

    .line 196
    .line 197
    if-eqz v2, :cond_c

    .line 198
    .line 199
    :cond_b
    move v6, v7

    .line 200
    :cond_c
    invoke-virtual {p0, p1}, Lhu4;->b(Leu4;)Lst4;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    iget v3, p0, Lhu4;->f:I

    .line 205
    .line 206
    add-int/2addr v3, v7

    .line 207
    iput v3, p0, Lhu4;->f:I

    .line 208
    .line 209
    :goto_5
    iget-object v3, v0, Lgu4;->a:Lst4;

    .line 210
    .line 211
    invoke-virtual {v3, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-gez v2, :cond_11

    .line 216
    .line 217
    iget-object v2, p0, Lhu4;->c:Lj53;

    .line 218
    .line 219
    iget-object v2, v2, Lj53;->e:Ljava/util/HashMap;

    .line 220
    .line 221
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_11

    .line 226
    .line 227
    iget-object v2, v0, Lgu4;->a:Lst4;

    .line 228
    .line 229
    iget-object v3, p0, Lhu4;->i:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    sget-object v2, Lrt4;->Companion:Lpt4;

    .line 235
    .line 236
    iget-object v8, v0, Lgu4;->a:Lst4;

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eq v2, v7, :cond_f

    .line 249
    .line 250
    if-eq v2, v4, :cond_e

    .line 251
    .line 252
    const/4 v8, 0x3

    .line 253
    if-eq v2, v8, :cond_d

    .line 254
    .line 255
    move-object v2, v5

    .line 256
    goto :goto_6

    .line 257
    :cond_d
    sget-object v2, Lrt4;->ON_RESUME:Lrt4;

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_e
    sget-object v2, Lrt4;->ON_START:Lrt4;

    .line 261
    .line 262
    goto :goto_6

    .line 263
    :cond_f
    sget-object v2, Lrt4;->ON_CREATE:Lrt4;

    .line 264
    .line 265
    :goto_6
    if-eqz v2, :cond_10

    .line 266
    .line 267
    invoke-virtual {v0, v1, v2}, Lgu4;->a(Lfu4;Lrt4;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    sub-int/2addr v2, v7

    .line 275
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, p1}, Lhu4;->b(Leu4;)Lst4;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    goto :goto_5

    .line 283
    :cond_10
    const-string p0, "no event up from "

    .line 284
    .line 285
    iget-object p1, v0, Lgu4;->a:Lst4;

    .line 286
    .line 287
    invoke-static {p1, p0}, Lm0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_11
    if-nez v6, :cond_12

    .line 292
    .line 293
    invoke-virtual {p0}, Lhu4;->g()V

    .line 294
    .line 295
    .line 296
    :cond_12
    iget p1, p0, Lhu4;->f:I

    .line 297
    .line 298
    add-int/lit8 p1, p1, -0x1

    .line 299
    .line 300
    iput p1, p0, Lhu4;->f:I

    .line 301
    .line 302
    return-void
.end method

.method public final b(Leu4;)Lst4;
    .locals 3

    .line 1
    iget-object v0, p0, Lhu4;->c:Lj53;

    .line 2
    .line 3
    iget-object v0, v0, Lj53;->e:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lxw6;

    .line 17
    .line 18
    iget-object p1, p1, Lxw6;->d:Lxw6;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, v2

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p1, Lxw6;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lgu4;

    .line 27
    .line 28
    iget-object p1, p1, Lgu4;->a:Lst4;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object p1, v2

    .line 32
    :goto_1
    iget-object v0, p0, Lhu4;->i:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-static {v0, v1}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move-object v2, v0

    .line 46
    check-cast v2, Lst4;

    .line 47
    .line 48
    :cond_2
    iget-object p0, p0, Lhu4;->d:Lst4;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-gez v0, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move-object p1, p0

    .line 63
    :goto_2
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-gez p0, :cond_4

    .line 70
    .line 71
    return-object v2

    .line 72
    :cond_4
    return-object p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lhu4;->b:Z

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lf40;->W()Lf40;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Lf40;->d:Ldg2;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-ne p0, v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p0, "Method "

    .line 30
    .line 31
    const-string v0, " must be called on the main thread"

    .line 32
    .line 33
    invoke-static {p0, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final d(Lrt4;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "handleLifecycleEvent"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lhu4;->c(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lrt4;->a()Lst4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lhu4;->e(Lst4;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e(Lst4;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lhu4;->d:Lst4;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lhu4;->e:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lfu4;

    .line 14
    .line 15
    iget-object v1, p0, Lhu4;->d:Lst4;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v2, Lst4;->b:Lst4;

    .line 21
    .line 22
    sget-object v3, Lst4;->a:Lst4;

    .line 23
    .line 24
    if-ne v1, v2, :cond_2

    .line 25
    .line 26
    if-eq p1, v3, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "State must be at least \'"

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Lst4;->c:Lst4;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, "\' to be moved to \'"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, "\' in component "

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    :goto_0
    if-ne v1, v3, :cond_4

    .line 72
    .line 73
    if-ne v1, p1, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v2, "State is \'"

    .line 81
    .line 82
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, "\' and cannot be moved to `"

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, "` in component "

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_4
    :goto_1
    iput-object p1, p0, Lhu4;->d:Lst4;

    .line 117
    .line 118
    iget-boolean p1, p0, Lhu4;->g:Z

    .line 119
    .line 120
    const/4 v0, 0x1

    .line 121
    if-nez p1, :cond_7

    .line 122
    .line 123
    iget p1, p0, Lhu4;->f:I

    .line 124
    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    iput-boolean v0, p0, Lhu4;->g:Z

    .line 129
    .line 130
    invoke-virtual {p0}, Lhu4;->g()V

    .line 131
    .line 132
    .line 133
    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lhu4;->g:Z

    .line 135
    .line 136
    iget-object p1, p0, Lhu4;->d:Lst4;

    .line 137
    .line 138
    if-ne p1, v3, :cond_6

    .line 139
    .line 140
    new-instance p1, Lj53;

    .line 141
    .line 142
    invoke-direct {p1}, Lj53;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Lhu4;->c:Lj53;

    .line 146
    .line 147
    :cond_6
    :goto_2
    return-void

    .line 148
    :cond_7
    :goto_3
    iput-boolean v0, p0, Lhu4;->h:Z

    .line 149
    .line 150
    return-void
.end method

.method public final f(Leu4;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "removeObserver"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lhu4;->c(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lhu4;->c:Lj53;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lj53;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final g()V
    .locals 11

    .line 1
    iget-object v0, p0, Lhu4;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfu4;

    .line 8
    .line 9
    if-eqz v0, :cond_f

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lhu4;->c:Lj53;

    .line 12
    .line 13
    iget v2, v1, Lbx6;->d:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, v1, Lbx6;->a:Lxw6;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v1, v1, Lxw6;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lgu4;

    .line 28
    .line 29
    iget-object v1, v1, Lgu4;->a:Lst4;

    .line 30
    .line 31
    iget-object v2, p0, Lhu4;->c:Lj53;

    .line 32
    .line 33
    iget-object v2, v2, Lbx6;->b:Lxw6;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v2, v2, Lxw6;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Lgu4;

    .line 41
    .line 42
    iget-object v2, v2, Lgu4;->a:Lst4;

    .line 43
    .line 44
    if-ne v1, v2, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lhu4;->d:Lst4;

    .line 47
    .line 48
    if-ne v1, v2, :cond_3

    .line 49
    .line 50
    :goto_0
    iput-boolean v4, p0, Lhu4;->h:Z

    .line 51
    .line 52
    iget-object v0, p0, Lhu4;->d:Lst4;

    .line 53
    .line 54
    iget-object p0, p0, Lhu4;->j:Lkm7;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    sget-object v0, Lly8;->c:Ldu9;

    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0, v3, v0}, Lkm7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    iput-boolean v4, p0, Lhu4;->h:Z

    .line 68
    .line 69
    iget-object v1, p0, Lhu4;->d:Lst4;

    .line 70
    .line 71
    iget-object v2, p0, Lhu4;->c:Lj53;

    .line 72
    .line 73
    iget-object v2, v2, Lbx6;->a:Lxw6;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object v2, v2, Lxw6;->b:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v2, Lgu4;

    .line 81
    .line 82
    iget-object v2, v2, Lgu4;->a:Lst4;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v2, 0x3

    .line 89
    const/4 v4, 0x2

    .line 90
    const/4 v5, 0x1

    .line 91
    iget-object v6, p0, Lhu4;->i:Ljava/util/ArrayList;

    .line 92
    .line 93
    if-gez v1, :cond_9

    .line 94
    .line 95
    iget-object v1, p0, Lhu4;->c:Lj53;

    .line 96
    .line 97
    new-instance v7, Lww6;

    .line 98
    .line 99
    iget-object v8, v1, Lbx6;->b:Lxw6;

    .line 100
    .line 101
    iget-object v9, v1, Lbx6;->a:Lxw6;

    .line 102
    .line 103
    invoke-direct {v7, v8, v9}, Lzw6;-><init>(Lxw6;Lxw6;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v1, Lbx6;->c:Ljava/util/WeakHashMap;

    .line 107
    .line 108
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-virtual {v1, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-virtual {v7}, Lzw6;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_9

    .line 118
    .line 119
    iget-boolean v1, p0, Lhu4;->h:Z

    .line 120
    .line 121
    if-nez v1, :cond_9

    .line 122
    .line 123
    invoke-virtual {v7}, Lzw6;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/util/Map$Entry;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    check-cast v8, Leu4;

    .line 137
    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lgu4;

    .line 143
    .line 144
    :goto_1
    iget-object v9, v1, Lgu4;->a:Lst4;

    .line 145
    .line 146
    iget-object v10, p0, Lhu4;->d:Lst4;

    .line 147
    .line 148
    invoke-virtual {v9, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-lez v9, :cond_4

    .line 153
    .line 154
    iget-boolean v9, p0, Lhu4;->h:Z

    .line 155
    .line 156
    if-nez v9, :cond_4

    .line 157
    .line 158
    iget-object v9, p0, Lhu4;->c:Lj53;

    .line 159
    .line 160
    iget-object v9, v9, Lj53;->e:Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-eqz v9, :cond_4

    .line 167
    .line 168
    sget-object v9, Lrt4;->Companion:Lpt4;

    .line 169
    .line 170
    iget-object v10, v1, Lgu4;->a:Lst4;

    .line 171
    .line 172
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-eq v9, v4, :cond_7

    .line 183
    .line 184
    if-eq v9, v2, :cond_6

    .line 185
    .line 186
    const/4 v10, 0x4

    .line 187
    if-eq v9, v10, :cond_5

    .line 188
    .line 189
    move-object v9, v3

    .line 190
    goto :goto_2

    .line 191
    :cond_5
    sget-object v9, Lrt4;->ON_PAUSE:Lrt4;

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_6
    sget-object v9, Lrt4;->ON_STOP:Lrt4;

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_7
    sget-object v9, Lrt4;->ON_DESTROY:Lrt4;

    .line 198
    .line 199
    :goto_2
    if-eqz v9, :cond_8

    .line 200
    .line 201
    invoke-virtual {v9}, Lrt4;->a()Lst4;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v0, v9}, Lgu4;->a(Lfu4;Lrt4;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    sub-int/2addr v9, v5

    .line 216
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_8
    const-string p0, "no event down from "

    .line 221
    .line 222
    iget-object v0, v1, Lgu4;->a:Lst4;

    .line 223
    .line 224
    invoke-static {v0, p0}, Lm0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :cond_9
    iget-object v1, p0, Lhu4;->c:Lj53;

    .line 229
    .line 230
    iget-object v1, v1, Lbx6;->b:Lxw6;

    .line 231
    .line 232
    iget-boolean v7, p0, Lhu4;->h:Z

    .line 233
    .line 234
    if-nez v7, :cond_0

    .line 235
    .line 236
    if-eqz v1, :cond_0

    .line 237
    .line 238
    iget-object v7, p0, Lhu4;->d:Lst4;

    .line 239
    .line 240
    iget-object v1, v1, Lxw6;->b:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v1, Lgu4;

    .line 243
    .line 244
    iget-object v1, v1, Lgu4;->a:Lst4;

    .line 245
    .line 246
    invoke-virtual {v7, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-lez v1, :cond_0

    .line 251
    .line 252
    iget-object v1, p0, Lhu4;->c:Lj53;

    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    new-instance v7, Lyw6;

    .line 258
    .line 259
    invoke-direct {v7, v1}, Lyw6;-><init>(Lbx6;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, v1, Lbx6;->c:Ljava/util/WeakHashMap;

    .line 263
    .line 264
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 265
    .line 266
    invoke-virtual {v1, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    :cond_a
    invoke-virtual {v7}, Lyw6;->hasNext()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_0

    .line 274
    .line 275
    iget-boolean v1, p0, Lhu4;->h:Z

    .line 276
    .line 277
    if-nez v1, :cond_0

    .line 278
    .line 279
    invoke-virtual {v7}, Lyw6;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    check-cast v1, Ljava/util/Map$Entry;

    .line 284
    .line 285
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    check-cast v8, Leu4;

    .line 290
    .line 291
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    check-cast v1, Lgu4;

    .line 296
    .line 297
    :goto_3
    iget-object v9, v1, Lgu4;->a:Lst4;

    .line 298
    .line 299
    iget-object v10, p0, Lhu4;->d:Lst4;

    .line 300
    .line 301
    invoke-virtual {v9, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    if-gez v9, :cond_a

    .line 306
    .line 307
    iget-boolean v9, p0, Lhu4;->h:Z

    .line 308
    .line 309
    if-nez v9, :cond_a

    .line 310
    .line 311
    iget-object v9, p0, Lhu4;->c:Lj53;

    .line 312
    .line 313
    iget-object v9, v9, Lj53;->e:Ljava/util/HashMap;

    .line 314
    .line 315
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v9

    .line 319
    if-eqz v9, :cond_a

    .line 320
    .line 321
    iget-object v9, v1, Lgu4;->a:Lst4;

    .line 322
    .line 323
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    sget-object v9, Lrt4;->Companion:Lpt4;

    .line 327
    .line 328
    iget-object v10, v1, Lgu4;->a:Lst4;

    .line 329
    .line 330
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 337
    .line 338
    .line 339
    move-result v9

    .line 340
    if-eq v9, v5, :cond_d

    .line 341
    .line 342
    if-eq v9, v4, :cond_c

    .line 343
    .line 344
    if-eq v9, v2, :cond_b

    .line 345
    .line 346
    move-object v9, v3

    .line 347
    goto :goto_4

    .line 348
    :cond_b
    sget-object v9, Lrt4;->ON_RESUME:Lrt4;

    .line 349
    .line 350
    goto :goto_4

    .line 351
    :cond_c
    sget-object v9, Lrt4;->ON_START:Lrt4;

    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_d
    sget-object v9, Lrt4;->ON_CREATE:Lrt4;

    .line 355
    .line 356
    :goto_4
    if-eqz v9, :cond_e

    .line 357
    .line 358
    invoke-virtual {v1, v0, v9}, Lgu4;->a(Lfu4;Lrt4;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 362
    .line 363
    .line 364
    move-result v9

    .line 365
    sub-int/2addr v9, v5

    .line 366
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    goto :goto_3

    .line 370
    :cond_e
    const-string p0, "no event up from "

    .line 371
    .line 372
    iget-object v0, v1, Lgu4;->a:Lst4;

    .line 373
    .line 374
    invoke-static {v0, p0}, Lm0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :cond_f
    const-string p0, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    .line 379
    .line 380
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    return-void
.end method
