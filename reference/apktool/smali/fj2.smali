.class public final synthetic Lfj2;
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

    .line 12
    iput p1, p0, Lfj2;->a:I

    iput-object p2, p0, Lfj2;->b:Ljava/lang/Object;

    iput-object p3, p0, Lfj2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lml3;Llj3;Lul3;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lfj2;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lfj2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lfj2;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lfj2;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lfj2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lfj2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lhj7;

    .line 13
    .line 14
    check-cast v2, Lfj7;

    .line 15
    .line 16
    iget-object p1, v2, Lfj7;->a:Lsx;

    .line 17
    .line 18
    sget-object v3, Lmp6;->a:Lmp6;

    .line 19
    .line 20
    invoke-static {}, Lmp6;->f()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    sget-object v3, Lsx;->DateUsed:Lsx;

    .line 27
    .line 28
    if-ne p1, v3, :cond_1

    .line 29
    .line 30
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 31
    .line 32
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-string v6, "appops"

    .line 49
    .line 50
    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/app/AppOpsManager;

    .line 55
    .line 56
    const-string v6, "android:get_usage_stats"

    .line 57
    .line 58
    invoke-virtual {v3, v6, v4, v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object p0, p0, Lhj7;->l:Lil0;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 71
    .line 72
    const-string v0, "android.settings.USAGE_ACCESS_SETTINGS"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_5

    .line 81
    :catch_0
    move-exception v0

    .line 82
    move-object p0, v0

    .line 83
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string p1, "No activity found for android.settings.USAGE_ACCESS_SETTINGS. Error="

    .line 90
    .line 91
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const/4 v4, 0x4

    .line 96
    const/4 v5, 0x0

    .line 97
    const-string v1, "UsageStatsUtil"

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_1
    :goto_0
    iget-boolean v3, v2, Lfj7;->d:Z

    .line 105
    .line 106
    if-eqz v3, :cond_2

    .line 107
    .line 108
    iget-boolean p1, v2, Lfj7;->e:Z

    .line 109
    .line 110
    xor-int/2addr p1, v0

    .line 111
    iput-boolean p1, v2, Lfj7;->e:Z

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_2
    iget-object v2, p0, Lgm7;->e:Lfm7;

    .line 115
    .line 116
    iget-object v2, v2, Lfm7;->a:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Lfj7;

    .line 133
    .line 134
    iget-object v4, v3, Lfj7;->a:Lsx;

    .line 135
    .line 136
    if-ne v4, p1, :cond_3

    .line 137
    .line 138
    move v5, v0

    .line 139
    goto :goto_2

    .line 140
    :cond_3
    move v5, v1

    .line 141
    :goto_2
    iput-boolean v5, v3, Lfj7;->d:Z

    .line 142
    .line 143
    sget-object v5, Lsx;->Name:Lsx;

    .line 144
    .line 145
    if-ne v4, v5, :cond_4

    .line 146
    .line 147
    move v4, v0

    .line 148
    goto :goto_3

    .line 149
    :cond_4
    move v4, v1

    .line 150
    :goto_3
    iput-boolean v4, v3, Lfj7;->e:Z

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lhg6;->e()V

    .line 154
    .line 155
    .line 156
    :goto_5
    return-void

    .line 157
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 158
    .line 159
    check-cast v2, Ljava/util/ArrayList;

    .line 160
    .line 161
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 162
    .line 163
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;->T:I

    .line 164
    .line 165
    invoke-static {p0, v2, v1}, Lpe4;->D(Landroid/app/Activity;Ljava/util/ArrayList;Z)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;

    .line 170
    .line 171
    check-cast v2, Lnt4;

    .line 172
    .line 173
    iget-object p1, v2, Lnt4;->a:Ljava/lang/String;

    .line 174
    .line 175
    iget-object v0, v2, Lnt4;->b:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const/16 v1, 0x8

    .line 186
    .line 187
    invoke-static {p0, p1, v0, v1}, Lb05;->l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_2
    check-cast p0, Lml3;

    .line 192
    .line 193
    check-cast v2, Lul3;

    .line 194
    .line 195
    iget-object p0, p0, Lml3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 196
    .line 197
    const p1, 0x7f1300c0

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    iget-object p0, v2, Lul3;->a:Lkj3;

    .line 208
    .line 209
    invoke-virtual {p0}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :pswitch_3
    check-cast p0, Lgj2;

    .line 222
    .line 223
    check-cast v2, Lji;

    .line 224
    .line 225
    iget-object p0, p0, Lgj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 226
    .line 227
    invoke-virtual {v2}, Lji;->getPackageName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    new-instance v1, Landroid/content/Intent;

    .line 235
    .line 236
    const-string v2, "android.intent.action.DELETE"

    .line 237
    .line 238
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string v2, "package:"

    .line 242
    .line 243
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 252
    .line 253
    .line 254
    new-instance p1, Ld11;

    .line 255
    .line 256
    const/16 v2, 0xe

    .line 257
    .line 258
    invoke-direct {p1, v2, p0, v1}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    const/16 p0, 0xa

    .line 262
    .line 263
    const-string v1, "Util"

    .line 264
    .line 265
    const/4 v2, 0x0

    .line 266
    invoke-static {v1, v2, v0, p1, p0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
