.class public final Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic O:I


# instance fields
.field public final K:Ll90;

.field public final L:Lgv7;

.field public final M:Lgv7;

.field public final N:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp30;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lp30;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ll90;

    .line 12
    .line 13
    const-class v3, Lby5;

    .line 14
    .line 15
    invoke-static {v3}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-instance v4, Lq30;

    .line 20
    .line 21
    invoke-direct {v4, p0, v1}, Lq30;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Lgl0;

    .line 25
    .line 26
    invoke-direct {v5, p0, v1}, Lgl0;-><init>(Lil0;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3, v4, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->K:Ll90;

    .line 33
    .line 34
    new-instance v0, Lto5;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {v0, p0, v1}, Lto5;-><init>(Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lgv7;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->L:Lgv7;

    .line 46
    .line 47
    new-instance v0, Lhs4;

    .line 48
    .line 49
    const/4 v2, 0x6

    .line 50
    invoke-direct {v0, p0, v2}, Lhs4;-><init>(Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Lgv7;

    .line 54
    .line 55
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->M:Lgv7;

    .line 59
    .line 60
    new-instance v0, Lus5;

    .line 61
    .line 62
    invoke-direct {v0, p0, v1}, Lus5;-><init>(Ljava/lang/Object;I)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lgv7;

    .line 66
    .line 67
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->N:Lgv7;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->N()Lby5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Lby5;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lby5;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    const v0, 0x1e3d73

    .line 2
    .line 3
    .line 4
    if-ne p1, v0, :cond_4

    .line 5
    .line 6
    sget-object p1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/V;->getZ()Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-string p3, "saved_user_password"

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_0

    .line 26
    .line 27
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object p2, v0

    .line 35
    :goto_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->N()Lby5;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v1, "saved_password_mode"

    .line 40
    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    sget-object v2, Lux5;->USER_PASSWORD:Lux5;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lux5;->getEntries()Ljx2;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lkx2;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Lkx2;->indexOf(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/V;->getZ()Landroid/content/SharedPreferences;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-lez v1, :cond_2

    .line 91
    .line 92
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_2

    .line 97
    .line 98
    move-object v0, p2

    .line 99
    :cond_2
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/V;->getZ()Landroid/content/SharedPreferences;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    :goto_1
    sget-object p2, Lux5;->STANDARD_PASSWORD:Lux5;

    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lux5;->getEntries()Ljx2;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Lkx2;

    .line 125
    .line 126
    invoke-virtual {v2, p2}, Lkx2;->indexOf(Ljava/lang/Object;)I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/V;->getZ()Landroid/content/SharedPreferences;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-interface {v2, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/V;->getZ()Landroid/content/SharedPreferences;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    .line 159
    .line 160
    :goto_2
    invoke-virtual {p0}, Lby5;->k()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/u;->onActivityResult(IILandroid/content/Intent;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->L:Lgv7;

    .line 5
    .line 6
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lwx5;

    .line 11
    .line 12
    iget-object v0, v0, Lwx5;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lk28;->setContentView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lwx5;

    .line 22
    .line 23
    iget-object v0, v0, Lwx5;->b:Lw00;

    .line 24
    .line 25
    iget-object v0, v0, Lw00;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lix0;

    .line 28
    .line 29
    iget-object v0, v0, Lix0;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Lnc8;->Z(Z)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lwx5;

    .line 51
    .line 52
    iget-object p1, p1, Lwx5;->e:Landroidx/core/widget/NestedScrollView;

    .line 53
    .line 54
    const/4 v0, 0x7

    .line 55
    invoke-static {p1, v0}, Lsz8;->b(Landroid/view/View;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->N()Lby5;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p1, p1, Lby5;->e:Lex6;

    .line 63
    .line 64
    new-instance v0, Ls52;

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x2

    .line 68
    const/4 v1, 0x1

    .line 69
    const-class v3, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;

    .line 70
    .line 71
    const-string v4, "updateState"

    .line 72
    .line 73
    const-string v5, "updateState(Lorg/swiftapps/swiftbackup/password/PasswordStrategyVM$State;)V"

    .line 74
    .line 75
    move-object v2, p0

    .line 76
    invoke-direct/range {v0 .. v7}, Ls52;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    new-instance p0, Lez;

    .line 80
    .line 81
    const/4 v1, 0x3

    .line 82
    invoke-direct {p0, v1, v0}, Lez;-><init>(ILmt3;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v2, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->N()Lby5;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    iget-object p0, p0, Lby5;->f:Lix6;

    .line 93
    .line 94
    new-instance p1, Lhj;

    .line 95
    .line 96
    const/16 v0, 0x16

    .line 97
    .line 98
    invoke-direct {p1, v2, v0}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lez;

    .line 102
    .line 103
    invoke-direct {v0, v1, p1}, Lez;-><init>(ILmt3;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v2, v0}, Lix6;->e(Lfu4;Les5;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Lil0;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lzm;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lha7;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
