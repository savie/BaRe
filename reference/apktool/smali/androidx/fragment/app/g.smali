.class public final Landroidx/fragment/app/g;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/fragment/app/g;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    return-void
.end method

.method public static final i(Landroid/view/ViewGroup;Landroidx/fragment/app/z;)Landroidx/fragment/app/g;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/z;->I()Llv1;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const p1, 0x7f0a046a

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v1, v0, Landroidx/fragment/app/g;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast v0, Landroidx/fragment/app/g;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Landroidx/fragment/app/g;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Landroidx/fragment/app/g;-><init>(Landroid/view/ViewGroup;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static j(Ljava/util/ArrayList;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    :cond_0
    :goto_0
    move v2, v1

    .line 7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_4

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/fragment/app/h0;

    .line 19
    .line 20
    iget-object v3, v2, Landroidx/fragment/app/h0;->k:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_3

    .line 27
    .line 28
    iget-object v2, v2, Landroidx/fragment/app/h0;->k:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lzj7;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    instance-of v3, v3, Landroidx/fragment/app/e;

    .line 59
    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    :cond_3
    move v2, v4

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    if-eqz v2, :cond_6

    .line 65
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroidx/fragment/app/h0;

    .line 86
    .line 87
    iget-object v2, v2, Landroidx/fragment/app/h0;->k:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-static {v2, v0}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-nez p0, :cond_6

    .line 98
    .line 99
    return v1

    .line 100
    :cond_6
    return v4
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/h0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Landroidx/fragment/app/h0;->i:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p1, Landroidx/fragment/app/h0;->a:I

    .line 9
    .line 10
    iget-object v1, p1, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/fragment/app/o;->requireView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    .line 17
    .line 18
    invoke-static {v0, v1, p0}, Lfz5;->b(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    iput-boolean p0, p1, Landroidx/fragment/app/h0;->i:Z

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final b(Ljava/util/ArrayList;Z)V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "Collecting Effects"

    .line 11
    .line 12
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    const-string v5, "Unknown visibility "

    .line 25
    .line 26
    const/16 v6, 0x8

    .line 27
    .line 28
    const/4 v7, 0x4

    .line 29
    const/4 v8, 0x0

    .line 30
    if-eqz v3, :cond_5

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v9, v3

    .line 37
    check-cast v9, Landroidx/fragment/app/h0;

    .line 38
    .line 39
    iget-object v10, v9, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 40
    .line 41
    iget-object v10, v10, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    cmpg-float v11, v11, v8

    .line 51
    .line 52
    if-nez v11, :cond_2

    .line 53
    .line 54
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    if-nez v11, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-eqz v10, :cond_4

    .line 66
    .line 67
    if-eq v10, v7, :cond_1

    .line 68
    .line 69
    if-ne v10, v6, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-static {v10, v5}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    iget v9, v9, Landroidx/fragment/app/h0;->a:I

    .line 81
    .line 82
    if-eq v9, v0, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    move-object v3, v4

    .line 86
    :goto_1
    check-cast v3, Landroidx/fragment/app/h0;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_a

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    move-object v10, v9

    .line 107
    check-cast v10, Landroidx/fragment/app/h0;

    .line 108
    .line 109
    iget-object v11, v10, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 110
    .line 111
    iget-object v11, v11, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 112
    .line 113
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    cmpg-float v12, v12, v8

    .line 121
    .line 122
    if-nez v12, :cond_7

    .line 123
    .line 124
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    if-nez v12, :cond_7

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    if-eqz v11, :cond_6

    .line 136
    .line 137
    if-eq v11, v7, :cond_9

    .line 138
    .line 139
    if-ne v11, v6, :cond_8

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_8
    invoke-static {v11, v5}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_9
    :goto_2
    iget v10, v10, Landroidx/fragment/app/h0;->a:I

    .line 151
    .line 152
    if-ne v10, v0, :cond_6

    .line 153
    .line 154
    move-object v4, v9

    .line 155
    :cond_a
    check-cast v4, Landroidx/fragment/app/h0;

    .line 156
    .line 157
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_b

    .line 162
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v5, "Executing operations from "

    .line 166
    .line 167
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v5, " to "

    .line 174
    .line 175
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    new-instance v5, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-static {p1}, Lel1;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    check-cast v6, Landroidx/fragment/app/h0;

    .line 203
    .line 204
    iget-object v6, v6, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    if-eqz v8, :cond_c

    .line 215
    .line 216
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    check-cast v8, Landroidx/fragment/app/h0;

    .line 221
    .line 222
    iget-object v8, v8, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 223
    .line 224
    iget-object v8, v8, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 225
    .line 226
    iget-object v9, v6, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 227
    .line 228
    iget v10, v9, Ldr3;->b:I

    .line 229
    .line 230
    iput v10, v8, Ldr3;->b:I

    .line 231
    .line 232
    iget v10, v9, Ldr3;->c:I

    .line 233
    .line 234
    iput v10, v8, Ldr3;->c:I

    .line 235
    .line 236
    iget v10, v9, Ldr3;->d:I

    .line 237
    .line 238
    iput v10, v8, Ldr3;->d:I

    .line 239
    .line 240
    iget v9, v9, Ldr3;->e:I

    .line 241
    .line 242
    iput v9, v8, Ldr3;->e:I

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    const/4 v7, 0x0

    .line 254
    const/4 v8, 0x1

    .line 255
    if-eqz v6, :cond_16

    .line 256
    .line 257
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    check-cast v6, Landroidx/fragment/app/h0;

    .line 262
    .line 263
    new-instance v9, Landroidx/fragment/app/d;

    .line 264
    .line 265
    invoke-direct {v9, v6, p2}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/h0;Z)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    new-instance v9, Lbg2;

    .line 272
    .line 273
    if-eqz p2, :cond_d

    .line 274
    .line 275
    if-ne v6, v3, :cond_e

    .line 276
    .line 277
    :goto_5
    move v7, v8

    .line 278
    goto :goto_6

    .line 279
    :cond_d
    if-ne v6, v4, :cond_e

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_e
    :goto_6
    iget-object v8, v6, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 283
    .line 284
    invoke-direct {v9, v6}, Landroidx/fragment/app/f;-><init>(Landroidx/fragment/app/h0;)V

    .line 285
    .line 286
    .line 287
    iget v10, v6, Landroidx/fragment/app/h0;->a:I

    .line 288
    .line 289
    if-ne v10, v0, :cond_10

    .line 290
    .line 291
    if-eqz p2, :cond_f

    .line 292
    .line 293
    iget-object v10, v8, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 294
    .line 295
    goto :goto_7

    .line 296
    :cond_f
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_10
    if-eqz p2, :cond_11

    .line 301
    .line 302
    iget-object v10, v8, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 303
    .line 304
    goto :goto_7

    .line 305
    :cond_11
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    :goto_7
    iget v10, v6, Landroidx/fragment/app/h0;->a:I

    .line 309
    .line 310
    if-ne v10, v0, :cond_13

    .line 311
    .line 312
    if-eqz p2, :cond_12

    .line 313
    .line 314
    iget-object v10, v8, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_12
    iget-object v10, v8, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 318
    .line 319
    :cond_13
    :goto_8
    if-eqz v7, :cond_15

    .line 320
    .line 321
    if-eqz p2, :cond_14

    .line 322
    .line 323
    iget-object v7, v8, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 324
    .line 325
    goto :goto_9

    .line 326
    :cond_14
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    :cond_15
    :goto_9
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    new-instance v7, Lxu1;

    .line 333
    .line 334
    const/4 v8, 0x7

    .line 335
    invoke-direct {v7, v8, p0, v6}, Lxu1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    iget-object v6, v6, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_16
    new-instance p1, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    :cond_17
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    if-eqz v3, :cond_18

    .line 358
    .line 359
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    move-object v4, v3

    .line 364
    check-cast v4, Lbg2;

    .line 365
    .line 366
    invoke-virtual {v4}, Landroidx/fragment/app/f;->a()Z

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    if-nez v4, :cond_17

    .line 371
    .line 372
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    goto :goto_a

    .line 376
    :cond_18
    new-instance p2, Ljava/util/ArrayList;

    .line 377
    .line 378
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-eqz v3, :cond_19

    .line 390
    .line 391
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    check-cast v3, Lbg2;

    .line 396
    .line 397
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    goto :goto_b

    .line 401
    :cond_19
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 406
    .line 407
    .line 408
    move-result p2

    .line 409
    if-eqz p2, :cond_1a

    .line 410
    .line 411
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object p2

    .line 415
    check-cast p2, Lbg2;

    .line 416
    .line 417
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    goto :goto_c

    .line 421
    :cond_1a
    new-instance p1, Ljava/util/ArrayList;

    .line 422
    .line 423
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .line 425
    .line 426
    new-instance p2, Ljava/util/ArrayList;

    .line 427
    .line 428
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    if-eqz v4, :cond_1b

    .line 440
    .line 441
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    check-cast v4, Landroidx/fragment/app/d;

    .line 446
    .line 447
    iget-object v4, v4, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h0;

    .line 448
    .line 449
    iget-object v4, v4, Landroidx/fragment/app/h0;->k:Ljava/util/ArrayList;

    .line 450
    .line 451
    invoke-static {v4, p2}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 452
    .line 453
    .line 454
    goto :goto_d

    .line 455
    :cond_1b
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 456
    .line 457
    .line 458
    move-result p2

    .line 459
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    move v3, v7

    .line 464
    :cond_1c
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v4

    .line 468
    if-eqz v4, :cond_21

    .line 469
    .line 470
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    check-cast v4, Landroidx/fragment/app/d;

    .line 475
    .line 476
    iget-object v5, p0, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    .line 477
    .line 478
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    iget-object v6, v4, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h0;

    .line 483
    .line 484
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4, v5}, Landroidx/fragment/app/d;->b(Landroid/content/Context;)Lla;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    if-nez v5, :cond_1d

    .line 492
    .line 493
    goto :goto_e

    .line 494
    :cond_1d
    iget-object v5, v5, Lla;->b:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast v5, Landroid/animation/AnimatorSet;

    .line 497
    .line 498
    if-nez v5, :cond_1e

    .line 499
    .line 500
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    goto :goto_e

    .line 504
    :cond_1e
    iget-object v5, v6, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 505
    .line 506
    iget-object v9, v6, Landroidx/fragment/app/h0;->k:Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 509
    .line 510
    .line 511
    move-result v9

    .line 512
    if-nez v9, :cond_1f

    .line 513
    .line 514
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    if-eqz v4, :cond_1c

    .line 519
    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    const-string v6, "Ignoring Animator set on "

    .line 523
    .line 524
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v5, " as this Fragment was involved in a Transition."

    .line 531
    .line 532
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    goto :goto_e

    .line 543
    :cond_1f
    iget v3, v6, Landroidx/fragment/app/h0;->a:I

    .line 544
    .line 545
    const/4 v5, 0x3

    .line 546
    if-ne v3, v5, :cond_20

    .line 547
    .line 548
    iput-boolean v7, v6, Landroidx/fragment/app/h0;->i:Z

    .line 549
    .line 550
    :cond_20
    new-instance v3, Landroidx/fragment/app/e;

    .line 551
    .line 552
    invoke-direct {v3, v4}, Landroidx/fragment/app/e;-><init>(Landroidx/fragment/app/d;)V

    .line 553
    .line 554
    .line 555
    iget-object v4, v6, Landroidx/fragment/app/h0;->j:Ljava/util/ArrayList;

    .line 556
    .line 557
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move v3, v8

    .line 561
    goto :goto_e

    .line 562
    :cond_21
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 563
    .line 564
    .line 565
    move-result-object p0

    .line 566
    :cond_22
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 567
    .line 568
    .line 569
    move-result p1

    .line 570
    if-eqz p1, :cond_25

    .line 571
    .line 572
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object p1

    .line 576
    check-cast p1, Landroidx/fragment/app/d;

    .line 577
    .line 578
    iget-object v1, p1, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h0;

    .line 579
    .line 580
    iget-object v4, v1, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 581
    .line 582
    const-string v5, "Ignoring Animation set on "

    .line 583
    .line 584
    if-nez p2, :cond_23

    .line 585
    .line 586
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 587
    .line 588
    .line 589
    move-result p1

    .line 590
    if-eqz p1, :cond_22

    .line 591
    .line 592
    new-instance p1, Ljava/lang/StringBuilder;

    .line 593
    .line 594
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    const-string v1, " as Animations cannot run alongside Transitions."

    .line 601
    .line 602
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object p1

    .line 609
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .line 611
    .line 612
    goto :goto_f

    .line 613
    :cond_23
    if-eqz v3, :cond_24

    .line 614
    .line 615
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 616
    .line 617
    .line 618
    move-result p1

    .line 619
    if-eqz p1, :cond_22

    .line 620
    .line 621
    new-instance p1, Ljava/lang/StringBuilder;

    .line 622
    .line 623
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    const-string v1, " as Animations cannot run alongside Animators."

    .line 630
    .line 631
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object p1

    .line 638
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .line 640
    .line 641
    goto :goto_f

    .line 642
    :cond_24
    new-instance v4, Landroidx/fragment/app/c;

    .line 643
    .line 644
    invoke-direct {v4, p1}, Landroidx/fragment/app/c;-><init>(Landroidx/fragment/app/d;)V

    .line 645
    .line 646
    .line 647
    iget-object p1, v1, Landroidx/fragment/app/h0;->j:Ljava/util/ArrayList;

    .line 648
    .line 649
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    .line 651
    .line 652
    goto :goto_f

    .line 653
    :cond_25
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroidx/fragment/app/h0;

    .line 24
    .line 25
    iget-object v2, v2, Landroidx/fragment/app/h0;->k:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-static {v2, v0}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x0

    .line 44
    move v3, v2

    .line 45
    :goto_1
    if-ge v3, v1, :cond_1

    .line 46
    .line 47
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lzj7;

    .line 52
    .line 53
    iget-object v5, p0, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Lzj7;->b(Landroid/view/ViewGroup;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    move v1, v2

    .line 66
    :goto_2
    if-ge v1, v0, :cond_2

    .line 67
    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroidx/fragment/app/h0;

    .line 73
    .line 74
    invoke-virtual {p0, v3}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/h0;)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    invoke-static {p1}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    :goto_3
    if-ge v2, p1, :cond_4

    .line 89
    .line 90
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroidx/fragment/app/h0;

    .line 95
    .line 96
    iget-object v1, v0, Landroidx/fragment/app/h0;->k:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    invoke-virtual {v0}, Landroidx/fragment/app/h0;->b()V

    .line 105
    .line 106
    .line 107
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    return-void
.end method

.method public final d(IILandroidx/fragment/app/d0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p3, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroidx/fragment/app/g;->f(Landroidx/fragment/app/o;)Landroidx/fragment/app/h0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p3, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 16
    .line 17
    iget-boolean v2, v1, Landroidx/fragment/app/o;->mTransitioning:Z

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iget-boolean v2, v1, Landroidx/fragment/app/o;->mRemoving:Z

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/g;->g(Landroidx/fragment/app/o;)Landroidx/fragment/app/h0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/h0;->d(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :cond_3
    :try_start_1
    new-instance v1, Landroidx/fragment/app/h0;

    .line 42
    .line 43
    invoke-direct {v1, p1, p2, p3}, Landroidx/fragment/app/h0;-><init>(IILandroidx/fragment/app/d0;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    new-instance p1, Landroidx/fragment/app/g0;

    .line 52
    .line 53
    invoke-direct {p1, p0, v1}, Landroidx/fragment/app/g0;-><init>(Landroidx/fragment/app/g;Landroidx/fragment/app/h0;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, v1, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    new-instance p1, Lln;

    .line 62
    .line 63
    const/4 p2, 0x5

    .line 64
    invoke-direct {p1, p2, p0, v1}, Lln;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, v1, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_2
    monitor-exit v0

    .line 75
    throw p0
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/g;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/g;->h()V

    .line 16
    .line 17
    .line 18
    iput-boolean v1, p0, Landroidx/fragment/app/g;->e:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/g;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {v2}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Landroidx/fragment/app/g;->c:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x1

    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroidx/fragment/app/h0;

    .line 51
    .line 52
    iget-object v6, p0, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_2

    .line 59
    .line 60
    iget-object v6, v4, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 61
    .line 62
    iget-boolean v6, v6, Landroidx/fragment/app/o;->mTransitioning:Z

    .line 63
    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto/16 :goto_8

    .line 69
    .line 70
    :cond_2
    move v5, v1

    .line 71
    :goto_1
    iput-boolean v5, v4, Landroidx/fragment/app/h0;->g:Z

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    const/4 v4, 0x2

    .line 83
    if-eqz v3, :cond_8

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Landroidx/fragment/app/h0;

    .line 90
    .line 91
    iget-boolean v6, p0, Landroidx/fragment/app/g;->d:Z

    .line 92
    .line 93
    if-eqz v6, :cond_6

    .line 94
    .line 95
    invoke-static {v4}, Landroidx/fragment/app/z;->K(I)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_5

    .line 100
    .line 101
    const-string v4, "FragmentManager"

    .line 102
    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v7, "SpecialEffectsController: Completing non-seekable operation "

    .line 109
    .line 110
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_5
    invoke-virtual {v3}, Landroidx/fragment/app/h0;->b()V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    invoke-static {v4}, Landroidx/fragment/app/z;->K(I)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_7

    .line 132
    .line 133
    const-string v4, "FragmentManager"

    .line 134
    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v7, "SpecialEffectsController: Cancelling operation "

    .line 141
    .line 142
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :cond_7
    iget-object v4, p0, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    .line 156
    .line 157
    invoke-virtual {v3, v4}, Landroidx/fragment/app/h0;->a(Landroid/view/ViewGroup;)V

    .line 158
    .line 159
    .line 160
    :goto_3
    iput-boolean v1, p0, Landroidx/fragment/app/g;->d:Z

    .line 161
    .line 162
    iget-boolean v4, v3, Landroidx/fragment/app/h0;->f:Z

    .line 163
    .line 164
    if-nez v4, :cond_4

    .line 165
    .line 166
    iget-object v4, p0, Landroidx/fragment/app/g;->c:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_8
    iget-object v2, p0, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_11

    .line 179
    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/g;->l()V

    .line 181
    .line 182
    .line 183
    iget-object v2, p0, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-static {v2}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    if-eqz v3, :cond_9

    .line 194
    .line 195
    monitor-exit v0

    .line 196
    return-void

    .line 197
    :cond_9
    :try_start_1
    iget-object v3, p0, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 200
    .line 201
    .line 202
    iget-object v3, p0, Landroidx/fragment/app/g;->c:Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    .line 206
    .line 207
    invoke-static {v4}, Landroidx/fragment/app/z;->K(I)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_a

    .line 212
    .line 213
    const-string v3, "FragmentManager"

    .line 214
    .line 215
    const-string v6, "SpecialEffectsController: Executing pending operations"

    .line 216
    .line 217
    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    :cond_a
    iget-boolean v3, p0, Landroidx/fragment/app/g;->e:Z

    .line 221
    .line 222
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/g;->b(Ljava/util/ArrayList;Z)V

    .line 223
    .line 224
    .line 225
    invoke-static {v2}, Landroidx/fragment/app/g;->j(Ljava/util/ArrayList;)Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    move v7, v5

    .line 234
    :cond_b
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    if-eqz v8, :cond_c

    .line 239
    .line 240
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    check-cast v8, Landroidx/fragment/app/h0;

    .line 245
    .line 246
    iget-object v8, v8, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 247
    .line 248
    iget-boolean v8, v8, Landroidx/fragment/app/o;->mTransitioning:Z

    .line 249
    .line 250
    if-nez v8, :cond_b

    .line 251
    .line 252
    move v7, v1

    .line 253
    goto :goto_4

    .line 254
    :cond_c
    if-eqz v7, :cond_d

    .line 255
    .line 256
    if-nez v3, :cond_d

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_d
    move v5, v1

    .line 260
    :goto_5
    iput-boolean v5, p0, Landroidx/fragment/app/g;->d:Z

    .line 261
    .line 262
    invoke-static {v4}, Landroidx/fragment/app/z;->K(I)Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    if-eqz v5, :cond_e

    .line 267
    .line 268
    const-string v5, "FragmentManager"

    .line 269
    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v8, "SpecialEffectsController: Operation seekable = "

    .line 276
    .line 277
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v8, " \ntransition = "

    .line 284
    .line 285
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    :cond_e
    if-nez v7, :cond_f

    .line 299
    .line 300
    invoke-virtual {p0, v2}, Landroidx/fragment/app/g;->k(Ljava/util/List;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, v2}, Landroidx/fragment/app/g;->c(Ljava/util/List;)V

    .line 304
    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_f
    if-eqz v3, :cond_10

    .line 308
    .line 309
    invoke-virtual {p0, v2}, Landroidx/fragment/app/g;->k(Ljava/util/List;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    move v5, v1

    .line 317
    :goto_6
    if-ge v5, v3, :cond_10

    .line 318
    .line 319
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    check-cast v6, Landroidx/fragment/app/h0;

    .line 324
    .line 325
    invoke-virtual {p0, v6}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/h0;)V

    .line 326
    .line 327
    .line 328
    add-int/lit8 v5, v5, 0x1

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :cond_10
    :goto_7
    iput-boolean v1, p0, Landroidx/fragment/app/g;->e:Z

    .line 332
    .line 333
    invoke-static {v4}, Landroidx/fragment/app/z;->K(I)Z

    .line 334
    .line 335
    .line 336
    move-result p0

    .line 337
    if-eqz p0, :cond_11

    .line 338
    .line 339
    const-string p0, "FragmentManager"

    .line 340
    .line 341
    const-string v1, "SpecialEffectsController: Finished executing pending operations"

    .line 342
    .line 343
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    .line 345
    .line 346
    :cond_11
    monitor-exit v0

    .line 347
    return-void

    .line 348
    :goto_8
    monitor-exit v0

    .line 349
    throw p0
.end method

.method public final f(Landroidx/fragment/app/o;)Landroidx/fragment/app/h0;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Landroidx/fragment/app/h0;

    .line 19
    .line 20
    iget-object v2, v1, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 21
    .line 22
    invoke-static {v2, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-boolean v1, v1, Landroidx/fragment/app/h0;->e:Z

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    check-cast v0, Landroidx/fragment/app/h0;

    .line 35
    .line 36
    return-object v0
.end method

.method public final g(Landroidx/fragment/app/o;)Landroidx/fragment/app/h0;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/g;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Landroidx/fragment/app/h0;

    .line 19
    .line 20
    iget-object v2, v1, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 21
    .line 22
    invoke-static {v2, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-boolean v1, v1, Landroidx/fragment/app/h0;->e:Z

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    check-cast v0, Landroidx/fragment/app/h0;

    .line 35
    .line 36
    return-object v0
.end method

.method public final h()V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "FragmentManager"

    .line 9
    .line 10
    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/g;->l()V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Landroidx/fragment/app/g;->k(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Landroidx/fragment/app/g;->c:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-static {v3}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const/4 v6, 0x0

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroidx/fragment/app/h0;

    .line 54
    .line 55
    iput-boolean v6, v5, Landroidx/fragment/app/h0;->g:Z

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Landroidx/fragment/app/h0;

    .line 76
    .line 77
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    const-string v5, ""

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v7, "Container "

    .line 94
    .line 95
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v7, p0, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    .line 99
    .line 100
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v7, " is not attached to window. "

    .line 104
    .line 105
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    :goto_2
    const-string v7, "FragmentManager"

    .line 113
    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v9, "SpecialEffectsController: "

    .line 120
    .line 121
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v5, "Cancelling running operation "

    .line 128
    .line 129
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_3
    iget-object v5, p0, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    .line 143
    .line 144
    invoke-virtual {v4, v5}, Landroidx/fragment/app/h0;->a(Landroid/view/ViewGroup;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_4
    iget-object v3, p0, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-static {v3}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_5

    .line 163
    .line 164
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    check-cast v5, Landroidx/fragment/app/h0;

    .line 169
    .line 170
    iput-boolean v6, v5, Landroidx/fragment/app/h0;->g:Z

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_8

    .line 182
    .line 183
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    check-cast v4, Landroidx/fragment/app/h0;

    .line 188
    .line 189
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-eqz v5, :cond_7

    .line 194
    .line 195
    if-eqz v1, :cond_6

    .line 196
    .line 197
    const-string v5, ""

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v6, "Container "

    .line 206
    .line 207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object v6, p0, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    .line 211
    .line 212
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v6, " is not attached to window. "

    .line 216
    .line 217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    :goto_5
    const-string v6, "FragmentManager"

    .line 225
    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v8, "SpecialEffectsController: "

    .line 232
    .line 233
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v5, "Cancelling pending operation "

    .line 240
    .line 241
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    :cond_7
    iget-object v5, p0, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    .line 255
    .line 256
    invoke-virtual {v4, v5}, Landroidx/fragment/app/h0;->a(Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_8
    monitor-exit v2

    .line 261
    return-void

    .line 262
    :goto_6
    monitor-exit v2

    .line 263
    throw p0
.end method

.method public final k(Ljava/util/List;)V
    .locals 12

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    const/4 v3, 0x1

    .line 8
    if-ge v2, v0, :cond_b

    .line 9
    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    check-cast v4, Landroidx/fragment/app/h0;

    .line 15
    .line 16
    iget-object v5, v4, Landroidx/fragment/app/h0;->l:Landroidx/fragment/app/d0;

    .line 17
    .line 18
    iget-boolean v6, v4, Landroidx/fragment/app/h0;->h:Z

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    iput-boolean v3, v4, Landroidx/fragment/app/h0;->h:Z

    .line 25
    .line 26
    iget v3, v4, Landroidx/fragment/app/h0;->b:I

    .line 27
    .line 28
    const/4 v6, 0x2

    .line 29
    const-string v7, " for Fragment "

    .line 30
    .line 31
    const-string v8, "FragmentManager"

    .line 32
    .line 33
    if-ne v3, v6, :cond_8

    .line 34
    .line 35
    iget-object v3, v5, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v9, v3, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v9}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    if-eqz v9, :cond_1

    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    iput-object v9, v10, Ldr3;->k:Landroid/view/View;

    .line 53
    .line 54
    invoke-static {v6}, Landroidx/fragment/app/z;->K(I)Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-eqz v10, :cond_1

    .line 59
    .line 60
    new-instance v10, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v11, "requestFocus: Saved focused view "

    .line 63
    .line 64
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v4, v4, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 84
    .line 85
    invoke-virtual {v4}, Landroidx/fragment/app/o;->requireView()Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    const/4 v9, 0x0

    .line 94
    if-nez v7, :cond_3

    .line 95
    .line 96
    invoke-static {v6}, Landroidx/fragment/app/z;->K(I)Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_2

    .line 101
    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v10, "Adding fragment "

    .line 105
    .line 106
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v10, " view "

    .line 113
    .line 114
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v10, " to container in onStart"

    .line 121
    .line 122
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :cond_2
    invoke-virtual {v5}, Landroidx/fragment/app/d0;->b()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v9}, Landroid/view/View;->setAlpha(F)V

    .line 136
    .line 137
    .line 138
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    cmpg-float v5, v5, v9

    .line 143
    .line 144
    if-nez v5, :cond_5

    .line 145
    .line 146
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-nez v5, :cond_5

    .line 151
    .line 152
    invoke-static {v6}, Landroidx/fragment/app/z;->K(I)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_4

    .line 157
    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v7, "Making view "

    .line 161
    .line 162
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v7, " INVISIBLE in onStart"

    .line 169
    .line 170
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    :cond_4
    const/4 v5, 0x4

    .line 181
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    :cond_5
    iget-object v5, v3, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 185
    .line 186
    const/high16 v7, 0x3f800000    # 1.0f

    .line 187
    .line 188
    if-nez v5, :cond_6

    .line 189
    .line 190
    move v5, v7

    .line 191
    goto :goto_1

    .line 192
    :cond_6
    iget v5, v5, Ldr3;->j:F

    .line 193
    .line 194
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 195
    .line 196
    .line 197
    invoke-static {v6}, Landroidx/fragment/app/z;->K(I)Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_a

    .line 202
    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v5, "Setting view alpha to "

    .line 206
    .line 207
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v3, v3, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 211
    .line 212
    if-nez v3, :cond_7

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_7
    iget v7, v3, Ldr3;->j:F

    .line 216
    .line 217
    :goto_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v3, " in onStart"

    .line 221
    .line 222
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_8
    const/4 v4, 0x3

    .line 234
    if-ne v3, v4, :cond_a

    .line 235
    .line 236
    iget-object v3, v5, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 237
    .line 238
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3}, Landroidx/fragment/app/o;->requireView()Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-static {v6}, Landroidx/fragment/app/z;->K(I)Z

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-eqz v5, :cond_9

    .line 250
    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v6, "Clearing focus "

    .line 254
    .line 255
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v6, " on view "

    .line 266
    .line 267
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 287
    .line 288
    .line 289
    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-eqz v2, :cond_c

    .line 307
    .line 308
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    check-cast v2, Landroidx/fragment/app/h0;

    .line 313
    .line 314
    iget-object v2, v2, Landroidx/fragment/app/h0;->k:Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-static {v2, v0}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_c
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-static {p1}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    :goto_5
    if-ge v1, v0, :cond_e

    .line 333
    .line 334
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    check-cast v2, Lzj7;

    .line 339
    .line 340
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    iget-object v4, p0, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    .line 344
    .line 345
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    iget-boolean v5, v2, Lzj7;->a:Z

    .line 349
    .line 350
    if-nez v5, :cond_d

    .line 351
    .line 352
    invoke-virtual {v2, v4}, Lzj7;->d(Landroid/view/ViewGroup;)V

    .line 353
    .line 354
    .line 355
    :cond_d
    iput-boolean v3, v2, Lzj7;->a:Z

    .line 356
    .line 357
    add-int/lit8 v1, v1, 0x1

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_e
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/g;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/fragment/app/h0;

    .line 18
    .line 19
    iget v1, v0, Landroidx/fragment/app/h0;->b:I

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    iget-object v1, v0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/fragment/app/o;->requireView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    if-eq v1, v2, :cond_2

    .line 38
    .line 39
    const/16 v2, 0x8

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string p0, "Unknown visibility "

    .line 46
    .line 47
    invoke-static {v1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/h0;->d(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    return-void
.end method
