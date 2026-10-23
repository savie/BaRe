.class public final Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic c0:I


# instance fields
.field public final P:Ll90;

.field public final Q:Lgv7;

.field public final R:Lgv7;

.field public final S:Lgv7;

.field public T:Lbe5;

.field public final U:Lgv7;

.field public V:Landroid/view/MenuItem;

.field public final W:Lgv7;

.field public final X:Lgv7;

.field public final Y:Lgv7;

.field public final Z:Lgv7;

.field public final a0:Lgv7;

.field public final b0:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lns;

    .line 5
    .line 6
    const/16 v1, 0xe

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lns;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll90;

    .line 12
    .line 13
    const-class v2, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 14
    .line 15
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lz20;

    .line 20
    .line 21
    const/16 v4, 0xb

    .line 22
    .line 23
    invoke-direct {v3, p0, v4}, Lz20;-><init>(Lil0;I)V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lo30;

    .line 27
    .line 28
    const/16 v6, 0x8

    .line 29
    .line 30
    invoke-direct {v5, p0, v6}, Lo30;-><init>(Lil0;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->P:Ll90;

    .line 37
    .line 38
    new-instance v0, Lxd5;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-direct {v0, p0, v1}, Lxd5;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;I)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lgv7;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Q:Lgv7;

    .line 50
    .line 51
    new-instance v0, Lu14;

    .line 52
    .line 53
    const/4 v1, 0x6

    .line 54
    invoke-direct {v0, p0, v1}, Lu14;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lgv7;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->R:Lgv7;

    .line 63
    .line 64
    new-instance v0, Lkn3;

    .line 65
    .line 66
    invoke-direct {v0, p0, v4}, Lkn3;-><init>(Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lgv7;

    .line 70
    .line 71
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->S:Lgv7;

    .line 75
    .line 76
    new-instance v0, Lmo3;

    .line 77
    .line 78
    invoke-direct {v0, p0, v6}, Lmo3;-><init>(Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    new-instance v1, Lgv7;

    .line 82
    .line 83
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->U:Lgv7;

    .line 87
    .line 88
    new-instance v0, Lxq4;

    .line 89
    .line 90
    const/4 v1, 0x3

    .line 91
    invoke-direct {v0, p0, v1}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 92
    .line 93
    .line 94
    new-instance v2, Lgv7;

    .line 95
    .line 96
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 97
    .line 98
    .line 99
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->W:Lgv7;

    .line 100
    .line 101
    new-instance v0, Las4;

    .line 102
    .line 103
    const/4 v2, 0x2

    .line 104
    invoke-direct {v0, p0, v2}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    new-instance v2, Lgv7;

    .line 108
    .line 109
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 110
    .line 111
    .line 112
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->X:Lgv7;

    .line 113
    .line 114
    new-instance v0, Lpr4;

    .line 115
    .line 116
    invoke-direct {v0, p0, v1}, Lpr4;-><init>(Ljava/lang/Object;I)V

    .line 117
    .line 118
    .line 119
    new-instance v1, Lgv7;

    .line 120
    .line 121
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Y:Lgv7;

    .line 125
    .line 126
    new-instance v0, Llf;

    .line 127
    .line 128
    const/16 v1, 0x1c

    .line 129
    .line 130
    invoke-direct {v0, p0, v1}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Lgv7;

    .line 134
    .line 135
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 136
    .line 137
    .line 138
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Z:Lgv7;

    .line 139
    .line 140
    new-instance v0, Lej;

    .line 141
    .line 142
    const/16 v1, 0x1d

    .line 143
    .line 144
    invoke-direct {v0, p0, v1}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 145
    .line 146
    .line 147
    new-instance v1, Lgv7;

    .line 148
    .line 149
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 150
    .line 151
    .line 152
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->a0:Lgv7;

    .line 153
    .line 154
    new-instance v0, Lxd5;

    .line 155
    .line 156
    const/4 v1, 0x0

    .line 157
    invoke-direct {v0, p0, v1}, Lxd5;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;I)V

    .line 158
    .line 159
    .line 160
    new-instance v1, Lgv7;

    .line 161
    .line 162
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 163
    .line 164
    .line 165
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->b0:Lgv7;

    .line 166
    .line 167
    return-void
.end method

.method public static U(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->T:Lbe5;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {v0}, Lgm7;->l()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->L()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-eqz p1, :cond_4

    .line 20
    .line 21
    invoke-static {}, Lud5;->j()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->d0()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static {}, Lb67;->b()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-static {}, Lud5;->h()Landroid/app/role/RoleManager;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "android.app.role.SMS"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 50
    .line 51
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v5, 0x4

    .line 56
    const/4 v6, 0x0

    .line 57
    const-string v3, "requestDefaultSmsAppQ: Role not available!"

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    invoke-static {}, Lud5;->h()Landroid/app/role/RoleManager;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const/16 v0, 0x30aa

    .line 76
    .line 77
    invoke-virtual {p0, p1, v0}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->e0(Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    new-instance p1, Lnh;

    .line 94
    .line 95
    const/16 v0, 0x9

    .line 96
    .line 97
    invoke-direct {p1, p0, v0}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->b0:Lgv7;

    .line 101
    .line 102
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Laj0;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Laj0;->a(Lzi0;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_5
    const-string p0, "mAdapter"

    .line 113
    .line 114
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 p0, 0x0

    .line 118
    throw p0
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->b0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final varargs V(Z[Landroid/view/View;)V
    .locals 7

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
    new-instance v5, Lw10;

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    invoke-direct {v5, p0, p1, v6}, Lw10;-><init>(Lsa1;ZI)V

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v4, v5}, Lzn4;->f(JLbt3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    goto :goto_3

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1

    .line 41
    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    return-void
.end method

.method public final W()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->U:Lgv7;

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

.method public final X()Lzx2;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->W:Lgv7;

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

.method public final Y()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->R:Lgv7;

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

.method public final Z()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->S:Lgv7;

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

.method public final a0()Lli7;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Q:Lgv7;

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

.method public final b0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->P:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 8
    .line 9
    return-object p0
.end method

.method public final c0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->V:Landroid/view/MenuItem;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->V:Landroid/view/MenuItem;

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

.method public final d0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->T:Lbe5;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->b0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->T:Lbe5;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lgm7;->l()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->L()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    sget-object v1, Lyy7;->e:Lyy7;

    .line 28
    .line 29
    new-instance v2, Lff5;

    .line 30
    .line 31
    invoke-direct {v2, p0, v1}, Lff5;-><init>(Ljava/util/List;Lzy7;)V

    .line 32
    .line 33
    .line 34
    const-class p0, Lff5;

    .line 35
    .line 36
    invoke-virtual {v0, p0, v2}, Lqo0;->c(Ljava/lang/Class;Lpw6;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    const-string p0, "mAdapter"

    .line 41
    .line 42
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    throw p0

    .line 47
    :cond_2
    return-void
.end method

.method public final e0(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "package"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const p1, 0xd605

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 p1, 0x30aa

    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, v0, p1}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    move-object p1, v0

    .line 27
    move-object v3, p1

    .line 28
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 29
    .line 30
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const-string v2, "requestDefaultSmsAppLegacy"

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final f0()V
    .locals 6

    .line 1
    invoke-static {}, Lb67;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lhv1;

    .line 11
    .line 12
    const v4, 0x7f140160

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    new-instance v5, Ls35;

    .line 19
    .line 20
    invoke-direct {v5, p0, v4, v0, v1}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 21
    .line 22
    .line 23
    const v0, 0x7f1305a7

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v0}, Lv75;->v(I)V

    .line 27
    .line 28
    .line 29
    const v0, 0x7f130457

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v0}, Lv75;->n(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v5, Lva;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lra;

    .line 38
    .line 39
    iput-boolean v3, v0, Lra;->m:Z

    .line 40
    .line 41
    new-instance v0, Lwd5;

    .line 42
    .line 43
    invoke-direct {v0, p0, v2}, Lwd5;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;I)V

    .line 44
    .line 45
    .line 46
    const p0, 0x7f1300f7

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, p0, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    sget-object v0, Lud5;->a:Lgv7;

    .line 57
    .line 58
    const-string v0, "KEY_DEF_SMS_PACKAGE"

    .line 59
    .line 60
    :try_start_0
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 61
    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "prefs"

    .line 70
    .line 71
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :catch_0
    :goto_0
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1, v2}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->e0(Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    :catch_1
    :cond_3
    :goto_1
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    const/16 v0, 0x30aa

    .line 2
    .line 3
    const v1, 0x7f1300f7

    .line 4
    .line 5
    .line 6
    const v2, 0x7f140160

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    if-ne p1, v0, :cond_2

    .line 12
    .line 13
    invoke-static {}, Lud5;->j()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Lhv1;

    .line 20
    .line 21
    invoke-direct {v0, p0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Ls35;

    .line 25
    .line 26
    invoke-direct {v5, p0, v2, v0, v4}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 27
    .line 28
    .line 29
    const v0, 0x7f1303e1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v0}, Lv75;->v(I)V

    .line 33
    .line 34
    .line 35
    const v0, 0x7f1301dc

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v0}, Lv75;->n(I)V

    .line 39
    .line 40
    .line 41
    const v0, 0x7f130299

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v0, v4}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lb67;->b()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    new-instance v0, Lwd5;

    .line 54
    .line 55
    invoke-direct {v0, p0, v3}, Lwd5;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v1, v0}, Lv75;->r(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->d0()V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    const v0, 0xd605

    .line 69
    .line 70
    .line 71
    if-ne p1, v0, :cond_5

    .line 72
    .line 73
    invoke-static {}, Lud5;->j()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-static {}, Lb67;->b()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->f0()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    new-instance v0, Lhv1;

    .line 94
    .line 95
    invoke-direct {v0, p0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 96
    .line 97
    .line 98
    new-instance v5, Ls35;

    .line 99
    .line 100
    invoke-direct {v5, p0, v2, v0, v4}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 101
    .line 102
    .line 103
    const v0, 0x7f1305a7

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v0}, Lv75;->v(I)V

    .line 107
    .line 108
    .line 109
    const v0, 0x7f130456

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v0}, Lv75;->n(I)V

    .line 113
    .line 114
    .line 115
    iget-object v0, v5, Lva;->b:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Lra;

    .line 118
    .line 119
    iput-boolean v3, v0, Lra;->m:Z

    .line 120
    .line 121
    new-instance v0, Luq1;

    .line 122
    .line 123
    const/4 v2, 0x3

    .line 124
    invoke-direct {v0, p0, v2}, Luq1;-><init>(Ljava/lang/Object;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v1, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lsa1;->onActivityResult(IILandroid/content/Intent;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->a0()Lli7;

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
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->W()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Z()Landroidx/recyclerview/widget/RecyclerView;

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
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->b0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

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
    iget-boolean v2, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->e:Z

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    sget-object v2, Lhx0;->b:Lhx0;

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Lhx0;->i(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-boolean v1, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->e:Z

    .line 51
    .line 52
    iput-object v0, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->f:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->f:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    new-instance v2, Lq63;

    .line 74
    .line 75
    invoke-direct {v2, v0, v1}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lq63;->j()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    iput-boolean v1, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->g:Z

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    const-string p0, "Invalid filePath = "

    .line 88
    .line 89
    invoke-static {p0, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    :goto_0
    iget-boolean v0, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->g:Z

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    iget-object v0, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->f:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    sget-object v2, Lzn4;->a:Lzn4;

    .line 106
    .line 107
    new-instance v2, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/g;

    .line 108
    .line 109
    invoke-direct {v2, p1, v0, v3}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/g;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;Ljava/lang/String;Ljv1;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v3, v2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

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
    new-instance v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/h;

    .line 125
    .line 126
    invoke-direct {v0, p1, v3}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/h;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;Ljv1;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v3, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 130
    .line 131
    .line 132
    :goto_1
    sget-object p1, Lud5;->a:Lgv7;

    .line 133
    .line 134
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 135
    .line 136
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-eqz p1, :cond_8

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_6

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 154
    .line 155
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_8

    .line 168
    .line 169
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 170
    .line 171
    if-eqz v0, :cond_7

    .line 172
    .line 173
    const-string v2, "KEY_DEF_SMS_PACKAGE"

    .line 174
    .line 175
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_7
    const-string p0, "editor"

    .line 184
    .line 185
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v3

    .line 189
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->a0()Lli7;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget-object p1, p1, Lli7;->f:Ltf2;

    .line 194
    .line 195
    iget-object p1, p1, Ltf2;->c:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 198
    .line 199
    invoke-virtual {p0, p1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    if-eqz p0, :cond_9

    .line 207
    .line 208
    invoke-virtual {p0, v1}, Lnc8;->Z(Z)V

    .line 209
    .line 210
    .line 211
    const/4 p1, 0x0

    .line 212
    invoke-virtual {p0, p1}, Lnc8;->b0(Z)V

    .line 213
    .line 214
    .line 215
    :cond_9
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
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->V:Landroid/view/MenuItem;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->b0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-boolean v1, v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->g:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->a0()Lli7;

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
    const v3, 0x7f130467

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const v3, 0x7f13009f

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->a0()Lli7;

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
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->a0()Lli7;

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
    new-instance v3, Lh00;

    .line 89
    .line 90
    const/4 v4, 0x7

    .line 91
    invoke-direct {v3, p0, v4}, Lh00;-><init>(Ljava/lang/Object;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->W()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

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
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->W()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

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
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Y()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Y()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lk28;->v()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-static {v0, v2}, Lorg/swiftapps/swiftbackup/common/Const;->H(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Z)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Z()Landroidx/recyclerview/widget/RecyclerView;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v2, Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;

    .line 152
    .line 153
    invoke-direct {v2, p0}, Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Z()Landroidx/recyclerview/widget/RecyclerView;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v0, v4}, Lsz8;->b(Landroid/view/View;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Z()Landroidx/recyclerview/widget/RecyclerView;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const/4 v2, 0x1

    .line 171
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lbe5;

    .line 175
    .line 176
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->a0()Lli7;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    iget-object v2, v2, Lli7;->f:Ltf2;

    .line 181
    .line 182
    iget-object v2, v2, Ltf2;->e:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v2, Landroid/widget/TextView;

    .line 185
    .line 186
    invoke-direct {v0, v2}, Lbe5;-><init>(Landroid/widget/TextView;)V

    .line 187
    .line 188
    .line 189
    new-instance v2, Lrs;

    .line 190
    .line 191
    const/4 v3, 0x6

    .line 192
    invoke-direct {v2, p0, v3}, Lrs;-><init>(Ljava/lang/Object;I)V

    .line 193
    .line 194
    .line 195
    iput-object v2, v0, Lgm7;->g:Lqt3;

    .line 196
    .line 197
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->T:Lbe5;

    .line 198
    .line 199
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Z()Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->T:Lbe5;

    .line 204
    .line 205
    if-eqz v2, :cond_3

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->W()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    new-instance v2, Lyd5;

    .line 215
    .line 216
    invoke-direct {v2, p0, v1}, Lyd5;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;Z)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->b0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->i:Lex6;

    .line 227
    .line 228
    new-instance v1, Llm;

    .line 229
    .line 230
    const/16 v2, 0xf

    .line 231
    .line 232
    invoke-direct {v1, p0, v2}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 233
    .line 234
    .line 235
    new-instance v2, Lf11;

    .line 236
    .line 237
    const/4 v3, 0x2

    .line 238
    invoke-direct {v2, v3, v1}, Lf11;-><init>(ILmt3;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, p0, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->b0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->j:Lex6;

    .line 249
    .line 250
    new-instance v1, Lw20;

    .line 251
    .line 252
    const/16 v2, 0x11

    .line 253
    .line 254
    invoke-direct {v1, p0, v2}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 255
    .line 256
    .line 257
    new-instance v2, Lf11;

    .line 258
    .line 259
    invoke-direct {v2, v3, v1}, Lf11;-><init>(ILmt3;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, p0, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->b0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->k:Lex6;

    .line 270
    .line 271
    new-instance v1, Lc7;

    .line 272
    .line 273
    const/16 v2, 0x14

    .line 274
    .line 275
    invoke-direct {v1, p0, v2}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 276
    .line 277
    .line 278
    new-instance v2, Lf11;

    .line 279
    .line 280
    invoke-direct {v2, v3, v1}, Lf11;-><init>(ILmt3;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, p0, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->b0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->l:Lex6;

    .line 291
    .line 292
    new-instance v1, Ld7;

    .line 293
    .line 294
    const/16 v2, 0x12

    .line 295
    .line 296
    invoke-direct {v1, p0, v2}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    new-instance v2, Lf11;

    .line 300
    .line 301
    invoke-direct {v2, v3, v1}, Lf11;-><init>(ILmt3;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, p0, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 305
    .line 306
    .line 307
    invoke-super {p0, p1}, Lil0;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    return p0

    .line 312
    :cond_3
    const-string p0, "mAdapter"

    .line 313
    .line 314
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const/4 p0, 0x0

    .line 318
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
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->T:Lbe5;

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
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->T:Lbe5;

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
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->T:Lbe5;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->b0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->k:Lex6;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->T:Lbe5;

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
