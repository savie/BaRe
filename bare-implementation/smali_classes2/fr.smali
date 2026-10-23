.class public final synthetic Lfr;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lfr;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lfr;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lfr;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget v0, p0, Lfr;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lfr;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lfr;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lj57;

    .line 13
    .line 14
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 15
    .line 16
    iget-object p0, p0, Lj57;->m:Lm37;

    .line 17
    .line 18
    iget-object p1, v3, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->q:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 19
    .line 20
    instance-of v0, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    instance-of v0, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v0, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    instance-of v0, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    instance-of v0, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    const/4 v1, 0x3

    .line 47
    goto :goto_0

    .line 48
    :cond_4
    instance-of v0, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    instance-of v0, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    instance-of p1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 59
    .line 60
    if-eqz p1, :cond_7

    .line 61
    .line 62
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    sget p1, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->P:I

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, Landroid/content/Intent;

    .line 72
    .line 73
    const-class v2, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;

    .line 74
    .line 75
    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .line 77
    .line 78
    const-string p1, "request_code"

    .line 79
    .line 80
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/o;->startActivityForResult(Landroid/content/Intent;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_7
    invoke-static {}, Lq;->j()V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-void

    .line 95
    :pswitch_0
    check-cast p0, Lq54;

    .line 96
    .line 97
    check-cast v3, Lzc6;

    .line 98
    .line 99
    const/16 p1, 0xdff

    .line 100
    .line 101
    invoke-static {v3, v2, v2, p1}, Lzc6;->q(Lzc6;ZZI)Lzc6;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lq54;->r(Lzc6;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_1
    check-cast p0, Lln3;

    .line 110
    .line 111
    check-cast v3, Ljava/lang/String;

    .line 112
    .line 113
    iget-object p0, p0, Lln3;->T:Lmt3;

    .line 114
    .line 115
    invoke-interface {p0, v3}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_2
    check-cast p0, Lqj2;

    .line 120
    .line 121
    check-cast v3, Lzj2;

    .line 122
    .line 123
    iget-object v6, p0, Lqj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 124
    .line 125
    iget-object p1, v6, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->S:Lgv7;

    .line 126
    .line 127
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    move-object v5, p1

    .line 132
    check-cast v5, Lxi0;

    .line 133
    .line 134
    iget-object v9, v3, Lzj2;->a:Liz4;

    .line 135
    .line 136
    iget-object p0, p0, Lqj2;->b:Lmk2;

    .line 137
    .line 138
    invoke-virtual {p0}, Lmk2;->k()Lji;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lji;->isInstalled()Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    invoke-virtual {p0}, Lmk2;->k()Lji;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p0}, Lji;->isBundled()Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    new-instance v10, Lcd;

    .line 155
    .line 156
    invoke-virtual {v9}, Liz4;->getBackup()Lgm;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    iget-object p0, p0, Lgm;->a:Lhk;

    .line 161
    .line 162
    const/4 p1, 0x4

    .line 163
    invoke-direct {v10, p1, p0, v1}, Lcd;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget-object v11, v6, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->a0:Lfu;

    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    if-nez v8, :cond_8

    .line 175
    .line 176
    invoke-virtual {v9}, Liz4;->hasApk()Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    if-nez p0, :cond_8

    .line 181
    .line 182
    new-instance p0, Lnj0;

    .line 183
    .line 184
    invoke-direct {p0}, Lnj0;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, p0, v2, v10, v11}, Lxi0;->f(Lpj0;ZLcd;Lri0;)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_8
    sget-object p0, Lzn4;->a:Lzn4;

    .line 192
    .line 193
    new-instance v4, Lwi0;

    .line 194
    .line 195
    const/4 v12, 0x0

    .line 196
    invoke-direct/range {v4 .. v12}, Lwi0;-><init>(Lxi0;Landroid/app/Activity;ZZLiz4;Lcd;Lri0;Ljv1;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v1, v4}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 200
    .line 201
    .line 202
    :goto_2
    return-void

    .line 203
    :pswitch_3
    check-cast p0, Lql1;

    .line 204
    .line 205
    check-cast v3, Lsl1;

    .line 206
    .line 207
    iget-object p1, p0, Lql1;->g:Lsl1;

    .line 208
    .line 209
    invoke-static {p1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_9

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_9
    iput-object v3, p0, Lql1;->g:Lsl1;

    .line 217
    .line 218
    invoke-virtual {p0}, Lhg6;->e()V

    .line 219
    .line 220
    .line 221
    iget-object p0, p0, Lql1;->h:Le7;

    .line 222
    .line 223
    if-eqz p0, :cond_a

    .line 224
    .line 225
    invoke-virtual {p0, v3}, Le7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    :cond_a
    :goto_3
    return-void

    .line 229
    :pswitch_4
    check-cast p0, Lgg1;

    .line 230
    .line 231
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 232
    .line 233
    invoke-virtual {p0}, Lgg1;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    new-instance v2, Lbk;

    .line 246
    .line 247
    const/16 v3, 0xa

    .line 248
    .line 249
    invoke-direct {v2, p0, v3}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 250
    .line 251
    .line 252
    invoke-static {p1, v0, v1, v2}, Lorg/swiftapps/swiftbackup/common/Const;->I(Lzm;Ljava/lang/String;Ljava/lang/String;Lbt3;)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 257
    .line 258
    check-cast v3, Ljava/util/ArrayList;

    .line 259
    .line 260
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 261
    .line 262
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->T:I

    .line 263
    .line 264
    const/4 p1, 0x1

    .line 265
    invoke-static {p0, v3, p1}, Lzm5;->D(Landroid/app/Activity;Ljava/util/ArrayList;Z)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :pswitch_6
    check-cast p0, Lq01;

    .line 270
    .line 271
    check-cast v3, Lrz0;

    .line 272
    .line 273
    iget-object p0, p0, Lq01;->l:Lqt3;

    .line 274
    .line 275
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-interface {p0, p1, v3}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :pswitch_7
    check-cast p0, Ltr;

    .line 283
    .line 284
    check-cast v3, Lji;

    .line 285
    .line 286
    iget-object p1, p0, Ltr;->z:Lqt3;

    .line 287
    .line 288
    iget-object v0, p0, Ltr;->T:Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 289
    .line 290
    invoke-interface {p1, v3, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v3}, Ltr;->t(Lji;)V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
