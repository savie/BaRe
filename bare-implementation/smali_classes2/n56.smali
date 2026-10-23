.class public final Ln56;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Ljava/util/LinkedHashSet;

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ln56;->l:Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 9

    .line 1
    check-cast p1, Lm56;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lj56;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lj56;->f:Lmt3;

    .line 13
    .line 14
    iget-object v0, p0, Lj56;->d:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lj56;->c:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lj56;->b:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p1, Lm56;->E:Ln56;

    .line 21
    .line 22
    iget-boolean v4, v3, Ln56;->m:Z

    .line 23
    .line 24
    iget-object v5, v3, Ln56;->l:Ljava/util/LinkedHashSet;

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lfh6;->b()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iput-boolean v6, v3, Ln56;->m:Z

    .line 39
    .line 40
    :cond_0
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iget-object v5, p1, Lm56;->w:Landroid/widget/ImageView;

    .line 45
    .line 46
    iget v7, p0, Lj56;->a:I

    .line 47
    .line 48
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    .line 50
    .line 51
    iget-object v5, p1, Lm56;->x:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object v5, p1, Lm56;->B:Landroid/widget/TextView;

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-nez v8, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move v8, v6

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    move v8, v7

    .line 73
    :goto_1
    invoke-static {v5, v8}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 74
    .line 75
    .line 76
    invoke-static {v5}, Lsz8;->I(Landroid/view/View;)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eqz v8, :cond_3

    .line 81
    .line 82
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object p0, p0, Lj56;->e:Ljava/lang/String;

    .line 86
    .line 87
    if-nez p0, :cond_4

    .line 88
    .line 89
    const-string p0, ""

    .line 90
    .line 91
    :cond_4
    iget-object v1, p1, Lm56;->C:Landroid/widget/TextView;

    .line 92
    .line 93
    if-eqz v4, :cond_5

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-lez v5, :cond_5

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    move v6, v7

    .line 103
    :goto_2
    invoke-static {v1, v6}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Lsz8;->I(Landroid/view/View;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_6

    .line 111
    .line 112
    new-instance v5, Lll3;

    .line 113
    .line 114
    const/4 v6, 0x2

    .line 115
    invoke-direct {v5, v6, v1, p0}, Lll3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    const/4 v5, 0x0

    .line 120
    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    iget-object p0, p1, Lm56;->z:Lcom/google/android/material/card/MaterialCardView;

    .line 124
    .line 125
    if-eqz v4, :cond_8

    .line 126
    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_7

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_7
    invoke-static {p0}, Lsz8;->c0(Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    iget-object p0, p1, Lm56;->A:Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_8
    :goto_4
    invoke-static {p0}, Lsz8;->W(Landroid/view/View;)V

    .line 146
    .line 147
    .line 148
    :goto_5
    iget-object p0, p1, Lm56;->D:Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    .line 150
    if-eqz v4, :cond_9

    .line 151
    .line 152
    if-eqz p2, :cond_9

    .line 153
    .line 154
    invoke-static {p0}, Lsz8;->c0(Landroid/view/View;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {p2, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_9
    invoke-static {p0}, Lsz8;->W(Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    :goto_6
    iget-object p0, p1, Lm56;->y:Landroid/widget/ImageView;

    .line 165
    .line 166
    if-eqz v4, :cond_a

    .line 167
    .line 168
    const/high16 p2, 0x43340000    # 180.0f

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_a
    const/4 p2, 0x0

    .line 172
    :goto_7
    invoke-virtual {p0, p2}, Landroid/view/View;->setRotation(F)V

    .line 173
    .line 174
    .line 175
    iget-object p0, p1, Lm56;->v:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 176
    .line 177
    new-instance p2, Ll56;

    .line 178
    .line 179
    invoke-direct {p2, v3, v2, p1, v7}, Ll56;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lfh6;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0150

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 11

    .line 1
    new-instance p2, Lm56;

    .line 2
    .line 3
    move-object v0, p1

    .line 4
    check-cast v0, Lcom/google/android/material/listitem/ListItemLayout;

    .line 5
    .line 6
    const v1, 0x7f0a01a6

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const v1, 0x7f0a021c

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/constraintlayout/widget/Barrier;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const v1, 0x7f0a028c

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    const v1, 0x7f0a02b2

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroid/widget/ImageView;

    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    const v1, 0x7f0a02b7

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Landroid/widget/ImageView;

    .line 58
    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    const v1, 0x7f0a03f2

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    if-eqz v5, :cond_0

    .line 71
    .line 72
    const v1, 0x7f0a054e

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Landroid/widget/TextView;

    .line 80
    .line 81
    if-eqz v6, :cond_0

    .line 82
    .line 83
    const v1, 0x7f0a054f

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    check-cast v7, Landroid/widget/TextView;

    .line 91
    .line 92
    if-eqz v7, :cond_0

    .line 93
    .line 94
    const v1, 0x7f0a0550

    .line 95
    .line 96
    .line 97
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    check-cast v8, Lcom/google/android/material/card/MaterialCardView;

    .line 102
    .line 103
    if-eqz v8, :cond_0

    .line 104
    .line 105
    const v1, 0x7f0a05ac

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    check-cast v9, Landroid/widget/TextView;

    .line 113
    .line 114
    if-eqz v9, :cond_0

    .line 115
    .line 116
    const v1, 0x7f0a05ba

    .line 117
    .line 118
    .line 119
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    check-cast v10, Landroid/widget/TextView;

    .line 124
    .line 125
    if-eqz v10, :cond_0

    .line 126
    .line 127
    new-instance p1, Ljd0;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object v0, p1, Ljd0;->a:Ljava/lang/Object;

    .line 133
    .line 134
    iput-object v2, p1, Ljd0;->b:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object v3, p1, Ljd0;->c:Ljava/lang/Object;

    .line 137
    .line 138
    iput-object v4, p1, Ljd0;->d:Ljava/lang/Object;

    .line 139
    .line 140
    iput-object v5, p1, Ljd0;->e:Ljava/lang/Object;

    .line 141
    .line 142
    iput-object v6, p1, Ljd0;->f:Ljava/lang/Object;

    .line 143
    .line 144
    iput-object v7, p1, Ljd0;->k:Ljava/lang/Object;

    .line 145
    .line 146
    iput-object v8, p1, Ljd0;->n:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object v9, p1, Ljd0;->p:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v10, p1, Ljd0;->q:Ljava/lang/Object;

    .line 151
    .line 152
    invoke-direct {p2, p0, p1}, Lm56;-><init>(Ln56;Ljd0;)V

    .line 153
    .line 154
    .line 155
    return-object p2

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    const-string p1, "Missing required view with ID: "

    .line 165
    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const/4 p0, 0x0

    .line 174
    return-object p0
.end method
