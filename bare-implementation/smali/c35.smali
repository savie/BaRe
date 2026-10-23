.class public final Lc35;
.super Landroid/graphics/drawable/Drawable;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field public G:Z

.field public H:Z

.field public I:Z

.field public final J:Z

.field public K:Z

.field public final a:Landroid/graphics/Matrix;

.field public b:Le25;

.field public final c:Lj35;

.field public d:F

.field public e:Z

.field public f:Z

.field public k:Z

.field public final n:Ljava/util/ArrayList;

.field public p:Lu94;

.field public q:Ljava/lang/String;

.field public r:Lxp3;

.field public t:Z

.field public x:Lhp1;

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lc35;->a:Landroid/graphics/Matrix;

    .line 10
    .line 11
    new-instance v0, Lj35;

    .line 12
    .line 13
    invoke-direct {v0}, Lj35;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lc35;->c:Lj35;

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    iput v1, p0, Lc35;->d:F

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lc35;->e:Z

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput-boolean v2, p0, Lc35;->f:Z

    .line 27
    .line 28
    iput-boolean v2, p0, Lc35;->k:Z

    .line 29
    .line 30
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v3, p0, Lc35;->n:Ljava/util/ArrayList;

    .line 36
    .line 37
    new-instance v3, Ltn0;

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    invoke-direct {v3, p0, v4}, Ltn0;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    const/16 v4, 0xff

    .line 44
    .line 45
    iput v4, p0, Lc35;->y:I

    .line 46
    .line 47
    iput-boolean v1, p0, Lc35;->J:Z

    .line 48
    .line 49
    iput-boolean v2, p0, Lc35;->K:Z

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Lj35;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a(Lpo4;Ljava/lang/Object;Lcd;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc35;->x:Lhp1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lt25;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1, p2, p3}, Lt25;-><init>(Lc35;Lpo4;Ljava/lang/Object;Lcd;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lc35;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v1, Lpo4;->c:Lpo4;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne p1, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, p3, p2}, Lhp1;->f(Lcd;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-object v0, p1, Lpo4;->b:Lqo4;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {v0, p3, p2}, Lqo4;->f(Lcd;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lc35;->x:Lhp1;

    .line 39
    .line 40
    new-instance v3, Lpo4;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    new-array v5, v4, [Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {v3, v5}, Lpo4;-><init>([Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1, v4, v0, v3}, Lam0;->d(Lpo4;ILjava/util/ArrayList;Lpo4;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ge v4, p1, :cond_3

    .line 56
    .line 57
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lpo4;

    .line 62
    .line 63
    iget-object p1, p1, Lpo4;->b:Lqo4;

    .line 64
    .line 65
    invoke-interface {p1, p3, p2}, Lqo4;->f(Lcd;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    xor-int/2addr v2, p1

    .line 76
    :goto_1
    if-eqz v2, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0}, Lc35;->invalidateSelf()V

    .line 79
    .line 80
    .line 81
    sget-object p1, Lf35;->z:Ljava/lang/Float;

    .line 82
    .line 83
    if-ne p2, p1, :cond_4

    .line 84
    .line 85
    iget-object p1, p0, Lc35;->c:Lj35;

    .line 86
    .line 87
    invoke-virtual {p1}, Lj35;->a()F

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p0, p1}, Lc35;->o(F)V

    .line 92
    .line 93
    .line 94
    :cond_4
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc35;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lc35;->f:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public final c()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lhp1;

    .line 4
    .line 5
    iget-object v4, v0, Lc35;->b:Le25;

    .line 6
    .line 7
    sget-object v2, Lks4;->a:Lib;

    .line 8
    .line 9
    iget-object v2, v4, Le25;->j:Landroid/graphics/Rect;

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    new-instance v2, Ljs4;

    .line 13
    .line 14
    move-object v5, v3

    .line 15
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 16
    .line 17
    new-instance v6, Lmc;

    .line 18
    .line 19
    const/4 v14, 0x0

    .line 20
    const/4 v15, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x0

    .line 26
    const/4 v12, 0x0

    .line 27
    const/4 v13, 0x0

    .line 28
    invoke-direct/range {v6 .. v15}, Lmc;-><init>(Lzq8;Loc;Lgc;Lbc;Ldc;Lbc;Lbc;Lbc;Lbc;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 32
    .line 33
    .line 34
    move-result v19

    .line 35
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result v20

    .line 39
    const/16 v27, 0x0

    .line 40
    .line 41
    const/16 v28, 0x0

    .line 42
    .line 43
    const-string v5, "__container"

    .line 44
    .line 45
    move-object v13, v6

    .line 46
    const-wide/16 v6, -0x1

    .line 47
    .line 48
    const/4 v8, 0x1

    .line 49
    const-wide/16 v9, -0x1

    .line 50
    .line 51
    const/4 v14, 0x0

    .line 52
    const/4 v15, 0x0

    .line 53
    const/16 v16, 0x0

    .line 54
    .line 55
    const/16 v17, 0x0

    .line 56
    .line 57
    const/16 v18, 0x0

    .line 58
    .line 59
    const/16 v21, 0x0

    .line 60
    .line 61
    const/16 v22, 0x0

    .line 62
    .line 63
    const/16 v24, 0x1

    .line 64
    .line 65
    const/16 v25, 0x0

    .line 66
    .line 67
    const/16 v26, 0x0

    .line 68
    .line 69
    move-object v12, v3

    .line 70
    move-object/from16 v23, v3

    .line 71
    .line 72
    invoke-direct/range {v2 .. v28}, Ljs4;-><init>(Ljava/util/List;Le25;Ljava/lang/String;JIJLjava/lang/String;Ljava/util/List;Lmc;IIIFFIILjc;Lkc;Ljava/util/List;ILbc;ZLz28;Lnz4;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, v0, Lc35;->b:Le25;

    .line 76
    .line 77
    iget-object v4, v3, Le25;->i:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v1, v0, v2, v4, v3}, Lhp1;-><init>(Lc35;Ljs4;Ljava/util/List;Le25;)V

    .line 80
    .line 81
    .line 82
    iput-object v1, v0, Lc35;->x:Lhp1;

    .line 83
    .line 84
    iget-boolean v0, v0, Lc35;->H:Z

    .line 85
    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-virtual {v1, v0}, Lhp1;->r(Z)V

    .line 90
    .line 91
    .line 92
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc35;->c:Lj35;

    .line 2
    .line 3
    iget-boolean v1, v0, Lj35;->r:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lj35;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lc35;->b:Le25;

    .line 12
    .line 13
    iput-object v1, p0, Lc35;->x:Lhp1;

    .line 14
    .line 15
    iput-object v1, p0, Lc35;->p:Lu94;

    .line 16
    .line 17
    iput-object v1, v0, Lj35;->q:Le25;

    .line 18
    .line 19
    const/high16 v1, -0x31000000

    .line 20
    .line 21
    iput v1, v0, Lj35;->n:F

    .line 22
    .line 23
    const/high16 v1, 0x4f000000

    .line 24
    .line 25
    iput v1, v0, Lj35;->p:F

    .line 26
    .line 27
    invoke-virtual {p0}, Lc35;->invalidateSelf()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc35;->K:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lc35;->k:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lc35;->e(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    sget-object p0, Lm15;->a:Li15;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lc35;->e(Landroid/graphics/Canvas;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {}, Lzv1;->d()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lc35;->b:Le25;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iget-object v3, p0, Lc35;->a:Landroid/graphics/Matrix;

    .line 7
    .line 8
    const/high16 v4, 0x40000000    # 2.0f

    .line 9
    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    int-to-float v6, v6

    .line 33
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    int-to-float v5, v5

    .line 38
    div-float/2addr v6, v5

    .line 39
    iget-object v0, v0, Le25;->j:Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    int-to-float v5, v5

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    int-to-float v0, v0

    .line 51
    div-float/2addr v5, v0

    .line 52
    cmpl-float v0, v6, v5

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object v0, p0, Lc35;->x:Lhp1;

    .line 58
    .line 59
    iget-object v5, p0, Lc35;->b:Le25;

    .line 60
    .line 61
    if-eqz v0, :cond_9

    .line 62
    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    int-to-float v7, v7

    .line 76
    iget-object v8, v5, Le25;->j:Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    int-to-float v8, v8

    .line 83
    div-float/2addr v7, v8

    .line 84
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    int-to-float v8, v8

    .line 89
    iget-object v5, v5, Le25;->j:Landroid/graphics/Rect;

    .line 90
    .line 91
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    int-to-float v5, v5

    .line 96
    div-float/2addr v8, v5

    .line 97
    iget-boolean v5, p0, Lc35;->J:Z

    .line 98
    .line 99
    if-eqz v5, :cond_4

    .line 100
    .line 101
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    cmpg-float v9, v5, v2

    .line 106
    .line 107
    if-gez v9, :cond_3

    .line 108
    .line 109
    div-float v9, v2, v5

    .line 110
    .line 111
    div-float/2addr v7, v9

    .line 112
    div-float/2addr v8, v9

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    move v9, v2

    .line 115
    :goto_0
    cmpl-float v2, v9, v2

    .line 116
    .line 117
    if-lez v2, :cond_4

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    int-to-float v2, v2

    .line 128
    div-float/2addr v2, v4

    .line 129
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    int-to-float v6, v6

    .line 134
    div-float/2addr v6, v4

    .line 135
    mul-float v4, v2, v5

    .line 136
    .line 137
    mul-float/2addr v5, v6

    .line 138
    sub-float/2addr v2, v4

    .line 139
    sub-float/2addr v6, v5

    .line 140
    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v9, v9, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 144
    .line 145
    .line 146
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 150
    .line 151
    .line 152
    iget p0, p0, Lc35;->y:I

    .line 153
    .line 154
    invoke-virtual {v0, p1, v3, p0}, Lam0;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 155
    .line 156
    .line 157
    if-lez v1, :cond_9

    .line 158
    .line 159
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_5
    :goto_1
    iget-object v0, p0, Lc35;->x:Lhp1;

    .line 164
    .line 165
    iget-object v5, p0, Lc35;->b:Le25;

    .line 166
    .line 167
    if-eqz v0, :cond_9

    .line 168
    .line 169
    if-nez v5, :cond_6

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_6
    iget v6, p0, Lc35;->d:F

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    int-to-float v7, v7

    .line 179
    iget-object v8, v5, Le25;->j:Landroid/graphics/Rect;

    .line 180
    .line 181
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    int-to-float v8, v8

    .line 186
    div-float/2addr v7, v8

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    int-to-float v8, v8

    .line 192
    iget-object v9, v5, Le25;->j:Landroid/graphics/Rect;

    .line 193
    .line 194
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    int-to-float v9, v9

    .line 199
    div-float/2addr v8, v9

    .line 200
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    cmpl-float v8, v6, v7

    .line 205
    .line 206
    if-lez v8, :cond_7

    .line 207
    .line 208
    iget v6, p0, Lc35;->d:F

    .line 209
    .line 210
    div-float/2addr v6, v7

    .line 211
    goto :goto_2

    .line 212
    :cond_7
    move v7, v6

    .line 213
    move v6, v2

    .line 214
    :goto_2
    cmpl-float v2, v6, v2

    .line 215
    .line 216
    if-lez v2, :cond_8

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    iget-object v2, v5, Le25;->j:Landroid/graphics/Rect;

    .line 223
    .line 224
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    int-to-float v2, v2

    .line 229
    div-float/2addr v2, v4

    .line 230
    iget-object v5, v5, Le25;->j:Landroid/graphics/Rect;

    .line 231
    .line 232
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    int-to-float v5, v5

    .line 237
    div-float/2addr v5, v4

    .line 238
    mul-float v4, v2, v7

    .line 239
    .line 240
    mul-float v8, v5, v7

    .line 241
    .line 242
    iget v9, p0, Lc35;->d:F

    .line 243
    .line 244
    mul-float/2addr v2, v9

    .line 245
    sub-float/2addr v2, v4

    .line 246
    mul-float/2addr v9, v5

    .line 247
    sub-float/2addr v9, v8

    .line 248
    invoke-virtual {p1, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v6, v6, v4, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 252
    .line 253
    .line 254
    :cond_8
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v7, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 258
    .line 259
    .line 260
    iget p0, p0, Lc35;->y:I

    .line 261
    .line 262
    invoke-virtual {v0, p1, v3, p0}, Lam0;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 263
    .line 264
    .line 265
    if-lez v1, :cond_9

    .line 266
    .line 267
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 268
    .line 269
    .line 270
    :cond_9
    :goto_3
    return-void
.end method

.method public final f()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-boolean p0, p0, Lj35;->r:Z

    .line 8
    .line 9
    return p0
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc35;->x:Lhp1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lu25;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lu25;-><init>(Lc35;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lc35;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lc35;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    iget-object v2, p0, Lc35;->c:Lj35;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_4

    .line 30
    .line 31
    :cond_1
    iput-boolean v1, v2, Lj35;->r:Z

    .line 32
    .line 33
    invoke-virtual {v2}, Lj35;->d()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v3, v2, Lj35;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    .line 54
    .line 55
    invoke-interface {v4, v2, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v2}, Lj35;->d()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {v2}, Lj35;->b()F

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {v2}, Lj35;->c()F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    :goto_1
    float-to-int v0, v0

    .line 75
    int-to-float v0, v0

    .line 76
    invoke-virtual {v2, v0}, Lj35;->h(F)V

    .line 77
    .line 78
    .line 79
    const-wide/16 v3, 0x0

    .line 80
    .line 81
    iput-wide v3, v2, Lj35;->e:J

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    iput v0, v2, Lj35;->k:I

    .line 85
    .line 86
    iget-boolean v3, v2, Lj35;->r:Z

    .line 87
    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    invoke-virtual {v2, v0}, Lj35;->f(Z)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {p0}, Lc35;->b()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_6

    .line 105
    .line 106
    iget v0, v2, Lj35;->c:F

    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    cmpg-float v0, v0, v3

    .line 110
    .line 111
    if-gez v0, :cond_5

    .line 112
    .line 113
    invoke-virtual {v2}, Lj35;->c()F

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    invoke-virtual {v2}, Lj35;->b()F

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    :goto_2
    float-to-int v0, v0

    .line 123
    invoke-virtual {p0, v0}, Lc35;->i(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1}, Lj35;->f(Z)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Lj35;->d()Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    iget-object v0, v2, Lj35;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_6

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 150
    .line 151
    invoke-interface {v1, v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    .line 1
    iget p0, p0, Lc35;->y:I

    .line 2
    .line 3
    return p0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc35;->b:Le25;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v0, v0, Le25;->j:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    iget p0, p0, Lc35;->d:F

    .line 15
    .line 16
    mul-float/2addr v0, p0

    .line 17
    float-to-int p0, v0

    .line 18
    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc35;->b:Le25;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v0, v0, Le25;->j:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    iget p0, p0, Lc35;->d:F

    .line 15
    .line 16
    mul-float/2addr v0, p0

    .line 17
    float-to-int p0, v0

    .line 18
    return p0
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc35;->x:Lhp1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lv25;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lv25;-><init>(Lc35;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lc35;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lc35;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    iget-object v2, p0, Lc35;->c:Lj35;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    :cond_1
    iput-boolean v1, v2, Lj35;->r:Z

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {v2, v0}, Lj35;->f(Z)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v3, 0x0

    .line 45
    .line 46
    iput-wide v3, v2, Lj35;->e:J

    .line 47
    .line 48
    invoke-virtual {v2}, Lj35;->d()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget v0, v2, Lj35;->f:F

    .line 55
    .line 56
    invoke-virtual {v2}, Lj35;->c()F

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    cmpl-float v0, v0, v3

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v2}, Lj35;->b()F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, v2, Lj35;->f:F

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v2}, Lj35;->d()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    iget v0, v2, Lj35;->f:F

    .line 78
    .line 79
    invoke-virtual {v2}, Lj35;->b()F

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    cmpl-float v0, v0, v3

    .line 84
    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {v2}, Lj35;->c()F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput v0, v2, Lj35;->f:F

    .line 92
    .line 93
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lc35;->b()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_5

    .line 98
    .line 99
    iget v0, v2, Lj35;->c:F

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    cmpg-float v0, v0, v3

    .line 103
    .line 104
    if-gez v0, :cond_4

    .line 105
    .line 106
    invoke-virtual {v2}, Lj35;->c()F

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {v2}, Lj35;->b()F

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    :goto_1
    float-to-int v0, v0

    .line 116
    invoke-virtual {p0, v0}, Lc35;->i(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v1}, Lj35;->f(Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lj35;->d()Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    iget-object v0, v2, Lj35;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_5

    .line 137
    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 143
    .line 144
    invoke-interface {v1, v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    return-void
.end method

.method public final i(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc35;->b:Le25;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lr25;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lr25;-><init>(Lc35;I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lc35;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 17
    .line 18
    int-to-float p1, p1

    .line 19
    invoke-virtual {p0, p1}, Lj35;->h(F)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc35;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lc35;->K:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public final isRunning()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc35;->f()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final j(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc35;->b:Le25;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ly25;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Ly25;-><init>(Lc35;I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lc35;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    int-to-float p1, p1

    .line 17
    const v0, 0x3f7d70a4    # 0.99f

    .line 18
    .line 19
    .line 20
    add-float/2addr p1, v0

    .line 21
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 22
    .line 23
    iget v0, p0, Lj35;->n:F

    .line 24
    .line 25
    invoke-virtual {p0, v0, p1}, Lj35;->i(FF)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc35;->b:Le25;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lp25;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, p1, v1}, Lp25;-><init>(Lc35;Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lc35;->n:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Le25;->c(Ljava/lang/String;)Lg75;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget p1, v0, Lg75;->b:F

    .line 24
    .line 25
    iget v0, v0, Lg75;->c:F

    .line 26
    .line 27
    add-float/2addr p1, v0

    .line 28
    float-to-int p1, p1

    .line 29
    invoke-virtual {p0, p1}, Lc35;->j(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const-string p0, "Cannot find marker with name "

    .line 34
    .line 35
    const-string v0, "."

    .line 36
    .line 37
    invoke-static {p0, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc35;->b:Le25;

    .line 2
    .line 3
    iget-object v1, p0, Lc35;->n:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lp25;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, p0, p1, v2}, Lp25;-><init>(Lc35;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Le25;->c(Ljava/lang/String;)Lg75;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget p1, v0, Lg75;->b:F

    .line 24
    .line 25
    float-to-int p1, p1

    .line 26
    iget v0, v0, Lg75;->c:F

    .line 27
    .line 28
    float-to-int v0, v0

    .line 29
    add-int/2addr v0, p1

    .line 30
    iget-object v2, p0, Lc35;->b:Le25;

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    new-instance v2, Lq25;

    .line 35
    .line 36
    invoke-direct {v2, p0, p1, v0}, Lq25;-><init>(Lc35;II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    int-to-float p1, p1

    .line 44
    int-to-float v0, v0

    .line 45
    const v1, 0x3f7d70a4    # 0.99f

    .line 46
    .line 47
    .line 48
    add-float/2addr v0, v1

    .line 49
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 50
    .line 51
    invoke-virtual {p0, p1, v0}, Lj35;->i(FF)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const-string p0, "Cannot find marker with name "

    .line 56
    .line 57
    const-string v0, "."

    .line 58
    .line 59
    invoke-static {p0, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc35;->b:Le25;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lw25;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lw25;-><init>(Lc35;I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lc35;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    int-to-float p1, p1

    .line 17
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 18
    .line 19
    iget v0, p0, Lj35;->p:F

    .line 20
    .line 21
    float-to-int v0, v0

    .line 22
    int-to-float v0, v0

    .line 23
    invoke-virtual {p0, p1, v0}, Lj35;->i(FF)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc35;->b:Le25;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, La35;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, La35;-><init>(Lc35;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lc35;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Le25;->c(Ljava/lang/String;)Lg75;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget p1, v0, Lg75;->b:F

    .line 23
    .line 24
    float-to-int p1, p1

    .line 25
    invoke-virtual {p0, p1}, Lc35;->m(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const-string p0, "Cannot find marker with name "

    .line 30
    .line 31
    const-string v0, "."

    .line 32
    .line 33
    invoke-static {p0, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final o(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc35;->b:Le25;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ls25;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Ls25;-><init>(Lc35;F)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lc35;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget v1, v0, Le25;->k:F

    .line 17
    .line 18
    iget v0, v0, Le25;->l:F

    .line 19
    .line 20
    invoke-static {v1, v0, p1}, Lsg5;->d(FFF)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lj35;->h(F)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lzv1;->d()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc35;->y:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lc35;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    const-string p0, "Use addColorFilter instead."

    .line 2
    .line 3
    invoke-static {p0}, Lm15;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lc35;->g()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc35;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lj35;->f(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lj35;->d()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lj35;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 33
    .line 34
    invoke-interface {v2, p0, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
