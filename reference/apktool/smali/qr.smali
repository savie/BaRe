.class public final Lqr;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lji;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lji;->isInstalled()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/high16 p0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    return p0

    .line 13
    :cond_0
    const p0, 0x3f19999a    # 0.6f

    .line 14
    .line 15
    .line 16
    return p0
.end method

.method public static b(Ljava/util/Set;)Ljava/util/List;
    .locals 4

    .line 1
    sget-object v0, Ltr;->o0:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lxg;

    .line 16
    .line 17
    const/4 v2, 0x7

    .line 18
    invoke-direct {v1, v2}, Lxg;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v2, Lyg;

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    invoke-direct {v2, v1, v3}, Lyg;-><init>(Ljava/util/Comparator;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v2}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    check-cast v1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-object v1

    .line 50
    :goto_1
    monitor-exit v0

    .line 51
    throw p0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lsz8;->A(Landroid/content/Context;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/16 v0, 0xc8

    .line 9
    .line 10
    invoke-static {p0, v0}, Lxl1;->g(II)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static d(Landroid/widget/ImageView;Lji;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Ltr;->n0:Lqr;

    .line 8
    .line 9
    invoke-static {p1}, Lqr;->a(Lji;)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lj94;->a:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Lsx3;

    .line 19
    .line 20
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lji;->isInstalled()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-direct {v0, v1, v2}, Lsx3;-><init>(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lji;->isInstalled()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    xor-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static {v0, p0, p1, v1}, Lj94;->g(Lsx3;Landroid/widget/ImageView;ZZ)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static e(Landroid/widget/TextView;Lji;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Ltr;->n0:Lqr;

    .line 8
    .line 9
    invoke-static {p1}, Lqr;->a(Lji;)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lji;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/a;ZFLjava/util/Set;ZLqt3;I)V
    .locals 3

    .line 1
    sget-object v0, Ltr;->n0:Lqr;

    .line 2
    .line 3
    and-int/lit8 v0, p7, 0x2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object p1, v1

    .line 9
    :cond_0
    and-int/lit8 v0, p7, 0x20

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move p5, v2

    .line 15
    :cond_1
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    and-int/lit16 p7, p7, 0x800

    .line 22
    .line 23
    if-eqz p7, :cond_2

    .line 24
    .line 25
    move-object p6, v1

    .line 26
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    if-eqz p4, :cond_4

    .line 32
    .line 33
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p7

    .line 37
    if-eqz p7, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/4 v2, 0x1

    .line 41
    :cond_4
    :goto_0
    invoke-static {p0, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lsz8;->I(Landroid/view/View;)Z

    .line 45
    .line 46
    .line 47
    move-result p7

    .line 48
    if-eqz p7, :cond_8

    .line 49
    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    new-instance p1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p7

    .line 58
    invoke-direct {p1, p7}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Lht;

    .line 65
    .line 66
    invoke-direct {p1, p3, p2, p5}, Lht;-><init>(FZZ)V

    .line 67
    .line 68
    .line 69
    if-eqz p4, :cond_6

    .line 70
    .line 71
    invoke-static {p4}, Lqr;->b(Ljava/util/Set;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :cond_6
    if-nez v1, :cond_7

    .line 76
    .line 77
    sget-object v1, Lov2;->a:Lov2;

    .line 78
    .line 79
    :cond_7
    invoke-static {p1, v1}, Lr35;->m(Lr35;Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    iput-object p6, p1, Lr35;->e:Lqt3;

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 85
    .line 86
    .line 87
    :cond_8
    return-void
.end method

.method public static g(Landroid/widget/TextView;Lji;III)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Ltr;->n0:Lqr;

    .line 8
    .line 9
    invoke-static {p1}, Lqr;->a(Lji;)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const v1, 0x7f130201

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v2, Lnr;

    .line 34
    .line 35
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {p1}, Lji;->getEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {p1}, Lji;->isBundled()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    move v6, p2

    .line 48
    move v7, p3

    .line 49
    move v8, p4

    .line 50
    invoke-direct/range {v2 .. v9}, Lnr;-><init>(Ljava/lang/String;ZZIIILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object p2, Ltr;->p0:Lpr;

    .line 54
    .line 55
    monitor-enter p2

    .line 56
    :try_start_0
    invoke-virtual {p2, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    .line 62
    if-eqz p3, :cond_0

    .line 63
    .line 64
    monitor-exit p2

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    monitor-exit p2

    .line 67
    new-instance p3, Landroid/text/SpannableStringBuilder;

    .line 68
    .line 69
    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lji;->getEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    const/16 v0, 0x11

    .line 77
    .line 78
    if-nez p4, :cond_1

    .line 79
    .line 80
    new-instance p4, Landroid/text/style/StyleSpan;

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-direct {p4, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 91
    .line 92
    invoke-direct {v3, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {p3, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-virtual {p3, v3, v4, v5, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {p3, p4, v1, v3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 114
    .line 115
    .line 116
    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    .line 117
    .line 118
    invoke-direct {p4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    const-string v3, " \u2022 "

    .line 126
    .line 127
    invoke-virtual {p3, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    invoke-virtual {p3, p4, v1, v3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 135
    .line 136
    .line 137
    :cond_1
    invoke-virtual {p1}, Lji;->isBundled()Z

    .line 138
    .line 139
    .line 140
    move-result p4

    .line 141
    if-eqz p4, :cond_2

    .line 142
    .line 143
    move v6, v8

    .line 144
    :cond_2
    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    .line 145
    .line 146
    invoke-direct {p4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    invoke-virtual {p3, p4, v1, p1, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 165
    .line 166
    .line 167
    monitor-enter p2

    .line 168
    :try_start_1
    invoke-virtual {p2, v2, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .line 174
    monitor-exit p2

    .line 175
    :goto_0
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    move-object p0, v0

    .line 181
    monitor-exit p2

    .line 182
    throw p0

    .line 183
    :catchall_1
    move-exception v0

    .line 184
    move-object p0, v0

    .line 185
    monitor-exit p2

    .line 186
    throw p0
.end method

.method public static h(Landroid/widget/TextView;Lji;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v1, 0x7f0600c4

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, v1}, Lio4;->c(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lsz8;->r(Landroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {p0, p1, p2, v0, v1}, Lqr;->g(Landroid/widget/TextView;Lji;III)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
