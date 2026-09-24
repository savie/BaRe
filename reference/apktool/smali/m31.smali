.class public final Lm31;
.super Landroid/util/Property;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lm31;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lm31;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lq71;

    .line 7
    .line 8
    iget p0, p1, Lq71;->n:F

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    check-cast p1, Ls31;

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget p0, p0, Lm31;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lq71;

    .line 9
    .line 10
    check-cast p2, Ljava/lang/Float;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    iput p0, p1, Lq71;->n:F

    .line 17
    .line 18
    const p2, 0x45bb8000    # 6000.0f

    .line 19
    .line 20
    .line 21
    mul-float/2addr p0, p2

    .line 22
    float-to-int p0, p0

    .line 23
    iget-object p2, p1, Lq71;->e:Landroid/animation/TimeInterpolator;

    .line 24
    .line 25
    iget-object v2, p1, Lao;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lsp2;

    .line 34
    .line 35
    const/high16 v4, 0x44870000    # 1080.0f

    .line 36
    .line 37
    iget v5, p1, Lq71;->n:F

    .line 38
    .line 39
    mul-float/2addr v5, v4

    .line 40
    sget-object v4, Lq71;->t:[I

    .line 41
    .line 42
    array-length v6, v4

    .line 43
    const/4 v7, 0x0

    .line 44
    move v8, v0

    .line 45
    move v9, v7

    .line 46
    :goto_0
    if-ge v8, v6, :cond_0

    .line 47
    .line 48
    aget v10, v4, v8

    .line 49
    .line 50
    const/16 v11, 0x1f4

    .line 51
    .line 52
    invoke-static {p0, v10, v11}, Lao;->h(III)F

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    invoke-interface {p2, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    const/high16 v11, 0x42b40000    # 90.0f

    .line 61
    .line 62
    mul-float/2addr v10, v11

    .line 63
    add-float/2addr v9, v10

    .line 64
    add-int/lit8 v8, v8, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    add-float/2addr v5, v9

    .line 68
    iput v5, v3, Lsp2;->g:F

    .line 69
    .line 70
    const/16 v5, 0xbb8

    .line 71
    .line 72
    invoke-static {p0, v0, v5}, Lao;->h(III)F

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    invoke-interface {p2, v6}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-static {p0, v5, v5}, Lao;->h(III)F

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-interface {p2, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    sub-float/2addr v6, v5

    .line 89
    iput v7, v3, Lsp2;->a:F

    .line 90
    .line 91
    sget-object v5, Lq71;->x:[F

    .line 92
    .line 93
    aget v8, v5, v0

    .line 94
    .line 95
    aget v1, v5, v1

    .line 96
    .line 97
    invoke-static {v8, v1, v6}, Lzv1;->l(FFF)F

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iput v1, v3, Lsp2;->b:F

    .line 102
    .line 103
    iget v5, p1, Lq71;->p:F

    .line 104
    .line 105
    cmpl-float v6, v5, v7

    .line 106
    .line 107
    const/high16 v8, 0x3f800000    # 1.0f

    .line 108
    .line 109
    if-lez v6, :cond_1

    .line 110
    .line 111
    sub-float v5, v8, v5

    .line 112
    .line 113
    mul-float/2addr v5, v1

    .line 114
    iput v5, v3, Lsp2;->b:F

    .line 115
    .line 116
    :cond_1
    move v1, v0

    .line 117
    :goto_1
    array-length v3, v4

    .line 118
    if-ge v1, v3, :cond_3

    .line 119
    .line 120
    aget v3, v4, v1

    .line 121
    .line 122
    const/16 v5, 0x64

    .line 123
    .line 124
    invoke-static {p0, v3, v5}, Lao;->h(III)F

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    cmpl-float v5, v3, v7

    .line 129
    .line 130
    if-ltz v5, :cond_2

    .line 131
    .line 132
    cmpg-float v5, v3, v8

    .line 133
    .line 134
    if-gtz v5, :cond_2

    .line 135
    .line 136
    iget p0, p1, Lq71;->k:I

    .line 137
    .line 138
    add-int/2addr v1, p0

    .line 139
    iget-object p0, p1, Lq71;->f:Lv71;

    .line 140
    .line 141
    iget-object p0, p0, Llm0;->e:[I

    .line 142
    .line 143
    array-length v4, p0

    .line 144
    rem-int/2addr v1, v4

    .line 145
    add-int/lit8 v4, v1, 0x1

    .line 146
    .line 147
    array-length v5, p0

    .line 148
    rem-int/2addr v4, v5

    .line 149
    aget v1, p0, v1

    .line 150
    .line 151
    aget p0, p0, v4

    .line 152
    .line 153
    invoke-interface {p2, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Lsp2;

    .line 162
    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-static {p2, v1, p0}, Lj40;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    iput p0, v0, Lsp2;->c:I

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_3
    :goto_2
    iget-object p0, p1, Lao;->a:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p0, Lmb4;

    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :pswitch_0
    check-cast p1, Ls31;

    .line 194
    .line 195
    check-cast p2, Landroid/graphics/PointF;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 201
    .line 202
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    iput p0, p1, Ls31;->c:I

    .line 207
    .line 208
    iget p0, p2, Landroid/graphics/PointF;->y:F

    .line 209
    .line 210
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    iput p0, p1, Ls31;->d:I

    .line 215
    .line 216
    iget p2, p1, Ls31;->g:I

    .line 217
    .line 218
    add-int/2addr p2, v1

    .line 219
    iput p2, p1, Ls31;->g:I

    .line 220
    .line 221
    iget v1, p1, Ls31;->f:I

    .line 222
    .line 223
    if-ne v1, p2, :cond_4

    .line 224
    .line 225
    iget-object p2, p1, Ls31;->e:Landroid/view/View;

    .line 226
    .line 227
    iget v1, p1, Ls31;->a:I

    .line 228
    .line 229
    iget v2, p1, Ls31;->b:I

    .line 230
    .line 231
    iget v3, p1, Ls31;->c:I

    .line 232
    .line 233
    invoke-static {p2, v1, v2, v3, p0}, Lwm8;->a(Landroid/view/View;IIII)V

    .line 234
    .line 235
    .line 236
    iput v0, p1, Ls31;->f:I

    .line 237
    .line 238
    iput v0, p1, Ls31;->g:I

    .line 239
    .line 240
    :cond_4
    return-void

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
