.class public final synthetic Lqj3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;ZLorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lqj3;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lqj3;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lqj3;->b:Z

    .line 10
    .line 11
    iput-object p3, p0, Lqj3;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;Lq47;Z)V
    .locals 1

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lqj3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqj3;->c:Ljava/lang/Object;

    iput-object p2, p0, Lqj3;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lqj3;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLrj3;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lqj3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lqj3;->b:Z

    iput-object p2, p0, Lqj3;->c:Ljava/lang/Object;

    iput-object p3, p0, Lqj3;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lqj3;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-boolean v2, p0, Lqj3;->b:Z

    .line 6
    .line 7
    iget-object v3, p0, Lqj3;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lqj3;->c:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 15
    .line 16
    check-cast v3, Lq47;

    .line 17
    .line 18
    sget-object v0, Lc47;->a:Lc47;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lc47;->e(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Lh47;

    .line 24
    .line 25
    invoke-direct {p0, v3, v2}, Lh47;-><init>(Lq47;Z)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lzn4;->c(Lbt3;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 33
    .line 34
    move-object v8, v3

    .line 35
    check-cast v8, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 36
    .line 37
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V:Lcp3;

    .line 38
    .line 39
    invoke-virtual {v0}, Lgm7;->l()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    .line 45
    const/16 v4, 0xa

    .line 46
    .line 47
    invoke-static {v0, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lzk3;

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    iget-object v6, v4, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 74
    .line 75
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->fetchCloudBackup()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    move-object v6, v5

    .line 80
    iget-object v5, v4, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 81
    .line 82
    if-eqz v7, :cond_0

    .line 83
    .line 84
    new-instance v4, Ldo3;

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v9, 0x0

    .line 88
    invoke-direct/range {v4 .. v9}, Ldo3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_0
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const-string v0, "isCloudRestore is true but we don\'t have any cloud backups for folder: "

    .line 97
    .line 98
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    move-object v1, v6

    .line 106
    goto :goto_2

    .line 107
    :cond_1
    move-object v6, v5

    .line 108
    iget-object v5, v4, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 109
    .line 110
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->fetchLocalBackup()Lkj3;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    iget-object v4, v4, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 115
    .line 116
    if-eqz v5, :cond_2

    .line 117
    .line 118
    move-object v6, v5

    .line 119
    move-object v5, v4

    .line 120
    new-instance v4, Ldo3;

    .line 121
    .line 122
    const/4 v7, 0x0

    .line 123
    const/4 v9, 0x0

    .line 124
    invoke-direct/range {v4 .. v9}, Ldo3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    move-object v5, v4

    .line 132
    move-object v4, v6

    .line 133
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    const-string v0, "No local backup for folder: "

    .line 138
    .line 139
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    move-object v1, v4

    .line 147
    goto :goto_2

    .line 148
    :cond_3
    sget-object v0, Lzn4;->a:Lzn4;

    .line 149
    .line 150
    new-instance v0, Llo3;

    .line 151
    .line 152
    invoke-direct {v0, p0, v2, v3}, Llo3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;ZLjava/util/ArrayList;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 156
    .line 157
    .line 158
    :goto_2
    return-object v1

    .line 159
    :pswitch_1
    check-cast p0, Lrj3;

    .line 160
    .line 161
    iget-object v0, p0, Lrj3;->Q:Lil0;

    .line 162
    .line 163
    check-cast v3, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 164
    .line 165
    if-eqz v2, :cond_4

    .line 166
    .line 167
    sget p0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 168
    .line 169
    invoke-static {v0}, Lrs9;->u(Lk28;)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_4
    iput-object v3, p0, Lrj3;->Z:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 174
    .line 175
    iget-object v2, p0, Lu35;->K:Ljk8;

    .line 176
    .line 177
    check-cast v2, Lsj3;

    .line 178
    .line 179
    iget-object v2, v2, Lsj3;->a:Landroidx/core/widget/NestedScrollView;

    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    const-class v3, Landroid/widget/TextView;

    .line 185
    .line 186
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v0, v2, v3}, Lil0;->x(Landroid/view/ViewGroup;[Ljava/lang/Class;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lrj3;->l()V

    .line 194
    .line 195
    .line 196
    :goto_3
    return-object v1

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
