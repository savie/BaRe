.class public final Ls60;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;[ILorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    iput p1, p0, Ls60;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Ls60;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Ls60;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lci8;Lwc2;Lzc2;)V
    .locals 0

    const/4 p3, 0x3

    iput p3, p0, Ls60;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls60;->b:Ljava/lang/Object;

    iput-object p2, p0, Ls60;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkm5;Landroid/graphics/Typeface;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ls60;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls60;->b:Ljava/lang/Object;

    iput-object p2, p0, Ls60;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lt60;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ls60;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls60;->c:Ljava/lang/Object;

    iput-object p2, p0, Ls60;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Ls60;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ls60;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Ls60;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lci8;

    .line 11
    .line 12
    check-cast v1, Lwc2;

    .line 13
    .line 14
    iget-object p0, p0, Lci8;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lwc2;->c()Lxc2;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :pswitch_0
    check-cast p0, [I

    .line 32
    .line 33
    check-cast v1, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 34
    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    sget-object p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 38
    .line 39
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iget-object p0, p0, Lz44;->f:Landroid/widget/EditText;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iget-object p0, p0, Lz44;->f:Landroid/widget/EditText;

    .line 53
    .line 54
    new-instance v0, Lis;

    .line 55
    .line 56
    const/4 v2, 0x5

    .line 57
    invoke-direct {v0, v1, v2}, Lis;-><init>(Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :cond_1
    sget-object v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 66
    .line 67
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Lz44;->J:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-object v2, v2, Lz44;->J:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 82
    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    iget-object v3, v3, Lz44;->J:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    const/4 v4, 0x1

    .line 98
    if-ge v3, v4, :cond_2

    .line 99
    .line 100
    move v3, v4

    .line 101
    :cond_2
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    iget-object v5, v5, Lz44;->J:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 106
    .line 107
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-ge v5, v4, :cond_3

    .line 112
    .line 113
    move v5, v4

    .line 114
    :cond_3
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    iget-object v6, v6, Lz44;->J:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 119
    .line 120
    const/4 v7, 0x0

    .line 121
    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    .line 125
    .line 126
    .line 127
    const/4 v8, 0x0

    .line 128
    aget v9, p0, v8

    .line 129
    .line 130
    int-to-float v9, v9

    .line 131
    int-to-float v0, v0

    .line 132
    sub-float/2addr v9, v0

    .line 133
    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 134
    .line 135
    .line 136
    aget v0, p0, v4

    .line 137
    .line 138
    int-to-float v0, v0

    .line 139
    int-to-float v2, v2

    .line 140
    sub-float/2addr v0, v2

    .line 141
    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 142
    .line 143
    .line 144
    const/4 v0, 0x2

    .line 145
    aget v2, p0, v0

    .line 146
    .line 147
    aget v8, p0, v8

    .line 148
    .line 149
    sub-int/2addr v2, v8

    .line 150
    int-to-float v2, v2

    .line 151
    int-to-float v3, v3

    .line 152
    div-float/2addr v2, v3

    .line 153
    const v3, 0x3d23d70a    # 0.04f

    .line 154
    .line 155
    .line 156
    const/high16 v8, 0x40000000    # 2.0f

    .line 157
    .line 158
    invoke-static {v2, v3, v8}, Ll73;->g(FFF)F

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {v6, v2}, Landroid/view/View;->setScaleX(F)V

    .line 163
    .line 164
    .line 165
    const/4 v2, 0x3

    .line 166
    aget v2, p0, v2

    .line 167
    .line 168
    aget p0, p0, v4

    .line 169
    .line 170
    sub-int/2addr v2, p0

    .line 171
    int-to-float p0, v2

    .line 172
    int-to-float v2, v5

    .line 173
    div-float/2addr p0, v2

    .line 174
    invoke-static {p0, v3, v8}, Ll73;->g(FFF)F

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    invoke-virtual {v6, p0}, Landroid/view/View;->setScaleY(F)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {p0, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p0, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    const/high16 v2, 0x3f800000    # 1.0f

    .line 194
    .line 195
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    const-wide/16 v2, 0x104

    .line 204
    .line 205
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    sget-object v2, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 210
    .line 211
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    new-instance v2, Lw8;

    .line 216
    .line 217
    invoke-direct {v2, v1, v0}, Lw8;-><init>(Ljava/lang/Object;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 225
    .line 226
    .line 227
    :goto_1
    return-void

    .line 228
    :pswitch_1
    check-cast p0, Lkm5;

    .line 229
    .line 230
    check-cast v1, Landroid/graphics/Typeface;

    .line 231
    .line 232
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast p0, Lg67;

    .line 235
    .line 236
    if-eqz p0, :cond_4

    .line 237
    .line 238
    invoke-virtual {p0, v1}, Lg67;->y(Landroid/graphics/Typeface;)V

    .line 239
    .line 240
    .line 241
    :cond_4
    return-void

    .line 242
    :pswitch_2
    check-cast v1, Lt60;

    .line 243
    .line 244
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 245
    .line 246
    invoke-virtual {v1, p0}, Lt60;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    nop

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
