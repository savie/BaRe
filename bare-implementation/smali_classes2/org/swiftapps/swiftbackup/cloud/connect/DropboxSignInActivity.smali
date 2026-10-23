.class public final Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic P:I


# instance fields
.field public final K:Lgv7;

.field public final L:Lgv7;

.field public final M:Lgv7;

.field public N:Z

.field public O:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lak;

    .line 5
    .line 6
    const/16 v1, 0xe

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->K:Lgv7;

    .line 17
    .line 18
    new-instance v0, Lbk;

    .line 19
    .line 20
    const/16 v1, 0x11

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lgv7;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->L:Lgv7;

    .line 31
    .line 32
    new-instance v0, Lel;

    .line 33
    .line 34
    const/16 v1, 0xc

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lel;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lgv7;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->M:Lgv7;

    .line 45
    .line 46
    return-void
.end method

.method public static final N(Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;Lvj;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p1, Lvj;->d:Ljava/util/Map;

    .line 2
    .line 3
    const-string v0, "account_id"

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    const-string v1, "uid"

    .line 14
    .line 15
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/String;

    .line 20
    .line 21
    if-nez p0, :cond_2

    .line 22
    .line 23
    new-instance p0, Lbr2;

    .line 24
    .line 25
    new-instance v1, Ldk;

    .line 26
    .line 27
    const/16 v2, 0x16

    .line 28
    .line 29
    invoke-direct {v1, p1, v2}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    const/16 p1, 0x3e

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, v1, v2, p1}, Lbr2;-><init>(Lbt3;Lae1;I)V

    .line 36
    .line 37
    .line 38
    const-string p1, "/2/users/get_current_account"

    .line 39
    .line 40
    invoke-virtual {p0, v2, p1}, Lbr2;->e(Lfl4;Ljava/lang/String;)Lfl4;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0, v0}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    const-string p1, ""

    .line 51
    .line 52
    :cond_0
    const-string v0, "email"

    .line 53
    .line 54
    invoke-static {p0, v0}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_1

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_1
    return-object v2

    .line 65
    :cond_2
    return-object p0

    .line 66
    :cond_3
    return-object v1
.end method


# virtual methods
.method public final F()Lqo0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    const/16 v0, 0x1392

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/u;->onActivityResult(IILandroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->O:Z

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    if-nez p3, :cond_1

    .line 14
    .line 15
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 16
    .line 17
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v4, 0x4

    .line 22
    const/4 v5, 0x0

    .line 23
    const-string v2, "Dropbox AppAuth result intent is null."

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {p3}, Lz80;->e(Landroid/content/Intent;)Lz80;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p3}, Lg90;->J(Landroid/content/Intent;)Lg90;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    const/4 v0, 0x0

    .line 45
    if-nez p3, :cond_6

    .line 46
    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    iget-object p3, p2, Lz80;->d:Ljava/lang/String;

    .line 50
    .line 51
    if-nez p3, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    move-object v2, p3

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_4
    if-nez v0, :cond_5

    .line 63
    .line 64
    const-string p3, "Dropbox authorization failed."

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    move-object v2, v0

    .line 68
    :goto_2
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 69
    .line 70
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/4 v4, 0x4

    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    sget-object p2, Lzn4;->a:Lzn4;

    .line 81
    .line 82
    new-instance p2, Lcv;

    .line 83
    .line 84
    const/16 p3, 0xe

    .line 85
    .line 86
    invoke-direct {p2, p3, p0, v2}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p2}, Lzn4;->e(Lbt3;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_6
    const p1, 0x7f13042d

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lil0;->M(I)V

    .line 103
    .line 104
    .line 105
    sget-object p1, Lzn4;->a:Lzn4;

    .line 106
    .line 107
    new-instance p1, Lcr2;

    .line 108
    .line 109
    invoke-direct {p1, p0, p3, v0}, Lcr2;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;Lg90;Ljv1;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->K:Lgv7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ldr2;

    .line 11
    .line 12
    iget-object v0, v0, Ldr2;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lk28;->setContentView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string v1, "dropbox_app_auth_started"

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v0

    .line 28
    :goto_0
    iput-boolean v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->N:Z

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const-string v1, "dropbox_app_auth_result_received"

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    :cond_1
    iput-boolean v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->O:Z

    .line 39
    .line 40
    sget-object p1, Lkz4;->g:Lkz4;

    .line 41
    .line 42
    const-string v0, "com.dropbox.android"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ldv;->b(Ljava/lang/String;)Ljl0;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lji;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Lji;->isInstalled()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 p1, 0x0

    .line 60
    :goto_1
    if-eqz p1, :cond_3

    .line 61
    .line 62
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 63
    .line 64
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p1}, Lji;->getVersionName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p1}, Lji;->getVersionCode()Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v3, "Dropbox app version: "

    .line 79
    .line 80
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p0, " ("

    .line 87
    .line 88
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p0, ")"

    .line 95
    .line 96
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const/4 v4, 0x4

    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v3, 0x0

    .line 106
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "dropbox_app_auth_started"

    .line 5
    .line 6
    iget-boolean v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->N:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const-string v0, "dropbox_app_auth_result_received"

    .line 12
    .line 13
    iget-boolean v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->O:Z

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1}, Lil0;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onStart()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "onStart"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->N:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->O:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->N:Z

    .line 26
    .line 27
    :try_start_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->M:Lgv7;

    .line 28
    .line 29
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Luj;

    .line 34
    .line 35
    invoke-virtual {v0}, Luj;->a()Lc90;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lc90;->a()Le90;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p0, v0}, Luj;->b(Landroid/content/Context;Le90;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/16 v1, 0x1392

    .line 48
    .line 49
    invoke-virtual {p0, v0, v1}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "Error in startAuth"

    .line 59
    .line 60
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 68
    .line 69
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const/4 v7, 0x4

    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lzn4;->a:Lzn4;

    .line 80
    .line 81
    new-instance v0, Lcv;

    .line 82
    .line 83
    const/16 v1, 0xe

    .line 84
    .line 85
    invoke-direct {v0, v1, p0, v5}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 96
    .line 97
    .line 98
    :cond_0
    :goto_0
    invoke-super {p0}, Lil0;->onStart()V

    .line 99
    .line 100
    .line 101
    return-void
.end method
