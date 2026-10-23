.class public final synthetic Leh2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Leh2;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Leh2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Leh2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Leh2;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Leh2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Leh2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lji7;

    .line 13
    .line 14
    check-cast v2, Ljava/lang/String;

    .line 15
    .line 16
    check-cast p1, Lwm2;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0, v2}, Lji7;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p1, p0}, Lwm2;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-static {v0, p1}, Lel1;->N0(ILjava/util/List;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lp73;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {v1, p0}, Log1;->h(Lp73;Ljava/lang/String;)Lpg1;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    move-object p0, v0

    .line 68
    const-string p1, "SmbService"

    .line 69
    .line 70
    const-string v0, "list"

    .line 71
    .line 72
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 76
    .line 77
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string p1, "list: "

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const/4 v5, 0x4

    .line 88
    const/4 v6, 0x0

    .line 89
    const-string v2, "SmbService"

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lov2;->a:Lov2;

    .line 96
    .line 97
    :cond_0
    return-object v0

    .line 98
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/shortcuts/ShortcutsActivity;

    .line 99
    .line 100
    check-cast v2, Llh6;

    .line 101
    .line 102
    check-cast p1, Lry5;

    .line 103
    .line 104
    sget v0, Lorg/swiftapps/swiftbackup/shortcuts/ShortcutsActivity;->P:I

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 117
    .line 118
    iget-object p1, v2, Llh6;->a:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;

    .line 121
    .line 122
    new-instance v0, Le7;

    .line 123
    .line 124
    const/16 v2, 0x18

    .line 125
    .line 126
    invoke-direct {v0, p0, v2}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    const/4 p0, 0x1

    .line 130
    invoke-static {p0, p1, v0}, Lorg/swiftapps/swiftbackup/home/schedule/a;->b(ZLorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;Lmt3;)V

    .line 131
    .line 132
    .line 133
    :goto_1
    return-object v1

    .line 134
    :pswitch_1
    check-cast p0, Lc57;

    .line 135
    .line 136
    check-cast v2, Lj57;

    .line 137
    .line 138
    check-cast p1, Ljava/util/Set;

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lc57;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 148
    .line 149
    iget-object p1, v2, Lj57;->o:Lu10;

    .line 150
    .line 151
    if-eqz p1, :cond_2

    .line 152
    .line 153
    invoke-virtual {p1, p0}, Lu10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    :cond_2
    return-object v1

    .line 157
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 158
    .line 159
    move-object v0, v2

    .line 160
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 161
    .line 162
    check-cast p1, Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    sget v2, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->T:I

    .line 168
    .line 169
    sget-object v2, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/settings/b;->d(Ljava/lang/Integer;)I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    const/4 v6, 0x5

    .line 183
    const/4 v7, 0x0

    .line 184
    const/4 v3, 0x0

    .line 185
    const/4 v5, 0x0

    .line 186
    move-object v2, p0

    .line 187
    invoke-static/range {v2 .. v7}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->copy$default(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->P()Lorg/swiftapps/swiftbackup/settings/k;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1, p0}, Lorg/swiftapps/swiftbackup/settings/k;->k(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V

    .line 196
    .line 197
    .line 198
    return-object v1

    .line 199
    :pswitch_3
    check-cast p0, Lqj2;

    .line 200
    .line 201
    check-cast v2, Lzj2;

    .line 202
    .line 203
    move-object v4, p1

    .line 204
    check-cast v4, Landroid/view/View;

    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    iget-object v3, p0, Lqj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 210
    .line 211
    sget-object v5, Liu;->EXPANSION:Liu;

    .line 212
    .line 213
    iget-object p0, v2, Lzj2;->a:Liz4;

    .line 214
    .line 215
    invoke-virtual {p0}, Liz4;->getBackup()Lgm;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    iget-object v6, p0, Lgm;->a:Lhk;

    .line 220
    .line 221
    const/4 v7, 0x0

    .line 222
    const/4 v8, 0x0

    .line 223
    invoke-virtual/range {v3 .. v8}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->c0(Landroid/view/View;Liu;Lhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    return-object v1

    .line 227
    :pswitch_4
    check-cast p0, Lpj2;

    .line 228
    .line 229
    check-cast v2, Lwj2;

    .line 230
    .line 231
    move-object v4, p1

    .line 232
    check-cast v4, Landroid/view/View;

    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    iget-object v3, p0, Lpj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 238
    .line 239
    sget-object v5, Liu;->APP:Liu;

    .line 240
    .line 241
    iget-object v7, v2, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 242
    .line 243
    const/4 v8, 0x0

    .line 244
    const/4 v6, 0x0

    .line 245
    invoke-virtual/range {v3 .. v8}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->c0(Landroid/view/View;Liu;Lhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-object v1

    .line 249
    :pswitch_5
    check-cast p0, Lfh2;

    .line 250
    .line 251
    check-cast v2, Lkb2;

    .line 252
    .line 253
    check-cast p1, Ljava/lang/Boolean;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-nez p1, :cond_3

    .line 260
    .line 261
    iget-object p0, p0, Lfh2;->e:Lio1;

    .line 262
    .line 263
    new-instance p1, Lcl;

    .line 264
    .line 265
    const/16 v0, 0xa

    .line 266
    .line 267
    invoke-direct {p1, v0}, Lcl;-><init>(I)V

    .line 268
    .line 269
    .line 270
    new-instance v0, Lbk;

    .line 271
    .line 272
    const/16 v3, 0x10

    .line 273
    .line 274
    invoke-direct {v0, v2, v3}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 275
    .line 276
    .line 277
    const v2, 0x7f1301f7

    .line 278
    .line 279
    .line 280
    invoke-static {p0, v2, p1, v0}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 281
    .line 282
    .line 283
    :cond_3
    return-object v1

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
