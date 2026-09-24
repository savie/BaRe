.class public final Lao3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lcp1;


# direct methods
.method public constructor <init>(Lcp1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lao3;->a:Lcp1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IIZZZLbt3;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lao3;->a:Lcp1;

    .line 2
    .line 3
    iget-object v0, p0, Lcp1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const v3, 0x7f06007a

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v1

    .line 23
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 24
    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    const v2, 0x7f07005e

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const v2, 0x7f07005d

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {v2}, Ltu0;->v(F)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v0, v2}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 52
    .line 53
    .line 54
    if-eqz p3, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lsz8;->x(Landroid/content/Context;)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v2}, Lsz8;->A(Landroid/content/Context;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/16 v3, 0x1e

    .line 80
    .line 81
    invoke-static {v2, v3}, Lsz8;->U(II)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcp1;->e:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    if-eqz p3, :cond_3

    .line 100
    .line 101
    invoke-static {v2}, Lsz8;->x(Landroid/content/Context;)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    goto :goto_3

    .line 106
    :cond_3
    invoke-static {v2}, Lsz8;->z(Landroid/content/Context;)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcp1;->d:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p1, Landroid/widget/TextView;

    .line 119
    .line 120
    const/16 v0, 0x8

    .line 121
    .line 122
    if-nez p3, :cond_5

    .line 123
    .line 124
    if-eqz p5, :cond_4

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_4
    move p3, v0

    .line 128
    goto :goto_5

    .line 129
    :cond_5
    :goto_4
    move p3, v1

    .line 130
    :goto_5
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcp1;->c:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p1, Landroid/widget/ImageView;

    .line 139
    .line 140
    if-eqz p4, :cond_6

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_6
    move v1, v0

    .line 144
    :goto_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    const p2, 0x7f080146

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    const p3, 0x7f0604a5

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    .line 164
    .line 165
    .line 166
    move-result p3

    .line 167
    invoke-static {p2, p3}, Lio4;->c(Landroid/content/Context;I)I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    invoke-static {p2}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcp1;->a:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 181
    .line 182
    new-instance p1, Lxd1;

    .line 183
    .line 184
    const/4 p2, 0x6

    .line 185
    invoke-direct {p1, p6, p2}, Lxd1;-><init>(Ljava/lang/Object;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method
