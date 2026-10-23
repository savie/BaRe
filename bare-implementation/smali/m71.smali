.class public final Lm71;
.super Landroid/util/Property;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lm71;->a:I

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
    iget p0, p0, Lm71;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    check-cast p1, Lo71;

    .line 14
    .line 15
    iget p0, p1, Lo71;->n:F

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget p0, p0, Lm71;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/view/View;

    .line 7
    .line 8
    check-cast p2, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Lo71;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Float;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    iput p0, p1, Lo71;->n:F

    .line 23
    .line 24
    const p2, 0x45a8c000    # 5400.0f

    .line 25
    .line 26
    .line 27
    mul-float/2addr p0, p2

    .line 28
    float-to-int p0, p0

    .line 29
    iget-object p2, p1, Lo71;->e:Li53;

    .line 30
    .line 31
    iget-object v0, p1, Lao;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lsp2;

    .line 41
    .line 42
    const/high16 v3, 0x44be0000    # 1520.0f

    .line 43
    .line 44
    iget v4, p1, Lo71;->n:F

    .line 45
    .line 46
    mul-float/2addr v4, v3

    .line 47
    const/high16 v3, -0x3e600000    # -20.0f

    .line 48
    .line 49
    add-float/2addr v3, v4

    .line 50
    iput v3, v2, Lsp2;->a:F

    .line 51
    .line 52
    iput v4, v2, Lsp2;->b:F

    .line 53
    .line 54
    move v3, v1

    .line 55
    :goto_0
    const/4 v4, 0x4

    .line 56
    if-ge v3, v4, :cond_0

    .line 57
    .line 58
    sget-object v4, Lo71;->r:[I

    .line 59
    .line 60
    aget v4, v4, v3

    .line 61
    .line 62
    const/16 v5, 0x29b

    .line 63
    .line 64
    invoke-static {p0, v4, v5}, Lao;->h(III)F

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    iget v6, v2, Lsp2;->b:F

    .line 69
    .line 70
    invoke-virtual {p2, v4}, Lw15;->getInterpolation(F)F

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const/high16 v7, 0x437a0000    # 250.0f

    .line 75
    .line 76
    mul-float/2addr v4, v7

    .line 77
    add-float/2addr v4, v6

    .line 78
    iput v4, v2, Lsp2;->b:F

    .line 79
    .line 80
    sget-object v4, Lo71;->t:[I

    .line 81
    .line 82
    aget v4, v4, v3

    .line 83
    .line 84
    invoke-static {p0, v4, v5}, Lao;->h(III)F

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    iget v5, v2, Lsp2;->a:F

    .line 89
    .line 90
    invoke-virtual {p2, v4}, Lw15;->getInterpolation(F)F

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    mul-float/2addr v4, v7

    .line 95
    add-float/2addr v4, v5

    .line 96
    iput v4, v2, Lsp2;->a:F

    .line 97
    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    iget v3, v2, Lsp2;->a:F

    .line 102
    .line 103
    iget v5, v2, Lsp2;->b:F

    .line 104
    .line 105
    sub-float v6, v5, v3

    .line 106
    .line 107
    iget v7, p1, Lo71;->p:F

    .line 108
    .line 109
    mul-float/2addr v6, v7

    .line 110
    add-float/2addr v6, v3

    .line 111
    const/high16 v3, 0x43b40000    # 360.0f

    .line 112
    .line 113
    div-float/2addr v6, v3

    .line 114
    iput v6, v2, Lsp2;->a:F

    .line 115
    .line 116
    div-float/2addr v5, v3

    .line 117
    iput v5, v2, Lsp2;->b:F

    .line 118
    .line 119
    move v2, v1

    .line 120
    :goto_1
    if-ge v2, v4, :cond_2

    .line 121
    .line 122
    sget-object v3, Lo71;->x:[I

    .line 123
    .line 124
    aget v3, v3, v2

    .line 125
    .line 126
    const/16 v5, 0x14d

    .line 127
    .line 128
    invoke-static {p0, v3, v5}, Lao;->h(III)F

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    const/4 v5, 0x0

    .line 133
    cmpl-float v5, v3, v5

    .line 134
    .line 135
    if-lez v5, :cond_1

    .line 136
    .line 137
    const/high16 v5, 0x3f800000    # 1.0f

    .line 138
    .line 139
    cmpg-float v5, v3, v5

    .line 140
    .line 141
    if-gez v5, :cond_1

    .line 142
    .line 143
    iget p0, p1, Lo71;->k:I

    .line 144
    .line 145
    add-int/2addr v2, p0

    .line 146
    iget-object p0, p1, Lo71;->f:Lv71;

    .line 147
    .line 148
    iget-object p0, p0, Llm0;->e:[I

    .line 149
    .line 150
    array-length v4, p0

    .line 151
    rem-int/2addr v2, v4

    .line 152
    add-int/lit8 v4, v2, 0x1

    .line 153
    .line 154
    array-length v5, p0

    .line 155
    rem-int/2addr v4, v5

    .line 156
    aget v2, p0, v2

    .line 157
    .line 158
    aget p0, p0, v4

    .line 159
    .line 160
    invoke-virtual {p2, v3}, Lw15;->getInterpolation(F)F

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Lsp2;

    .line 169
    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {p2, v1, p0}, Lj40;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    iput p0, v0, Lsp2;->c:I

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_2
    :goto_2
    iget-object p0, p1, Lao;->a:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast p0, Lmb4;

    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
