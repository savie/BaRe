.class public final Luv2;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Ljava/util/List;

.field public final f:Lox;

.field public final k:Lzq8;

.field public final n:Lvq;

.field public final p:Lvq;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;Ljava/util/List;Lox;)V
    .locals 2

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lol1;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Luv2;->e:Ljava/util/List;

    .line 8
    .line 9
    iput-object p3, p0, Luv2;->f:Lox;

    .line 10
    .line 11
    const p2, 0x7f0d0098

    .line 12
    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const p2, 0x7f0a00fb

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Lvq;->i(Landroid/view/View;)Lvq;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const v0, 0x7f0a0102

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-static {v1}, Lvq;->i(Landroid/view/View;)Lvq;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    new-instance v0, Lzq8;

    .line 46
    .line 47
    check-cast p1, Landroid/widget/LinearLayout;

    .line 48
    .line 49
    invoke-direct {v0, p1, p2, p3}, Lzq8;-><init>(Landroid/widget/LinearLayout;Lvq;Lvq;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Luv2;->k:Lzq8;

    .line 53
    .line 54
    iput-object p3, p0, Luv2;->n:Lvq;

    .line 55
    .line 56
    iput-object p2, p0, Luv2;->p:Lvq;

    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    move p2, v0

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "Missing required view with ID: "

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p3
.end method


# virtual methods
.method public final i()Ljk8;
    .locals 9

    .line 1
    iget-object v0, p0, Luv2;->n:Lvq;

    .line 2
    .line 3
    iget-object v1, v0, Lvq;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    iget-object v2, p0, Luv2;->e:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    :cond_0
    move v3, v5

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Lji;

    .line 34
    .line 35
    invoke-virtual {v6}, Lji;->getEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-nez v6, :cond_2

    .line 40
    .line 41
    move v3, v4

    .line 42
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const v6, 0x3e99999a    # 0.3f

    .line 50
    .line 51
    .line 52
    const/high16 v7, 0x3f800000    # 1.0f

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    move v3, v7

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move v3, v6

    .line 59
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 60
    .line 61
    .line 62
    iget-object v3, v0, Lvq;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Landroid/widget/ImageView;

    .line 65
    .line 66
    const v8, 0x7f080137

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v0, Lvq;->d:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    const v3, 0x7f130217

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lm51;

    .line 83
    .line 84
    const/4 v3, 0x3

    .line 85
    invoke-direct {v0, v3, v1, p0}, Lm51;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Luv2;->p:Lvq;

    .line 92
    .line 93
    iget-object v1, v0, Lvq;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_5

    .line 102
    .line 103
    :cond_4
    move v4, v5

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_4

    .line 114
    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lji;

    .line 120
    .line 121
    invoke-virtual {v3}, Lji;->getEnabled()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_6

    .line 126
    .line 127
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_7

    .line 135
    .line 136
    move v6, v7

    .line 137
    :cond_7
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {v2}, Lsz8;->r(Landroid/content/Context;)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    iget-object v3, v0, Lvq;->c:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v3, Landroid/widget/ImageView;

    .line 154
    .line 155
    const v4, 0x7f08012c

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    .line 160
    .line 161
    invoke-static {v2}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, v0, Lvq;->d:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Landroid/widget/TextView;

    .line 171
    .line 172
    const v3, 0x7f1301fe

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Lh10;

    .line 182
    .line 183
    const/4 v2, 0x4

    .line 184
    invoke-direct {v0, v2, v1, p0}, Lh10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    iget-object p0, p0, Luv2;->k:Lzq8;

    .line 191
    .line 192
    return-object p0
.end method
