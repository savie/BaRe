.class public final Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic c0:I


# instance fields
.field public final P:Ll90;

.field public final Q:Lgv7;

.field public final R:Lgv7;

.field public final S:Lgv7;

.field public T:Lm01;

.field public final U:Lgv7;

.field public V:Landroid/view/MenuItem;

.field public final W:Lgv7;

.field public final X:Lgv7;

.field public final Y:Lgv7;

.field public final Z:Lgv7;

.field public final a0:Lgv7;

.field public final b0:Lrb;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lgl0;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p0, v1}, Lgl0;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ll90;

    .line 11
    .line 12
    const-class v2, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 13
    .line 14
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Luf;

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    invoke-direct {v3, p0, v4}, Luf;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lvf;

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-direct {v4, p0, v5}, Lvf;-><init>(Lil0;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->P:Ll90;

    .line 34
    .line 35
    new-instance v0, Lgj;

    .line 36
    .line 37
    const/16 v1, 0xc

    .line 38
    .line 39
    invoke-direct {v0, p0, v1}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lgv7;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Q:Lgv7;

    .line 48
    .line 49
    new-instance v0, Lak;

    .line 50
    .line 51
    const/4 v1, 0x7

    .line 52
    invoke-direct {v0, p0, v1}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lgv7;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->R:Lgv7;

    .line 61
    .line 62
    new-instance v0, Lbk;

    .line 63
    .line 64
    const/16 v2, 0x8

    .line 65
    .line 66
    invoke-direct {v0, p0, v2}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Lgv7;

    .line 70
    .line 71
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->S:Lgv7;

    .line 75
    .line 76
    new-instance v0, Le01;

    .line 77
    .line 78
    invoke-direct {v0, p0, v5}, Le01;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;I)V

    .line 79
    .line 80
    .line 81
    new-instance v2, Lgv7;

    .line 82
    .line 83
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 84
    .line 85
    .line 86
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->U:Lgv7;

    .line 87
    .line 88
    new-instance v0, Lf01;

    .line 89
    .line 90
    invoke-direct {v0, p0, v5}, Lf01;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;I)V

    .line 91
    .line 92
    .line 93
    new-instance v2, Lgv7;

    .line 94
    .line 95
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 96
    .line 97
    .line 98
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->W:Lgv7;

    .line 99
    .line 100
    new-instance v0, Le01;

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-direct {v0, p0, v2}, Le01;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;I)V

    .line 104
    .line 105
    .line 106
    new-instance v3, Lgv7;

    .line 107
    .line 108
    invoke-direct {v3, v0}, Lgv7;-><init>(Lbt3;)V

    .line 109
    .line 110
    .line 111
    iput-object v3, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->X:Lgv7;

    .line 112
    .line 113
    new-instance v0, Lf01;

    .line 114
    .line 115
    invoke-direct {v0, p0, v2}, Lf01;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;I)V

    .line 116
    .line 117
    .line 118
    new-instance v2, Lgv7;

    .line 119
    .line 120
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 121
    .line 122
    .line 123
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Y:Lgv7;

    .line 124
    .line 125
    new-instance v0, Lek;

    .line 126
    .line 127
    const/16 v2, 0xb

    .line 128
    .line 129
    invoke-direct {v0, p0, v2}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 130
    .line 131
    .line 132
    new-instance v3, Lgv7;

    .line 133
    .line 134
    invoke-direct {v3, v0}, Lgv7;-><init>(Lbt3;)V

    .line 135
    .line 136
    .line 137
    iput-object v3, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Z:Lgv7;

    .line 138
    .line 139
    new-instance v0, Lah;

    .line 140
    .line 141
    invoke-direct {v0, p0, v2}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 142
    .line 143
    .line 144
    new-instance v2, Lgv7;

    .line 145
    .line 146
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 147
    .line 148
    .line 149
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->a0:Lgv7;

    .line 150
    .line 151
    new-instance v0, Lrb;

    .line 152
    .line 153
    invoke-direct {v0, p0, v1}, Lrb;-><init>(Ljava/lang/Object;I)V

    .line 154
    .line 155
    .line 156
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->b0:Lrb;

    .line 157
    .line 158
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->a0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final varargs U(Z[Landroid/view/View;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 v1, 0x8

    .line 7
    .line 8
    :goto_0
    array-length v2, p2

    .line 9
    :goto_1
    if-ge v0, v2, :cond_3

    .line 10
    .line 11
    aget-object v3, p2, v0

    .line 12
    .line 13
    instance-of v4, v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 14
    .line 15
    if-eqz v4, :cond_2

    .line 16
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    sget-object v3, Lzn4;->a:Lzn4;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    const-wide/16 v3, 0x5dc

    .line 26
    .line 27
    :goto_2
    new-instance v5, Lg01;

    .line 28
    .line 29
    invoke-direct {v5, p0, p1}, Lg01;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;Z)V

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v4, v5}, Lzn4;->f(JLbt3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    goto :goto_3

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1

    .line 40
    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    return-void
.end method

.method public final V()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->U:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 8
    .line 9
    return-object p0
.end method

.method public final W()Lzx2;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->W:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzx2;

    .line 8
    .line 9
    return-object p0
.end method

.method public final X()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->R:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 8
    .line 9
    return-object p0
.end method

.method public final Y()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->S:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    return-object p0
.end method

.method public final Z()Lli7;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Q:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lli7;

    .line 8
    .line 9
    return-object p0
.end method

.method public final a0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->P:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 8
    .line 9
    return-object p0
.end method

.method public final b0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->V:Landroid/view/MenuItem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "checkboxSelectAll"

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lsz8;->z(Landroid/content/Context;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const p1, 0x7f08008f

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const p1, 0x7f08008e

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/swiftapps/swiftbackup/common/Const;->w(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->V:Landroid/view/MenuItem;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    :cond_2
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Z()Lli7;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lli7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->V()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Y()Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {p1, v0, v1}, Lsz8;->f0(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->a0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "EXTRA_BACKUP_FILE_PATH"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-boolean v2, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->e:Z

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iput-boolean v1, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->e:Z

    .line 45
    .line 46
    sget-object v2, Lhx0;->b:Lhx0;

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Lhx0;->i(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->f:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->f:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    new-instance v2, Lq63;

    .line 73
    .line 74
    invoke-direct {v2, v0, v1}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lq63;->j()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iput-boolean v1, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->g:Z

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const-string p0, "Invalid filePath = "

    .line 87
    .line 88
    invoke-static {p0, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    :goto_0
    iget-boolean v0, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->g:Z

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    iget-object v0, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->f:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    sget-object v3, Lzn4;->a:Lzn4;

    .line 106
    .line 107
    new-instance v3, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/c;

    .line 108
    .line 109
    invoke-direct {v3, p1, v0, v2}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/c;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;Ljava/lang/String;Ljv1;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v3}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    const-string p0, "Required value was null."

    .line 117
    .line 118
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_5
    sget-object v0, Lzn4;->a:Lzn4;

    .line 123
    .line 124
    new-instance v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/d;

    .line 125
    .line 126
    invoke-direct {v0, p1, v2}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/d;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;Ljv1;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 130
    .line 131
    .line 132
    :goto_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Z()Lli7;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object p1, p1, Lli7;->f:Ltf2;

    .line 137
    .line 138
    iget-object p1, p1, Ltf2;->c:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    if-eqz p0, :cond_6

    .line 150
    .line 151
    invoke-virtual {p0, v1}, Lnc8;->Z(Z)V

    .line 152
    .line 153
    .line 154
    const/4 p1, 0x0

    .line 155
    invoke-virtual {p0, p1}, Lnc8;->b0(Z)V

    .line 156
    .line 157
    .line 158
    :cond_6
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0f0028

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0081

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->V:Landroid/view/MenuItem;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->b0(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->a0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-boolean v1, v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->g:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Z()Lli7;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v2, v2, Lli7;->f:Ltf2;

    .line 41
    .line 42
    iget-object v2, v2, Ltf2;->f:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Landroid/widget/CheckedTextView;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    const v3, 0x7f130461

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const v3, 0x7f130097

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Z()Lli7;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v2, v2, Lli7;->f:Ltf2;

    .line 63
    .line 64
    iget-object v2, v2, Ltf2;->e:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Landroid/widget/TextView;

    .line 67
    .line 68
    const v3, 0x7f1302f6

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Z()Lli7;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v2, v2, Lli7;->f:Ltf2;

    .line 83
    .line 84
    iget-object v2, v2, Ltf2;->d:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 87
    .line 88
    new-instance v3, Ldj;

    .line 89
    .line 90
    const/4 v4, 0x2

    .line 91
    invoke-direct {v3, p0, v4}, Ldj;-><init>(Ljava/lang/Object;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->V()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    if-eqz v1, :cond_1

    .line 102
    .line 103
    const v3, 0x7f13045a

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    const v3, 0x7f1300a5

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->V()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    const v3, 0x7f0801ab

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    const v3, 0x7f080135

    .line 124
    .line 125
    .line 126
    :goto_2
    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->X()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->X()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {p0}, Lk28;->v()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-static {v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->H(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Z)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Y()Landroidx/recyclerview/widget/RecyclerView;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    new-instance v3, Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;

    .line 152
    .line 153
    invoke-direct {v3, p0}, Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Y()Landroidx/recyclerview/widget/RecyclerView;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    const/4 v3, 0x7

    .line 164
    invoke-static {v2, v3}, Lsz8;->b(Landroid/view/View;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Y()Landroidx/recyclerview/widget/RecyclerView;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    const/4 v3, 0x1

    .line 172
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 173
    .line 174
    .line 175
    new-instance v2, Lm01;

    .line 176
    .line 177
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Z()Lli7;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    iget-object v3, v3, Lli7;->f:Ltf2;

    .line 182
    .line 183
    iget-object v3, v3, Ltf2;->e:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v3, Landroid/widget/TextView;

    .line 186
    .line 187
    invoke-direct {v2, v3}, Lm01;-><init>(Landroid/widget/TextView;)V

    .line 188
    .line 189
    .line 190
    new-instance v3, Lh01;

    .line 191
    .line 192
    invoke-direct {v3, p0, v0}, Lh01;-><init>(Ljava/lang/Object;I)V

    .line 193
    .line 194
    .line 195
    iput-object v3, v2, Lgm7;->g:Lqt3;

    .line 196
    .line 197
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->T:Lm01;

    .line 198
    .line 199
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Y()Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->T:Lm01;

    .line 204
    .line 205
    if-eqz v3, :cond_3

    .line 206
    .line 207
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->V()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    new-instance v3, Li01;

    .line 215
    .line 216
    invoke-direct {v3, p0, v1}, Li01;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;Z)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->a0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    iget-object v1, v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->h:Lex6;

    .line 227
    .line 228
    new-instance v2, Lox;

    .line 229
    .line 230
    const/4 v3, 0x5

    .line 231
    invoke-direct {v2, p0, v3}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 232
    .line 233
    .line 234
    new-instance v3, Lj01;

    .line 235
    .line 236
    invoke-direct {v3, v0, v2}, Lj01;-><init>(ILmt3;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, p0, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->a0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    iget-object v1, v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->i:Lex6;

    .line 247
    .line 248
    new-instance v2, Lw20;

    .line 249
    .line 250
    invoke-direct {v2, p0, v4}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 251
    .line 252
    .line 253
    new-instance v3, Lj01;

    .line 254
    .line 255
    invoke-direct {v3, v0, v2}, Lj01;-><init>(ILmt3;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, p0, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 259
    .line 260
    .line 261
    invoke-super {p0, p1}, Lil0;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 262
    .line 263
    .line 264
    move-result p0

    .line 265
    return p0

    .line 266
    :cond_3
    const-string p0, "mAdapter"

    .line 267
    .line 268
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const/4 p0, 0x0

    .line 272
    throw p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f0a0081

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->T:Lm01;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "mAdapter"

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, v0, Lgm7;->e:Lfm7;

    .line 21
    .line 22
    iget-object v0, v0, Lfm7;->a:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    xor-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->T:Lm01;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Lgm7;->s(Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :cond_1
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->L()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lil0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lsa1;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->T:Lm01;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->a0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;->i:Lex6;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->T:Lm01;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lgm7;->e:Lfm7;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p0, "mAdapter"

    .line 28
    .line 29
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0

    .line 34
    :cond_1
    return-void
.end method
