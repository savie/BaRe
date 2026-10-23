.class public abstract Lmi8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ldi8;

.field public static final b:Lhd5;

.field public static final c:Lid5;

.field public static final d:Lei8;

.field public static final e:F

.field public static f:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ldi8;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmi8;->a:Ldi8;

    .line 7
    .line 8
    new-instance v0, Lhd5;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lhd5;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lmi8;->b:Lhd5;

    .line 15
    .line 16
    new-instance v0, Lid5;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lid5;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lmi8;->c:Lid5;

    .line 22
    .line 23
    new-instance v0, Lei8;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1}, Lei8;-><init>(I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lmi8;->d:Lei8;

    .line 30
    .line 31
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    div-double/2addr v2, v0

    .line 38
    double-to-float v0, v2

    .line 39
    sput v0, Lmi8;->e:F

    .line 40
    .line 41
    const/high16 v0, -0x40800000    # -1.0f

    .line 42
    .line 43
    sput v0, Lmi8;->f:F

    .line 44
    .line 45
    return-void
.end method

.method public static a(Landroid/graphics/Path;FFF)V
    .locals 9

    .line 1
    sget-object v0, Lmi8;->a:Ldi8;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/PathMeasure;

    .line 8
    .line 9
    sget-object v1, Lmi8;->b:Lhd5;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/graphics/Path;

    .line 16
    .line 17
    sget-object v2, Lmi8;->c:Lid5;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/graphics/Path;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, p0, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/high16 v4, 0x3f800000    # 1.0f

    .line 34
    .line 35
    cmpl-float v5, p1, v4

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    if-nez v5, :cond_0

    .line 39
    .line 40
    cmpl-float v5, p2, v6

    .line 41
    .line 42
    if-nez v5, :cond_0

    .line 43
    .line 44
    invoke-static {}, Lzv1;->d()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    cmpg-float v5, v3, v4

    .line 49
    .line 50
    if-ltz v5, :cond_9

    .line 51
    .line 52
    sub-float v5, p2, p1

    .line 53
    .line 54
    sub-float/2addr v5, v4

    .line 55
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    float-to-double v4, v4

    .line 60
    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    cmpg-double v4, v4, v7

    .line 66
    .line 67
    if-gez v4, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    mul-float/2addr p1, v3

    .line 71
    mul-float/2addr p2, v3

    .line 72
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    mul-float/2addr p3, v3

    .line 81
    add-float/2addr v4, p3

    .line 82
    add-float/2addr p1, p3

    .line 83
    cmpl-float p2, v4, v3

    .line 84
    .line 85
    if-ltz p2, :cond_2

    .line 86
    .line 87
    cmpl-float p2, p1, v3

    .line 88
    .line 89
    if-ltz p2, :cond_2

    .line 90
    .line 91
    invoke-static {v4, v3}, Lsg5;->c(FF)I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    int-to-float v4, p2

    .line 96
    invoke-static {p1, v3}, Lsg5;->c(FF)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    int-to-float p1, p1

    .line 101
    :cond_2
    cmpg-float p2, v4, v6

    .line 102
    .line 103
    if-gez p2, :cond_3

    .line 104
    .line 105
    invoke-static {v4, v3}, Lsg5;->c(FF)I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    int-to-float v4, p2

    .line 110
    :cond_3
    cmpg-float p2, p1, v6

    .line 111
    .line 112
    if-gez p2, :cond_4

    .line 113
    .line 114
    invoke-static {p1, v3}, Lsg5;->c(FF)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    int-to-float p1, p1

    .line 119
    :cond_4
    cmpl-float p2, v4, p1

    .line 120
    .line 121
    if-nez p2, :cond_5

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lzv1;->d()V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_5
    if-ltz p2, :cond_6

    .line 131
    .line 132
    sub-float/2addr v4, v3

    .line 133
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 134
    .line 135
    .line 136
    const/4 p2, 0x1

    .line 137
    invoke-virtual {v0, v4, p1, v1, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 138
    .line 139
    .line 140
    cmpl-float p3, p1, v3

    .line 141
    .line 142
    if-lez p3, :cond_7

    .line 143
    .line 144
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 145
    .line 146
    .line 147
    rem-float/2addr p1, v3

    .line 148
    invoke-virtual {v0, v6, p1, v2, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_7
    cmpg-float p1, v4, v6

    .line 156
    .line 157
    if-gez p1, :cond_8

    .line 158
    .line 159
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 160
    .line 161
    .line 162
    add-float/2addr v4, v3

    .line 163
    invoke-virtual {v0, v4, v3, v2, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 167
    .line 168
    .line 169
    :cond_8
    :goto_0
    invoke-virtual {p0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Lzv1;->d()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_9
    :goto_1
    invoke-static {}, Lzv1;->d()V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public static b(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void

    .line 7
    :catch_1
    move-exception p0

    .line 8
    throw p0

    .line 9
    :cond_0
    return-void
.end method

.method public static c()F
    .locals 2

    .line 1
    sget v0, Lmi8;->f:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 18
    .line 19
    sput v0, Lmi8;->f:F

    .line 20
    .line 21
    :cond_0
    sget v0, Lmi8;->f:F

    .line 22
    .line 23
    return v0
.end method

.method public static d(Landroid/graphics/Matrix;)F
    .locals 6

    .line 1
    sget-object v0, Lmi8;->d:Lei8;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [F

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    aput v2, v0, v1

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aput v2, v0, v3

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    sget v4, Lmi8;->e:F

    .line 18
    .line 19
    aput v4, v0, v2

    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    aput v4, v0, v5

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 25
    .line 26
    .line 27
    aget p0, v0, v2

    .line 28
    .line 29
    aget v1, v0, v1

    .line 30
    .line 31
    sub-float/2addr p0, v1

    .line 32
    aget v1, v0, v5

    .line 33
    .line 34
    aget v0, v0, v3

    .line 35
    .line 36
    sub-float/2addr v1, v0

    .line 37
    float-to-double v2, p0

    .line 38
    float-to-double v0, v1

    .line 39
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    double-to-float p0, v0

    .line 44
    return p0
.end method

.method public static e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lzv1;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
