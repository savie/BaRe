.class public final Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;
.super Landroid/view/View;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public G:Ljava/util/List;

.field public H:I

.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final k:Landroid/graphics/RectF;

.field public final n:Landroid/graphics/Paint;

.field public final p:Landroid/graphics/Paint;

.field public final q:Landroid/text/TextPaint;

.field public final r:Landroid/graphics/Paint$FontMetrics;

.field public t:Ljava/util/List;

.field public x:F

.field public y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const p3, 0x7f0704ac

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    int-to-float p2, p2

    .line 19
    iput p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->a:F

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p2, p2

    .line 30
    iput p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->b:F

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const p3, 0x7f0700ce

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    int-to-float p2, p2

    .line 44
    iput p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->c:F

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const p3, 0x7f0700cd

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    iput p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->d:F

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const p3, 0x7f0700cf

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    const v0, 0x7f0704ae

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    int-to-float p3, p3

    .line 82
    iput p3, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->e:F

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    const v0, 0x7f0704ab

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    int-to-float p3, p3

    .line 96
    iput p3, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->f:F

    .line 97
    .line 98
    new-instance p3, Landroid/util/TypedValue;

    .line 99
    .line 100
    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const v1, 0x7f0b0011

    .line 108
    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3}, Landroid/util/TypedValue;->getFloat()F

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    new-instance v0, Landroid/graphics/RectF;

    .line 119
    .line 120
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->k:Landroid/graphics/RectF;

    .line 124
    .line 125
    new-instance v0, Landroid/graphics/Paint;

    .line 126
    .line 127
    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 128
    .line 129
    .line 130
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    .line 134
    .line 135
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->n:Landroid/graphics/Paint;

    .line 136
    .line 137
    new-instance v0, Landroid/graphics/Paint;

    .line 138
    .line 139
    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 140
    .line 141
    .line 142
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    .line 149
    .line 150
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->p:Landroid/graphics/Paint;

    .line 151
    .line 152
    new-instance p2, Landroid/text/TextPaint;

    .line 153
    .line 154
    invoke-direct {p2, v2}, Landroid/text/TextPaint;-><init>(I)V

    .line 155
    .line 156
    .line 157
    const v0, 0x7f090001

    .line 158
    .line 159
    .line 160
    invoke-static {p1, v0}, Lfm6;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 165
    .line 166
    .line 167
    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 168
    .line 169
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    const v0, 0x7f0704b7

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 187
    .line 188
    .line 189
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->q:Landroid/text/TextPaint;

    .line 190
    .line 191
    new-instance p1, Landroid/graphics/Paint$FontMetrics;

    .line 192
    .line 193
    invoke-direct {p1}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->r:Landroid/graphics/Paint$FontMetrics;

    .line 197
    .line 198
    sget-object p1, Lov2;->a:Lov2;

    .line 199
    .line 200
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->t:Ljava/util/List;

    .line 201
    .line 202
    const/high16 p2, 0x3f800000    # 1.0f

    .line 203
    .line 204
    iput p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->x:F

    .line 205
    .line 206
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->G:Ljava/util/List;

    .line 207
    .line 208
    const/4 p1, -0x1

    .line 209
    iput p1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->H:I

    .line 210
    .line 211
    const/4 p1, 0x0

    .line 212
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 218
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->H:I

    .line 6
    .line 7
    if-ne v2, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->q:Landroid/text/TextPaint;

    .line 11
    .line 12
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->r:Landroid/graphics/Paint$FontMetrics;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 15
    .line 16
    .line 17
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 18
    .line 19
    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 20
    .line 21
    sub-float/2addr v4, v5

    .line 22
    iget v5, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->f:F

    .line 23
    .line 24
    const/high16 v6, 0x40000000    # 2.0f

    .line 25
    .line 26
    mul-float/2addr v5, v6

    .line 27
    add-float/2addr v5, v4

    .line 28
    iget v7, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->c:F

    .line 29
    .line 30
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    sub-float v4, v5, v4

    .line 35
    .line 36
    div-float/2addr v4, v6

    .line 37
    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 38
    .line 39
    sub-float/2addr v4, v3

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    iget-object v7, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->t:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    int-to-float v7, v7

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    int-to-float v8, v8

    .line 61
    iget v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->a:F

    .line 62
    .line 63
    add-float/2addr v8, v9

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    add-int/2addr v10, v1

    .line 69
    iget-object v11, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->t:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    if-eqz v12, :cond_5

    .line 80
    .line 81
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    check-cast v12, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 86
    .line 87
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    if-nez v13, :cond_1

    .line 92
    .line 93
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    if-nez v13, :cond_1

    .line 98
    .line 99
    const-string v13, "Unknown"

    .line 100
    .line 101
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v13, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    iget v15, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->e:F

    .line 120
    .line 121
    mul-float v16, v15, v6

    .line 122
    .line 123
    add-float v14, v16, v14

    .line 124
    .line 125
    move/from16 v16, v7

    .line 126
    .line 127
    float-to-double v6, v14

    .line 128
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 129
    .line 130
    .line 131
    move-result-wide v6

    .line 132
    double-to-float v6, v6

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    int-to-float v7, v7

    .line 138
    cmpl-float v7, v16, v7

    .line 139
    .line 140
    if-lez v7, :cond_2

    .line 141
    .line 142
    add-float v7, v16, v6

    .line 143
    .line 144
    int-to-float v14, v10

    .line 145
    cmpl-float v7, v7, v14

    .line 146
    .line 147
    if-lez v7, :cond_2

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    int-to-float v7, v7

    .line 154
    add-float v14, v5, v9

    .line 155
    .line 156
    add-float/2addr v8, v14

    .line 157
    move/from16 v17, v7

    .line 158
    .line 159
    :goto_1
    move/from16 v18, v8

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_2
    move/from16 v17, v16

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :goto_2
    iget-boolean v7, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->y:Z

    .line 166
    .line 167
    invoke-virtual {v12, v7}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getTextColor(Z)I

    .line 168
    .line 169
    .line 170
    move-result v25

    .line 171
    move v7, v15

    .line 172
    new-instance v15, Lhx;

    .line 173
    .line 174
    add-float v19, v17, v6

    .line 175
    .line 176
    add-float v20, v18, v5

    .line 177
    .line 178
    add-float v21, v17, v7

    .line 179
    .line 180
    add-float v22, v18, v4

    .line 181
    .line 182
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->isBuiltInLabel()Z

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    const/4 v8, 0x0

    .line 187
    if-eqz v7, :cond_3

    .line 188
    .line 189
    move/from16 v23, v8

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_3
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getColorInt()I

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    move/from16 v23, v7

    .line 197
    .line 198
    :goto_3
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->isBuiltInLabel()Z

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    if-eqz v7, :cond_4

    .line 203
    .line 204
    move/from16 v24, v25

    .line 205
    .line 206
    :goto_4
    move-object/from16 v16, v13

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_4
    move/from16 v24, v8

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :goto_5
    invoke-direct/range {v15 .. v25}, Lhx;-><init>(Ljava/lang/String;FFFFFFIII)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    iget v7, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->b:F

    .line 219
    .line 220
    add-float/2addr v6, v7

    .line 221
    add-float v7, v6, v17

    .line 222
    .line 223
    move/from16 v8, v18

    .line 224
    .line 225
    const/high16 v6, 0x40000000    # 2.0f

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_5
    iput-object v3, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->G:Ljava/util/List;

    .line 230
    .line 231
    iput v1, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->H:I

    .line 232
    .line 233
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->t:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sub-int/2addr v0, v1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    sub-int/2addr v0, v1

    .line 31
    const/4 v1, 0x0

    .line 32
    if-gez v0, :cond_1

    .line 33
    .line 34
    move v0, v1

    .line 35
    :cond_1
    if-gtz v0, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->a(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->G:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_5

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lhx;

    .line 58
    .line 59
    iget v3, v2, Lhx;->b:F

    .line 60
    .line 61
    iget v4, v2, Lhx;->i:I

    .line 62
    .line 63
    iget v5, v2, Lhx;->h:I

    .line 64
    .line 65
    iget v6, v2, Lhx;->c:F

    .line 66
    .line 67
    iget v7, v2, Lhx;->d:F

    .line 68
    .line 69
    iget v8, v2, Lhx;->e:F

    .line 70
    .line 71
    iget-object v9, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->k:Landroid/graphics/RectF;

    .line 72
    .line 73
    invoke-virtual {v9, v3, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->n:Landroid/graphics/Paint;

    .line 77
    .line 78
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->p:Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    .line 85
    .line 86
    iget v7, v2, Lhx;->j:I

    .line 87
    .line 88
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    int-to-float v8, v8

    .line 93
    iget v10, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->x:F

    .line 94
    .line 95
    mul-float/2addr v8, v10

    .line 96
    invoke-static {v8}, Ltu0;->v(F)I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    const/16 v10, 0xff

    .line 101
    .line 102
    invoke-static {v8, v1, v10}, Ll73;->h(III)I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    invoke-static {v7, v8}, Lxl1;->g(II)I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    iget-object v8, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->q:Landroid/text/TextPaint;

    .line 111
    .line 112
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    .line 114
    .line 115
    iget v7, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->d:F

    .line 116
    .line 117
    if-eqz v5, :cond_3

    .line 118
    .line 119
    invoke-virtual {p1, v9, v7, v7, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    if-eqz v4, :cond_4

    .line 123
    .line 124
    invoke-virtual {p1, v9, v7, v7, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    iget-object v3, v2, Lhx;->a:Ljava/lang/String;

    .line 128
    .line 129
    iget v4, v2, Lhx;->f:F

    .line 130
    .line 131
    iget v2, v2, Lhx;->g:F

    .line 132
    .line 133
    invoke-virtual {p1, v3, v4, v2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_5
    :goto_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sub-int v0, p1, v0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :cond_0
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->t:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_5

    .line 26
    .line 27
    if-gtz v0, :cond_1

    .line 28
    .line 29
    goto :goto_4

    .line 30
    :cond_1
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->a(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->G:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lhx;

    .line 52
    .line 53
    iget v1, v1, Lhx;->e:F

    .line 54
    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lhx;

    .line 66
    .line 67
    iget v2, v2, Lhx;->e:F

    .line 68
    .line 69
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :goto_1
    if-eqz v0, :cond_4

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    const/4 v0, 0x0

    .line 86
    :goto_2
    float-to-double v0, v0

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    double-to-float v0, v0

    .line 92
    float-to-int v0, v0

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    :goto_3
    add-int/2addr v1, v0

    .line 98
    goto :goto_5

    .line 99
    :cond_5
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    goto :goto_3

    .line 108
    :goto_5
    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 113
    .line 114
    .line 115
    return-void
.end method
