.class public final Lpa7;
.super Lfm0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lt36;


# instance fields
.field public final G:Lgv7;

.field public final H:Lgv7;

.field public final I:Lgv7;

.field public final J:Lgv7;

.field public final K:Landroid/os/Handler;

.field public L:Li41;

.field public M:Z

.field public final p:Z

.field public final q:Lgv7;

.field public final r:Lgv7;

.field public final t:Lgv7;

.field public final x:Lgv7;

.field public final y:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lfm0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lpa7;->p:Z

    .line 6
    .line 7
    new-instance v0, Lma7;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1}, Lma7;-><init>(Lpa7;I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lgv7;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lpa7;->q:Lgv7;

    .line 19
    .line 20
    new-instance v0, Lmo3;

    .line 21
    .line 22
    const/16 v1, 0xe

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lmo3;-><init>(Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lgv7;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lpa7;->r:Lgv7;

    .line 33
    .line 34
    new-instance v0, Lxq4;

    .line 35
    .line 36
    const/16 v1, 0xe

    .line 37
    .line 38
    invoke-direct {v0, p0, v1}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lgv7;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lpa7;->t:Lgv7;

    .line 47
    .line 48
    new-instance v0, Las4;

    .line 49
    .line 50
    const/16 v1, 0xf

    .line 51
    .line 52
    invoke-direct {v0, p0, v1}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lgv7;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lpr4;

    .line 61
    .line 62
    const/16 v1, 0xb

    .line 63
    .line 64
    invoke-direct {v0, p0, v1}, Lpr4;-><init>(Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lgv7;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lpa7;->x:Lgv7;

    .line 73
    .line 74
    new-instance v0, Lyi5;

    .line 75
    .line 76
    const/4 v1, 0x7

    .line 77
    invoke-direct {v0, p0, v1}, Lyi5;-><init>(Ljava/lang/Object;I)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lgv7;

    .line 81
    .line 82
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lpa7;->y:Lgv7;

    .line 86
    .line 87
    new-instance v0, Lto5;

    .line 88
    .line 89
    const/16 v1, 0x8

    .line 90
    .line 91
    invoke-direct {v0, p0, v1}, Lto5;-><init>(Ljava/lang/Object;I)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lgv7;

    .line 95
    .line 96
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 97
    .line 98
    .line 99
    iput-object v1, p0, Lpa7;->G:Lgv7;

    .line 100
    .line 101
    new-instance v0, Lhs4;

    .line 102
    .line 103
    const/16 v1, 0xc

    .line 104
    .line 105
    invoke-direct {v0, p0, v1}, Lhs4;-><init>(Ljava/lang/Object;I)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Lgv7;

    .line 109
    .line 110
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 111
    .line 112
    .line 113
    iput-object v1, p0, Lpa7;->H:Lgv7;

    .line 114
    .line 115
    new-instance v0, Lma7;

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    invoke-direct {v0, p0, v1}, Lma7;-><init>(Lpa7;I)V

    .line 119
    .line 120
    .line 121
    new-instance v1, Lgv7;

    .line 122
    .line 123
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 124
    .line 125
    .line 126
    iput-object v1, p0, Lpa7;->I:Lgv7;

    .line 127
    .line 128
    new-instance v0, Lno5;

    .line 129
    .line 130
    const/4 v1, 0x5

    .line 131
    invoke-direct {v0, p0, v1}, Lno5;-><init>(Ljava/lang/Object;I)V

    .line 132
    .line 133
    .line 134
    new-instance v1, Lgv7;

    .line 135
    .line 136
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 137
    .line 138
    .line 139
    iput-object v1, p0, Lpa7;->J:Lgv7;

    .line 140
    .line 141
    new-instance v0, Landroid/os/Handler;

    .line 142
    .line 143
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 148
    .line 149
    .line 150
    iput-object v0, p0, Lpa7;->K:Landroid/os/Handler;

    .line 151
    .line 152
    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 8

    .line 1
    iget-object p1, p1, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_25

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x2

    .line 11
    const-string v3, "editor"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const-string v5, "application/json"

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    sparse-switch v1, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :sswitch_0
    const-string v1, "battery_opt"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_0
    sget-object p1, Lzn4;->a:Lzn4;

    .line 33
    .line 34
    new-instance p1, Lff1;

    .line 35
    .line 36
    invoke-direct {p1, p0, v6, v2}, Lff1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v6, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 40
    .line 41
    .line 42
    return v0

    .line 43
    :sswitch_1
    const-string v1, "call_backups"

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->R:I

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const v1, 0x7f1300e6

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x3

    .line 70
    invoke-static {p1, v1, p0}, Ljb9;->g0(Landroid/app/Activity;ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return v0

    .line 74
    :sswitch_2
    const-string v1, "app_theme"

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 89
    .line 90
    if-eqz p1, :cond_25

    .line 91
    .line 92
    new-instance v1, Lhj;

    .line 93
    .line 94
    const/16 v2, 0x19

    .line 95
    .line 96
    invoke-direct {v1, p0, v2}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lh28;->getEntries()Ljx2;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {p0}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 108
    .line 109
    const/16 v3, 0x1c

    .line 110
    .line 111
    if-ge v2, v3, :cond_3

    .line 112
    .line 113
    sget-object v2, Lh28;->SYSTEM_DEFAULT:Lh28;

    .line 114
    .line 115
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 119
    .line 120
    const/16 v3, 0xa

    .line 121
    .line 122
    invoke-static {p0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_4

    .line 138
    .line 139
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    check-cast v4, Lh28;

    .line 144
    .line 145
    invoke-virtual {v4}, Lh28;->asString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_4
    new-array v3, v0, [Ljava/lang/CharSequence;

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, [Ljava/lang/CharSequence;

    .line 160
    .line 161
    sget-object v3, Lh28;->Companion:Lf28;

    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-static {}, Lf28;->b()Lh28;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    new-instance v4, Lhv1;

    .line 175
    .line 176
    const v5, 0x7f140160

    .line 177
    .line 178
    .line 179
    invoke-direct {v4, p1, v5}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 180
    .line 181
    .line 182
    new-instance v7, Ls35;

    .line 183
    .line 184
    invoke-direct {v7, p1, v5, v4, v6}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 185
    .line 186
    .line 187
    const v4, 0x7f130062

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7, v4}, Lv75;->v(I)V

    .line 191
    .line 192
    .line 193
    new-instance v4, Lj28;

    .line 194
    .line 195
    invoke-direct {v4, v3, p0, v1, p1}, Lj28;-><init>(ILjava/util/ArrayList;Lhj;Lorg/swiftapps/swiftbackup/settings/SettingsActivity;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7, v2, v3, v4}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7}, Ls35;->m()Lwa;

    .line 202
    .line 203
    .line 204
    return v0

    .line 205
    :sswitch_3
    const-string v1, "export_settings"

    .line 206
    .line 207
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-nez p1, :cond_5

    .line 212
    .line 213
    goto/16 :goto_4

    .line 214
    .line 215
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 220
    .line 221
    if-eqz p0, :cond_25

    .line 222
    .line 223
    :try_start_0
    sget-object p1, Ld45;->b:Ld45;

    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    if-eqz p1, :cond_6

    .line 233
    .line 234
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 239
    .line 240
    .line 241
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_1

    .line 243
    :catch_0
    :cond_6
    move-object p1, v6

    .line 244
    :goto_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 245
    .line 246
    invoke-static {p1, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-nez p1, :cond_7

    .line 251
    .line 252
    goto/16 :goto_4

    .line 253
    .line 254
    :cond_7
    :try_start_1
    sget-object p1, Ld45;->b:Ld45;

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    if-eqz p1, :cond_8

    .line 264
    .line 265
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 270
    .line 271
    .line 272
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    :catch_1
    :cond_8
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 274
    .line 275
    invoke-static {v6, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-nez p1, :cond_9

    .line 280
    .line 281
    goto/16 :goto_4

    .line 282
    .line 283
    :cond_9
    new-instance p1, Lnk;

    .line 284
    .line 285
    const/16 v1, 0xc

    .line 286
    .line 287
    invoke-direct {p1, v1}, Lnk;-><init>(I)V

    .line 288
    .line 289
    .line 290
    const-string v1, "swift_backup_settings.json"

    .line 291
    .line 292
    invoke-virtual {p0, v5, v1, p1}, Ler6;->V(Ljava/lang/String;Ljava/lang/String;Lmt3;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_4

    .line 296
    .line 297
    :sswitch_4
    const-string v1, "swiftlogger"

    .line 298
    .line 299
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-nez p1, :cond_a

    .line 304
    .line 305
    goto/16 :goto_4

    .line 306
    .line 307
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    const-class p1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 312
    .line 313
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .line 315
    .line 316
    return v0

    .line 317
    :sswitch_5
    const-string v1, "contact"

    .line 318
    .line 319
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-nez p1, :cond_b

    .line 324
    .line 325
    goto/16 :goto_4

    .line 326
    .line 327
    :cond_b
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->R:I

    .line 328
    .line 329
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    const v1, 0x7f1301bb

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, v1}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    const/4 v1, 0x5

    .line 344
    invoke-static {p1, v1, p0}, Ljb9;->g0(Landroid/app/Activity;ILjava/lang/String;)V

    .line 345
    .line 346
    .line 347
    return v0

    .line 348
    :sswitch_6
    const-string v1, "restart_app"

    .line 349
    .line 350
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    if-nez p1, :cond_c

    .line 355
    .line 356
    goto/16 :goto_4

    .line 357
    .line 358
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    new-instance p1, Ldl;

    .line 363
    .line 364
    const/16 v1, 0x12

    .line 365
    .line 366
    invoke-direct {p1, v1}, Ldl;-><init>(I)V

    .line 367
    .line 368
    .line 369
    const v1, 0x7f130458

    .line 370
    .line 371
    .line 372
    invoke-static {p0, v1, p1, v6}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 373
    .line 374
    .line 375
    return v0

    .line 376
    :sswitch_7
    const-string v1, "help_center"

    .line 377
    .line 378
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    if-nez p1, :cond_d

    .line 383
    .line 384
    goto/16 :goto_4

    .line 385
    .line 386
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    const-string p1, "https://www.swiftapps.org/help"

    .line 391
    .line 392
    invoke-static {p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->B(Landroid/content/Context;Ljava/lang/String;)Z

    .line 393
    .line 394
    .line 395
    return v0

    .line 396
    :sswitch_8
    const-string v1, "manage_space"

    .line 397
    .line 398
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result p1

    .line 402
    if-nez p1, :cond_e

    .line 403
    .line 404
    goto/16 :goto_4

    .line 405
    .line 406
    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    const-class p1, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 411
    .line 412
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    .line 414
    .line 415
    return v0

    .line 416
    :sswitch_9
    const-string v1, "cloud_backups"

    .line 417
    .line 418
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result p1

    .line 422
    if-nez p1, :cond_f

    .line 423
    .line 424
    goto/16 :goto_4

    .line 425
    .line 426
    :cond_f
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->R:I

    .line 427
    .line 428
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    const v1, 0x7f13010b

    .line 433
    .line 434
    .line 435
    invoke-virtual {p0, v1}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object p0

    .line 439
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    .line 441
    .line 442
    const/4 v1, 0x7

    .line 443
    invoke-static {p1, v1, p0}, Ljb9;->g0(Landroid/app/Activity;ILjava/lang/String;)V

    .line 444
    .line 445
    .line 446
    return v0

    .line 447
    :sswitch_a
    const-string v1, "import_settings"

    .line 448
    .line 449
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result p1

    .line 453
    if-nez p1, :cond_10

    .line 454
    .line 455
    goto/16 :goto_4

    .line 456
    .line 457
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 458
    .line 459
    .line 460
    move-result-object p0

    .line 461
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 462
    .line 463
    if-eqz p0, :cond_25

    .line 464
    .line 465
    :try_start_2
    sget-object p1, Ld45;->b:Ld45;

    .line 466
    .line 467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    if-eqz p1, :cond_11

    .line 475
    .line 476
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 477
    .line 478
    .line 479
    move-result p1

    .line 480
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 481
    .line 482
    .line 483
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 484
    goto :goto_2

    .line 485
    :catch_2
    :cond_11
    move-object p1, v6

    .line 486
    :goto_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 487
    .line 488
    invoke-static {p1, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result p1

    .line 492
    if-nez p1, :cond_12

    .line 493
    .line 494
    goto/16 :goto_4

    .line 495
    .line 496
    :cond_12
    :try_start_3
    sget-object p1, Ld45;->b:Ld45;

    .line 497
    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    if-eqz p1, :cond_13

    .line 506
    .line 507
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 508
    .line 509
    .line 510
    move-result p1

    .line 511
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 512
    .line 513
    .line 514
    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 515
    :catch_3
    :cond_13
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 516
    .line 517
    invoke-static {v6, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result p1

    .line 521
    if-nez p1, :cond_14

    .line 522
    .line 523
    goto/16 :goto_4

    .line 524
    .line 525
    :cond_14
    new-instance p1, Lhj;

    .line 526
    .line 527
    const/16 v1, 0x1a

    .line 528
    .line 529
    invoke-direct {p1, p0, v1}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {p0, v5, p1}, Ler6;->W(Ljava/lang/String;Lmt3;)V

    .line 533
    .line 534
    .line 535
    goto/16 :goto_4

    .line 536
    .line 537
    :sswitch_b
    const-string v1, "about"

    .line 538
    .line 539
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result p1

    .line 543
    if-nez p1, :cond_15

    .line 544
    .line 545
    goto/16 :goto_4

    .line 546
    .line 547
    :cond_15
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->R:I

    .line 548
    .line 549
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    const v1, 0x7f13001b

    .line 554
    .line 555
    .line 556
    invoke-virtual {p0, v1}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object p0

    .line 560
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    .line 562
    .line 563
    const/4 v1, 0x6

    .line 564
    invoke-static {p1, v1, p0}, Ljb9;->g0(Landroid/app/Activity;ILjava/lang/String;)V

    .line 565
    .line 566
    .line 567
    return v0

    .line 568
    :sswitch_c
    const-string v1, "labs"

    .line 569
    .line 570
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result p1

    .line 574
    if-nez p1, :cond_16

    .line 575
    .line 576
    goto/16 :goto_4

    .line 577
    .line 578
    :cond_16
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->R:I

    .line 579
    .line 580
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    const v1, 0x7f130551

    .line 585
    .line 586
    .line 587
    invoke-virtual {p0, v1}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object p0

    .line 591
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    const/4 v1, 0x4

    .line 595
    invoke-static {p1, v1, p0}, Ljb9;->g0(Landroid/app/Activity;ILjava/lang/String;)V

    .line 596
    .line 597
    .line 598
    return v0

    .line 599
    :sswitch_d
    const-string v1, "dynamic_colors"

    .line 600
    .line 601
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    move-result p1

    .line 605
    if-nez p1, :cond_17

    .line 606
    .line 607
    goto/16 :goto_4

    .line 608
    .line 609
    :cond_17
    iget-object p1, p0, Lpa7;->r:Lgv7;

    .line 610
    .line 611
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 616
    .line 617
    iget-boolean p1, p1, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 618
    .line 619
    sget-object v2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 620
    .line 621
    if-eqz v2, :cond_18

    .line 622
    .line 623
    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 624
    .line 625
    .line 626
    move-result-object p1

    .line 627
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 628
    .line 629
    .line 630
    invoke-virtual {p0, v0}, Lpa7;->q(Z)V

    .line 631
    .line 632
    .line 633
    return v0

    .line 634
    :cond_18
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    throw v6

    .line 638
    :sswitch_e
    const-string v1, "sms_backups"

    .line 639
    .line 640
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result p1

    .line 644
    if-nez p1, :cond_19

    .line 645
    .line 646
    goto/16 :goto_4

    .line 647
    .line 648
    :cond_19
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->R:I

    .line 649
    .line 650
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 651
    .line 652
    .line 653
    move-result-object p1

    .line 654
    const v1, 0x7f13034b

    .line 655
    .line 656
    .line 657
    invoke-virtual {p0, v1}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object p0

    .line 661
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 662
    .line 663
    .line 664
    invoke-static {p1, v2, p0}, Ljb9;->g0(Landroid/app/Activity;ILjava/lang/String;)V

    .line 665
    .line 666
    .line 667
    return v0

    .line 668
    :sswitch_f
    const-string v1, "manage_notifications"

    .line 669
    .line 670
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result p1

    .line 674
    if-nez p1, :cond_1a

    .line 675
    .line 676
    goto/16 :goto_4

    .line 677
    .line 678
    :cond_1a
    new-instance p1, Landroid/content/Intent;

    .line 679
    .line 680
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 681
    .line 682
    .line 683
    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    .line 684
    .line 685
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    .line 687
    .line 688
    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 689
    .line 690
    const-string v2, "org.swiftapps.swiftbackup"

    .line 691
    .line 692
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    .line 694
    .line 695
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 696
    .line 697
    .line 698
    move-result-object p0

    .line 699
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 700
    .line 701
    if-eqz p0, :cond_25

    .line 702
    .line 703
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 704
    .line 705
    .line 706
    goto/16 :goto_4

    .line 707
    .line 708
    :catch_4
    move-exception p1

    .line 709
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 710
    .line 711
    .line 712
    move-result-object p0

    .line 713
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 714
    .line 715
    .line 716
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object p1

    .line 720
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object p1

    .line 724
    sget-object v1, Lzn4;->a:Lzn4;

    .line 725
    .line 726
    invoke-static {p0, p1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    goto/16 :goto_4

    .line 730
    .line 731
    :sswitch_10
    const-string v1, "amoled_black_theme"

    .line 732
    .line 733
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-result p1

    .line 737
    if-nez p1, :cond_1b

    .line 738
    .line 739
    goto/16 :goto_4

    .line 740
    .line 741
    :cond_1b
    sget-object p1, Lh28;->Companion:Lf28;

    .line 742
    .line 743
    iget-object v1, p0, Lpa7;->t:Lgv7;

    .line 744
    .line 745
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 750
    .line 751
    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 752
    .line 753
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 754
    .line 755
    .line 756
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 757
    .line 758
    if-eqz p1, :cond_1c

    .line 759
    .line 760
    const-string v2, "use_amoled_theme"

    .line 761
    .line 762
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 763
    .line 764
    .line 765
    move-result-object p1

    .line 766
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 767
    .line 768
    .line 769
    invoke-virtual {p0, v4}, Lpa7;->q(Z)V

    .line 770
    .line 771
    .line 772
    return v0

    .line 773
    :cond_1c
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    throw v6

    .line 777
    :sswitch_11
    const-string v1, "backup_storage_location"

    .line 778
    .line 779
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    move-result p1

    .line 783
    if-nez p1, :cond_1d

    .line 784
    .line 785
    goto/16 :goto_4

    .line 786
    .line 787
    :cond_1d
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 788
    .line 789
    .line 790
    move-result-object p0

    .line 791
    const-class p1, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 792
    .line 793
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 794
    .line 795
    .line 796
    return v0

    .line 797
    :sswitch_12
    const-string v1, "play_notification_sounds"

    .line 798
    .line 799
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    move-result p1

    .line 803
    if-nez p1, :cond_1e

    .line 804
    .line 805
    goto/16 :goto_4

    .line 806
    .line 807
    :cond_1e
    :try_start_5
    sget-object p1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 808
    .line 809
    if-eqz p1, :cond_1f

    .line 810
    .line 811
    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 812
    .line 813
    .line 814
    goto :goto_3

    .line 815
    :cond_1f
    const-string p1, "prefs"

    .line 816
    .line 817
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    throw v6
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    .line 821
    :catch_5
    :goto_3
    iget-object p0, p0, Lpa7;->G:Lgv7;

    .line 822
    .line 823
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object p0

    .line 827
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 828
    .line 829
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    .line 831
    .line 832
    goto/16 :goto_4

    .line 833
    .line 834
    :sswitch_13
    const-string v1, "folder_backups"

    .line 835
    .line 836
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 837
    .line 838
    .line 839
    move-result p1

    .line 840
    if-nez p1, :cond_20

    .line 841
    .line 842
    goto :goto_4

    .line 843
    :cond_20
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->R:I

    .line 844
    .line 845
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 846
    .line 847
    .line 848
    move-result-object p1

    .line 849
    const v1, 0x7f130264

    .line 850
    .line 851
    .line 852
    invoke-virtual {p0, v1}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object p0

    .line 856
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    .line 858
    .line 859
    const/16 v1, 0x8

    .line 860
    .line 861
    invoke-static {p1, v1, p0}, Ljb9;->g0(Landroid/app/Activity;ILjava/lang/String;)V

    .line 862
    .line 863
    .line 864
    return v0

    .line 865
    :sswitch_14
    const-string v1, "app_backups"

    .line 866
    .line 867
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    move-result p1

    .line 871
    if-nez p1, :cond_21

    .line 872
    .line 873
    goto :goto_4

    .line 874
    :cond_21
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->R:I

    .line 875
    .line 876
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 877
    .line 878
    .line 879
    move-result-object p1

    .line 880
    const v1, 0x7f130057

    .line 881
    .line 882
    .line 883
    invoke-virtual {p0, v1}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object p0

    .line 887
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 888
    .line 889
    .line 890
    invoke-static {p1, v4, p0}, Ljb9;->g0(Landroid/app/Activity;ILjava/lang/String;)V

    .line 891
    .line 892
    .line 893
    return v0

    .line 894
    :sswitch_15
    const-string v1, "language"

    .line 895
    .line 896
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result p1

    .line 900
    if-nez p1, :cond_22

    .line 901
    .line 902
    goto :goto_4

    .line 903
    :cond_22
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 904
    .line 905
    .line 906
    move-result-object p0

    .line 907
    const-class p1, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;

    .line 908
    .line 909
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 910
    .line 911
    .line 912
    return v0

    .line 913
    :sswitch_16
    const-string v1, "encryption_password"

    .line 914
    .line 915
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 916
    .line 917
    .line 918
    move-result p1

    .line 919
    if-nez p1, :cond_23

    .line 920
    .line 921
    goto :goto_4

    .line 922
    :cond_23
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 923
    .line 924
    .line 925
    move-result-object p0

    .line 926
    const-class p1, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;

    .line 927
    .line 928
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 929
    .line 930
    .line 931
    return v0

    .line 932
    :sswitch_17
    const-string v1, "translation"

    .line 933
    .line 934
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result p1

    .line 938
    if-nez p1, :cond_24

    .line 939
    .line 940
    goto :goto_4

    .line 941
    :cond_24
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 942
    .line 943
    .line 944
    move-result-object p0

    .line 945
    const-string p1, "https://t.me/swifttranslators"

    .line 946
    .line 947
    invoke-static {p0, p1}, Lai8;->k(Landroid/content/Context;Ljava/lang/String;)Z

    .line 948
    .line 949
    .line 950
    :cond_25
    :goto_4
    return v0

    .line 951
    :sswitch_data_0
    .sparse-switch
        -0x6db60d4f -> :sswitch_17
        -0x66d26029 -> :sswitch_16
        -0x602d6ca8 -> :sswitch_15
        -0x5f684d2d -> :sswitch_14
        -0x4f3947e0 -> :sswitch_13
        -0x498d8a73 -> :sswitch_12
        -0x2758ee2a -> :sswitch_11
        -0x258522ce -> :sswitch_10
        -0x1916d072 -> :sswitch_f
        -0x762c1f5 -> :sswitch_e
        -0x589a90 -> :sswitch_d
        0x329086 -> :sswitch_c
        0x585238d -> :sswitch_b
        0xfcdc37d -> :sswitch_a
        0x12f0c2e7 -> :sswitch_9
        0x29db91ac -> :sswitch_8
        0x2d677f13 -> :sswitch_7
        0x2feba7f1 -> :sswitch_6
        0x38b72420 -> :sswitch_5
        0x5b941963 -> :sswitch_4
        0x5ce7c44e -> :sswitch_3
        0x6ddb762b -> :sswitch_2
        0x78132610 -> :sswitch_1
        0x789ebd81 -> :sswitch_0
    .end sparse-switch
.end method

.method public final l()V
    .locals 6

    .line 1
    const-string v0, "prefs"

    .line 2
    .line 3
    const v1, 0x7f16000a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lc46;->i(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lfm0;->n()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroidx/preference/Preference;

    .line 28
    .line 29
    iput-object p0, v2, Landroidx/preference/Preference;->f:Lt36;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v1, Lh28;->Companion:Lf28;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lf28;->b()Lh28;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lpa7;->q:Lgv7;

    .line 42
    .line 43
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroidx/preference/Preference;

    .line 48
    .line 49
    invoke-virtual {v1}, Lh28;->asString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lpa7;->t:Lgv7;

    .line 57
    .line 58
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 63
    .line 64
    invoke-static {}, Lf28;->e()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 76
    .line 77
    if-eqz v1, :cond_f

    .line 78
    .line 79
    invoke-static {}, Lb67;->d()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/4 v3, 0x1

    .line 84
    const/4 v4, 0x0

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    const v2, 0x7f0401fa

    .line 88
    .line 89
    .line 90
    filled-new-array {v2}, [I

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    .line 107
    .line 108
    if-eqz v2, :cond_1

    .line 109
    .line 110
    move v4, v3

    .line 111
    :cond_1
    iget-object v1, p0, Lpa7;->r:Lgv7;

    .line 112
    .line 113
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 118
    .line 119
    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->C(Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 127
    .line 128
    const-string v2, "dynamic_colors"

    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 132
    .line 133
    if-eqz v5, :cond_2

    .line 134
    .line 135
    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    move v2, v3

    .line 145
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lpa7;->x:Lgv7;

    .line 149
    .line 150
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Landroidx/preference/Preference;

    .line 155
    .line 156
    :try_start_1
    sget-object v2, Ld45;->b:Ld45;

    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    if-eqz v2, :cond_3

    .line 166
    .line 167
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    goto :goto_2

    .line 176
    :catch_1
    :cond_3
    move-object v2, v4

    .line 177
    :goto_2
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 178
    .line 179
    invoke-static {v2, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    xor-int/2addr v2, v3

    .line 184
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->C(Z)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lpa7;->G:Lgv7;

    .line 188
    .line 189
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 194
    .line 195
    const-string v2, "play_notification_sounds"

    .line 196
    .line 197
    :try_start_2
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 198
    .line 199
    if-eqz v5, :cond_4

    .line 200
    .line 201
    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    goto :goto_3

    .line 206
    :cond_4
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v4
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 210
    :catch_2
    move v2, v3

    .line 211
    :goto_3
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 212
    .line 213
    .line 214
    const-string v1, "app_locale"

    .line 215
    .line 216
    :try_start_3
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 217
    .line 218
    if-eqz v2, :cond_5

    .line 219
    .line 220
    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    goto :goto_4

    .line 225
    :cond_5
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v4
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 229
    :catch_3
    move-object v0, v4

    .line 230
    :goto_4
    if-eqz v0, :cond_7

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-nez v1, :cond_6

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_6
    invoke-static {v0}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    goto :goto_6

    .line 248
    :cond_7
    :goto_5
    invoke-static {}, Lxx3;->h()Lis4;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    :goto_6
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iget-object v1, p0, Lpa7;->H:Lgv7;

    .line 261
    .line 262
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    check-cast v1, Landroidx/preference/Preference;

    .line 267
    .line 268
    if-eqz v0, :cond_8

    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-nez v2, :cond_9

    .line 275
    .line 276
    :cond_8
    const v0, 0x7f1301de

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    :cond_9
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lpa7;->I:Lgv7;

    .line 287
    .line 288
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Landroidx/preference/Preference;

    .line 293
    .line 294
    sget-object v1, Lzn7;->q:Lyn7;

    .line 295
    .line 296
    invoke-virtual {v1}, Lyn7;->d()Lzn7;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    iget-object v1, v1, Lzn7;->f:Lgv7;

    .line 301
    .line 302
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    check-cast v1, Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 309
    .line 310
    .line 311
    iget-object v0, p0, Lpa7;->J:Lgv7;

    .line 312
    .line 313
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Landroidx/preference/Preference;

    .line 318
    .line 319
    invoke-static {}, Lyx5;->j()Lux5;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    sget-object v2, Lxx5;->a:[I

    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    aget v1, v2, v1

    .line 333
    .line 334
    if-eq v1, v3, :cond_b

    .line 335
    .line 336
    const/4 v2, 0x2

    .line 337
    if-ne v1, v2, :cond_a

    .line 338
    .line 339
    const v1, 0x7f1303fe

    .line 340
    .line 341
    .line 342
    goto :goto_7

    .line 343
    :cond_a
    invoke-static {}, Lq;->j()V

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :cond_b
    const v1, 0x7f1303fc

    .line 348
    .line 349
    .line 350
    :goto_7
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 351
    .line 352
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 364
    .line 365
    .line 366
    :try_start_4
    sget-object v0, Ld45;->b:Ld45;

    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    if-eqz v0, :cond_c

    .line 376
    .line 377
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 382
    .line 383
    .line 384
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 385
    :catch_4
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 386
    .line 387
    invoke-static {v4, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_e

    .line 392
    .line 393
    const-string v0, "export_settings"

    .line 394
    .line 395
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    if-eqz v0, :cond_d

    .line 400
    .line 401
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->C(Z)V

    .line 402
    .line 403
    .line 404
    :cond_d
    const-string v0, "import_settings"

    .line 405
    .line 406
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    if-eqz p0, :cond_e

    .line 411
    .line 412
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->C(Z)V

    .line 413
    .line 414
    .line 415
    :cond_e
    return-void

    .line 416
    :cond_f
    const-string p0, "Required value was null."

    .line 417
    .line 418
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lc46;->onStart()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln55;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Ln55;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lpa7;->J:Lgv7;

    .line 15
    .line 16
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroidx/preference/Preference;

    .line 21
    .line 22
    invoke-static {}, Lyx5;->j()Lux5;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-object v1, Lxx5;->a:[I

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    aget v0, v1, v0

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    .line 43
    const v0, 0x7f1303fe

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    const v0, 0x7f1303fc

    .line 52
    .line 53
    .line 54
    :goto_0
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 55
    .line 56
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final p()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lpa7;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method public final q(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lpa7;->M:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 11
    :goto_1
    iput-boolean p1, p0, Lpa7;->M:Z

    .line 12
    .line 13
    iget-object p1, p0, Lpa7;->L:Li41;

    .line 14
    .line 15
    iget-object v0, p0, Lpa7;->K:Landroid/os/Handler;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    new-instance p1, Li41;

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    invoke-direct {p1, p0, v1}, Li41;-><init>(Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lpa7;->L:Li41;

    .line 29
    .line 30
    const-wide/16 v1, 0x12c

    .line 31
    .line 32
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method
