.class public final Lgx0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field public final a:Lo75;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/RectF;

.field public final d:Landroid/graphics/Rect;

.field public final e:I


# direct methods
.method public constructor <init>(Lo75;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lbs5;->c:Landroid/graphics/Paint;

    .line 5
    .line 6
    iput-object v0, p0, Lgx0;->b:Landroid/graphics/Paint;

    .line 7
    .line 8
    sget-object v0, Lbs5;->b:Landroid/graphics/RectF;

    .line 9
    .line 10
    iput-object v0, p0, Lgx0;->c:Landroid/graphics/RectF;

    .line 11
    .line 12
    sget-object v0, Lbs5;->a:Landroid/graphics/Rect;

    .line 13
    .line 14
    iput-object v0, p0, Lgx0;->d:Landroid/graphics/Rect;

    .line 15
    .line 16
    iput-object p1, p0, Lgx0;->a:Lo75;

    .line 17
    .line 18
    iput p2, p0, Lgx0;->e:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    .line 1
    iget-object p5, p0, Lgx0;->c:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object p7, p0, Lgx0;->d:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-eqz p11, :cond_7

    .line 6
    .line 7
    instance-of p10, p8, Landroid/text/Spanned;

    .line 8
    .line 9
    if-eqz p10, :cond_7

    .line 10
    .line 11
    check-cast p8, Landroid/text/Spanned;

    .line 12
    .line 13
    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p8

    .line 17
    if-ne p8, p9, :cond_7

    .line 18
    .line 19
    iget-object p8, p0, Lgx0;->b:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-virtual {p8, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lgx0;->a:Lo75;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget p9, p2, Lo75;->b:I

    .line 30
    .line 31
    invoke-virtual {p8}, Landroid/graphics/Paint;->getColor()I

    .line 32
    .line 33
    .line 34
    move-result p10

    .line 35
    invoke-virtual {p8, p10}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    .line 37
    .line 38
    iget p10, p2, Lo75;->d:I

    .line 39
    .line 40
    if-eqz p10, :cond_0

    .line 41
    .line 42
    int-to-float p10, p10

    .line 43
    invoke-virtual {p8, p10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 47
    .line 48
    .line 49
    move-result p10

    .line 50
    :try_start_0
    invoke-virtual {p8}, Landroid/graphics/Paint;->descent()F

    .line 51
    .line 52
    .line 53
    move-result p11

    .line 54
    invoke-virtual {p8}, Landroid/graphics/Paint;->ascent()F

    .line 55
    .line 56
    .line 57
    move-result p12

    .line 58
    sub-float/2addr p11, p12

    .line 59
    const/high16 p12, 0x3f000000    # 0.5f

    .line 60
    .line 61
    add-float/2addr p11, p12

    .line 62
    float-to-int p11, p11

    .line 63
    invoke-static {p9, p11}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result p11

    .line 67
    div-int/lit8 p11, p11, 0x2

    .line 68
    .line 69
    iget p2, p2, Lo75;->e:I

    .line 70
    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    if-le p2, p11, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    move p11, p2

    .line 77
    :cond_2
    :goto_0
    sub-int p2, p9, p11

    .line 78
    .line 79
    div-int/lit8 p2, p2, 0x2

    .line 80
    .line 81
    if-lez p4, :cond_3

    .line 82
    .line 83
    :goto_1
    add-int/2addr p3, p2

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    sub-int/2addr p3, p9

    .line 86
    goto :goto_1

    .line 87
    :goto_2
    add-int p2, p3, p11

    .line 88
    .line 89
    invoke-virtual {p8}, Landroid/graphics/Paint;->descent()F

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    invoke-virtual {p8}, Landroid/graphics/Paint;->ascent()F

    .line 94
    .line 95
    .line 96
    move-result p9

    .line 97
    add-float/2addr p4, p9

    .line 98
    const/high16 p9, 0x40000000    # 2.0f

    .line 99
    .line 100
    div-float/2addr p4, p9

    .line 101
    add-float/2addr p4, p12

    .line 102
    float-to-int p4, p4

    .line 103
    add-int/2addr p6, p4

    .line 104
    div-int/lit8 p4, p11, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    sub-int/2addr p6, p4

    .line 107
    add-int/2addr p11, p6

    .line 108
    iget p0, p0, Lgx0;->e:I

    .line 109
    .line 110
    if-eqz p0, :cond_5

    .line 111
    .line 112
    const/4 p4, 0x1

    .line 113
    if-ne p0, p4, :cond_4

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    :try_start_1
    invoke-virtual {p7, p3, p6, p2, p11}, Landroid/graphics/Rect;->set(IIII)V

    .line 117
    .line 118
    .line 119
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 120
    .line 121
    invoke-virtual {p8, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p7, p8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 125
    .line 126
    .line 127
    goto :goto_5

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    goto :goto_6

    .line 130
    :cond_5
    :goto_3
    int-to-float p3, p3

    .line 131
    int-to-float p4, p6

    .line 132
    int-to-float p2, p2

    .line 133
    int-to-float p6, p11

    .line 134
    invoke-virtual {p5, p3, p4, p2, p6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 135
    .line 136
    .line 137
    if-nez p0, :cond_6

    .line 138
    .line 139
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_6
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 143
    .line 144
    :goto_4
    invoke-virtual {p8, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p5, p8}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .line 149
    .line 150
    :goto_5
    invoke-virtual {p1, p10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :goto_6
    invoke-virtual {p1, p10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_7
    return-void
.end method

.method public final getLeadingMargin(Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Lgx0;->a:Lo75;

    .line 2
    .line 3
    iget p0, p0, Lo75;->b:I

    .line 4
    .line 5
    return p0
.end method
