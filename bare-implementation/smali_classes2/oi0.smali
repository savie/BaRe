.class public final Loi0;
.super Lr35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:I

.field public g:Lat5;

.field public h:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lr35;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Loi0;->f:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lr35;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lli0;

    .line 8
    .line 9
    invoke-virtual {p1}, Lli0;->a()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget p0, p0, Loi0;->f:I

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final h(Lfh6;I)V
    .locals 8

    .line 1
    check-cast p1, Lni0;

    .line 2
    .line 3
    iget-object p0, p0, Lr35;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lli0;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lli0;->c:Ljava/lang/CharSequence;

    .line 15
    .line 16
    iget-object v1, p1, Lfh6;->a:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p1, Lni0;->u:Lcom/google/android/material/card/MaterialCardView;

    .line 23
    .line 24
    invoke-virtual {p0}, Lli0;->b()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    const v3, 0x3f4ccccd    # 0.8f

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p1, Lni0;->v:Landroid/widget/ImageView;

    .line 40
    .line 41
    iget-object v4, p0, Lli0;->d:Ljava/lang/Integer;

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x1

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    move v7, v6

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v7, v5

    .line 50
    :goto_1
    invoke-static {v3, v7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 51
    .line 52
    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0}, Lli0;->a()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_2

    .line 60
    .line 61
    const v4, 0x7f080101

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    .line 71
    .line 72
    iget-object v4, p0, Lli0;->e:Ljava/lang/Integer;

    .line 73
    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-static {v1, v4}, Lio4;->c(Landroid/content/Context;I)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    const/4 v1, 0x0

    .line 97
    :goto_3
    if-eqz v1, :cond_4

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-static {v1}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    iget-object v1, p1, Lni0;->w:Landroid/widget/TextView;

    .line 111
    .line 112
    iget-object v3, p0, Lli0;->b:Ljava/lang/CharSequence;

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p1, Lni0;->x:Landroid/widget/TextView;

    .line 118
    .line 119
    if-eqz v0, :cond_6

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-nez v3, :cond_5

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_5
    move v3, v5

    .line 129
    goto :goto_5

    .line 130
    :cond_6
    :goto_4
    move v3, v6

    .line 131
    :goto_5
    xor-int/2addr v3, v6

    .line 132
    invoke-static {v1, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 133
    .line 134
    .line 135
    invoke-static {v1}, Lsz8;->I(Landroid/view/View;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_7

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    :cond_7
    iget-object p1, p1, Lni0;->y:Loi0;

    .line 145
    .line 146
    new-instance v0, Lmi0;

    .line 147
    .line 148
    invoke-direct {v0, p1, p2, v5, p0}, Lmi0;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public final k(I)I
    .locals 0

    .line 1
    iget p0, p0, Loi0;->f:I

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const p0, 0x7f0d0040

    .line 6
    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    const p0, 0x7f0d003f

    .line 10
    .line 11
    .line 12
    return p0
.end method

.method public final l(Landroid/view/View;I)Lfh6;
    .locals 13

    .line 1
    iget v0, p0, Loi0;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Missing required view with ID: "

    .line 5
    .line 6
    const v3, 0x7f0a05ba

    .line 7
    .line 8
    .line 9
    const v4, 0x7f0a05ac

    .line 10
    .line 11
    .line 12
    const v5, 0x7f0a02b7

    .line 13
    .line 14
    .line 15
    if-ne p2, v0, :cond_3

    .line 16
    .line 17
    invoke-static {p1, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v10, v0

    .line 22
    check-cast v10, Landroid/widget/ImageView;

    .line 23
    .line 24
    if-eqz v10, :cond_1

    .line 25
    .line 26
    invoke-static {p1, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v12, v0

    .line 31
    check-cast v12, Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz v12, :cond_0

    .line 34
    .line 35
    invoke-static {p1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v11, v0

    .line 40
    check-cast v11, Landroid/widget/TextView;

    .line 41
    .line 42
    if-eqz v11, :cond_2

    .line 43
    .line 44
    new-instance v8, Lzq8;

    .line 45
    .line 46
    move-object v9, p1

    .line 47
    check-cast v9, Lcom/google/android/material/card/MaterialCardView;

    .line 48
    .line 49
    invoke-direct {v8, v9, v10, v12, v11}, Lzq8;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 50
    .line 51
    .line 52
    new-instance v6, Lni0;

    .line 53
    .line 54
    move-object v7, p0

    .line 55
    invoke-direct/range {v6 .. v12}, Lni0;-><init>(Loi0;Ljk8;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 56
    .line 57
    .line 58
    return-object v6

    .line 59
    :cond_0
    move v3, v4

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v3, v5

    .line 62
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_3
    invoke-static {p1, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    move-object v6, v0

    .line 83
    check-cast v6, Landroid/widget/ImageView;

    .line 84
    .line 85
    if-eqz v6, :cond_5

    .line 86
    .line 87
    invoke-static {p1, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    move-object v8, v0

    .line 92
    check-cast v8, Landroid/widget/TextView;

    .line 93
    .line 94
    if-eqz v8, :cond_4

    .line 95
    .line 96
    invoke-static {p1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    move-object v7, v0

    .line 101
    check-cast v7, Landroid/widget/TextView;

    .line 102
    .line 103
    if-eqz v7, :cond_6

    .line 104
    .line 105
    new-instance v4, Luv0;

    .line 106
    .line 107
    move-object v5, p1

    .line 108
    check-cast v5, Lcom/google/android/material/card/MaterialCardView;

    .line 109
    .line 110
    const/4 v11, 0x0

    .line 111
    move-object v10, v7

    .line 112
    move-object v9, v8

    .line 113
    move-object v7, v5

    .line 114
    move-object v8, v6

    .line 115
    move-object v6, v4

    .line 116
    invoke-direct/range {v6 .. v11}, Luv0;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 117
    .line 118
    .line 119
    move-object v6, v8

    .line 120
    move-object v8, v9

    .line 121
    move-object v7, v10

    .line 122
    new-instance v2, Lni0;

    .line 123
    .line 124
    move-object v3, p0

    .line 125
    invoke-direct/range {v2 .. v8}, Lni0;-><init>(Loi0;Ljk8;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 126
    .line 127
    .line 128
    return-object v2

    .line 129
    :cond_4
    move v3, v4

    .line 130
    goto :goto_1

    .line 131
    :cond_5
    move v3, v5

    .line 132
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-object v1
.end method
