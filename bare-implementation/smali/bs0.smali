.class public final Lbs0;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lbs0;->l:Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 10

    .line 1
    check-cast p1, Lzr0;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p2, p1, Lzr0;->w:Lbs0;

    .line 13
    .line 14
    iget-object v0, p2, Lbs0;->l:Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 15
    .line 16
    iget-object v1, p1, Lzr0;->v:Lxd0;

    .line 17
    .line 18
    iget-object v2, v1, Lxd0;->p:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object v3, v1, Lxd0;->n:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v1, Lxd0;->k:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getBlackListTypeDisplayString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    sget-object v4, Lj94;->a:Ljava/util/Set;

    .line 45
    .line 46
    new-instance v4, Lsx3;

    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->isInstalled()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-direct {v4, v5, v6}, Lsx3;-><init>(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    iget-object v5, v1, Lxd0;->f:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v5, Landroid/widget/ImageView;

    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->isInstalled()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    const/4 v7, 0x1

    .line 68
    xor-int/2addr v6, v7

    .line 69
    invoke-static {v4, v5, v6, v7}, Lj94;->g(Lsx3;Landroid/widget/ImageView;ZZ)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->isInstalled()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    xor-int/2addr v4, v7

    .line 77
    invoke-static {v5, v4}, Lj94;->h(Landroid/widget/ImageView;Z)V

    .line 78
    .line 79
    .line 80
    iget-object v4, v1, Lxd0;->c:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v4, Landroid/widget/LinearLayout;

    .line 83
    .line 84
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->isInstalled()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    const/high16 v8, 0x3f000000    # 0.5f

    .line 89
    .line 90
    const/high16 v9, 0x3f800000    # 1.0f

    .line 91
    .line 92
    if-eqz v6, :cond_0

    .line 93
    .line 94
    move v6, v9

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    move v6, v8

    .line 97
    :goto_0
    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->isInstalled()Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_1

    .line 105
    .line 106
    move v8, v9

    .line 107
    :cond_1
    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    .line 108
    .line 109
    .line 110
    const v4, 0x7f1303db

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->isInstalled()Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    const/4 v5, 0x0

    .line 125
    const/16 v6, 0x8

    .line 126
    .line 127
    if-eqz v4, :cond_2

    .line 128
    .line 129
    move v4, v6

    .line 130
    goto :goto_1

    .line 131
    :cond_2
    move v4, v5

    .line 132
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getBlackListType()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    sget-object v4, Lis0;->Hide:Lis0;

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-ne v3, v4, :cond_3

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_3
    move v7, v5

    .line 149
    :goto_2
    iget-object v3, v1, Lxd0;->d:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v3, Landroid/view/View;

    .line 152
    .line 153
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    if-eqz v7, :cond_4

    .line 157
    .line 158
    invoke-static {v0}, Lsz8;->r(Landroid/content/Context;)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    goto :goto_3

    .line 163
    :cond_4
    invoke-static {v0}, Lsz8;->A(Landroid/content/Context;)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    .line 169
    .line 170
    iget-object v2, v1, Lxd0;->e:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v2, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 173
    .line 174
    new-instance v3, Lxr0;

    .line 175
    .line 176
    invoke-direct {v3, v5, v0, p0, p2}, Lxr0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v1, Lxd0;->b:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v1, Landroid/widget/ImageView;

    .line 185
    .line 186
    new-instance v2, Lyr0;

    .line 187
    .line 188
    invoke-direct {v2, p2, v0, p0, p1}, Lyr0;-><init>(Lbs0;Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Lzr0;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d003c

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Lzr0;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lzr0;-><init>(Lbs0;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
