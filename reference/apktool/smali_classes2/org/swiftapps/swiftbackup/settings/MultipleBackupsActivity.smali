.class public final Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic T:I


# instance fields
.field public final K:Ll90;

.field public final L:Lgv7;

.field public final M:Lgv7;

.field public final N:Lgv7;

.field public final O:Lgv7;

.field public final P:Lgv7;

.field public final Q:Lgv7;

.field public final R:Ljava/util/LinkedHashMap;

.field public S:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq30;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, p0, v1}, Lq30;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ll90;

    .line 11
    .line 12
    const-class v3, Lorg/swiftapps/swiftbackup/settings/k;

    .line 13
    .line 14
    invoke-static {v3}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Lgl0;

    .line 19
    .line 20
    const/4 v5, 0x7

    .line 21
    invoke-direct {v4, p0, v5}, Lgl0;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Luf;

    .line 25
    .line 26
    const/16 v6, 0xb

    .line 27
    .line 28
    invoke-direct {v5, p0, v6}, Luf;-><init>(Lil0;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3, v4, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->K:Ll90;

    .line 35
    .line 36
    new-instance v0, Lqb5;

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    invoke-direct {v0, p0, v2}, Lqb5;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lgv7;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->L:Lgv7;

    .line 48
    .line 49
    new-instance v0, Lkn3;

    .line 50
    .line 51
    const/16 v2, 0xc

    .line 52
    .line 53
    invoke-direct {v0, p0, v2}, Lkn3;-><init>(Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lgv7;

    .line 57
    .line 58
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->M:Lgv7;

    .line 62
    .line 63
    new-instance v0, Lmo3;

    .line 64
    .line 65
    const/16 v2, 0x9

    .line 66
    .line 67
    invoke-direct {v0, p0, v2}, Lmo3;-><init>(Ljava/lang/Object;I)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lgv7;

    .line 71
    .line 72
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->N:Lgv7;

    .line 76
    .line 77
    new-instance v0, Lxq4;

    .line 78
    .line 79
    invoke-direct {v0, p0, v1}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lgv7;

    .line 83
    .line 84
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 85
    .line 86
    .line 87
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->O:Lgv7;

    .line 88
    .line 89
    new-instance v0, Las4;

    .line 90
    .line 91
    const/4 v2, 0x5

    .line 92
    invoke-direct {v0, p0, v2}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 93
    .line 94
    .line 95
    new-instance v2, Lgv7;

    .line 96
    .line 97
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 98
    .line 99
    .line 100
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->P:Lgv7;

    .line 101
    .line 102
    new-instance v0, Lpr4;

    .line 103
    .line 104
    invoke-direct {v0, p0, v1}, Lpr4;-><init>(Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    new-instance v1, Lgv7;

    .line 108
    .line 109
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->Q:Lgv7;

    .line 113
    .line 114
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->R:Ljava/util/LinkedHashMap;

    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->S:Z

    .line 123
    .line 124
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->P()Lorg/swiftapps/swiftbackup/settings/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->P()Lorg/swiftapps/swiftbackup/settings/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/k;->f:Lex6;

    .line 6
    .line 7
    invoke-virtual {p0}, Lzy4;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/i;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/i;->e:Lgv7;

    .line 16
    .line 17
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final O()Lbj5;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->L:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbj5;

    .line 8
    .line 9
    return-object p0
.end method

.method public final P()Lorg/swiftapps/swiftbackup/settings/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/k;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->O()Lbj5;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lbj5;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->O()Lbj5;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lbj5;->b:Lw00;

    .line 18
    .line 19
    iget-object p1, p1, Lw00;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lix0;

    .line 22
    .line 23
    iget-object p1, p1, Lix0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v0, 0x1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lnc8;->Z(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->P()Lorg/swiftapps/swiftbackup/settings/k;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->M:Lgv7;

    .line 45
    .line 46
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 51
    .line 52
    iget-object v2, p1, Lorg/swiftapps/swiftbackup/settings/k;->f:Lex6;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-boolean v3, p1, Lorg/swiftapps/swiftbackup/settings/k;->e:Z

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    iput-boolean v0, p1, Lorg/swiftapps/swiftbackup/settings/k;->e:Z

    .line 63
    .line 64
    invoke-virtual {v2}, Lzy4;->d()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    new-instance p1, Lorg/swiftapps/swiftbackup/settings/i;

    .line 71
    .line 72
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->access$getSingleBackupStrategy$delegate$cp()Los4;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Los4;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 86
    .line 87
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/settings/f;->b(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    sget-object v4, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;->DatedBackups:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 92
    .line 93
    if-ne v3, v4, :cond_2

    .line 94
    .line 95
    move-object v3, v1

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->access$getDefaultDatedBackupsStrategy$delegate$cp()Los4;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-interface {v3}, Los4;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 106
    .line 107
    :goto_0
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/settings/f;->b(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    sget-object v5, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;->ConditionalBackup:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 112
    .line 113
    if-ne v4, v5, :cond_3

    .line 114
    .line 115
    move-object v4, v1

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->access$getDefaultConditionalBackupsStrategy$delegate$cp()Los4;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-interface {v4}, Los4;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 126
    .line 127
    :goto_1
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/settings/f;->b(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-direct {p1, v0, v3, v4, v1}, Lorg/swiftapps/swiftbackup/settings/i;-><init>(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->O()Lbj5;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget-object p1, p1, Lbj5;->k:Landroidx/core/widget/NestedScrollView;

    .line 142
    .line 143
    const/4 v0, 0x7

    .line 144
    invoke-static {p1, v0}, Lsz8;->b(Landroid/view/View;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->P()Lorg/swiftapps/swiftbackup/settings/k;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/settings/k;->f:Lex6;

    .line 152
    .line 153
    new-instance v0, Lhl0;

    .line 154
    .line 155
    const/4 v6, 0x0

    .line 156
    const/4 v7, 0x4

    .line 157
    const/4 v1, 0x1

    .line 158
    const-class v3, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 159
    .line 160
    const-string v4, "updateState"

    .line 161
    .line 162
    const-string v5, "updateState(Lorg/swiftapps/swiftbackup/settings/MultipleBackupsVM$State;)V"

    .line 163
    .line 164
    move-object v2, p0

    .line 165
    invoke-direct/range {v0 .. v7}, Lhl0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 166
    .line 167
    .line 168
    new-instance p0, Lnv1;

    .line 169
    .line 170
    const/4 v1, 0x2

    .line 171
    invoke-direct {p0, v0, v1}, Lnv1;-><init>(Ljava/lang/Object;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v2, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 175
    .line 176
    .line 177
    new-instance p0, Lyi5;

    .line 178
    .line 179
    const/4 p1, 0x0

    .line 180
    invoke-direct {p0, v2, p1}, Lyi5;-><init>(Ljava/lang/Object;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, p1, p0}, Lil0;->L(ZLbt3;)V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lil0;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->R:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/material/slider/Slider;

    .line 25
    .line 26
    iget-object v0, v0, Lon0;->x:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
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
