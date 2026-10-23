.class public final Lhp1;
.super Lam0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public A:Lyl0;

.field public final B:Ljava/util/ArrayList;

.field public final C:Landroid/graphics/RectF;

.field public final D:Landroid/graphics/RectF;

.field public final E:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lc35;Ljs4;Ljava/util/List;Le25;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2}, Lam0;-><init>(Lc35;Ljs4;)V

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
    iput-object v0, p0, Lhp1;->B:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lhp1;->C:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lhp1;->D:Landroid/graphics/RectF;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lhp1;->E:Landroid/graphics/Paint;

    .line 31
    .line 32
    iget-object p2, p2, Ljs4;->s:Lbc;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p2}, Lbc;->n()Lyl0;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lhp1;->A:Lyl0;

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Lam0;->g(Lyl0;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lhp1;->A:Lyl0;

    .line 47
    .line 48
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iput-object v0, p0, Lhp1;->A:Lyl0;

    .line 53
    .line 54
    :goto_0
    new-instance p2, Lv15;

    .line 55
    .line 56
    iget-object v1, p4, Le25;->i:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-direct {p2, v1}, Lv15;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const/4 v2, 0x1

    .line 70
    sub-int/2addr v1, v2

    .line 71
    move-object v3, v0

    .line 72
    :goto_1
    const/4 v4, 0x0

    .line 73
    if-ltz v1, :cond_a

    .line 74
    .line 75
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Ljs4;

    .line 80
    .line 81
    iget v6, v5, Ljs4;->e:I

    .line 82
    .line 83
    invoke-static {v6}, Ldj7;->A(I)I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    const/4 v7, 0x2

    .line 88
    if-eqz v6, :cond_6

    .line 89
    .line 90
    if-eq v6, v2, :cond_5

    .line 91
    .line 92
    if-eq v6, v7, :cond_4

    .line 93
    .line 94
    const/4 v8, 0x3

    .line 95
    if-eq v6, v8, :cond_3

    .line 96
    .line 97
    const/4 v8, 0x4

    .line 98
    if-eq v6, v8, :cond_2

    .line 99
    .line 100
    const/4 v8, 0x5

    .line 101
    if-eq v6, v8, :cond_1

    .line 102
    .line 103
    iget v6, v5, Ljs4;->e:I

    .line 104
    .line 105
    packed-switch v6, :pswitch_data_0

    .line 106
    .line 107
    .line 108
    const-string v6, "null"

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :pswitch_0
    const-string v6, "UNKNOWN"

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :pswitch_1
    const-string v6, "TEXT"

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :pswitch_2
    const-string v6, "SHAPE"

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :pswitch_3
    const-string v6, "NULL"

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :pswitch_4
    const-string v6, "IMAGE"

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :pswitch_5
    const-string v6, "SOLID"

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :pswitch_6
    const-string v6, "PRE_COMP"

    .line 130
    .line 131
    :goto_2
    const-string v8, "Unknown layer type "

    .line 132
    .line 133
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-static {v6}, Lm15;->b(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    move-object v6, v0

    .line 141
    goto :goto_3

    .line 142
    :cond_1
    new-instance v6, Ll18;

    .line 143
    .line 144
    invoke-direct {v6, p1, v5}, Ll18;-><init>(Lc35;Ljs4;)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_2
    new-instance v6, Lec7;

    .line 149
    .line 150
    invoke-direct {v6, p1, v5, p0}, Lec7;-><init>(Lc35;Ljs4;Lhp1;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_3
    new-instance v6, Lop5;

    .line 155
    .line 156
    invoke-direct {v6, p1, v5}, Lam0;-><init>(Lc35;Ljs4;)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_4
    new-instance v6, Lz94;

    .line 161
    .line 162
    invoke-direct {v6, p1, v5}, Lz94;-><init>(Lc35;Ljs4;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_5
    new-instance v6, Lcj7;

    .line 167
    .line 168
    invoke-direct {v6, p1, v5}, Lcj7;-><init>(Lc35;Ljs4;)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_6
    new-instance v6, Lhp1;

    .line 173
    .line 174
    iget-object v8, v5, Ljs4;->g:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v9, p4, Le25;->c:Ljava/util/HashMap;

    .line 177
    .line 178
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    check-cast v8, Ljava/util/List;

    .line 183
    .line 184
    invoke-direct {v6, p1, v5, v8, p4}, Lhp1;-><init>(Lc35;Ljs4;Ljava/util/List;Le25;)V

    .line 185
    .line 186
    .line 187
    :goto_3
    if-nez v6, :cond_7

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_7
    iget-object v8, v6, Lam0;->n:Ljs4;

    .line 191
    .line 192
    iget-wide v8, v8, Ljs4;->d:J

    .line 193
    .line 194
    invoke-virtual {p2, v6, v8, v9}, Lv15;->e(Ljava/lang/Object;J)V

    .line 195
    .line 196
    .line 197
    if-eqz v3, :cond_8

    .line 198
    .line 199
    iput-object v6, v3, Lam0;->q:Lam0;

    .line 200
    .line 201
    move-object v3, v0

    .line 202
    goto :goto_4

    .line 203
    :cond_8
    iget-object v8, p0, Lhp1;->B:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v8, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iget v4, v5, Ljs4;->u:I

    .line 209
    .line 210
    invoke-static {v4}, Ldj7;->A(I)I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eq v4, v2, :cond_9

    .line 215
    .line 216
    if-eq v4, v7, :cond_9

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_9
    move-object v3, v6

    .line 220
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :cond_a
    :goto_5
    invoke-virtual {p2}, Lv15;->f()I

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    if-ge v4, p0, :cond_d

    .line 229
    .line 230
    invoke-virtual {p2, v4}, Lv15;->d(I)J

    .line 231
    .line 232
    .line 233
    move-result-wide p0

    .line 234
    invoke-virtual {p2, p0, p1}, Lv15;->b(J)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    check-cast p0, Lam0;

    .line 239
    .line 240
    if-nez p0, :cond_b

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_b
    iget-object p1, p0, Lam0;->n:Ljs4;

    .line 244
    .line 245
    iget-wide p3, p1, Ljs4;->f:J

    .line 246
    .line 247
    invoke-virtual {p2, p3, p4}, Lv15;->b(J)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Lam0;

    .line 252
    .line 253
    if-eqz p1, :cond_c

    .line 254
    .line 255
    iput-object p1, p0, Lam0;->r:Lam0;

    .line 256
    .line 257
    :cond_c
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_d
    return-void

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lam0;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lhp1;->B:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    const/4 v0, 0x1

    .line 11
    sub-int/2addr p3, v0

    .line 12
    :goto_0
    if-ltz p3, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lhp1;->C:Landroid/graphics/RectF;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lam0;

    .line 25
    .line 26
    iget-object v3, p0, Lam0;->l:Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {v2, v1, v3, v0}, Lam0;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p3, p3, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public final f(Lcd;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lam0;->f(Lcd;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lf35;->z:Ljava/lang/Float;

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    new-instance p2, Lxi8;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p2, p1, v0}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lhp1;->A:Lyl0;

    .line 15
    .line 16
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lhp1;->A:Lyl0;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lam0;->g(Lyl0;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lam0;->n:Ljs4;

    .line 2
    .line 3
    iget v1, v0, Ljs4;->o:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget v0, v0, Ljs4;->p:I

    .line 7
    .line 8
    int-to-float v0, v0

    .line 9
    iget-object v2, p0, Lhp1;->D:Landroid/graphics/RectF;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lam0;->m:Lc35;

    .line 19
    .line 20
    iget-boolean v0, v0, Lc35;->I:Z

    .line 21
    .line 22
    const/16 v1, 0xff

    .line 23
    .line 24
    iget-object v3, p0, Lhp1;->B:Ljava/util/ArrayList;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-le v0, v4, :cond_0

    .line 34
    .line 35
    if-eq p3, v1, :cond_0

    .line 36
    .line 37
    move v0, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lhp1;->E:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v2, p0}, Lmi8;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 52
    .line 53
    .line 54
    :goto_1
    if-eqz v0, :cond_2

    .line 55
    .line 56
    move p3, v1

    .line 57
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    sub-int/2addr p0, v4

    .line 62
    :goto_2
    if-ltz p0, :cond_5

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    move v0, v4

    .line 76
    :goto_3
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lam0;

    .line 83
    .line 84
    invoke-virtual {v0, p1, p2, p3}, Lam0;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 85
    .line 86
    .line 87
    :cond_4
    add-int/lit8 p0, p0, -0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lzv1;->d()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final q(Lpo4;ILjava/util/ArrayList;Lpo4;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lhp1;->B:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lam0;

    .line 15
    .line 16
    invoke-virtual {v1, p1, p2, p3, p4}, Lam0;->d(Lpo4;ILjava/util/ArrayList;Lpo4;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final r(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lam0;->r(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lhp1;->B:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lam0;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lam0;->r(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final s(F)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lam0;->s(F)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lhp1;->A:Lyl0;

    .line 5
    .line 6
    iget-object v1, p0, Lam0;->n:Ljs4;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lam0;->m:Lc35;

    .line 11
    .line 12
    iget-object p1, p1, Lc35;->b:Le25;

    .line 13
    .line 14
    iget v2, p1, Le25;->l:F

    .line 15
    .line 16
    iget p1, p1, Le25;->k:F

    .line 17
    .line 18
    sub-float/2addr v2, p1

    .line 19
    const p1, 0x3c23d70a    # 0.01f

    .line 20
    .line 21
    .line 22
    add-float/2addr v2, p1

    .line 23
    iget-object p1, v1, Ljs4;->b:Le25;

    .line 24
    .line 25
    iget p1, p1, Le25;->k:F

    .line 26
    .line 27
    invoke-virtual {v0}, Lyl0;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Float;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v3, v1, Ljs4;->b:Le25;

    .line 38
    .line 39
    iget v3, v3, Le25;->m:F

    .line 40
    .line 41
    mul-float/2addr v0, v3

    .line 42
    sub-float/2addr v0, p1

    .line 43
    div-float p1, v0, v2

    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lhp1;->A:Lyl0;

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget v0, v1, Ljs4;->n:F

    .line 50
    .line 51
    iget-object v2, v1, Ljs4;->b:Le25;

    .line 52
    .line 53
    iget v3, v2, Le25;->l:F

    .line 54
    .line 55
    iget v2, v2, Le25;->k:F

    .line 56
    .line 57
    sub-float/2addr v3, v2

    .line 58
    div-float/2addr v0, v3

    .line 59
    sub-float/2addr p1, v0

    .line 60
    :cond_1
    iget v0, v1, Ljs4;->m:F

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    cmpl-float v0, v0, v2

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    const-string v0, "__container"

    .line 68
    .line 69
    iget-object v2, v1, Ljs4;->c:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    iget v0, v1, Ljs4;->m:F

    .line 78
    .line 79
    div-float/2addr p1, v0

    .line 80
    :cond_2
    iget-object p0, p0, Lhp1;->B:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    add-int/lit8 v0, v0, -0x1

    .line 87
    .line 88
    :goto_0
    if-ltz v0, :cond_3

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lam0;

    .line 95
    .line 96
    invoke-virtual {v1, p1}, Lam0;->s(F)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v0, v0, -0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    return-void
.end method
