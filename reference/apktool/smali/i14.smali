.class public final Li14;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrp2;
.implements Lul0;
.implements Lro4;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lam0;

.field public final d:Lv15;

.field public final e:Lv15;

.field public final f:Landroid/graphics/Path;

.field public final g:Lvp4;

.field public final h:Landroid/graphics/RectF;

.field public final i:Ljava/util/ArrayList;

.field public final j:I

.field public final k:Lf14;

.field public final l:Lqd4;

.field public final m:Le26;

.field public final n:Le26;

.field public o:Lxi8;

.field public p:Lxi8;

.field public final q:Lc35;

.field public final r:I

.field public s:Lyl0;

.field public t:F

.field public final u:Lhq2;


# direct methods
.method public constructor <init>(Lc35;Lam0;Lh14;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv15;

    .line 5
    .line 6
    invoke-direct {v0}, Lv15;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Li14;->d:Lv15;

    .line 10
    .line 11
    new-instance v0, Lv15;

    .line 12
    .line 13
    invoke-direct {v0}, Lv15;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Li14;->e:Lv15;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Path;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Li14;->f:Landroid/graphics/Path;

    .line 24
    .line 25
    new-instance v1, Lvp4;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v1, v2, v3}, Lvp4;-><init>(II)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Li14;->g:Lvp4;

    .line 33
    .line 34
    new-instance v1, Landroid/graphics/RectF;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Li14;->h:Landroid/graphics/RectF;

    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Li14;->i:Ljava/util/ArrayList;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    iput v1, p0, Li14;->t:F

    .line 50
    .line 51
    iput-object p2, p0, Li14;->c:Lam0;

    .line 52
    .line 53
    iget-object v1, p3, Lh14;->g:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v1, p0, Li14;->a:Ljava/lang/String;

    .line 56
    .line 57
    iget-boolean v1, p3, Lh14;->h:Z

    .line 58
    .line 59
    iput-boolean v1, p0, Li14;->b:Z

    .line 60
    .line 61
    iput-object p1, p0, Li14;->q:Lc35;

    .line 62
    .line 63
    iget v1, p3, Lh14;->a:I

    .line 64
    .line 65
    iput v1, p0, Li14;->j:I

    .line 66
    .line 67
    iget-object v1, p3, Lh14;->b:Landroid/graphics/Path$FillType;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p1, Lc35;->b:Le25;

    .line 73
    .line 74
    invoke-virtual {p1}, Le25;->b()F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    const/high16 v0, 0x42000000    # 32.0f

    .line 79
    .line 80
    div-float/2addr p1, v0

    .line 81
    float-to-int p1, p1

    .line 82
    iput p1, p0, Li14;->r:I

    .line 83
    .line 84
    iget-object p1, p3, Lh14;->c:Lcc;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcc;->n()Lyl0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    move-object v0, p1

    .line 91
    check-cast v0, Lf14;

    .line 92
    .line 93
    iput-object v0, p0, Li14;->k:Lf14;

    .line 94
    .line 95
    invoke-virtual {p1, p0}, Lyl0;->a(Lul0;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p1}, Lam0;->g(Lyl0;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p3, Lh14;->d:Ldc;

    .line 102
    .line 103
    invoke-virtual {p1}, Ldc;->n()Lyl0;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    move-object v0, p1

    .line 108
    check-cast v0, Lqd4;

    .line 109
    .line 110
    iput-object v0, p0, Li14;->l:Lqd4;

    .line 111
    .line 112
    invoke-virtual {p1, p0}, Lyl0;->a(Lul0;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p1}, Lam0;->g(Lyl0;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p3, Lh14;->e:Lfc;

    .line 119
    .line 120
    invoke-virtual {p1}, Lfc;->n()Lyl0;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    move-object v0, p1

    .line 125
    check-cast v0, Le26;

    .line 126
    .line 127
    iput-object v0, p0, Li14;->m:Le26;

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Lyl0;->a(Lul0;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p1}, Lam0;->g(Lyl0;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p3, Lh14;->f:Lfc;

    .line 136
    .line 137
    invoke-virtual {p1}, Lfc;->n()Lyl0;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    move-object p3, p1

    .line 142
    check-cast p3, Le26;

    .line 143
    .line 144
    iput-object p3, p0, Li14;->n:Le26;

    .line 145
    .line 146
    invoke-virtual {p1, p0}, Lyl0;->a(Lul0;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p1}, Lam0;->g(Lyl0;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Lam0;->l()Lz28;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_0

    .line 157
    .line 158
    invoke-virtual {p2}, Lam0;->l()Lz28;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-object p1, p1, Lz28;->b:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p1, Lbc;

    .line 165
    .line 166
    invoke-virtual {p1}, Lbc;->n()Lyl0;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iput-object p1, p0, Li14;->s:Lyl0;

    .line 171
    .line 172
    invoke-virtual {p1, p0}, Lyl0;->a(Lul0;)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Li14;->s:Lyl0;

    .line 176
    .line 177
    invoke-virtual {p2, p1}, Lam0;->g(Lyl0;)V

    .line 178
    .line 179
    .line 180
    :cond_0
    invoke-virtual {p2}, Lam0;->m()Lnz4;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-eqz p1, :cond_1

    .line 185
    .line 186
    new-instance p1, Lhq2;

    .line 187
    .line 188
    invoke-virtual {p2}, Lam0;->m()Lnz4;

    .line 189
    .line 190
    .line 191
    move-result-object p3

    .line 192
    invoke-direct {p1, p0, p2, p3}, Lhq2;-><init>(Lul0;Lam0;Lnz4;)V

    .line 193
    .line 194
    .line 195
    iput-object p1, p0, Li14;->u:Lhq2;

    .line 196
    .line 197
    :cond_1
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .line 1
    iget-object p0, p0, Li14;->q:Lc35;

    .line 2
    .line 3
    invoke-virtual {p0}, Lc35;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-ge p1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lgu1;

    .line 13
    .line 14
    instance-of v1, v0, Lhy5;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Li14;->i:Ljava/util/ArrayList;

    .line 19
    .line 20
    check-cast v0, Lhy5;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public final d(Lpo4;ILjava/util/ArrayList;Lpo4;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Lsg5;->e(Lpo4;ILjava/util/ArrayList;Lpo4;Lro4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    .line 1
    iget-object p3, p0, Li14;->f:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, Li14;->i:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v1, v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lhy5;

    .line 21
    .line 22
    invoke-interface {v2}, Lhy5;->a()Landroid/graphics/Path;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p3, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 33
    .line 34
    .line 35
    iget p0, p1, Landroid/graphics/RectF;->left:F

    .line 36
    .line 37
    const/high16 p2, 0x3f800000    # 1.0f

    .line 38
    .line 39
    sub-float/2addr p0, p2

    .line 40
    iget p3, p1, Landroid/graphics/RectF;->top:F

    .line 41
    .line 42
    sub-float/2addr p3, p2

    .line 43
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 44
    .line 45
    add-float/2addr v0, p2

    .line 46
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 47
    .line 48
    add-float/2addr v1, p2

    .line 49
    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final f(Lcd;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lf35;->a:Landroid/graphics/PointF;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Li14;->l:Lqd4;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v0, Lf35;->F:Landroid/graphics/ColorFilter;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iget-object v2, p0, Li14;->c:Lam0;

    .line 20
    .line 21
    if-ne p2, v0, :cond_2

    .line 22
    .line 23
    iget-object p2, p0, Li14;->o:Lxi8;

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2, p2}, Lam0;->p(Lyl0;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    new-instance p2, Lxi8;

    .line 31
    .line 32
    invoke-direct {p2, p1, v1}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Li14;->o:Lxi8;

    .line 36
    .line 37
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Li14;->o:Lxi8;

    .line 41
    .line 42
    invoke-virtual {v2, p0}, Lam0;->g(Lyl0;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    sget-object v0, Lf35;->G:[Ljava/lang/Integer;

    .line 47
    .line 48
    if-ne p2, v0, :cond_4

    .line 49
    .line 50
    iget-object p2, p0, Li14;->p:Lxi8;

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    invoke-virtual {v2, p2}, Lam0;->p(Lyl0;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object p2, p0, Li14;->d:Lv15;

    .line 58
    .line 59
    invoke-virtual {p2}, Lv15;->a()V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Li14;->e:Lv15;

    .line 63
    .line 64
    invoke-virtual {p2}, Lv15;->a()V

    .line 65
    .line 66
    .line 67
    new-instance p2, Lxi8;

    .line 68
    .line 69
    invoke-direct {p2, p1, v1}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iput-object p2, p0, Li14;->p:Lxi8;

    .line 73
    .line 74
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Li14;->p:Lxi8;

    .line 78
    .line 79
    invoke-virtual {v2, p0}, Lam0;->g(Lyl0;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_4
    sget-object v0, Lf35;->e:Ljava/lang/Float;

    .line 84
    .line 85
    if-ne p2, v0, :cond_6

    .line 86
    .line 87
    iget-object p2, p0, Li14;->s:Lyl0;

    .line 88
    .line 89
    if-eqz p2, :cond_5

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Lyl0;->k(Lcd;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_5
    new-instance p2, Lxi8;

    .line 96
    .line 97
    invoke-direct {p2, p1, v1}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iput-object p2, p0, Li14;->s:Lyl0;

    .line 101
    .line 102
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Li14;->s:Lyl0;

    .line 106
    .line 107
    invoke-virtual {v2, p0}, Lam0;->g(Lyl0;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_6
    const/4 v0, 0x5

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object p0, p0, Li14;->u:Lhq2;

    .line 117
    .line 118
    if-ne p2, v0, :cond_7

    .line 119
    .line 120
    if-eqz p0, :cond_7

    .line 121
    .line 122
    iget-object p0, p0, Lhq2;->b:Ltl1;

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_7
    sget-object v0, Lf35;->B:Ljava/lang/Float;

    .line 129
    .line 130
    if-ne p2, v0, :cond_8

    .line 131
    .line 132
    if-eqz p0, :cond_8

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Lhq2;->c(Lcd;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_8
    sget-object v0, Lf35;->C:Ljava/lang/Float;

    .line 139
    .line 140
    if-ne p2, v0, :cond_9

    .line 141
    .line 142
    if-eqz p0, :cond_9

    .line 143
    .line 144
    iget-object p0, p0, Lhq2;->d:Lxh3;

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_9
    sget-object v0, Lf35;->D:Ljava/lang/Float;

    .line 151
    .line 152
    if-ne p2, v0, :cond_a

    .line 153
    .line 154
    if-eqz p0, :cond_a

    .line 155
    .line 156
    iget-object p0, p0, Lhq2;->e:Lxh3;

    .line 157
    .line 158
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_a
    sget-object v0, Lf35;->E:Ljava/lang/Float;

    .line 163
    .line 164
    if-ne p2, v0, :cond_b

    .line 165
    .line 166
    if-eqz p0, :cond_b

    .line 167
    .line 168
    iget-object p0, p0, Lhq2;->f:Lxh3;

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 171
    .line 172
    .line 173
    :cond_b
    return-void
.end method

.method public final g([I)[I
    .locals 3

    .line 1
    iget-object p0, p0, Li14;->p:Lxi8;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lxi8;->f()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, [Ljava/lang/Integer;

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    :goto_0
    array-length v0, p1

    .line 17
    if-ge v2, v0, :cond_1

    .line 18
    .line 19
    aget-object v0, p0, v2

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    aput v0, p1, v2

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    array-length p1, p0

    .line 31
    new-array p1, p1, [I

    .line 32
    .line 33
    :goto_1
    array-length v0, p0

    .line 34
    if-ge v2, v0, :cond_1

    .line 35
    .line 36
    aget-object v0, p0, v2

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    aput v0, p1, v2

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Li14;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-boolean v2, v0, Li14;->b:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, v0, Li14;->f:Landroid/graphics/Path;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    iget-object v5, v0, Li14;->i:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-ge v4, v6, :cond_1

    .line 24
    .line 25
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lhy5;

    .line 30
    .line 31
    invoke-interface {v5}, Lhy5;->a()Landroid/graphics/Path;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v2, v5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v4, v0, Li14;->h:Landroid/graphics/RectF;

    .line 42
    .line 43
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 44
    .line 45
    .line 46
    iget v4, v0, Li14;->j:I

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    const/4 v6, 0x0

    .line 50
    iget-object v7, v0, Li14;->k:Lf14;

    .line 51
    .line 52
    iget-object v8, v0, Li14;->n:Le26;

    .line 53
    .line 54
    iget-object v9, v0, Li14;->m:Le26;

    .line 55
    .line 56
    if-ne v4, v5, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Li14;->i()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    int-to-long v4, v4

    .line 63
    iget-object v10, v0, Li14;->d:Lv15;

    .line 64
    .line 65
    invoke-virtual {v10, v4, v5}, Lv15;->b(J)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    check-cast v11, Landroid/graphics/LinearGradient;

    .line 70
    .line 71
    if-eqz v11, :cond_2

    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_2
    invoke-virtual {v9}, Lyl0;->f()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    check-cast v9, Landroid/graphics/PointF;

    .line 80
    .line 81
    invoke-virtual {v8}, Lyl0;->f()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    check-cast v8, Landroid/graphics/PointF;

    .line 86
    .line 87
    invoke-virtual {v7}, Lyl0;->f()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    check-cast v7, Le14;

    .line 92
    .line 93
    iget-object v11, v7, Le14;->b:[I

    .line 94
    .line 95
    invoke-virtual {v0, v11}, Li14;->g([I)[I

    .line 96
    .line 97
    .line 98
    move-result-object v17

    .line 99
    iget-object v7, v7, Le14;->a:[F

    .line 100
    .line 101
    new-instance v12, Landroid/graphics/LinearGradient;

    .line 102
    .line 103
    iget v13, v9, Landroid/graphics/PointF;->x:F

    .line 104
    .line 105
    iget v14, v9, Landroid/graphics/PointF;->y:F

    .line 106
    .line 107
    iget v15, v8, Landroid/graphics/PointF;->x:F

    .line 108
    .line 109
    iget v8, v8, Landroid/graphics/PointF;->y:F

    .line 110
    .line 111
    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 112
    .line 113
    move-object/from16 v18, v7

    .line 114
    .line 115
    move/from16 v16, v8

    .line 116
    .line 117
    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v12, v4, v5}, Lv15;->e(Ljava/lang/Object;J)V

    .line 121
    .line 122
    .line 123
    :goto_1
    move-object v11, v12

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    invoke-virtual {v0}, Li14;->i()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    int-to-long v4, v4

    .line 130
    iget-object v10, v0, Li14;->e:Lv15;

    .line 131
    .line 132
    invoke-virtual {v10, v4, v5}, Lv15;->b(J)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    check-cast v11, Landroid/graphics/RadialGradient;

    .line 137
    .line 138
    if-eqz v11, :cond_4

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    invoke-virtual {v9}, Lyl0;->f()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    check-cast v9, Landroid/graphics/PointF;

    .line 146
    .line 147
    invoke-virtual {v8}, Lyl0;->f()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    check-cast v8, Landroid/graphics/PointF;

    .line 152
    .line 153
    invoke-virtual {v7}, Lyl0;->f()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    check-cast v7, Le14;

    .line 158
    .line 159
    iget-object v11, v7, Le14;->b:[I

    .line 160
    .line 161
    invoke-virtual {v0, v11}, Li14;->g([I)[I

    .line 162
    .line 163
    .line 164
    move-result-object v16

    .line 165
    iget-object v7, v7, Le14;->a:[F

    .line 166
    .line 167
    iget v13, v9, Landroid/graphics/PointF;->x:F

    .line 168
    .line 169
    iget v14, v9, Landroid/graphics/PointF;->y:F

    .line 170
    .line 171
    iget v9, v8, Landroid/graphics/PointF;->x:F

    .line 172
    .line 173
    iget v8, v8, Landroid/graphics/PointF;->y:F

    .line 174
    .line 175
    sub-float/2addr v9, v13

    .line 176
    float-to-double v11, v9

    .line 177
    sub-float/2addr v8, v14

    .line 178
    float-to-double v8, v8

    .line 179
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 180
    .line 181
    .line 182
    move-result-wide v8

    .line 183
    double-to-float v8, v8

    .line 184
    cmpg-float v9, v8, v6

    .line 185
    .line 186
    if-gtz v9, :cond_5

    .line 187
    .line 188
    const v8, 0x3a83126f    # 0.001f

    .line 189
    .line 190
    .line 191
    :cond_5
    move v15, v8

    .line 192
    new-instance v12, Landroid/graphics/RadialGradient;

    .line 193
    .line 194
    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 195
    .line 196
    move-object/from16 v17, v7

    .line 197
    .line 198
    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v10, v12, v4, v5}, Lv15;->e(Ljava/lang/Object;J)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :goto_2
    invoke-virtual {v11, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Li14;->g:Lvp4;

    .line 209
    .line 210
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 211
    .line 212
    .line 213
    iget-object v4, v0, Li14;->o:Lxi8;

    .line 214
    .line 215
    if-eqz v4, :cond_6

    .line 216
    .line 217
    invoke-virtual {v4}, Lxi8;->f()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    check-cast v4, Landroid/graphics/ColorFilter;

    .line 222
    .line 223
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 224
    .line 225
    .line 226
    :cond_6
    iget-object v4, v0, Li14;->s:Lyl0;

    .line 227
    .line 228
    if-eqz v4, :cond_9

    .line 229
    .line 230
    invoke-virtual {v4}, Lyl0;->f()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    check-cast v4, Ljava/lang/Float;

    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    cmpl-float v5, v4, v6

    .line 241
    .line 242
    if-nez v5, :cond_7

    .line 243
    .line 244
    const/4 v5, 0x0

    .line 245
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_7
    iget v5, v0, Li14;->t:F

    .line 250
    .line 251
    cmpl-float v5, v4, v5

    .line 252
    .line 253
    if-eqz v5, :cond_8

    .line 254
    .line 255
    new-instance v5, Landroid/graphics/BlurMaskFilter;

    .line 256
    .line 257
    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 258
    .line 259
    invoke-direct {v5, v4, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 263
    .line 264
    .line 265
    :cond_8
    :goto_3
    iput v4, v0, Li14;->t:F

    .line 266
    .line 267
    :cond_9
    iget-object v4, v0, Li14;->u:Lhq2;

    .line 268
    .line 269
    if-eqz v4, :cond_a

    .line 270
    .line 271
    invoke-virtual {v4, v1}, Lhq2;->a(Lvp4;)V

    .line 272
    .line 273
    .line 274
    :cond_a
    move/from16 v4, p3

    .line 275
    .line 276
    int-to-float v4, v4

    .line 277
    const/high16 v5, 0x437f0000    # 255.0f

    .line 278
    .line 279
    div-float/2addr v4, v5

    .line 280
    iget-object v0, v0, Li14;->l:Lqd4;

    .line 281
    .line 282
    invoke-virtual {v0}, Lyl0;->f()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Ljava/lang/Integer;

    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    int-to-float v0, v0

    .line 293
    mul-float/2addr v4, v0

    .line 294
    const/high16 v0, 0x42c80000    # 100.0f

    .line 295
    .line 296
    div-float/2addr v4, v0

    .line 297
    mul-float/2addr v4, v5

    .line 298
    float-to-int v0, v4

    .line 299
    sget-object v4, Lsg5;->a:Landroid/graphics/PointF;

    .line 300
    .line 301
    const/16 v4, 0xff

    .line 302
    .line 303
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    invoke-virtual {v1, v0}, Lvp4;->setAlpha(I)V

    .line 312
    .line 313
    .line 314
    move-object/from16 v0, p1

    .line 315
    .line 316
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 317
    .line 318
    .line 319
    invoke-static {}, Lzv1;->d()V

    .line 320
    .line 321
    .line 322
    return-void
.end method

.method public final i()I
    .locals 3

    .line 1
    iget-object v0, p0, Li14;->m:Le26;

    .line 2
    .line 3
    iget v0, v0, Lyl0;->d:F

    .line 4
    .line 5
    iget v1, p0, Li14;->r:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    mul-float/2addr v0, v1

    .line 9
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Li14;->n:Le26;

    .line 14
    .line 15
    iget v2, v2, Lyl0;->d:F

    .line 16
    .line 17
    mul-float/2addr v2, v1

    .line 18
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object p0, p0, Li14;->k:Lf14;

    .line 23
    .line 24
    iget p0, p0, Lyl0;->d:F

    .line 25
    .line 26
    mul-float/2addr p0, v1

    .line 27
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/16 v1, 0x20f

    .line 34
    .line 35
    mul-int/2addr v1, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v1, 0x11

    .line 38
    .line 39
    :goto_0
    if-eqz v2, :cond_1

    .line 40
    .line 41
    mul-int/lit8 v1, v1, 0x1f

    .line 42
    .line 43
    mul-int/2addr v1, v2

    .line 44
    :cond_1
    if-eqz p0, :cond_2

    .line 45
    .line 46
    mul-int/lit8 v1, v1, 0x1f

    .line 47
    .line 48
    mul-int/2addr v1, p0

    .line 49
    :cond_2
    return v1
.end method
