.class public final Lhl5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lwc5;


# instance fields
.field public a:Lfl5;

.field public b:Z

.field public c:I


# virtual methods
.method public final c(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lhl5;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    iget-object p0, p0, Lhl5;->a:Lfl5;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lfl5;->a()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object p1, p0, Lfl5;->h0:Lcl5;

    .line 16
    .line 17
    if-eqz p1, :cond_f

    .line 18
    .line 19
    iget-object v0, p0, Lfl5;->k:[Ldl5;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lfl5;->g0:Lhl5;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, v0, Lhl5;->b:Z

    .line 29
    .line 30
    invoke-virtual {p1}, Lcl5;->b()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lfl5;->g0:Lhl5;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p1, Lhl5;->b:Z

    .line 37
    .line 38
    iget-object p1, p0, Lfl5;->k:[Ldl5;

    .line 39
    .line 40
    if-eqz p1, :cond_e

    .line 41
    .line 42
    iget-object p1, p0, Lfl5;->h0:Lcl5;

    .line 43
    .line 44
    if-eqz p1, :cond_e

    .line 45
    .line 46
    iget-object p1, p1, Lcl5;->b:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-object v2, p0, Lfl5;->k:[Ldl5;

    .line 53
    .line 54
    array-length v2, v2

    .line 55
    if-eq p1, v2, :cond_3

    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_3
    move p1, v0

    .line 60
    :goto_0
    iget-object v2, p0, Lfl5;->k:[Ldl5;

    .line 61
    .line 62
    array-length v2, v2

    .line 63
    if-ge p1, v2, :cond_8

    .line 64
    .line 65
    iget-object v2, p0, Lfl5;->h0:Lcl5;

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Lcl5;->a(I)Landroid/view/MenuItem;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    instance-of v2, v2, Lnn2;

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    iget-object v2, p0, Lfl5;->k:[Ldl5;

    .line 76
    .line 77
    aget-object v2, v2, p1

    .line 78
    .line 79
    instance-of v2, v2, Lwk5;

    .line 80
    .line 81
    if-nez v2, :cond_4

    .line 82
    .line 83
    goto/16 :goto_5

    .line 84
    .line 85
    :cond_4
    iget-object v2, p0, Lfl5;->h0:Lcl5;

    .line 86
    .line 87
    invoke-virtual {v2, p1}, Lcl5;->a(I)Landroid/view/MenuItem;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    iget-object v2, p0, Lfl5;->k:[Ldl5;

    .line 98
    .line 99
    aget-object v2, v2, p1

    .line 100
    .line 101
    instance-of v2, v2, Ljl5;

    .line 102
    .line 103
    if-nez v2, :cond_5

    .line 104
    .line 105
    move v2, v1

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    move v2, v0

    .line 108
    :goto_1
    iget-object v3, p0, Lfl5;->h0:Lcl5;

    .line 109
    .line 110
    invoke-virtual {v3, p1}, Lcl5;->a(I)Landroid/view/MenuItem;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_6

    .line 119
    .line 120
    iget-object v3, p0, Lfl5;->k:[Ldl5;

    .line 121
    .line 122
    aget-object v3, v3, p1

    .line 123
    .line 124
    instance-of v3, v3, Lal5;

    .line 125
    .line 126
    if-nez v3, :cond_6

    .line 127
    .line 128
    move v3, v1

    .line 129
    goto :goto_2

    .line 130
    :cond_6
    move v3, v0

    .line 131
    :goto_2
    iget-object v4, p0, Lfl5;->h0:Lcl5;

    .line 132
    .line 133
    invoke-virtual {v4, p1}, Lcl5;->a(I)Landroid/view/MenuItem;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    instance-of v4, v4, Lnn2;

    .line 138
    .line 139
    if-nez v4, :cond_7

    .line 140
    .line 141
    if-nez v2, :cond_e

    .line 142
    .line 143
    if-eqz v3, :cond_7

    .line 144
    .line 145
    goto/16 :goto_5

    .line 146
    .line 147
    :cond_7
    add-int/lit8 p1, p1, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_8
    iget p1, p0, Lfl5;->n:I

    .line 151
    .line 152
    iget-object v2, p0, Lfl5;->h0:Lcl5;

    .line 153
    .line 154
    iget-object v2, v2, Lcl5;->b:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    move v3, v0

    .line 161
    :goto_3
    if-ge v3, v2, :cond_a

    .line 162
    .line 163
    iget-object v4, p0, Lfl5;->h0:Lcl5;

    .line 164
    .line 165
    invoke-virtual {v4, v3}, Lcl5;->a(I)Landroid/view/MenuItem;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_9

    .line 174
    .line 175
    invoke-virtual {p0, v4}, Lfl5;->setCheckedItem(Landroid/view/MenuItem;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    iput v4, p0, Lfl5;->n:I

    .line 183
    .line 184
    iput v3, p0, Lfl5;->p:I

    .line 185
    .line 186
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_a
    iget v3, p0, Lfl5;->n:I

    .line 190
    .line 191
    if-eq p1, v3, :cond_b

    .line 192
    .line 193
    iget-object p1, p0, Lfl5;->a:Lpb0;

    .line 194
    .line 195
    if-eqz p1, :cond_b

    .line 196
    .line 197
    invoke-static {p0, p1}, Lda8;->a(Landroid/view/ViewGroup;Ly98;)V

    .line 198
    .line 199
    .line 200
    :cond_b
    iget p1, p0, Lfl5;->e:I

    .line 201
    .line 202
    invoke-virtual {p0}, Lfl5;->getCurrentVisibleContentItemCount()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-static {p1, v3}, Lfl5;->g(II)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    move v3, v0

    .line 211
    :goto_4
    if-ge v3, v2, :cond_f

    .line 212
    .line 213
    iget-object v4, p0, Lfl5;->g0:Lhl5;

    .line 214
    .line 215
    iput-boolean v1, v4, Lhl5;->b:Z

    .line 216
    .line 217
    iget-object v4, p0, Lfl5;->k:[Ldl5;

    .line 218
    .line 219
    aget-object v4, v4, v3

    .line 220
    .line 221
    iget-boolean v5, p0, Lfl5;->m0:Z

    .line 222
    .line 223
    invoke-interface {v4, v5}, Ldl5;->setExpanded(Z)V

    .line 224
    .line 225
    .line 226
    iget-object v4, p0, Lfl5;->k:[Ldl5;

    .line 227
    .line 228
    aget-object v4, v4, v3

    .line 229
    .line 230
    instance-of v5, v4, Lal5;

    .line 231
    .line 232
    if-eqz v5, :cond_c

    .line 233
    .line 234
    check-cast v4, Lal5;

    .line 235
    .line 236
    iget v5, p0, Lfl5;->e:I

    .line 237
    .line 238
    invoke-virtual {v4, v5}, Lal5;->setLabelVisibilityMode(I)V

    .line 239
    .line 240
    .line 241
    iget v5, p0, Lfl5;->f:I

    .line 242
    .line 243
    invoke-virtual {v4, v5}, Lal5;->setItemIconGravity(I)V

    .line 244
    .line 245
    .line 246
    iget v5, p0, Lfl5;->c0:I

    .line 247
    .line 248
    invoke-virtual {v4, v5}, Lal5;->setItemGravity(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, p1}, Lal5;->setShifting(Z)V

    .line 252
    .line 253
    .line 254
    :cond_c
    iget-object v4, p0, Lfl5;->h0:Lcl5;

    .line 255
    .line 256
    invoke-virtual {v4, v3}, Lcl5;->a(I)Landroid/view/MenuItem;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    instance-of v4, v4, Lic5;

    .line 261
    .line 262
    if-eqz v4, :cond_d

    .line 263
    .line 264
    iget-object v4, p0, Lfl5;->k:[Ldl5;

    .line 265
    .line 266
    aget-object v4, v4, v3

    .line 267
    .line 268
    iget-object v5, p0, Lfl5;->h0:Lcl5;

    .line 269
    .line 270
    invoke-virtual {v5, v3}, Lcl5;->a(I)Landroid/view/MenuItem;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    check-cast v5, Lic5;

    .line 275
    .line 276
    invoke-interface {v4, v5}, Lyc5;->a(Lic5;)V

    .line 277
    .line 278
    .line 279
    :cond_d
    iget-object v4, p0, Lfl5;->g0:Lhl5;

    .line 280
    .line 281
    iput-boolean v0, v4, Lhl5;->b:Z

    .line 282
    .line 283
    add-int/lit8 v3, v3, 0x1

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_e
    :goto_5
    invoke-virtual {p0}, Lfl5;->a()V

    .line 287
    .line 288
    .line 289
    :cond_f
    :goto_6
    return-void
.end method

.method public final d(Lfc5;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Llr7;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final f()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final g(Lic5;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lhl5;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public final h(Landroid/os/Parcelable;)V
    .locals 7

    .line 1
    instance-of v0, p1, Lgl5;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lhl5;->a:Lfl5;

    .line 6
    .line 7
    check-cast p1, Lgl5;

    .line 8
    .line 9
    iget v1, p1, Lgl5;->a:I

    .line 10
    .line 11
    iget-object v2, v0, Lfl5;->h0:Lcl5;

    .line 12
    .line 13
    iget-object v2, v2, Lcl5;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    if-ge v4, v2, :cond_1

    .line 22
    .line 23
    iget-object v5, v0, Lfl5;->h0:Lcl5;

    .line 24
    .line 25
    invoke-virtual {v5, v4}, Lcl5;->a(I)Landroid/view/MenuItem;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ne v1, v6, :cond_0

    .line 34
    .line 35
    iput v1, v0, Lfl5;->n:I

    .line 36
    .line 37
    iput v4, v0, Lfl5;->p:I

    .line 38
    .line 39
    invoke-virtual {v0, v5}, Lfl5;->setCheckedItem(Landroid/view/MenuItem;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    iget-object v0, p0, Lhl5;->a:Lfl5;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object p1, p1, Lgl5;->b:Lyw5;

    .line 53
    .line 54
    new-instance v1, Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 61
    .line 62
    .line 63
    move v2, v3

    .line 64
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-ge v2, v4, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Lxk0;

    .line 79
    .line 80
    if-eqz v5, :cond_2

    .line 81
    .line 82
    new-instance v6, Lwk0;

    .line 83
    .line 84
    invoke-direct {v6, v0, v5}, Lwk0;-><init>(Landroid/content/Context;Lxk0;)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_2
    const/4 v6, 0x0

    .line 89
    :goto_3
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    iget-object p0, p0, Lhl5;->a:Lfl5;

    .line 96
    .line 97
    iget-object p1, p0, Lfl5;->N:Landroid/util/SparseArray;

    .line 98
    .line 99
    move v0, v3

    .line 100
    :goto_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-ge v0, v2, :cond_5

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-gez v4, :cond_4

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Lwk0;

    .line 121
    .line 122
    invoke-virtual {p1, v2, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_5
    iget-object p0, p0, Lfl5;->k:[Ldl5;

    .line 129
    .line 130
    if-eqz p0, :cond_7

    .line 131
    .line 132
    array-length v0, p0

    .line 133
    :goto_5
    if-ge v3, v0, :cond_7

    .line 134
    .line 135
    aget-object v1, p0, v3

    .line 136
    .line 137
    instance-of v2, v1, Lal5;

    .line 138
    .line 139
    if-eqz v2, :cond_6

    .line 140
    .line 141
    check-cast v1, Lal5;

    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Lwk0;

    .line 152
    .line 153
    if-eqz v2, :cond_6

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Lal5;->setBadge(Lwk0;)V

    .line 156
    .line 157
    .line 158
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_7
    return-void
.end method

.method public final j(Lic5;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final l(Landroid/content/Context;Lfc5;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lhl5;->a:Lfl5;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lfl5;->b(Lfc5;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m()Landroid/os/Parcelable;
    .locals 5

    .line 1
    new-instance v0, Lgl5;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lhl5;->a:Lfl5;

    .line 7
    .line 8
    invoke-virtual {v1}, Lfl5;->getSelectedItemId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput v1, v0, Lgl5;->a:I

    .line 13
    .line 14
    iget-object p0, p0, Lhl5;->a:Lfl5;

    .line 15
    .line 16
    invoke-virtual {p0}, Lfl5;->getBadgeDrawables()Landroid/util/SparseArray;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v1, Lyw5;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ge v2, v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lwk0;

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    iget-object v4, v4, Lwk0;->e:Lyk0;

    .line 45
    .line 46
    iget-object v4, v4, Lyk0;->a:Lxk0;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 v4, 0x0

    .line 50
    :goto_1
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iput-object v1, v0, Lgl5;->b:Lyw5;

    .line 57
    .line 58
    return-object v0
.end method
