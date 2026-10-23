.class public final Lln0;
.super Lo03;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final q:Lcom/google/android/material/slider/Slider;

.field public final r:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/Slider;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lo03;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lln0;->r:Landroid/graphics/Rect;

    .line 10
    .line 11
    iput-object p1, p0, Lln0;->q:Lcom/google/android/material/slider/Slider;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final n(FF)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lln0;->q:Lcom/google/android/material/slider/Slider;

    .line 3
    .line 4
    invoke-virtual {v1}, Lon0;->getValues()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v0, v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lln0;->r:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {v1, v0, v2}, Lon0;->D(ILandroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    float-to-int v1, p1

    .line 20
    float-to-int v3, p2

    .line 21
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    return v0

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, -0x1

    .line 32
    return p0
.end method

.method public final o(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lln0;->q:Lcom/google/android/material/slider/Slider;

    .line 3
    .line 4
    invoke-virtual {v1}, Lon0;->getValues()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final r(IILandroid/os/Bundle;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lln0;->q:Lcom/google/android/material/slider/Slider;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    const/16 v0, 0x1000

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/16 v2, 0x2000

    .line 15
    .line 16
    if-eq p2, v0, :cond_3

    .line 17
    .line 18
    if-eq p2, v2, :cond_3

    .line 19
    .line 20
    const v0, 0x102003d

    .line 21
    .line 22
    .line 23
    if-eq p2, v0, :cond_1

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_1
    if-eqz p3, :cond_8

    .line 28
    .line 29
    const-string p2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 30
    .line 31
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {p0, p1, p2}, Lon0;->B(IF)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_8

    .line 47
    .line 48
    invoke-virtual {p0}, Lon0;->E()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 52
    .line 53
    .line 54
    return v1

    .line 55
    :cond_3
    iget p3, p0, Lon0;->M0:F

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    cmpl-float v0, p3, v0

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    const/high16 p3, 0x3f800000    # 1.0f

    .line 63
    .line 64
    :cond_4
    iget v0, p0, Lon0;->I0:F

    .line 65
    .line 66
    iget v3, p0, Lon0;->H0:F

    .line 67
    .line 68
    sub-float/2addr v0, v3

    .line 69
    div-float/2addr v0, p3

    .line 70
    const/high16 v3, 0x41a00000    # 20.0f

    .line 71
    .line 72
    cmpg-float v4, v0, v3

    .line 73
    .line 74
    if-gtz v4, :cond_5

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    div-float/2addr v0, v3

    .line 78
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    int-to-float v0, v0

    .line 83
    mul-float/2addr p3, v0

    .line 84
    :goto_0
    if-ne p2, v2, :cond_6

    .line 85
    .line 86
    neg-float p3, p3

    .line 87
    :cond_6
    invoke-virtual {p0}, Lon0;->s()Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_7

    .line 92
    .line 93
    neg-float p3, p3

    .line 94
    :cond_7
    invoke-virtual {p0}, Lon0;->getValues()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Ljava/lang/Float;

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    add-float/2addr p2, p3

    .line 109
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getValueFrom()F

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getValueTo()F

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-static {p2, p3, v0}, Liz1;->c(FFF)F

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    invoke-virtual {p0, p1, p2}, Lon0;->B(IF)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_8

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lon0;->setActiveThumbIndex(I)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lon0;->v1:Lin0;

    .line 131
    .line 132
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 133
    .line 134
    .line 135
    iget p2, p0, Lon0;->s1:I

    .line 136
    .line 137
    int-to-long p2, p2

    .line 138
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lon0;->E()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 145
    .line 146
    .line 147
    return v1

    .line 148
    :cond_8
    :goto_1
    const/4 p0, 0x0

    .line 149
    return p0
.end method

.method public final t(ILm6;)V
    .locals 10

    .line 1
    iget-object v0, p2, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    sget-object v1, Lg6;->o:Lg6;

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lm6;->b(Lg6;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lln0;->q:Lcom/google/android/material/slider/Slider;

    .line 9
    .line 10
    invoke-virtual {v1}, Lon0;->getValues()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {v1}, Lcom/google/android/material/slider/Slider;->getValueFrom()F

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-virtual {v1}, Lcom/google/android/material/slider/Slider;->getValueTo()F

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_1

    .line 37
    .line 38
    cmpl-float v7, v4, v5

    .line 39
    .line 40
    if-lez v7, :cond_0

    .line 41
    .line 42
    const/16 v7, 0x2000

    .line 43
    .line 44
    invoke-virtual {p2, v7}, Lm6;->a(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    cmpg-float v7, v4, v6

    .line 48
    .line 49
    if-gez v7, :cond_1

    .line 50
    .line 51
    const/16 v7, 0x1000

    .line 52
    .line 53
    invoke-virtual {p2, v7}, Lm6;->a(I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const/4 v8, 0x2

    .line 61
    invoke-virtual {v7, v8}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 62
    .line 63
    .line 64
    float-to-double v8, v5

    .line 65
    :try_start_0
    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {v7, v8}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    float-to-double v8, v6

    .line 78
    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v7, v8}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    float-to-double v8, v4

    .line 91
    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-virtual {v7, v8}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 100
    .line 101
    .line 102
    move-result v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 104
    :catch_0
    sget v7, Lon0;->x1:I

    .line 105
    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v8, "Error parsing value("

    .line 109
    .line 110
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v3, "), valueFrom("

    .line 117
    .line 118
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v3, "), and valueTo("

    .line 125
    .line 126
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v3, ") into a float."

    .line 133
    .line 134
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    const-string v7, "on0"

    .line 142
    .line 143
    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :goto_0
    const/4 v3, 0x1

    .line 147
    invoke-static {v3, v5, v6, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 152
    .line 153
    .line 154
    const-class v5, Landroid/widget/SeekBar;

    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {p2, v5}, Lm6;->i(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    if-eqz v6, :cond_2

    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v6, ","

    .line 182
    .line 183
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    :cond_2
    float-to-int v6, v4

    .line 187
    int-to-float v6, v6

    .line 188
    cmpl-float v6, v6, v4

    .line 189
    .line 190
    if-nez v6, :cond_3

    .line 191
    .line 192
    const-string v6, "%.0f"

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_3
    const-string v6, "%.2f"

    .line 196
    .line 197
    :goto_1
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    const v7, 0x7f130332

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-le v2, v3, :cond_6

    .line 225
    .line 226
    invoke-virtual {v1}, Lon0;->getValues()Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    sub-int/2addr v2, v3

    .line 235
    if-ne p1, v2, :cond_4

    .line 236
    .line 237
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    const v3, 0x7f130330

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    :goto_2
    move-object v6, v2

    .line 249
    goto :goto_3

    .line 250
    :cond_4
    if-nez p1, :cond_5

    .line 251
    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    const v3, 0x7f130331

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    goto :goto_2

    .line 264
    :cond_5
    const-string v2, ""

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_6
    :goto_3
    sget-object v2, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 268
    .line 269
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 270
    .line 271
    const/16 v3, 0x1e

    .line 272
    .line 273
    if-lt v2, v3, :cond_7

    .line 274
    .line 275
    invoke-static {v1}, Lal8;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    goto :goto_4

    .line 280
    :cond_7
    const v7, 0x7f0a04a8

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    const-class v8, Ljava/lang/CharSequence;

    .line 288
    .line 289
    invoke-virtual {v8, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    if-eqz v8, :cond_8

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_8
    const/4 v7, 0x0

    .line 297
    :goto_4
    check-cast v7, Ljava/lang/CharSequence;

    .line 298
    .line 299
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 300
    .line 301
    .line 302
    move-result v8

    .line 303
    if-nez v8, :cond_a

    .line 304
    .line 305
    if-lt v2, v3, :cond_9

    .line 306
    .line 307
    invoke-static {v0, v7}, Lh6;->h(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_9
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    .line 316
    .line 317
    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 322
    .line 323
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v2, ", "

    .line 333
    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    :goto_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {p2, v0}, Lm6;->k(Ljava/lang/CharSequence;)V

    .line 352
    .line 353
    .line 354
    iget-object p0, p0, Lln0;->r:Landroid/graphics/Rect;

    .line 355
    .line 356
    invoke-virtual {v1, p1, p0}, Lon0;->D(ILandroid/graphics/Rect;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p2, p0}, Lm6;->h(Landroid/graphics/Rect;)V

    .line 360
    .line 361
    .line 362
    return-void
.end method
