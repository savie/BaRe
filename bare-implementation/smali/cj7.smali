.class public final Lcj7;
.super Lam0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final A:Landroid/graphics/RectF;

.field public final B:Lvp4;

.field public final C:[F

.field public final D:Landroid/graphics/Path;

.field public final E:Ljs4;

.field public F:Lxi8;


# direct methods
.method public constructor <init>(Lc35;Ljs4;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lam0;-><init>(Lc35;Ljs4;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcj7;->A:Landroid/graphics/RectF;

    .line 10
    .line 11
    new-instance p1, Lvp4;

    .line 12
    .line 13
    invoke-direct {p1}, Lvp4;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcj7;->B:Lvp4;

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    new-array v0, v0, [F

    .line 21
    .line 22
    iput-object v0, p0, Lcj7;->C:[F

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcj7;->D:Landroid/graphics/Path;

    .line 30
    .line 31
    iput-object p2, p0, Lcj7;->E:Ljs4;

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    invoke-virtual {p1, p0}, Lvp4;->setAlpha(I)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    .line 41
    .line 42
    iget p0, p2, Ljs4;->l:I

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lam0;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcj7;->E:Ljs4;

    .line 5
    .line 6
    iget p3, p2, Ljs4;->j:I

    .line 7
    .line 8
    int-to-float p3, p3

    .line 9
    iget p2, p2, Ljs4;->k:I

    .line 10
    .line 11
    int-to-float p2, p2

    .line 12
    iget-object v0, p0, Lcj7;->A:Landroid/graphics/RectF;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1, v1, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lam0;->l:Landroid/graphics/Matrix;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final f(Lcd;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lam0;->f(Lcd;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lf35;->F:Landroid/graphics/ColorFilter;

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
    iput-object p2, p0, Lcj7;->F:Lxi8;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcj7;->E:Ljs4;

    .line 2
    .line 3
    iget v1, v0, Ljs4;->l:I

    .line 4
    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v2, p0, Lam0;->u:Lk98;

    .line 14
    .line 15
    iget-object v2, v2, Lk98;->j:Lyl0;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0x64

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v2}, Lyl0;->f()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    :goto_0
    int-to-float p3, p3

    .line 33
    const/high16 v3, 0x437f0000    # 255.0f

    .line 34
    .line 35
    div-float/2addr p3, v3

    .line 36
    int-to-float v1, v1

    .line 37
    div-float/2addr v1, v3

    .line 38
    int-to-float v2, v2

    .line 39
    mul-float/2addr v1, v2

    .line 40
    const/high16 v2, 0x42c80000    # 100.0f

    .line 41
    .line 42
    div-float/2addr v1, v2

    .line 43
    mul-float/2addr v1, p3

    .line 44
    mul-float/2addr v1, v3

    .line 45
    float-to-int p3, v1

    .line 46
    iget-object v1, p0, Lcj7;->B:Lvp4;

    .line 47
    .line 48
    invoke-virtual {v1, p3}, Lvp4;->setAlpha(I)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcj7;->F:Lxi8;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2}, Lxi8;->f()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/graphics/ColorFilter;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 62
    .line 63
    .line 64
    :cond_2
    if-lez p3, :cond_3

    .line 65
    .line 66
    iget-object p3, p0, Lcj7;->C:[F

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    aput v3, p3, v2

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    aput v3, p3, v4

    .line 74
    .line 75
    iget v5, v0, Ljs4;->j:I

    .line 76
    .line 77
    int-to-float v5, v5

    .line 78
    const/4 v6, 0x2

    .line 79
    aput v5, p3, v6

    .line 80
    .line 81
    const/4 v7, 0x3

    .line 82
    aput v3, p3, v7

    .line 83
    .line 84
    const/4 v8, 0x4

    .line 85
    aput v5, p3, v8

    .line 86
    .line 87
    iget v0, v0, Ljs4;->k:I

    .line 88
    .line 89
    int-to-float v0, v0

    .line 90
    const/4 v5, 0x5

    .line 91
    aput v0, p3, v5

    .line 92
    .line 93
    const/4 v9, 0x6

    .line 94
    aput v3, p3, v9

    .line 95
    .line 96
    const/4 v3, 0x7

    .line 97
    aput v0, p3, v3

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcj7;->D:Landroid/graphics/Path;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 105
    .line 106
    .line 107
    aget p2, p3, v2

    .line 108
    .line 109
    aget v0, p3, v4

    .line 110
    .line 111
    invoke-virtual {p0, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 112
    .line 113
    .line 114
    aget p2, p3, v6

    .line 115
    .line 116
    aget v0, p3, v7

    .line 117
    .line 118
    invoke-virtual {p0, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    .line 120
    .line 121
    aget p2, p3, v8

    .line 122
    .line 123
    aget v0, p3, v5

    .line 124
    .line 125
    invoke-virtual {p0, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 126
    .line 127
    .line 128
    aget p2, p3, v9

    .line 129
    .line 130
    aget v0, p3, v3

    .line 131
    .line 132
    invoke-virtual {p0, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 133
    .line 134
    .line 135
    aget p2, p3, v2

    .line 136
    .line 137
    aget p3, p3, v4

    .line 138
    .line 139
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_1
    return-void
.end method
