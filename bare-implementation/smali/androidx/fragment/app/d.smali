.class public final Landroidx/fragment/app/d;
.super Landroidx/fragment/app/f;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Z

.field public c:Z

.field public d:Lla;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/h0;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/fragment/app/f;-><init>(Landroidx/fragment/app/h0;)V

    .line 5
    .line 6
    .line 7
    iput-boolean p2, p0, Landroidx/fragment/app/d;->b:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lla;
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/d;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/fragment/app/d;->d:Lla;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/h0;

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/o;

    .line 11
    .line 12
    iget v0, v0, Landroidx/fragment/app/h0;->a:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    move v0, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v3

    .line 22
    :goto_0
    iget-object v2, v1, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    move v5, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iget v5, v2, Ldr3;->f:I

    .line 29
    .line 30
    :goto_1
    iget-boolean v6, p0, Landroidx/fragment/app/d;->b:Z

    .line 31
    .line 32
    if-eqz v6, :cond_6

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    :goto_2
    move v2, v3

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    iget v2, v2, Ldr3;->d:I

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_4
    if-nez v2, :cond_5

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_5
    iget v2, v2, Ldr3;->e:I

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_6
    if-eqz v0, :cond_8

    .line 50
    .line 51
    if-nez v2, :cond_7

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_7
    iget v2, v2, Ldr3;->b:I

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_8
    if-nez v2, :cond_9

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_9
    iget v2, v2, Ldr3;->c:I

    .line 61
    .line 62
    :goto_3
    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/fragment/app/o;->setAnimations(IIII)V

    .line 63
    .line 64
    .line 65
    iget-object v3, v1, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    if-eqz v3, :cond_a

    .line 69
    .line 70
    const v7, 0x7f0a05e8

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_a

    .line 78
    .line 79
    iget-object v3, v1, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 80
    .line 81
    invoke-virtual {v3, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_a
    iget-object v1, v1, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 85
    .line 86
    if-eqz v1, :cond_b

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_b

    .line 93
    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_b
    if-nez v2, :cond_16

    .line 97
    .line 98
    if-eqz v5, :cond_16

    .line 99
    .line 100
    const/16 v1, 0x1001

    .line 101
    .line 102
    if-eq v5, v1, :cond_14

    .line 103
    .line 104
    const/16 v1, 0x2002

    .line 105
    .line 106
    if-eq v5, v1, :cond_12

    .line 107
    .line 108
    const/16 v1, 0x2005

    .line 109
    .line 110
    if-eq v5, v1, :cond_10

    .line 111
    .line 112
    const/16 v1, 0x1003

    .line 113
    .line 114
    if-eq v5, v1, :cond_e

    .line 115
    .line 116
    const/16 v1, 0x1004

    .line 117
    .line 118
    if-eq v5, v1, :cond_c

    .line 119
    .line 120
    const/4 v0, -0x1

    .line 121
    :goto_4
    move v2, v0

    .line 122
    goto :goto_5

    .line 123
    :cond_c
    if-eqz v0, :cond_d

    .line 124
    .line 125
    const v0, 0x10100b8

    .line 126
    .line 127
    .line 128
    invoke-static {p1, v0}, Lji8;->N(Landroid/content/Context;I)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    goto :goto_4

    .line 133
    :cond_d
    const v0, 0x10100b9

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v0}, Lji8;->N(Landroid/content/Context;I)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    goto :goto_4

    .line 141
    :cond_e
    if-eqz v0, :cond_f

    .line 142
    .line 143
    const v0, 0x7f02000b

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_f
    const v0, 0x7f02000c

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_10
    if-eqz v0, :cond_11

    .line 152
    .line 153
    const v0, 0x10100ba

    .line 154
    .line 155
    .line 156
    invoke-static {p1, v0}, Lji8;->N(Landroid/content/Context;I)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    goto :goto_4

    .line 161
    :cond_11
    const v0, 0x10100bb

    .line 162
    .line 163
    .line 164
    invoke-static {p1, v0}, Lji8;->N(Landroid/content/Context;I)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    goto :goto_4

    .line 169
    :cond_12
    if-eqz v0, :cond_13

    .line 170
    .line 171
    const v0, 0x7f020009

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_13
    const v0, 0x7f02000a

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_14
    if-eqz v0, :cond_15

    .line 180
    .line 181
    const v0, 0x7f02000d

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_15
    const v0, 0x7f02000e

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_16
    :goto_5
    if-eqz v2, :cond_19

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const-string v1, "anim"

    .line 200
    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_17

    .line 206
    .line 207
    :try_start_0
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-eqz v1, :cond_19

    .line 212
    .line 213
    new-instance v3, Lla;

    .line 214
    .line 215
    invoke-direct {v3, v1}, Lla;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    .line 217
    .line 218
    :goto_6
    move-object v6, v3

    .line 219
    goto :goto_7

    .line 220
    :catch_0
    move-exception p0

    .line 221
    throw p0

    .line 222
    :catch_1
    :cond_17
    :try_start_1
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    if-eqz v1, :cond_19

    .line 227
    .line 228
    new-instance v3, Lla;

    .line 229
    .line 230
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 231
    .line 232
    .line 233
    iput-object v6, v3, Lla;->a:Ljava/lang/Object;

    .line 234
    .line 235
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 236
    .line 237
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 238
    .line 239
    .line 240
    iput-object v5, v3, Lla;->b:Ljava/lang/Object;

    .line 241
    .line 242
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :catch_2
    move-exception v1

    .line 247
    if-nez v0, :cond_18

    .line 248
    .line 249
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-eqz p1, :cond_19

    .line 254
    .line 255
    new-instance v6, Lla;

    .line 256
    .line 257
    invoke-direct {v6, p1}, Lla;-><init>(Landroid/view/animation/Animation;)V

    .line 258
    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_18
    throw v1

    .line 262
    :cond_19
    :goto_7
    iput-object v6, p0, Landroidx/fragment/app/d;->d:Lla;

    .line 263
    .line 264
    iput-boolean v4, p0, Landroidx/fragment/app/d;->c:Z

    .line 265
    .line 266
    return-object v6
.end method
