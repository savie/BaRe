.class public final synthetic Lu20;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lu20;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lu20;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lu20;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lu20;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lu20;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lu20;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lu20;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lu20;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    check-cast v3, Lt22;

    .line 17
    .line 18
    check-cast v2, Lwv3;

    .line 19
    .line 20
    invoke-static {p0, v3, v2}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->$r8$lambda$udknnXJUkCi6PtqNHxZRjz-MAXc(Ljava/util/concurrent/Executor;Lt22;Lwv3;)Lbe8;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    check-cast p0, Lkk3;

    .line 26
    .line 27
    check-cast v3, Lto3;

    .line 28
    .line 29
    check-cast v2, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 36
    .line 37
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const v6, 0x7f1301f8

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lqo0;->i(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Ljk3;->a:[I

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    aget v0, v0, v3

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    if-eq v0, v3, :cond_2

    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    if-ne v0, v3, :cond_1

    .line 67
    .line 68
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 69
    .line 70
    iget-object v7, p0, La55;->b:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->toDisplayString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v3, "Deleting cloud backup: "

    .line 77
    .line 78
    invoke-static {v3, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    const/4 v10, 0x4

    .line 83
    const/4 v11, 0x0

    .line 84
    const/4 v9, 0x0

    .line 85
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lsf1;->g:Lsf1;

    .line 89
    .line 90
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v0, v3}, Ldv;->d(Ljava/lang/String;)Ljl0;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 99
    .line 100
    if-eqz v0, :cond_0

    .line 101
    .line 102
    :try_start_0
    invoke-static {v0}, Lal3;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V

    .line 103
    .line 104
    .line 105
    iget-object v7, p0, La55;->b:Ljava/lang/String;

    .line 106
    .line 107
    const-string v8, "Deleting cloud backup successful"

    .line 108
    .line 109
    const/4 v10, 0x4

    .line 110
    const/4 v11, 0x0

    .line 111
    const/4 v9, 0x0

    .line 112
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    move-object v9, v0

    .line 118
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 119
    .line 120
    iget-object v7, p0, La55;->b:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->toDisplayString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v2, "Error deleting cloud backup: "

    .line 127
    .line 128
    invoke-static {v2, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    const/16 v11, 0x8

    .line 133
    .line 134
    const/4 v12, 0x0

    .line 135
    const/4 v10, 0x0

    .line 136
    invoke-static/range {v6 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    iget-object v7, p0, La55;->b:Ljava/lang/String;

    .line 141
    .line 142
    const/4 v10, 0x4

    .line 143
    const/4 v11, 0x0

    .line 144
    const-string v8, "Cloud backup null, nothing to delete..."

    .line 145
    .line 146
    const/4 v9, 0x0

    .line 147
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 152
    .line 153
    .line 154
    const/4 v1, 0x0

    .line 155
    goto :goto_1

    .line 156
    :cond_2
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 157
    .line 158
    iget-object v7, p0, La55;->b:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->toDisplayString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v3, "Deleting local backup: "

    .line 165
    .line 166
    invoke-static {v3, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    const/4 v10, 0x4

    .line 171
    const/4 v11, 0x0

    .line 172
    const/4 v9, 0x0

    .line 173
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    const/4 v0, 0x0

    .line 177
    :try_start_1
    invoke-static {v2, v0}, Lal3;->b(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Z)V

    .line 178
    .line 179
    .line 180
    iget-object v7, p0, La55;->b:Ljava/lang/String;

    .line 181
    .line 182
    const-string v8, "Deleting local backup successful"

    .line 183
    .line 184
    const/4 v10, 0x4

    .line 185
    const/4 v11, 0x0

    .line 186
    const/4 v9, 0x0

    .line 187
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :catch_1
    move-exception v0

    .line 192
    move-object v9, v0

    .line 193
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 194
    .line 195
    iget-object v7, p0, La55;->b:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->toDisplayString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const-string v2, "Error deleting local backup: "

    .line 202
    .line 203
    invoke-static {v2, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    const/16 v11, 0x8

    .line 208
    .line 209
    const/4 v12, 0x0

    .line 210
    const/4 v10, 0x0

    .line 211
    invoke-static/range {v6 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :goto_0
    const-wide/16 v2, 0x1f4

    .line 215
    .line 216
    invoke-static {v4, v5, v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->m(JJ)J

    .line 217
    .line 218
    .line 219
    move-result-wide v2

    .line 220
    invoke-static {v2, v3}, Lai8;->o(J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Lqo0;->f()V

    .line 224
    .line 225
    .line 226
    :goto_1
    return-object v1

    .line 227
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 228
    .line 229
    check-cast v3, Ljz;

    .line 230
    .line 231
    check-cast v2, Lry7;

    .line 232
    .line 233
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {p0, v3, v2}, Lmk2;->l(Lkz;Lty7;)V

    .line 238
    .line 239
    .line 240
    return-object v1

    .line 241
    :pswitch_2
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 242
    .line 243
    check-cast v3, Lt22;

    .line 244
    .line 245
    check-cast v2, Llh6;

    .line 246
    .line 247
    invoke-static {p0, v3, v2}, Landroidx/credentials/playservices/controllers/blockstore/createrestorecredential/CredentialProviderCreateRestoreCredentialController;->$r8$lambda$m3eMPmtTcPuEZFWq6z54Iqoh7qc(Ljava/util/concurrent/Executor;Lt22;Llh6;)Lbe8;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    return-object p0

    .line 252
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 253
    .line 254
    check-cast v3, Ljava/util/ArrayList;

    .line 255
    .line 256
    check-cast v2, Lky7;

    .line 257
    .line 258
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->m0:I

    .line 259
    .line 260
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->i0()Ln30;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-virtual {p0, v3, v2}, Ln30;->k(Ljava/util/ArrayList;Lty7;)V

    .line 265
    .line 266
    .line 267
    return-object v1

    .line 268
    nop

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
