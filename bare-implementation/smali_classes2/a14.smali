.class public final La14;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lk28;

.field public final f:Z

.field public final k:Z

.field public final n:Lqt3;

.field public final p:Lgv7;

.field public final q:Lgv7;

.field public final r:Lgv7;

.field public final t:Lgv7;

.field public final x:Lgv7;


# direct methods
.method public constructor <init>(Lk28;ZZLqt3;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xb

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v0, v1}, Lol1;-><init>(IZ)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, La14;->e:Lk28;

    .line 11
    .line 12
    iput-boolean p2, p0, La14;->f:Z

    .line 13
    .line 14
    iput-boolean p3, p0, La14;->k:Z

    .line 15
    .line 16
    iput-object p4, p0, La14;->n:Lqt3;

    .line 17
    .line 18
    new-instance p1, Ldk;

    .line 19
    .line 20
    const/16 p2, 0x1d

    .line 21
    .line 22
    invoke-direct {p1, p0, p2}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    new-instance p2, Lgv7;

    .line 26
    .line 27
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, La14;->p:Lgv7;

    .line 31
    .line 32
    new-instance p1, Lkn3;

    .line 33
    .line 34
    const/4 p2, 0x3

    .line 35
    invoke-direct {p1, p0, p2}, Lkn3;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    new-instance p2, Lgv7;

    .line 39
    .line 40
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, La14;->q:Lgv7;

    .line 44
    .line 45
    new-instance p1, Lmo3;

    .line 46
    .line 47
    const/4 p2, 0x4

    .line 48
    invoke-direct {p1, p0, p2}, Lmo3;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    new-instance p2, Lgv7;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, La14;->r:Lgv7;

    .line 57
    .line 58
    new-instance p1, Lbh;

    .line 59
    .line 60
    const/16 p2, 0x1c

    .line 61
    .line 62
    invoke-direct {p1, p0, p2}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 63
    .line 64
    .line 65
    new-instance p2, Lgv7;

    .line 66
    .line 67
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 68
    .line 69
    .line 70
    iput-object p2, p0, La14;->t:Lgv7;

    .line 71
    .line 72
    new-instance p1, Ld76;

    .line 73
    .line 74
    const/16 p2, 0x1a

    .line 75
    .line 76
    invoke-direct {p1, p0, p2}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    new-instance p2, Lgv7;

    .line 80
    .line 81
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 82
    .line 83
    .line 84
    iput-object p2, p0, La14;->x:Lgv7;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final i()Ljk8;
    .locals 5

    .line 1
    sget-object v0, Ld45;->b:Ld45;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    :cond_0
    move-object v0, v1

    .line 32
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "Check failed."

    .line 42
    .line 43
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_2
    :goto_1
    iget-object v0, p0, La14;->q:Lgv7;

    .line 48
    .line 49
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/LinearLayout;

    .line 54
    .line 55
    iget-boolean v1, p0, La14;->f:Z

    .line 56
    .line 57
    invoke-static {v0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, La14;->x:Lgv7;

    .line 61
    .line 62
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 67
    .line 68
    iget-boolean v2, p0, La14;->k:Z

    .line 69
    .line 70
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, La14;->r:Lgv7;

    .line 74
    .line 75
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lv04;

    .line 80
    .line 81
    iget-object v2, v2, Lv04;->a:Lcom/google/android/material/button/MaterialButton;

    .line 82
    .line 83
    invoke-static {v2}, Lk55;->a(Lcom/google/android/material/button/MaterialButton;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lv04;

    .line 91
    .line 92
    iget-object v2, v2, Lv04;->a:Lcom/google/android/material/button/MaterialButton;

    .line 93
    .line 94
    new-instance v3, Lgs;

    .line 95
    .line 96
    const/4 v4, 0x5

    .line 97
    invoke-direct {v3, p0, v4}, Lgs;-><init>(Ljava/lang/Object;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lv04;

    .line 108
    .line 109
    iget-object v1, v1, Lv04;->a:Lcom/google/android/material/button/MaterialButton;

    .line 110
    .line 111
    new-instance v2, Lz04;

    .line 112
    .line 113
    invoke-direct {v2, p0}, Lz04;-><init>(La14;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, La14;->t:Lgv7;

    .line 120
    .line 121
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Lfe;

    .line 126
    .line 127
    iget-object v1, v1, Lfe;->a:Lcom/google/android/material/button/MaterialButton;

    .line 128
    .line 129
    new-instance v2, Lhs;

    .line 130
    .line 131
    const/4 v3, 0x7

    .line 132
    invoke-direct {v2, p0, v3}, Lhs;-><init>(Ljava/lang/Object;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 143
    .line 144
    new-instance v1, Lmf;

    .line 145
    .line 146
    invoke-direct {v1, p0, v3}, Lmf;-><init>(Ljava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    iget-object p0, p0, La14;->p:Lgv7;

    .line 153
    .line 154
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    check-cast p0, Lb14;

    .line 159
    .line 160
    return-object p0
.end method
