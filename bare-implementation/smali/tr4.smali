.class public final Ltr4;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Lcom/google/android/material/card/MaterialCardView;

.field public final v:Landroid/widget/TextView;

.field public final w:Landroid/widget/ImageView;

.field public final x:Landroid/widget/ImageView;

.field public final synthetic y:Lur4;


# direct methods
.method public constructor <init>(Lur4;Landroid/view/View;)V
    .locals 4

    .line 1
    iput-object p1, p0, Ltr4;->y:Lur4;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lfh6;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    move-object p1, p2

    .line 7
    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    .line 8
    .line 9
    const v0, 0x7f0a0299

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/widget/ImageView;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const v0, 0x7f0a02af

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/widget/ImageView;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const v0, 0x7f0a05ba

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/widget/TextView;

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    iput-object p1, p0, Ltr4;->u:Lcom/google/android/material/card/MaterialCardView;

    .line 43
    .line 44
    iput-object v3, p0, Ltr4;->v:Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object v1, p0, Ltr4;->w:Landroid/widget/ImageView;

    .line 47
    .line 48
    iput-object v2, p0, Ltr4;->x:Landroid/widget/ImageView;

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string p1, "Missing required view with ID: "

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    throw p0
.end method


# virtual methods
.method public final r(Lvq4;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lvq4;->a:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->isBuiltInLabel()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Ltr4;->y:Lur4;

    .line 11
    .line 12
    iget v3, v2, Lur4;->l:I

    .line 13
    .line 14
    iget-boolean v4, v2, Lur4;->m:Z

    .line 15
    .line 16
    invoke-virtual {v0, v4}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getTextColor(Z)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    move v6, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v6, v5

    .line 26
    :goto_0
    iget-object v7, p0, Ltr4;->u:Lcom/google/android/material/card/MaterialCardView;

    .line 27
    .line 28
    invoke-virtual {v7, v6}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 29
    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    move v6, v5

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getColorInt()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    :goto_1
    invoke-virtual {v7, v6}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 40
    .line 41
    .line 42
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    const/16 v9, 0x1c

    .line 45
    .line 46
    const/4 v10, 0x2

    .line 47
    if-lt v8, v9, :cond_4

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    iget-object v8, p0, Lfh6;->a:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 71
    .line 72
    int-to-float v8, v8

    .line 73
    const/high16 v9, 0x43200000    # 160.0f

    .line 74
    .line 75
    div-float/2addr v8, v9

    .line 76
    const/high16 v9, 0x40800000    # 4.0f

    .line 77
    .line 78
    mul-float/2addr v8, v9

    .line 79
    :goto_2
    invoke-virtual {v7, v8}, Lcom/google/android/material/card/MaterialCardView;->setCardElevation(F)V

    .line 80
    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    move v1, v5

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    const/4 v1, 0x3

    .line 87
    new-array v1, v1, [F

    .line 88
    .line 89
    invoke-static {v6, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 90
    .line 91
    .line 92
    aget v6, v1, v10

    .line 93
    .line 94
    const v8, 0x3f59999a    # 0.85f

    .line 95
    .line 96
    .line 97
    mul-float/2addr v6, v8

    .line 98
    aput v6, v1, v10

    .line 99
    .line 100
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    :goto_3
    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setOutlineSpotShadowColor(I)V

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1, v4}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getRippleColor(Landroid/content/Context;I)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-static {v0}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v7, v0}, Lcom/google/android/material/card/MaterialCardView;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 131
    .line 132
    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    invoke-virtual {p1}, Lvq4;->a()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    const/16 v9, 0x11

    .line 151
    .line 152
    invoke-virtual {v0, v1, v6, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Ltr4;->v:Landroid/widget/TextView;

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    const/4 v0, 0x1

    .line 161
    if-eq v3, v10, :cond_6

    .line 162
    .line 163
    if-ne v3, v0, :cond_5

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_5
    move v1, v5

    .line 167
    goto :goto_5

    .line 168
    :cond_6
    :goto_4
    move v1, v0

    .line 169
    :goto_5
    iget-object v6, p0, Ltr4;->w:Landroid/widget/ImageView;

    .line 170
    .line 171
    invoke-static {v6, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 172
    .line 173
    .line 174
    invoke-static {v6}, Lsz8;->I(Landroid/view/View;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_7

    .line 179
    .line 180
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 185
    .line 186
    .line 187
    :cond_7
    if-nez v3, :cond_8

    .line 188
    .line 189
    move v5, v0

    .line 190
    :cond_8
    iget-object v0, p0, Ltr4;->x:Landroid/widget/ImageView;

    .line 191
    .line 192
    invoke-static {v0, v5}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 193
    .line 194
    .line 195
    invoke-static {v0}, Lsz8;->I(Landroid/view/View;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_9

    .line 200
    .line 201
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 206
    .line 207
    .line 208
    :cond_9
    new-instance v0, Lsr4;

    .line 209
    .line 210
    invoke-direct {v0, v2, p1, p0}, Lsr4;-><init>(Lur4;Lvq4;Ltr4;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    return-void
.end method
