.class public final synthetic Lik3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lkk3;

.field public final synthetic b:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lkk3;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lik3;->a:Lkk3;

    .line 5
    .line 6
    iput-object p2, p0, Lik3;->b:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 7
    .line 8
    iput-boolean p3, p0, Lik3;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    iget-object v6, p0, Lik3;->a:Lkk3;

    .line 4
    .line 5
    iget-object v1, v6, La55;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v7, p0, Lik3;->b:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 8
    .line 9
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v4, "Updating folder setup with id "

    .line 16
    .line 17
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ": "

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v4, 0x4

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->isValid()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x0

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    move-object v9, v7

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v9, v2

    .line 51
    :goto_0
    if-nez v9, :cond_1

    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_1
    const/4 v1, 0x0

    .line 56
    iget-boolean p0, p0, Lik3;->c:Z

    .line 57
    .line 58
    invoke-static {v9, v1, p0}, Lorg/swiftapps/swiftbackup/folders/data/a;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;ZZ)Lkj3;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lkj3;->d()Lq63;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lq63;->k()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-virtual {p0}, Lkj3;->h()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    if-eqz v8, :cond_3

    .line 77
    .line 78
    const/4 v12, 0x6

    .line 79
    const/4 v13, 0x0

    .line 80
    const/4 v10, 0x0

    .line 81
    const/4 v11, 0x0

    .line 82
    invoke-static/range {v8 .. v13}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->copy$default(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;Ljava/util/Map;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v8, v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_2

    .line 91
    .line 92
    iget-object v1, v6, La55;->b:Ljava/lang/String;

    .line 93
    .line 94
    const/4 v4, 0x4

    .line 95
    const/4 v5, 0x0

    .line 96
    const-string v2, "Updating folder setup locally..."

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lkj3;->d()Lq63;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {v7, p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->writeToFile(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 107
    .line 108
    .line 109
    :cond_2
    sget-object p0, Lpz4;->g:Lpz4;

    .line 110
    .line 111
    invoke-virtual {p0, v7}, Ldv;->l(Ljl0;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {p0}, Lkj3;->d()Lq63;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const-string v0, "Unable to read existing metadata at "

    .line 120
    .line 121
    invoke-static {p0, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-object v2

    .line 129
    :cond_4
    :goto_1
    sget-object p0, Lsf1;->g:Lsf1;

    .line 130
    .line 131
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p0, v1}, Ldv;->d(Ljava/lang/String;)Ljl0;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    move-object v8, p0

    .line 140
    check-cast v8, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 141
    .line 142
    if-eqz v8, :cond_6

    .line 143
    .line 144
    const/4 v12, 0x6

    .line 145
    const/4 v13, 0x0

    .line 146
    const/4 v10, 0x0

    .line 147
    const/4 v11, 0x0

    .line 148
    invoke-static/range {v8 .. v13}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->copy$default(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;Ljava/util/Map;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {v8, p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_6

    .line 157
    .line 158
    iget-object v1, v6, La55;->b:Ljava/lang/String;

    .line 159
    .line 160
    const/4 v4, 0x4

    .line 161
    const/4 v5, 0x0

    .line 162
    const-string v2, "Updating folder setup in cloud..."

    .line 163
    .line 164
    const/4 v3, 0x0

    .line 165
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :try_start_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->writeToFirebaseNode()Laf3;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    iget-boolean p0, p0, Laf3;->a:Z

    .line 173
    .line 174
    if-eqz p0, :cond_5

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 178
    .line 179
    const-string v0, "Check failed."

    .line 180
    .line 181
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    move-object p0, v0

    .line 187
    move-object v10, p0

    .line 188
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 189
    .line 190
    iget-object v8, v6, La55;->b:Ljava/lang/String;

    .line 191
    .line 192
    const/16 v12, 0x8

    .line 193
    .line 194
    const/4 v13, 0x0

    .line 195
    const-string v9, "Failed to update folder metadata on firebase"

    .line 196
    .line 197
    const/4 v11, 0x0

    .line 198
    invoke-static/range {v7 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_6
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 202
    .line 203
    return-object p0
.end method
