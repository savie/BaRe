.class public final Landroidx/fragment/app/x;
.super Lss5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/z;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/x;->a:Landroidx/fragment/app/z;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lss5;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final handleOnBackCancelled()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget-object p0, p0, Landroidx/fragment/app/x;->a:Landroidx/fragment/app/z;

    .line 7
    .line 8
    const-string v2, "FragmentManager"

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "handleOnBackCancelled. PREDICTIVE_BACK = true fragment manager "

    .line 15
    .line 16
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "cancelBackStackTransition for transition "

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    iput-boolean v1, v0, Landroidx/fragment/app/a;->s:Z

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 65
    .line 66
    new-instance v2, Lmr3;

    .line 67
    .line 68
    invoke-direct {v2, p0, v1}, Lmr3;-><init>(Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    iget-object v3, v0, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 72
    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    new-instance v3, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v3, v0, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 81
    .line 82
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroidx/fragment/app/a;->e()V

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Landroidx/fragment/app/z;->i:Z

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->z(Z)Z

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/z;->E()V

    .line 99
    .line 100
    .line 101
    iput-boolean v1, p0, Landroidx/fragment/app/z;->i:Z

    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 105
    .line 106
    :cond_3
    return-void
.end method

.method public final handleOnBackPressed()V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget-object p0, p0, Landroidx/fragment/app/x;->a:Landroidx/fragment/app/z;

    .line 7
    .line 8
    const-string v2, "FragmentManager"

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "handleOnBackPressed. PREDICTIVE_BACK = true fragment manager "

    .line 15
    .line 16
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/z;->j:Landroidx/fragment/app/x;

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/fragment/app/z;->n:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    iput-boolean v4, p0, Landroidx/fragment/app/z;->i:Z

    .line 35
    .line 36
    invoke-virtual {p0, v4}, Landroidx/fragment/app/z;->z(Z)Z

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    iput-boolean v5, p0, Landroidx/fragment/app/z;->i:Z

    .line 41
    .line 42
    iget-object v6, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 43
    .line 44
    if-eqz v6, :cond_b

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const/4 v7, 0x0

    .line 51
    if-nez v6, :cond_3

    .line 52
    .line 53
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 54
    .line 55
    iget-object v8, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 56
    .line 57
    invoke-static {v8}, Landroidx/fragment/app/z;->F(Landroidx/fragment/app/a;)Ljava/util/HashSet;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-direct {v6, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_3

    .line 73
    .line 74
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    if-nez v8, :cond_2

    .line 79
    .line 80
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-nez v9, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Landroidx/fragment/app/o;

    .line 96
    .line 97
    throw v7

    .line 98
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    iget-object v3, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 103
    .line 104
    iget-object v3, v3, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_5

    .line 115
    .line 116
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Lds3;

    .line 121
    .line 122
    iget-object v6, v6, Lds3;->b:Landroidx/fragment/app/o;

    .line 123
    .line 124
    if-eqz v6, :cond_4

    .line 125
    .line 126
    iput-boolean v5, v6, Landroidx/fragment/app/o;->mTransitioning:Z

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    .line 130
    .line 131
    iget-object v6, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 132
    .line 133
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v3, v5, v4}, Landroidx/fragment/app/z;->f(Ljava/util/ArrayList;II)Ljava/util/HashSet;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_7

    .line 153
    .line 154
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    check-cast v4, Landroidx/fragment/app/g;

    .line 159
    .line 160
    iget-object v5, v4, Landroidx/fragment/app/g;->c:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_6

    .line 167
    .line 168
    const-string v6, "SpecialEffectsController: Completing Back "

    .line 169
    .line 170
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    :cond_6
    invoke-virtual {v4, v5}, Landroidx/fragment/app/g;->k(Ljava/util/List;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v5}, Landroidx/fragment/app/g;->c(Ljava/util/List;)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_7
    iget-object v3, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 181
    .line 182
    iget-object v3, v3, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_9

    .line 193
    .line 194
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Lds3;

    .line 199
    .line 200
    iget-object v4, v4, Lds3;->b:Landroidx/fragment/app/o;

    .line 201
    .line 202
    if-eqz v4, :cond_8

    .line 203
    .line 204
    iget-object v5, v4, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 205
    .line 206
    if-nez v5, :cond_8

    .line 207
    .line 208
    invoke-virtual {p0, v4}, Landroidx/fragment/app/z;->g(Landroidx/fragment/app/o;)Landroidx/fragment/app/d0;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {v4}, Landroidx/fragment/app/d0;->k()V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_9
    iput-object v7, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 217
    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/z;->g0()V

    .line 219
    .line 220
    .line 221
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_a

    .line 226
    .line 227
    const-string v0, "Op is being set to null"

    .line 228
    .line 229
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v3, "OnBackPressedCallback enabled="

    .line 235
    .line 236
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Lss5;->isEnabled()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, " for  FragmentManager "

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    :cond_a
    return-void

    .line 262
    :cond_b
    invoke-virtual {v1}, Lss5;->isEnabled()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_d

    .line 267
    .line 268
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_c

    .line 273
    .line 274
    const-string v0, "Calling popBackStackImmediate via onBackPressed callback"

    .line 275
    .line 276
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/z;->R()Z

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :cond_d
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_e

    .line 288
    .line 289
    const-string v0, "Calling onBackPressed via onBackPressed callback"

    .line 290
    .line 291
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    :cond_e
    iget-object p0, p0, Landroidx/fragment/app/z;->g:Lzs5;

    .line 295
    .line 296
    invoke-virtual {p0}, Lzs5;->b()Lws5;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    invoke-virtual {p0}, Lrl5;->a()V

    .line 301
    .line 302
    .line 303
    return-void
.end method

.method public final handleOnBackProgressed(Lxj0;)V
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
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/fragment/app/x;->a:Landroidx/fragment/app/z;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "handleOnBackProgressed. PREDICTIVE_BACK = true fragment manager "

    .line 15
    .line 16
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 30
    .line 31
    if-eqz v1, :cond_6

    .line 32
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/fragment/app/z;->h:Landroidx/fragment/app/a;

    .line 36
    .line 37
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x1

    .line 46
    invoke-virtual {p0, v1, v3, v4}, Landroidx/fragment/app/z;->f(Ljava/util/ArrayList;II)Ljava/util/HashSet;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroidx/fragment/app/g;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v6, "SpecialEffectsController: Processing Progress "

    .line 78
    .line 79
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget v6, p1, Lxj0;->c:F

    .line 83
    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object v5, v4, Landroidx/fragment/app/g;->c:Ljava/util/ArrayList;

    .line 95
    .line 96
    new-instance v6, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_3

    .line 110
    .line 111
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    check-cast v7, Landroidx/fragment/app/h0;

    .line 116
    .line 117
    iget-object v7, v7, Landroidx/fragment/app/h0;->k:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-static {v7, v6}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    invoke-static {v6}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-static {v5}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    move v7, v3

    .line 136
    :goto_1
    if-ge v7, v6, :cond_1

    .line 137
    .line 138
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    check-cast v8, Lzj7;

    .line 143
    .line 144
    iget-object v9, v4, Landroidx/fragment/app/g;->a:Landroid/view/ViewGroup;

    .line 145
    .line 146
    invoke-virtual {v8, p1, v9}, Lzj7;->c(Lxj0;Landroid/view/ViewGroup;)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 v7, v7, 0x1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    iget-object p0, p0, Landroidx/fragment/app/z;->n:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_5

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    invoke-static {p0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    throw p0

    .line 170
    :cond_6
    :goto_2
    return-void
.end method

.method public final handleOnBackStarted(Lxj0;)V
    .locals 1

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-static {p1}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iget-object p0, p0, Landroidx/fragment/app/x;->a:Landroidx/fragment/app/z;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "handleOnBackStarted. PREDICTIVE_BACK = true fragment manager "

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/z;->w()V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroidx/fragment/app/y;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/z;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/z;->x(Lsr3;Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
