.class public final Lpz4;
.super Ldv;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:Lpz4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpz4;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ldv;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lpz4;->g:Lpz4;

    .line 8
    .line 9
    sget-object v1, Lhx0;->b:Lhx0;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lhx0;->i(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, v0, Ldv;->e:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lik6;
    .locals 9

    .line 1
    new-instance v0, Lq63;

    .line 2
    .line 3
    sget-object v1, Lry5;->u:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Lqy5;->f(ZLzn7;)Lry5;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v3, v3, Lry5;->s:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    invoke-direct {v0, v3, v4}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lq63;->B()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v0, :cond_6

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, v2

    .line 32
    :goto_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_5

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Lq63;

    .line 55
    .line 56
    invoke-virtual {v6}, Lq63;->x()Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_2

    .line 61
    .line 62
    new-instance v7, Lq63;

    .line 63
    .line 64
    const-string v8, "metadata.json"

    .line 65
    .line 66
    invoke-direct {v7, v4, v6, v8}, Lq63;-><init>(ILq63;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object v6, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->Companion:Lum3;

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    const-class v6, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 75
    .line 76
    invoke-static {v7, v6, v3}, Lw14;->b(Lq63;Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 81
    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->isValid()Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-ne v7, v3, :cond_3

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move-object v6, v2

    .line 92
    :goto_2
    if-nez v6, :cond_4

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    sget-object v0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->Companion:Lnm3;

    .line 100
    .line 101
    new-instance v4, Lou;

    .line 102
    .line 103
    const/4 v6, 0x7

    .line 104
    invoke-direct {v4, v6}, Lou;-><init>(I)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v4}, Lnm3;->a(Lnm3;Lmt3;)Lym1;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v5, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-nez v4, :cond_6

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_6
    :goto_3
    move-object v0, v2

    .line 123
    :goto_4
    if-eqz v0, :cond_8

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_7

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_7
    iput-boolean v3, p0, Ldv;->b:Z

    .line 133
    .line 134
    new-instance p0, Lik6;

    .line 135
    .line 136
    sget-object v2, Lhk6;->Success:Lhk6;

    .line 137
    .line 138
    const/16 v3, 0xc

    .line 139
    .line 140
    invoke-direct {p0, v2, v0, v1, v3}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 141
    .line 142
    .line 143
    return-object p0

    .line 144
    :cond_8
    :goto_5
    new-instance p0, Lik6;

    .line 145
    .line 146
    sget-object v0, Lhk6;->Empty:Lhk6;

    .line 147
    .line 148
    const/16 v3, 0xe

    .line 149
    .line 150
    invoke-direct {p0, v0, v2, v1, v3}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 151
    .line 152
    .line 153
    return-object p0
.end method

.method public final onFolderEvent(Lmm3;)V
    .locals 2
    .annotation runtime Lqr7;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lmm3;->a:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "onFolderEvent: Updating item ["

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "]"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Ldv;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ldv;->b(Ljava/lang/String;)Ljl0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {v0, v1, v1}, Lorg/swiftapps/swiftbackup/folders/data/a;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;ZZ)Lkj3;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lkj3;->h()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ldv;->l(Ljl0;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0, p1}, Ldv;->o(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
