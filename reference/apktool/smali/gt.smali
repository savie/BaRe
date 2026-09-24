.class public final Lgt;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:F

.field public final v:Z

.field public final w:Z

.field public final x:Lht;

.field public final y:Lcom/google/android/material/card/MaterialCardView;

.field public final z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;FZZLht;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfh6;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lgt;->u:F

    .line 5
    .line 6
    iput-boolean p3, p0, Lgt;->v:Z

    .line 7
    .line 8
    iput-boolean p4, p0, Lgt;->w:Z

    .line 9
    .line 10
    iput-object p5, p0, Lgt;->x:Lht;

    .line 11
    .line 12
    invoke-static {p1}, Lur;->a(Landroid/view/View;)Lur;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p1, Lur;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 17
    .line 18
    iput-object p2, p0, Lgt;->y:Lcom/google/android/material/card/MaterialCardView;

    .line 19
    .line 20
    iget-object p1, p1, Lur;->b:Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object p1, p0, Lgt;->z:Landroid/widget/TextView;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final r(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lgt;->v:Z

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getTextColor(Z)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->isBuiltInLabel()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move v1, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    iget-object v3, p0, Lgt;->y:Lcom/google/android/material/card/MaterialCardView;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 41
    .line 42
    int-to-float v1, v1

    .line 43
    const/high16 v4, 0x43200000    # 160.0f

    .line 44
    .line 45
    div-float/2addr v1, v4

    .line 46
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 47
    .line 48
    mul-float/2addr v1, v4

    .line 49
    invoke-static {v1}, Ltu0;->v(F)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v3, v1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->isBuiltInLabel()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getColorInt()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    :goto_1
    invoke-virtual {v3, v2}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getRippleColor(Landroid/content/Context;I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v1}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v3, v1}, Lcom/google/android/material/card/MaterialCardView;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lgt;->x:Lht;

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    iget-object v4, v1, Lr35;->e:Lqt3;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    move-object v4, v2

    .line 97
    :goto_2
    if-eqz v4, :cond_3

    .line 98
    .line 99
    new-instance v4, Ler;

    .line 100
    .line 101
    const/4 v5, 0x1

    .line 102
    invoke-direct {v4, v5, p0, p1}, Ler;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object v3, p0, Lgt;->z:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    .line 112
    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    iget v1, v1, Lht;->f:F

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    iget v1, p0, Lgt;->u:F

    .line 119
    .line 120
    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 121
    .line 122
    .line 123
    iget-boolean p0, p0, Lgt;->w:Z

    .line 124
    .line 125
    if-eqz p0, :cond_5

    .line 126
    .line 127
    const/16 p0, 0xc8

    .line 128
    .line 129
    invoke-static {v0, p0}, Lxl1;->g(II)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    const v1, 0x7f080163

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v1, p0}, Lorg/swiftapps/swiftbackup/common/Const;->w(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {v3, v2, v2, p0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 148
    .line 149
    .line 150
    :cond_5
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    if-eqz p0, :cond_6

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_6
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    if-eqz p0, :cond_7

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_7
    const-string p0, "Unknown"

    .line 165
    .line 166
    :goto_4
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method
