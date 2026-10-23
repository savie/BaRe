.class public final Ll18;
.super Lam0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final A:Ljava/lang/StringBuilder;

.field public final B:Landroid/graphics/RectF;

.field public final C:Landroid/graphics/Matrix;

.field public final D:Lvp4;

.field public final E:Lk18;

.field public final F:Ljava/util/HashMap;

.field public final G:Lv15;

.field public final H:Li18;

.field public final I:Lc35;

.field public final J:Le25;

.field public final K:Ltl1;

.field public L:Lxi8;

.field public final M:Ltl1;

.field public N:Lxi8;

.field public final O:Lxh3;

.field public P:Lxi8;

.field public final Q:Lxh3;

.field public R:Lxi8;

.field public S:Lxi8;

.field public T:Lxi8;


# direct methods
.method public constructor <init>(Lc35;Ljs4;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lam0;-><init>(Lc35;Ljs4;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ll18;->A:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/RectF;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ll18;->B:Landroid/graphics/RectF;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Ll18;->C:Landroid/graphics/Matrix;

    .line 25
    .line 26
    new-instance v0, Lvp4;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, v1, v1}, Lvp4;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Ll18;->D:Lvp4;

    .line 38
    .line 39
    new-instance v0, Lk18;

    .line 40
    .line 41
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Ll18;->E:Lk18;

    .line 50
    .line 51
    new-instance v0, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Ll18;->F:Ljava/util/HashMap;

    .line 57
    .line 58
    new-instance v0, Lv15;

    .line 59
    .line 60
    invoke-direct {v0}, Lv15;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Ll18;->G:Lv15;

    .line 64
    .line 65
    iput-object p1, p0, Ll18;->I:Lc35;

    .line 66
    .line 67
    iget-object p1, p2, Ljs4;->b:Le25;

    .line 68
    .line 69
    iput-object p1, p0, Ll18;->J:Le25;

    .line 70
    .line 71
    iget-object p1, p2, Ljs4;->q:Ljc;

    .line 72
    .line 73
    new-instance v0, Li18;

    .line 74
    .line 75
    iget-object p1, p1, Lol1;->b:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, Ljava/util/List;

    .line 78
    .line 79
    invoke-direct {v0, p1}, Lyl0;-><init>(Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Ll18;->H:Li18;

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Lyl0;->a(Lul0;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lam0;->g(Lyl0;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p2, Ljs4;->r:Lkc;

    .line 91
    .line 92
    if-eqz p1, :cond_0

    .line 93
    .line 94
    iget-object p2, p1, Lkc;->b:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p2, Lac;

    .line 97
    .line 98
    if-eqz p2, :cond_0

    .line 99
    .line 100
    invoke-virtual {p2}, Lac;->n()Lyl0;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    move-object v0, p2

    .line 105
    check-cast v0, Ltl1;

    .line 106
    .line 107
    iput-object v0, p0, Ll18;->K:Ltl1;

    .line 108
    .line 109
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p2}, Lam0;->g(Lyl0;)V

    .line 113
    .line 114
    .line 115
    :cond_0
    if-eqz p1, :cond_1

    .line 116
    .line 117
    iget-object p2, p1, Lkc;->c:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p2, Lac;

    .line 120
    .line 121
    if-eqz p2, :cond_1

    .line 122
    .line 123
    invoke-virtual {p2}, Lac;->n()Lyl0;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    move-object v0, p2

    .line 128
    check-cast v0, Ltl1;

    .line 129
    .line 130
    iput-object v0, p0, Ll18;->M:Ltl1;

    .line 131
    .line 132
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p2}, Lam0;->g(Lyl0;)V

    .line 136
    .line 137
    .line 138
    :cond_1
    if-eqz p1, :cond_2

    .line 139
    .line 140
    iget-object p2, p1, Lkc;->d:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p2, Lbc;

    .line 143
    .line 144
    if-eqz p2, :cond_2

    .line 145
    .line 146
    invoke-virtual {p2}, Lbc;->n()Lyl0;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    move-object v0, p2

    .line 151
    check-cast v0, Lxh3;

    .line 152
    .line 153
    iput-object v0, p0, Ll18;->O:Lxh3;

    .line 154
    .line 155
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p2}, Lam0;->g(Lyl0;)V

    .line 159
    .line 160
    .line 161
    :cond_2
    if-eqz p1, :cond_3

    .line 162
    .line 163
    iget-object p1, p1, Lkc;->e:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p1, Lbc;

    .line 166
    .line 167
    if-eqz p1, :cond_3

    .line 168
    .line 169
    invoke-virtual {p1}, Lbc;->n()Lyl0;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    move-object p2, p1

    .line 174
    check-cast p2, Lxh3;

    .line 175
    .line 176
    iput-object p2, p0, Ll18;->Q:Lxh3;

    .line 177
    .line 178
    invoke-virtual {p1, p0}, Lyl0;->a(Lul0;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, p1}, Lam0;->g(Lyl0;)V

    .line 182
    .line 183
    .line 184
    :cond_3
    return-void
.end method

.method public static t(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    move-object v2, p0

    .line 34
    move-object v7, p1

    .line 35
    move-object v1, p2

    .line 36
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static u(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lam0;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Ll18;->J:Le25;

    .line 5
    .line 6
    iget-object p2, p0, Le25;->j:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    int-to-float p2, p2

    .line 13
    iget-object p0, p0, Le25;->j:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-float p0, p0

    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final f(Lcd;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lam0;->f(Lcd;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lf35;->a:Landroid/graphics/PointF;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-ne p2, v0, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Ll18;->L:Lxi8;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lam0;->p(Lyl0;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance p2, Lxi8;

    .line 22
    .line 23
    invoke-direct {p2, p1, v1}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Ll18;->L:Lxi8;

    .line 27
    .line 28
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Ll18;->L:Lxi8;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lam0;->g(Lyl0;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x2

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-ne p2, v0, :cond_3

    .line 43
    .line 44
    iget-object p2, p0, Ll18;->N:Lxi8;

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lam0;->p(Lyl0;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    new-instance p2, Lxi8;

    .line 52
    .line 53
    invoke-direct {p2, p1, v1}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Ll18;->N:Lxi8;

    .line 57
    .line 58
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Ll18;->N:Lxi8;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lam0;->g(Lyl0;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    sget-object v0, Lf35;->n:Ljava/lang/Float;

    .line 68
    .line 69
    if-ne p2, v0, :cond_5

    .line 70
    .line 71
    iget-object p2, p0, Ll18;->P:Lxi8;

    .line 72
    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Lam0;->p(Lyl0;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    new-instance p2, Lxi8;

    .line 79
    .line 80
    invoke-direct {p2, p1, v1}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Ll18;->P:Lxi8;

    .line 84
    .line 85
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Ll18;->P:Lxi8;

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lam0;->g(Lyl0;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_5
    sget-object v0, Lf35;->o:Ljava/lang/Float;

    .line 95
    .line 96
    if-ne p2, v0, :cond_7

    .line 97
    .line 98
    iget-object p2, p0, Ll18;->R:Lxi8;

    .line 99
    .line 100
    if-eqz p2, :cond_6

    .line 101
    .line 102
    invoke-virtual {p0, p2}, Lam0;->p(Lyl0;)V

    .line 103
    .line 104
    .line 105
    :cond_6
    new-instance p2, Lxi8;

    .line 106
    .line 107
    invoke-direct {p2, p1, v1}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iput-object p2, p0, Ll18;->R:Lxi8;

    .line 111
    .line 112
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Ll18;->R:Lxi8;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lam0;->g(Lyl0;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_7
    sget-object v0, Lf35;->A:Ljava/lang/Float;

    .line 122
    .line 123
    if-ne p2, v0, :cond_9

    .line 124
    .line 125
    iget-object p2, p0, Ll18;->S:Lxi8;

    .line 126
    .line 127
    if-eqz p2, :cond_8

    .line 128
    .line 129
    invoke-virtual {p0, p2}, Lam0;->p(Lyl0;)V

    .line 130
    .line 131
    .line 132
    :cond_8
    new-instance p2, Lxi8;

    .line 133
    .line 134
    invoke-direct {p2, p1, v1}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iput-object p2, p0, Ll18;->S:Lxi8;

    .line 138
    .line 139
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Ll18;->S:Lxi8;

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lam0;->g(Lyl0;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_9
    sget-object v0, Lf35;->H:Landroid/graphics/Typeface;

    .line 149
    .line 150
    if-ne p2, v0, :cond_b

    .line 151
    .line 152
    iget-object p2, p0, Ll18;->T:Lxi8;

    .line 153
    .line 154
    if-eqz p2, :cond_a

    .line 155
    .line 156
    invoke-virtual {p0, p2}, Lam0;->p(Lyl0;)V

    .line 157
    .line 158
    .line 159
    :cond_a
    new-instance p2, Lxi8;

    .line 160
    .line 161
    invoke-direct {p2, p1, v1}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    iput-object p2, p0, Ll18;->T:Lxi8;

    .line 165
    .line 166
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Ll18;->T:Lxi8;

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Lam0;->g(Lyl0;)V

    .line 172
    .line 173
    .line 174
    :cond_b
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Ll18;->I:Lc35;

    .line 9
    .line 10
    iget-object v3, v2, Lc35;->b:Le25;

    .line 11
    .line 12
    iget-object v3, v3, Le25;->g:Lyj7;

    .line 13
    .line 14
    iget v3, v3, Lyj7;->c:I

    .line 15
    .line 16
    if-lez v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v3, v0, Ll18;->H:Li18;

    .line 23
    .line 24
    invoke-virtual {v3}, Lyl0;->f()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lrn2;

    .line 29
    .line 30
    iget-object v4, v0, Ll18;->J:Le25;

    .line 31
    .line 32
    iget-object v5, v4, Le25;->e:Ljava/util/HashMap;

    .line 33
    .line 34
    iget-object v6, v3, Lrn2;->b:Ljava/lang/String;

    .line 35
    .line 36
    iget v7, v3, Lrn2;->e:I

    .line 37
    .line 38
    iget-boolean v8, v3, Lrn2;->k:Z

    .line 39
    .line 40
    iget v9, v3, Lrn2;->d:I

    .line 41
    .line 42
    iget v10, v3, Lrn2;->f:F

    .line 43
    .line 44
    iget-object v11, v3, Lrn2;->a:Ljava/lang/String;

    .line 45
    .line 46
    iget v12, v3, Lrn2;->c:F

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lvp3;

    .line 53
    .line 54
    if-nez v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    iget-object v6, v5, Lvp3;->b:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v5, v5, Lvp3;->a:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v13, v0, Ll18;->L:Lxi8;

    .line 65
    .line 66
    iget-object v14, v0, Ll18;->D:Lvp4;

    .line 67
    .line 68
    if-eqz v13, :cond_2

    .line 69
    .line 70
    invoke-virtual {v13}, Lxi8;->f()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    check-cast v13, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object v13, v0, Ll18;->K:Ltl1;

    .line 85
    .line 86
    if-eqz v13, :cond_3

    .line 87
    .line 88
    invoke-virtual {v13}, Lyl0;->f()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    check-cast v13, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    iget v13, v3, Lrn2;->h:I

    .line 103
    .line 104
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    .line 106
    .line 107
    :goto_1
    iget-object v13, v0, Ll18;->N:Lxi8;

    .line 108
    .line 109
    iget-object v15, v0, Ll18;->E:Lk18;

    .line 110
    .line 111
    if-eqz v13, :cond_4

    .line 112
    .line 113
    invoke-virtual {v13}, Lxi8;->f()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    check-cast v13, Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    iget-object v13, v0, Ll18;->M:Ltl1;

    .line 128
    .line 129
    if-eqz v13, :cond_5

    .line 130
    .line 131
    invoke-virtual {v13}, Lyl0;->f()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    check-cast v13, Ljava/lang/Integer;

    .line 136
    .line 137
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_5
    iget v13, v3, Lrn2;->i:I

    .line 146
    .line 147
    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    .line 149
    .line 150
    :goto_2
    iget-object v13, v0, Lam0;->u:Lk98;

    .line 151
    .line 152
    iget-object v13, v13, Lk98;->j:Lyl0;

    .line 153
    .line 154
    const/16 v16, 0x64

    .line 155
    .line 156
    if-nez v13, :cond_6

    .line 157
    .line 158
    move/from16 v13, v16

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    invoke-virtual {v13}, Lyl0;->f()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    check-cast v13, Ljava/lang/Integer;

    .line 166
    .line 167
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    :goto_3
    mul-int/lit16 v13, v13, 0xff

    .line 172
    .line 173
    div-int/lit8 v13, v13, 0x64

    .line 174
    .line 175
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 179
    .line 180
    .line 181
    iget-object v13, v0, Ll18;->P:Lxi8;

    .line 182
    .line 183
    if-eqz v13, :cond_7

    .line 184
    .line 185
    invoke-virtual {v13}, Lxi8;->f()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    check-cast v13, Ljava/lang/Float;

    .line 190
    .line 191
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    .line 192
    .line 193
    .line 194
    move-result v13

    .line 195
    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 196
    .line 197
    .line 198
    :goto_4
    move/from16 v16, v8

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_7
    iget-object v13, v0, Ll18;->O:Lxh3;

    .line 202
    .line 203
    if-eqz v13, :cond_8

    .line 204
    .line 205
    invoke-virtual {v13}, Lyl0;->f()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    check-cast v13, Ljava/lang/Float;

    .line 210
    .line 211
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    .line 212
    .line 213
    .line 214
    move-result v13

    .line 215
    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_8
    invoke-static/range {p2 .. p2}, Lmi8;->d(Landroid/graphics/Matrix;)F

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    move/from16 v16, v8

    .line 224
    .line 225
    iget v8, v3, Lrn2;->j:F

    .line 226
    .line 227
    invoke-static {}, Lmi8;->c()F

    .line 228
    .line 229
    .line 230
    move-result v17

    .line 231
    mul-float v17, v17, v8

    .line 232
    .line 233
    mul-float v8, v17, v13

    .line 234
    .line 235
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    .line 237
    .line 238
    :goto_5
    iget-object v8, v2, Lc35;->b:Le25;

    .line 239
    .line 240
    iget-object v8, v8, Le25;->g:Lyj7;

    .line 241
    .line 242
    iget v8, v8, Lyj7;->c:I

    .line 243
    .line 244
    const-string v13, "\n"

    .line 245
    .line 246
    move/from16 v17, v8

    .line 247
    .line 248
    const-string v8, "\r"

    .line 249
    .line 250
    move/from16 p3, v9

    .line 251
    .line 252
    const-string v9, "\r\n"

    .line 253
    .line 254
    move/from16 v18, v10

    .line 255
    .line 256
    iget-object v10, v0, Ll18;->Q:Lxh3;

    .line 257
    .line 258
    const/high16 v19, 0x41200000    # 10.0f

    .line 259
    .line 260
    const/high16 v20, 0x40000000    # 2.0f

    .line 261
    .line 262
    const/high16 v21, 0x42c80000    # 100.0f

    .line 263
    .line 264
    move-object/from16 v22, v10

    .line 265
    .line 266
    if-lez v17, :cond_17

    .line 267
    .line 268
    iget-object v10, v0, Ll18;->S:Lxi8;

    .line 269
    .line 270
    if-eqz v10, :cond_9

    .line 271
    .line 272
    invoke-virtual {v10}, Lxi8;->f()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    .line 276
    check-cast v10, Ljava/lang/Float;

    .line 277
    .line 278
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 279
    .line 280
    .line 281
    move-result v12

    .line 282
    :cond_9
    div-float v12, v12, v21

    .line 283
    .line 284
    invoke-static/range {p2 .. p2}, Lmi8;->d(Landroid/graphics/Matrix;)F

    .line 285
    .line 286
    .line 287
    move-result v10

    .line 288
    invoke-static {}, Lmi8;->c()F

    .line 289
    .line 290
    .line 291
    move-result v21

    .line 292
    mul-float v21, v21, v18

    .line 293
    .line 294
    invoke-virtual {v11, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    invoke-virtual {v9, v13, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 311
    .line 312
    .line 313
    move-result v9

    .line 314
    const/4 v11, 0x0

    .line 315
    :goto_6
    if-ge v11, v9, :cond_16

    .line 316
    .line 317
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v13

    .line 321
    check-cast v13, Ljava/lang/String;

    .line 322
    .line 323
    move/from16 v24, v7

    .line 324
    .line 325
    move-object/from16 v18, v8

    .line 326
    .line 327
    move/from16 v23, v9

    .line 328
    .line 329
    const/4 v8, 0x0

    .line 330
    const/4 v9, 0x0

    .line 331
    :goto_7
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    if-ge v9, v7, :cond_b

    .line 336
    .line 337
    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    .line 338
    .line 339
    .line 340
    move-result v7

    .line 341
    invoke-static {v7, v5, v6}, Lyp3;->a(CLjava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    move/from16 v25, v9

    .line 346
    .line 347
    iget-object v9, v4, Le25;->g:Lyj7;

    .line 348
    .line 349
    invoke-virtual {v9, v7}, Lyj7;->a(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    check-cast v7, Lyp3;

    .line 354
    .line 355
    if-nez v7, :cond_a

    .line 356
    .line 357
    goto :goto_8

    .line 358
    :cond_a
    float-to-double v8, v8

    .line 359
    move-wide/from16 v26, v8

    .line 360
    .line 361
    iget-wide v7, v7, Lyp3;->c:D

    .line 362
    .line 363
    move-wide/from16 v28, v7

    .line 364
    .line 365
    float-to-double v7, v12

    .line 366
    mul-double v7, v7, v28

    .line 367
    .line 368
    invoke-static {}, Lmi8;->c()F

    .line 369
    .line 370
    .line 371
    move-result v9

    .line 372
    move-wide/from16 v28, v7

    .line 373
    .line 374
    float-to-double v7, v9

    .line 375
    mul-double v7, v7, v28

    .line 376
    .line 377
    move-wide/from16 v28, v7

    .line 378
    .line 379
    float-to-double v7, v10

    .line 380
    mul-double v7, v7, v28

    .line 381
    .line 382
    add-double v7, v7, v26

    .line 383
    .line 384
    double-to-float v7, v7

    .line 385
    move v8, v7

    .line 386
    :goto_8
    add-int/lit8 v9, v25, 0x1

    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_b
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 390
    .line 391
    .line 392
    invoke-static/range {p3 .. p3}, Ldj7;->A(I)I

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    const/4 v9, 0x1

    .line 397
    if-eq v7, v9, :cond_d

    .line 398
    .line 399
    const/4 v9, 0x2

    .line 400
    if-eq v7, v9, :cond_c

    .line 401
    .line 402
    const/4 v9, 0x0

    .line 403
    goto :goto_9

    .line 404
    :cond_c
    neg-float v7, v8

    .line 405
    div-float v7, v7, v20

    .line 406
    .line 407
    const/4 v9, 0x0

    .line 408
    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 409
    .line 410
    .line 411
    goto :goto_9

    .line 412
    :cond_d
    const/4 v9, 0x0

    .line 413
    neg-float v7, v8

    .line 414
    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 415
    .line 416
    .line 417
    :goto_9
    add-int/lit8 v7, v23, -0x1

    .line 418
    .line 419
    int-to-float v7, v7

    .line 420
    mul-float v7, v7, v21

    .line 421
    .line 422
    div-float v7, v7, v20

    .line 423
    .line 424
    int-to-float v8, v11

    .line 425
    mul-float v8, v8, v21

    .line 426
    .line 427
    sub-float/2addr v8, v7

    .line 428
    invoke-virtual {v1, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 429
    .line 430
    .line 431
    const/4 v7, 0x0

    .line 432
    :goto_a
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 433
    .line 434
    .line 435
    move-result v8

    .line 436
    if-ge v7, v8, :cond_15

    .line 437
    .line 438
    invoke-virtual {v13, v7}, Ljava/lang/String;->charAt(I)C

    .line 439
    .line 440
    .line 441
    move-result v8

    .line 442
    invoke-static {v8, v5, v6}, Lyp3;->a(CLjava/lang/String;Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    move-result v8

    .line 446
    iget-object v9, v4, Le25;->g:Lyj7;

    .line 447
    .line 448
    invoke-virtual {v9, v8}, Lyj7;->a(I)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    check-cast v8, Lyp3;

    .line 453
    .line 454
    if-nez v8, :cond_e

    .line 455
    .line 456
    move-object/from16 v30, v3

    .line 457
    .line 458
    move-object/from16 v25, v4

    .line 459
    .line 460
    move/from16 v26, v7

    .line 461
    .line 462
    move/from16 v27, v10

    .line 463
    .line 464
    move/from16 v28, v11

    .line 465
    .line 466
    move/from16 v3, v24

    .line 467
    .line 468
    move-object/from16 v11, p2

    .line 469
    .line 470
    goto/16 :goto_11

    .line 471
    .line 472
    :cond_e
    iget-object v9, v0, Ll18;->F:Ljava/util/HashMap;

    .line 473
    .line 474
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v25

    .line 478
    if-eqz v25, :cond_f

    .line 479
    .line 480
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v9

    .line 484
    check-cast v9, Ljava/util/List;

    .line 485
    .line 486
    move-object/from16 v25, v4

    .line 487
    .line 488
    move/from16 v26, v7

    .line 489
    .line 490
    move/from16 v27, v10

    .line 491
    .line 492
    move/from16 v28, v11

    .line 493
    .line 494
    goto :goto_c

    .line 495
    :cond_f
    move-object/from16 v25, v4

    .line 496
    .line 497
    iget-object v4, v8, Lyp3;->a:Ljava/util/ArrayList;

    .line 498
    .line 499
    move/from16 v26, v7

    .line 500
    .line 501
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    move/from16 v27, v10

    .line 506
    .line 507
    new-instance v10, Ljava/util/ArrayList;

    .line 508
    .line 509
    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    .line 511
    .line 512
    move/from16 v28, v11

    .line 513
    .line 514
    const/4 v11, 0x0

    .line 515
    :goto_b
    if-ge v11, v7, :cond_10

    .line 516
    .line 517
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v29

    .line 521
    move-object/from16 v30, v4

    .line 522
    .line 523
    move-object/from16 v4, v29

    .line 524
    .line 525
    check-cast v4, Lbc7;

    .line 526
    .line 527
    move/from16 v29, v7

    .line 528
    .line 529
    new-instance v7, Liu1;

    .line 530
    .line 531
    invoke-direct {v7, v2, v0, v4}, Liu1;-><init>(Lc35;Lam0;Lbc7;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    add-int/lit8 v11, v11, 0x1

    .line 538
    .line 539
    move/from16 v7, v29

    .line 540
    .line 541
    move-object/from16 v4, v30

    .line 542
    .line 543
    goto :goto_b

    .line 544
    :cond_10
    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-object v9, v10

    .line 548
    :goto_c
    const/4 v4, 0x0

    .line 549
    :goto_d
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 550
    .line 551
    .line 552
    move-result v7

    .line 553
    if-ge v4, v7, :cond_12

    .line 554
    .line 555
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v7

    .line 559
    check-cast v7, Liu1;

    .line 560
    .line 561
    invoke-virtual {v7}, Liu1;->a()Landroid/graphics/Path;

    .line 562
    .line 563
    .line 564
    move-result-object v7

    .line 565
    iget-object v10, v0, Ll18;->B:Landroid/graphics/RectF;

    .line 566
    .line 567
    const/4 v11, 0x0

    .line 568
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 569
    .line 570
    .line 571
    iget-object v10, v0, Ll18;->C:Landroid/graphics/Matrix;

    .line 572
    .line 573
    move-object/from16 v11, p2

    .line 574
    .line 575
    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 576
    .line 577
    .line 578
    move/from16 v29, v4

    .line 579
    .line 580
    iget v4, v3, Lrn2;->g:F

    .line 581
    .line 582
    neg-float v4, v4

    .line 583
    invoke-static {}, Lmi8;->c()F

    .line 584
    .line 585
    .line 586
    move-result v30

    .line 587
    mul-float v4, v4, v30

    .line 588
    .line 589
    move-object/from16 v30, v3

    .line 590
    .line 591
    const/4 v3, 0x0

    .line 592
    invoke-virtual {v10, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 593
    .line 594
    .line 595
    invoke-virtual {v10, v12, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 596
    .line 597
    .line 598
    invoke-virtual {v7, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 599
    .line 600
    .line 601
    if-eqz v16, :cond_11

    .line 602
    .line 603
    invoke-static {v7, v14, v1}, Ll18;->u(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 604
    .line 605
    .line 606
    invoke-static {v7, v15, v1}, Ll18;->u(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 607
    .line 608
    .line 609
    goto :goto_e

    .line 610
    :cond_11
    invoke-static {v7, v15, v1}, Ll18;->u(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 611
    .line 612
    .line 613
    invoke-static {v7, v14, v1}, Ll18;->u(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 614
    .line 615
    .line 616
    :goto_e
    add-int/lit8 v4, v29, 0x1

    .line 617
    .line 618
    move-object/from16 v3, v30

    .line 619
    .line 620
    goto :goto_d

    .line 621
    :cond_12
    move-object/from16 v11, p2

    .line 622
    .line 623
    move-object/from16 v30, v3

    .line 624
    .line 625
    iget-wide v3, v8, Lyp3;->c:D

    .line 626
    .line 627
    double-to-float v3, v3

    .line 628
    mul-float/2addr v3, v12

    .line 629
    invoke-static {}, Lmi8;->c()F

    .line 630
    .line 631
    .line 632
    move-result v4

    .line 633
    mul-float/2addr v4, v3

    .line 634
    mul-float v4, v4, v27

    .line 635
    .line 636
    move/from16 v3, v24

    .line 637
    .line 638
    int-to-float v7, v3

    .line 639
    div-float v7, v7, v19

    .line 640
    .line 641
    iget-object v8, v0, Ll18;->R:Lxi8;

    .line 642
    .line 643
    if-eqz v8, :cond_13

    .line 644
    .line 645
    invoke-virtual {v8}, Lxi8;->f()Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v8

    .line 649
    check-cast v8, Ljava/lang/Float;

    .line 650
    .line 651
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 652
    .line 653
    .line 654
    move-result v8

    .line 655
    :goto_f
    add-float/2addr v7, v8

    .line 656
    goto :goto_10

    .line 657
    :cond_13
    if-eqz v22, :cond_14

    .line 658
    .line 659
    invoke-virtual/range {v22 .. v22}, Lyl0;->f()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v8

    .line 663
    check-cast v8, Ljava/lang/Float;

    .line 664
    .line 665
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 666
    .line 667
    .line 668
    move-result v8

    .line 669
    goto :goto_f

    .line 670
    :cond_14
    :goto_10
    mul-float v7, v7, v27

    .line 671
    .line 672
    add-float/2addr v7, v4

    .line 673
    const/4 v9, 0x0

    .line 674
    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 675
    .line 676
    .line 677
    :goto_11
    add-int/lit8 v7, v26, 0x1

    .line 678
    .line 679
    move/from16 v24, v3

    .line 680
    .line 681
    move-object/from16 v4, v25

    .line 682
    .line 683
    move/from16 v10, v27

    .line 684
    .line 685
    move/from16 v11, v28

    .line 686
    .line 687
    move-object/from16 v3, v30

    .line 688
    .line 689
    goto/16 :goto_a

    .line 690
    .line 691
    :cond_15
    move-object/from16 v30, v3

    .line 692
    .line 693
    move-object/from16 v25, v4

    .line 694
    .line 695
    move/from16 v27, v10

    .line 696
    .line 697
    move/from16 v28, v11

    .line 698
    .line 699
    move/from16 v3, v24

    .line 700
    .line 701
    move-object/from16 v11, p2

    .line 702
    .line 703
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 704
    .line 705
    .line 706
    add-int/lit8 v4, v28, 0x1

    .line 707
    .line 708
    move v7, v3

    .line 709
    move v11, v4

    .line 710
    move-object/from16 v8, v18

    .line 711
    .line 712
    move/from16 v9, v23

    .line 713
    .line 714
    move-object/from16 v4, v25

    .line 715
    .line 716
    move-object/from16 v3, v30

    .line 717
    .line 718
    goto/16 :goto_6

    .line 719
    .line 720
    :cond_16
    move-object v10, v1

    .line 721
    goto/16 :goto_22

    .line 722
    .line 723
    :cond_17
    move v3, v7

    .line 724
    iget-object v4, v0, Ll18;->T:Lxi8;

    .line 725
    .line 726
    if-eqz v4, :cond_18

    .line 727
    .line 728
    invoke-virtual {v4}, Lxi8;->f()Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    check-cast v4, Landroid/graphics/Typeface;

    .line 733
    .line 734
    if-eqz v4, :cond_18

    .line 735
    .line 736
    move/from16 v23, v12

    .line 737
    .line 738
    goto/16 :goto_17

    .line 739
    .line 740
    :cond_18
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 741
    .line 742
    .line 743
    move-result-object v4

    .line 744
    if-nez v4, :cond_19

    .line 745
    .line 746
    const/4 v2, 0x0

    .line 747
    goto :goto_12

    .line 748
    :cond_19
    iget-object v4, v2, Lc35;->r:Lxp3;

    .line 749
    .line 750
    if-nez v4, :cond_1a

    .line 751
    .line 752
    new-instance v4, Lxp3;

    .line 753
    .line 754
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 755
    .line 756
    .line 757
    move-result-object v10

    .line 758
    invoke-direct {v4, v10}, Lxp3;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 759
    .line 760
    .line 761
    iput-object v4, v2, Lc35;->r:Lxp3;

    .line 762
    .line 763
    :cond_1a
    iget-object v2, v2, Lc35;->r:Lxp3;

    .line 764
    .line 765
    :goto_12
    if-eqz v2, :cond_21

    .line 766
    .line 767
    iget-object v4, v2, Lxp3;->b:Ljava/lang/Object;

    .line 768
    .line 769
    check-cast v4, Ldz3;

    .line 770
    .line 771
    iput-object v5, v4, Ldz3;->b:Ljava/lang/String;

    .line 772
    .line 773
    iput-object v6, v4, Ldz3;->c:Ljava/lang/String;

    .line 774
    .line 775
    iget-object v10, v2, Lxp3;->c:Ljava/lang/Object;

    .line 776
    .line 777
    check-cast v10, Ljava/util/HashMap;

    .line 778
    .line 779
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v23

    .line 783
    check-cast v23, Landroid/graphics/Typeface;

    .line 784
    .line 785
    if-eqz v23, :cond_1b

    .line 786
    .line 787
    move-object/from16 v4, v23

    .line 788
    .line 789
    move/from16 v23, v12

    .line 790
    .line 791
    goto :goto_16

    .line 792
    :cond_1b
    iget-object v7, v2, Lxp3;->d:Ljava/lang/Object;

    .line 793
    .line 794
    check-cast v7, Ljava/util/HashMap;

    .line 795
    .line 796
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v23

    .line 800
    check-cast v23, Landroid/graphics/Typeface;

    .line 801
    .line 802
    if-eqz v23, :cond_1c

    .line 803
    .line 804
    move-object/from16 v1, v23

    .line 805
    .line 806
    move/from16 v23, v12

    .line 807
    .line 808
    goto :goto_13

    .line 809
    :cond_1c
    move/from16 v23, v12

    .line 810
    .line 811
    new-instance v12, Ljava/lang/StringBuilder;

    .line 812
    .line 813
    const-string v1, "fonts/"

    .line 814
    .line 815
    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    iget-object v1, v2, Lxp3;->f:Ljava/lang/Object;

    .line 822
    .line 823
    check-cast v1, Ljava/lang/String;

    .line 824
    .line 825
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    .line 827
    .line 828
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v1

    .line 832
    iget-object v2, v2, Lxp3;->e:Ljava/lang/Object;

    .line 833
    .line 834
    check-cast v2, Landroid/content/res/AssetManager;

    .line 835
    .line 836
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    invoke-virtual {v7, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    :goto_13
    const-string v2, "Italic"

    .line 844
    .line 845
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 846
    .line 847
    .line 848
    move-result v2

    .line 849
    const-string v5, "Bold"

    .line 850
    .line 851
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 852
    .line 853
    .line 854
    move-result v5

    .line 855
    if-eqz v2, :cond_1d

    .line 856
    .line 857
    if-eqz v5, :cond_1d

    .line 858
    .line 859
    const/4 v2, 0x3

    .line 860
    goto :goto_14

    .line 861
    :cond_1d
    if-eqz v2, :cond_1e

    .line 862
    .line 863
    const/4 v2, 0x2

    .line 864
    goto :goto_14

    .line 865
    :cond_1e
    if-eqz v5, :cond_1f

    .line 866
    .line 867
    const/4 v2, 0x1

    .line 868
    goto :goto_14

    .line 869
    :cond_1f
    const/4 v2, 0x0

    .line 870
    :goto_14
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    .line 871
    .line 872
    .line 873
    move-result v5

    .line 874
    if-ne v5, v2, :cond_20

    .line 875
    .line 876
    goto :goto_15

    .line 877
    :cond_20
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    :goto_15
    invoke-virtual {v10, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-object v4, v1

    .line 885
    goto :goto_16

    .line 886
    :cond_21
    move/from16 v23, v12

    .line 887
    .line 888
    const/4 v4, 0x0

    .line 889
    :goto_16
    if-eqz v4, :cond_22

    .line 890
    .line 891
    goto :goto_17

    .line 892
    :cond_22
    const/4 v4, 0x0

    .line 893
    :goto_17
    if-nez v4, :cond_24

    .line 894
    .line 895
    :cond_23
    move-object/from16 v10, p1

    .line 896
    .line 897
    goto/16 :goto_22

    .line 898
    .line 899
    :cond_24
    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 900
    .line 901
    .line 902
    iget-object v1, v0, Ll18;->S:Lxi8;

    .line 903
    .line 904
    if-eqz v1, :cond_25

    .line 905
    .line 906
    invoke-virtual {v1}, Lxi8;->f()Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object v1

    .line 910
    check-cast v1, Ljava/lang/Float;

    .line 911
    .line 912
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 913
    .line 914
    .line 915
    move-result v12

    .line 916
    goto :goto_18

    .line 917
    :cond_25
    move/from16 v12, v23

    .line 918
    .line 919
    :goto_18
    invoke-static {}, Lmi8;->c()F

    .line 920
    .line 921
    .line 922
    move-result v1

    .line 923
    mul-float/2addr v1, v12

    .line 924
    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 925
    .line 926
    .line 927
    invoke-virtual {v14}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v14}, Landroid/graphics/Paint;->getTextSize()F

    .line 935
    .line 936
    .line 937
    move-result v1

    .line 938
    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 939
    .line 940
    .line 941
    invoke-static {}, Lmi8;->c()F

    .line 942
    .line 943
    .line 944
    move-result v1

    .line 945
    mul-float v1, v1, v18

    .line 946
    .line 947
    int-to-float v2, v3

    .line 948
    div-float v2, v2, v19

    .line 949
    .line 950
    iget-object v3, v0, Ll18;->R:Lxi8;

    .line 951
    .line 952
    if-eqz v3, :cond_26

    .line 953
    .line 954
    invoke-virtual {v3}, Lxi8;->f()Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v3

    .line 958
    check-cast v3, Ljava/lang/Float;

    .line 959
    .line 960
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 961
    .line 962
    .line 963
    move-result v3

    .line 964
    :goto_19
    add-float/2addr v2, v3

    .line 965
    goto :goto_1a

    .line 966
    :cond_26
    if-eqz v22, :cond_27

    .line 967
    .line 968
    invoke-virtual/range {v22 .. v22}, Lyl0;->f()Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v3

    .line 972
    check-cast v3, Ljava/lang/Float;

    .line 973
    .line 974
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 975
    .line 976
    .line 977
    move-result v3

    .line 978
    goto :goto_19

    .line 979
    :cond_27
    :goto_1a
    invoke-static {}, Lmi8;->c()F

    .line 980
    .line 981
    .line 982
    move-result v3

    .line 983
    mul-float/2addr v3, v2

    .line 984
    mul-float/2addr v3, v12

    .line 985
    div-float v3, v3, v21

    .line 986
    .line 987
    invoke-virtual {v11, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v2

    .line 991
    invoke-virtual {v2, v13, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v2

    .line 995
    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v2

    .line 999
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v2

    .line 1003
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1004
    .line 1005
    .line 1006
    move-result v4

    .line 1007
    const/4 v11, 0x0

    .line 1008
    :goto_1b
    if-ge v11, v4, :cond_23

    .line 1009
    .line 1010
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v5

    .line 1014
    check-cast v5, Ljava/lang/String;

    .line 1015
    .line 1016
    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 1017
    .line 1018
    .line 1019
    move-result v6

    .line 1020
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1021
    .line 1022
    .line 1023
    move-result v7

    .line 1024
    const/4 v9, 0x1

    .line 1025
    sub-int/2addr v7, v9

    .line 1026
    int-to-float v7, v7

    .line 1027
    mul-float/2addr v7, v3

    .line 1028
    add-float/2addr v7, v6

    .line 1029
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1030
    .line 1031
    .line 1032
    invoke-static/range {p3 .. p3}, Ldj7;->A(I)I

    .line 1033
    .line 1034
    .line 1035
    move-result v6

    .line 1036
    if-eq v6, v9, :cond_29

    .line 1037
    .line 1038
    const/4 v8, 0x2

    .line 1039
    if-eq v6, v8, :cond_28

    .line 1040
    .line 1041
    move-object/from16 v10, p1

    .line 1042
    .line 1043
    const/4 v12, 0x0

    .line 1044
    goto :goto_1c

    .line 1045
    :cond_28
    neg-float v6, v7

    .line 1046
    div-float v6, v6, v20

    .line 1047
    .line 1048
    move-object/from16 v10, p1

    .line 1049
    .line 1050
    const/4 v12, 0x0

    .line 1051
    invoke-virtual {v10, v6, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1052
    .line 1053
    .line 1054
    goto :goto_1c

    .line 1055
    :cond_29
    move-object/from16 v10, p1

    .line 1056
    .line 1057
    const/4 v8, 0x2

    .line 1058
    const/4 v12, 0x0

    .line 1059
    neg-float v6, v7

    .line 1060
    invoke-virtual {v10, v6, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1061
    .line 1062
    .line 1063
    :goto_1c
    add-int/lit8 v6, v4, -0x1

    .line 1064
    .line 1065
    int-to-float v6, v6

    .line 1066
    mul-float/2addr v6, v1

    .line 1067
    div-float v6, v6, v20

    .line 1068
    .line 1069
    int-to-float v7, v11

    .line 1070
    mul-float/2addr v7, v1

    .line 1071
    sub-float/2addr v7, v6

    .line 1072
    invoke-virtual {v10, v12, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1073
    .line 1074
    .line 1075
    const/4 v6, 0x0

    .line 1076
    :goto_1d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1077
    .line 1078
    .line 1079
    move-result v7

    .line 1080
    if-ge v6, v7, :cond_2f

    .line 1081
    .line 1082
    invoke-virtual {v5, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 1083
    .line 1084
    .line 1085
    move-result v7

    .line 1086
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    .line 1087
    .line 1088
    .line 1089
    move-result v12

    .line 1090
    add-int/2addr v12, v6

    .line 1091
    :goto_1e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1092
    .line 1093
    .line 1094
    move-result v13

    .line 1095
    if-ge v12, v13, :cond_2b

    .line 1096
    .line 1097
    invoke-virtual {v5, v12}, Ljava/lang/String;->codePointAt(I)I

    .line 1098
    .line 1099
    .line 1100
    move-result v13

    .line 1101
    invoke-static {v13}, Ljava/lang/Character;->getType(I)I

    .line 1102
    .line 1103
    .line 1104
    move-result v8

    .line 1105
    const/16 v9, 0x10

    .line 1106
    .line 1107
    if-eq v8, v9, :cond_2a

    .line 1108
    .line 1109
    invoke-static {v13}, Ljava/lang/Character;->getType(I)I

    .line 1110
    .line 1111
    .line 1112
    move-result v8

    .line 1113
    const/16 v9, 0x1b

    .line 1114
    .line 1115
    if-eq v8, v9, :cond_2a

    .line 1116
    .line 1117
    invoke-static {v13}, Ljava/lang/Character;->getType(I)I

    .line 1118
    .line 1119
    .line 1120
    move-result v8

    .line 1121
    const/4 v9, 0x6

    .line 1122
    if-eq v8, v9, :cond_2a

    .line 1123
    .line 1124
    invoke-static {v13}, Ljava/lang/Character;->getType(I)I

    .line 1125
    .line 1126
    .line 1127
    move-result v8

    .line 1128
    const/16 v9, 0x1c

    .line 1129
    .line 1130
    if-eq v8, v9, :cond_2a

    .line 1131
    .line 1132
    invoke-static {v13}, Ljava/lang/Character;->getType(I)I

    .line 1133
    .line 1134
    .line 1135
    move-result v8

    .line 1136
    const/16 v9, 0x13

    .line 1137
    .line 1138
    if-ne v8, v9, :cond_2b

    .line 1139
    .line 1140
    :cond_2a
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    .line 1141
    .line 1142
    .line 1143
    move-result v8

    .line 1144
    add-int/2addr v12, v8

    .line 1145
    mul-int/lit8 v7, v7, 0x1f

    .line 1146
    .line 1147
    add-int/2addr v7, v13

    .line 1148
    const/4 v8, 0x2

    .line 1149
    const/4 v9, 0x1

    .line 1150
    goto :goto_1e

    .line 1151
    :cond_2b
    int-to-long v7, v7

    .line 1152
    iget-object v9, v0, Ll18;->G:Lv15;

    .line 1153
    .line 1154
    invoke-virtual {v9, v7, v8}, Lv15;->c(J)I

    .line 1155
    .line 1156
    .line 1157
    move-result v13

    .line 1158
    if-ltz v13, :cond_2c

    .line 1159
    .line 1160
    invoke-virtual {v9, v7, v8}, Lv15;->b(J)Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v7

    .line 1164
    check-cast v7, Ljava/lang/String;

    .line 1165
    .line 1166
    move/from16 p2, v1

    .line 1167
    .line 1168
    goto :goto_20

    .line 1169
    :cond_2c
    iget-object v13, v0, Ll18;->A:Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    const/4 v0, 0x0

    .line 1172
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1173
    .line 1174
    .line 1175
    move v0, v6

    .line 1176
    :goto_1f
    if-ge v0, v12, :cond_2d

    .line 1177
    .line 1178
    move/from16 p2, v1

    .line 1179
    .line 1180
    invoke-virtual {v5, v0}, Ljava/lang/String;->codePointAt(I)I

    .line 1181
    .line 1182
    .line 1183
    move-result v1

    .line 1184
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1185
    .line 1186
    .line 1187
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    .line 1188
    .line 1189
    .line 1190
    move-result v1

    .line 1191
    add-int/2addr v0, v1

    .line 1192
    move/from16 v1, p2

    .line 1193
    .line 1194
    goto :goto_1f

    .line 1195
    :cond_2d
    move/from16 p2, v1

    .line 1196
    .line 1197
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    invoke-virtual {v9, v0, v7, v8}, Lv15;->e(Ljava/lang/Object;J)V

    .line 1202
    .line 1203
    .line 1204
    move-object v7, v0

    .line 1205
    :goto_20
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1206
    .line 1207
    .line 1208
    move-result v0

    .line 1209
    add-int/2addr v6, v0

    .line 1210
    if-eqz v16, :cond_2e

    .line 1211
    .line 1212
    invoke-static {v7, v14, v10}, Ll18;->t(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1213
    .line 1214
    .line 1215
    invoke-static {v7, v15, v10}, Ll18;->t(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1216
    .line 1217
    .line 1218
    goto :goto_21

    .line 1219
    :cond_2e
    invoke-static {v7, v15, v10}, Ll18;->t(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1220
    .line 1221
    .line 1222
    invoke-static {v7, v14, v10}, Ll18;->t(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1223
    .line 1224
    .line 1225
    :goto_21
    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 1226
    .line 1227
    .line 1228
    move-result v0

    .line 1229
    add-float/2addr v0, v3

    .line 1230
    const/4 v9, 0x0

    .line 1231
    invoke-virtual {v10, v0, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1232
    .line 1233
    .line 1234
    const/4 v8, 0x2

    .line 1235
    const/4 v9, 0x1

    .line 1236
    move-object/from16 v0, p0

    .line 1237
    .line 1238
    move/from16 v1, p2

    .line 1239
    .line 1240
    goto/16 :goto_1d

    .line 1241
    .line 1242
    :cond_2f
    move/from16 p2, v1

    .line 1243
    .line 1244
    const/4 v9, 0x0

    .line 1245
    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 1246
    .line 1247
    .line 1248
    add-int/lit8 v11, v11, 0x1

    .line 1249
    .line 1250
    move-object/from16 v0, p0

    .line 1251
    .line 1252
    goto/16 :goto_1b

    .line 1253
    .line 1254
    :goto_22
    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 1255
    .line 1256
    .line 1257
    return-void
.end method
