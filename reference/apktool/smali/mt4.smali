.class public final Lmt4;
.super Lhg6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lz60;

.field public final synthetic e:Lorg/swiftapps/swiftbackup/settings/LicensesActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/settings/LicensesActivity;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lmt4;->e:Lorg/swiftapps/swiftbackup/settings/LicensesActivity;

    .line 2
    .line 3
    sget p1, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;->L:I

    .line 4
    .line 5
    invoke-direct {p0}, Lhg6;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljw4;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Ljw4;-><init>(Lmt4;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lz60;

    .line 14
    .line 15
    new-instance v1, Lz28;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-direct {v1, p0, v2}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    sget-object v3, Lw13;->a:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v3

    .line 24
    :try_start_0
    sget-object v4, Lw13;->b:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sput-object v2, Lw13;->b:Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    sget-object v2, Lw13;->b:Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    new-instance v3, Lkm8;

    .line 41
    .line 42
    invoke-direct {v3, v2}, Lkm8;-><init>(Ljava/util/concurrent/Executor;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1, v3}, Lz60;-><init>(Lz28;Lkm8;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lmt4;->d:Lz60;

    .line 49
    .line 50
    iget-object p0, v0, Lz60;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0
.end method


# virtual methods
.method public final b()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmt4;->d:Lz60;

    .line 2
    .line 3
    iget-object p0, p0, Lz60;->f:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final h(Lfh6;I)V
    .locals 8

    .line 1
    check-cast p1, Llt4;

    .line 2
    .line 3
    iget-object v0, p0, Lmt4;->d:Lz60;

    .line 4
    .line 5
    iget-object v0, v0, Lz60;->f:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lnt4;

    .line 12
    .line 13
    iget-object p1, p1, Llt4;->u:Lgd;

    .line 14
    .line 15
    iget-object v0, p1, Lgd;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    iget-object v1, p1, Lgd;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    iget-object v2, p2, Lnt4;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p1, Lgd;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object v0, p2, Lnt4;->b:Ljava/lang/String;

    .line 33
    .line 34
    sget v2, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;->L:I

    .line 35
    .line 36
    invoke-static {v0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "http://"

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-static {v2, v3, v4}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const-string v6, "https://"

    .line 52
    .line 53
    if-nez v5, :cond_3

    .line 54
    .line 55
    invoke-static {v2, v6, v4}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    new-instance v5, Lcv4;

    .line 63
    .line 64
    invoke-direct {v5, v2}, Lcv4;-><init>(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Lcv4;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v5}, Lcv4;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :goto_0
    check-cast v2, Ljava/lang/String;

    .line 80
    .line 81
    if-nez v2, :cond_2

    .line 82
    .line 83
    const-string v2, ""

    .line 84
    .line 85
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    const/16 v7, 0xa0

    .line 90
    .line 91
    if-le v5, v7, :cond_3

    .line 92
    .line 93
    invoke-static {v7, v2}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string v5, "\u2026"

    .line 98
    .line 99
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    :cond_3
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1, v3, v4}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iget-object p0, p0, Lmt4;->e:Lorg/swiftapps/swiftbackup/settings/LicensesActivity;

    .line 119
    .line 120
    if-nez v0, :cond_5

    .line 121
    .line 122
    invoke-static {p1, v6, v4}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_4

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    new-instance p1, Lfj2;

    .line 130
    .line 131
    const/4 v0, 0x2

    .line 132
    invoke-direct {p1, v0, p0, p2}, Lfj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_5
    :goto_2
    new-instance p1, Lrf4;

    .line 140
    .line 141
    invoke-direct {p1, v4, p0, p2}, Lrf4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;I)Lfh6;
    .locals 3

    .line 1
    new-instance p0, Llt4;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const v0, 0x7f0d00df

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const p2, 0x7f0a055c

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const p2, 0x7f0a0566

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    new-instance p2, Lgd;

    .line 42
    .line 43
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    invoke-direct {p2, v2, p1, v0, v1}, Lgd;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p2}, Llt4;-><init>(Lgd;)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string p1, "Missing required view with ID: "

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    return-object p0
.end method
