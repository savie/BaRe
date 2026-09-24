.class public final Lw03;
.super Landroid/util/Property;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lw03;->a:I

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
    iget p0, p0, Lw03;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/view/View;

    .line 7
    .line 8
    sget-object p0, Lwm8;->a:Lcn8;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lrs9;->m(Landroid/view/View;)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_0
    check-cast p1, Lru4;

    .line 20
    .line 21
    iget p0, p1, Lru4;->n:F

    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_1
    check-cast p1, Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    int-to-float p0, p0

    .line 35
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget p0, p0, Lw03;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/view/View;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Float;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    sget-object p2, Lwm8;->a:Lcn8;

    .line 15
    .line 16
    invoke-virtual {p2, p1, p0}, Lrs9;->t(Landroid/view/View;F)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p1, Lru4;

    .line 21
    .line 22
    check-cast p2, Ljava/lang/Float;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    iput p0, p1, Lru4;->n:F

    .line 29
    .line 30
    const p2, 0x43a68000    # 333.0f

    .line 31
    .line 32
    .line 33
    mul-float/2addr p0, p2

    .line 34
    float-to-int p0, p0

    .line 35
    iget-object p2, p1, Lao;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p2, Ljava/util/ArrayList;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lsp2;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    iput v2, v1, Lsp2;->a:F

    .line 48
    .line 49
    const/16 v1, 0x29b

    .line 50
    .line 51
    invoke-static {p0, v0, v1}, Lao;->h(III)F

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lsp2;

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lsp2;

    .line 67
    .line 68
    iget-object v4, p1, Lru4;->d:Li53;

    .line 69
    .line 70
    invoke-virtual {v4, p0}, Lw15;->getInterpolation(F)F

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    iput v5, v3, Lsp2;->a:F

    .line 75
    .line 76
    iput v5, v1, Lsp2;->b:F

    .line 77
    .line 78
    const v1, 0x3eff9dbf

    .line 79
    .line 80
    .line 81
    add-float/2addr p0, v1

    .line 82
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lsp2;

    .line 87
    .line 88
    const/4 v3, 0x2

    .line 89
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Lsp2;

    .line 94
    .line 95
    invoke-virtual {v4, p0}, Lw15;->getInterpolation(F)F

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    iput p0, v5, Lsp2;->a:F

    .line 100
    .line 101
    iput p0, v1, Lsp2;->b:F

    .line 102
    .line 103
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Lsp2;

    .line 108
    .line 109
    const/high16 v1, 0x3f800000    # 1.0f

    .line 110
    .line 111
    iput v1, p0, Lsp2;->b:F

    .line 112
    .line 113
    iget-boolean p0, p1, Lru4;->k:Z

    .line 114
    .line 115
    if-eqz p0, :cond_0

    .line 116
    .line 117
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lsp2;

    .line 122
    .line 123
    iget p0, p0, Lsp2;->b:F

    .line 124
    .line 125
    cmpg-float p0, p0, v1

    .line 126
    .line 127
    if-gez p0, :cond_0

    .line 128
    .line 129
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Lsp2;

    .line 134
    .line 135
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Lsp2;

    .line 140
    .line 141
    iget v1, v1, Lsp2;->c:I

    .line 142
    .line 143
    iput v1, p0, Lsp2;->c:I

    .line 144
    .line 145
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    check-cast p0, Lsp2;

    .line 150
    .line 151
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Lsp2;

    .line 156
    .line 157
    iget v1, v1, Lsp2;->c:I

    .line 158
    .line 159
    iput v1, p0, Lsp2;->c:I

    .line 160
    .line 161
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    check-cast p0, Lsp2;

    .line 166
    .line 167
    iget-object p2, p1, Lru4;->e:Lzu4;

    .line 168
    .line 169
    iget-object p2, p2, Llm0;->e:[I

    .line 170
    .line 171
    iget v1, p1, Lru4;->f:I

    .line 172
    .line 173
    aget p2, p2, v1

    .line 174
    .line 175
    iput p2, p0, Lsp2;->c:I

    .line 176
    .line 177
    iput-boolean v0, p1, Lru4;->k:Z

    .line 178
    .line 179
    :cond_0
    iget-object p0, p1, Lao;->a:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast p0, Lmb4;

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :pswitch_1
    check-cast p1, Landroid/view/View;

    .line 188
    .line 189
    check-cast p2, Ljava/lang/Float;

    .line 190
    .line 191
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
