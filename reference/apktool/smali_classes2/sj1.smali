.class public final Lsj1;
.super Lfm0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lt36;


# instance fields
.field public final G:Lgv7;

.field public final H:Lgv7;

.field public final p:Lgv7;

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
    new-instance v0, Ld76;

    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lsj1;->p:Lgv7;

    .line 17
    .line 18
    new-instance v0, Lkf;

    .line 19
    .line 20
    const/16 v1, 0x11

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lgv7;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lsj1;->q:Lgv7;

    .line 31
    .line 32
    new-instance v0, Lnj1;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {v0, p0, v1}, Lnj1;-><init>(Lsj1;I)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lgv7;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lsj1;->r:Lgv7;

    .line 44
    .line 45
    new-instance v0, Loj1;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-direct {v0, p0, v1}, Loj1;-><init>(Lsj1;I)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lgv7;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lsj1;->t:Lgv7;

    .line 57
    .line 58
    new-instance v0, Lpj1;

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-direct {v0, p0, v1}, Lpj1;-><init>(Lsj1;I)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lgv7;

    .line 65
    .line 66
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lsj1;->x:Lgv7;

    .line 70
    .line 71
    new-instance v0, Lnj1;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-direct {v0, p0, v1}, Lnj1;-><init>(Lsj1;I)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lgv7;

    .line 78
    .line 79
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lsj1;->y:Lgv7;

    .line 83
    .line 84
    new-instance v0, Loj1;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-direct {v0, p0, v1}, Loj1;-><init>(Lsj1;I)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Lgv7;

    .line 91
    .line 92
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lsj1;->G:Lgv7;

    .line 96
    .line 97
    new-instance v0, Lpj1;

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-direct {v0, p0, v1}, Lpj1;-><init>(Lsj1;I)V

    .line 101
    .line 102
    .line 103
    new-instance v1, Lgv7;

    .line 104
    .line 105
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 106
    .line 107
    .line 108
    iput-object v1, p0, Lsj1;->H:Lgv7;

    .line 109
    .line 110
    return-void
.end method

.method public static synthetic r(Lsj1;IILmt3;I)V
    .locals 7

    .line 1
    and-int/lit8 v0, p4, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :goto_0
    move v4, v0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v0, 0x5

    .line 9
    goto :goto_0

    .line 10
    :goto_1
    and-int/lit8 p4, p4, 0x8

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    const p4, 0x7fffffff

    .line 15
    .line 16
    .line 17
    :goto_2
    move-object v1, p0

    .line 18
    move v2, p1

    .line 19
    move v3, p2

    .line 20
    move-object v6, p3

    .line 21
    move v5, p4

    .line 22
    goto :goto_3

    .line 23
    :cond_1
    const/16 p4, 0x96

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :goto_3
    invoke-virtual/range {v1 .. v6}, Lsj1;->q(IIIILmt3;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 9

    .line 1
    iget-object p1, p1, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_c

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x5

    .line 11
    const/4 v3, 0x4

    .line 12
    const/4 v4, 0x1

    .line 13
    const-string v5, "editor"

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    sparse-switch v1, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :sswitch_0
    const-string v1, "cloud_diagnostics"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_0
    sget p1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p1, Landroid/content/Intent;

    .line 38
    .line 39
    const-class v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 40
    .line 41
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    return v4

    .line 48
    :sswitch_1
    const-string v1, "nextcloud_chunk_size"

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_1
    invoke-static {}, Lho6;->v()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    new-instance v1, Lpx;

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    invoke-direct {v1, p0, v2}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    const/16 v2, 0xc

    .line 69
    .line 70
    const/16 v3, 0x64

    .line 71
    .line 72
    invoke-static {p0, v3, p1, v1, v2}, Lsj1;->r(Lsj1;IILmt3;I)V

    .line 73
    .line 74
    .line 75
    return v0

    .line 76
    :sswitch_2
    const-string v1, "multithreaded_downloads"

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_2

    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :cond_2
    iget-object p1, p0, Lsj1;->q:Lgv7;

    .line 87
    .line 88
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 93
    .line 94
    iget-boolean p1, p1, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 95
    .line 96
    sget-object v2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 97
    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lsj1;->t()V

    .line 108
    .line 109
    .line 110
    return v0

    .line 111
    :cond_3
    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v6

    .line 115
    :sswitch_3
    const-string v1, "multithreaded_downloads_chunk_count"

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_4

    .line 122
    .line 123
    goto/16 :goto_1

    .line 124
    .line 125
    :cond_4
    new-instance p1, Lw20;

    .line 126
    .line 127
    const/4 v1, 0x7

    .line 128
    invoke-direct {p1, p0, v1}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 129
    .line 130
    .line 131
    sget-object v1, Loi5;->L:Lgv7;

    .line 132
    .line 133
    invoke-static {}, Lly8;->u()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {}, Lho6;->t()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    new-instance v3, Ljh6;

    .line 150
    .line 151
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 152
    .line 153
    .line 154
    iput v2, v3, Ljh6;->a:I

    .line 155
    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    new-instance v5, Lhv1;

    .line 161
    .line 162
    const v7, 0x7f140160

    .line 163
    .line 164
    .line 165
    invoke-direct {v5, p0, v7}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 166
    .line 167
    .line 168
    new-instance v8, Ls35;

    .line 169
    .line 170
    invoke-direct {v8, p0, v7, v5, v6}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 171
    .line 172
    .line 173
    const p0, 0x7f13033f

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, p0}, Lv75;->v(I)V

    .line 177
    .line 178
    .line 179
    new-instance p0, Ljava/util/ArrayList;

    .line 180
    .line 181
    const/16 v5, 0xa

    .line 182
    .line 183
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    invoke-direct {p0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-eqz v7, :cond_5

    .line 199
    .line 200
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    check-cast v7, Ljava/lang/Number;

    .line 205
    .line 206
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_5
    new-array v5, v0, [Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    check-cast p0, [Ljava/lang/CharSequence;

    .line 225
    .line 226
    new-instance v5, Lt11;

    .line 227
    .line 228
    invoke-direct {v5, v3, v4}, Lt11;-><init>(Ljh6;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8, p0, v2, v5}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    new-instance p0, Lu11;

    .line 235
    .line 236
    invoke-direct {p0, p1, v1, v3}, Lu11;-><init>(Lw20;Ljava/util/List;Ljh6;)V

    .line 237
    .line 238
    .line 239
    const p1, 0x7f1303e6

    .line 240
    .line 241
    .line 242
    invoke-virtual {v8, p1, p0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    const p0, 0x7f1300f1

    .line 246
    .line 247
    .line 248
    invoke-virtual {v8, p0, v6}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v8}, Ls35;->m()Lwa;

    .line 252
    .line 253
    .line 254
    return v0

    .line 255
    :sswitch_4
    const-string v1, "dropbox_chunk_size"

    .line 256
    .line 257
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-nez p1, :cond_6

    .line 262
    .line 263
    goto/16 :goto_1

    .line 264
    .line 265
    :cond_6
    invoke-static {}, Lho6;->q()I

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    new-instance v1, Lu10;

    .line 270
    .line 271
    const/4 v2, 0x2

    .line 272
    invoke-direct {v1, p0, v2}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 273
    .line 274
    .line 275
    const/16 v2, 0x19

    .line 276
    .line 277
    invoke-static {p0, v2, p1, v1, v3}, Lsj1;->r(Lsj1;IILmt3;I)V

    .line 278
    .line 279
    .line 280
    return v0

    .line 281
    :sswitch_5
    const-string v1, "onedrive_chunk_size"

    .line 282
    .line 283
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-nez p1, :cond_7

    .line 288
    .line 289
    goto :goto_1

    .line 290
    :cond_7
    invoke-static {}, Lho6;->w()I

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    new-instance v8, Lv10;

    .line 295
    .line 296
    invoke-direct {v8, p0, v2}, Lv10;-><init>(Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    const/4 v4, 0x5

    .line 300
    const/4 v6, 0x5

    .line 301
    const/16 v7, 0x3c

    .line 302
    .line 303
    move-object v3, p0

    .line 304
    invoke-virtual/range {v3 .. v8}, Lsj1;->q(IIIILmt3;)V

    .line 305
    .line 306
    .line 307
    return v0

    .line 308
    :sswitch_6
    const-string v1, "parallel_cloud_transfers"

    .line 309
    .line 310
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    if-nez p1, :cond_8

    .line 315
    .line 316
    goto :goto_1

    .line 317
    :cond_8
    iget-object p0, p0, Lsj1;->p:Lgv7;

    .line 318
    .line 319
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 324
    .line 325
    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 326
    .line 327
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 328
    .line 329
    if-eqz p1, :cond_9

    .line 330
    .line 331
    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 336
    .line 337
    .line 338
    return v0

    .line 339
    :cond_9
    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    throw v6

    .line 343
    :sswitch_7
    const-string v1, "s3_chunk_size"

    .line 344
    .line 345
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    if-nez p1, :cond_a

    .line 350
    .line 351
    goto :goto_1

    .line 352
    :cond_a
    invoke-static {}, Lho6;->y()I

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    new-instance v1, Lzs;

    .line 357
    .line 358
    invoke-direct {v1, p0, v3}, Lzs;-><init>(Ljava/lang/Object;I)V

    .line 359
    .line 360
    .line 361
    const/16 v3, 0x8

    .line 362
    .line 363
    invoke-static {p0, v2, p1, v1, v3}, Lsj1;->r(Lsj1;IILmt3;I)V

    .line 364
    .line 365
    .line 366
    return v0

    .line 367
    :sswitch_8
    const-string v1, "nextcloud_force_chunked_uploads"

    .line 368
    .line 369
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    if-nez p1, :cond_b

    .line 374
    .line 375
    goto :goto_1

    .line 376
    :cond_b
    iget-object p0, p0, Lsj1;->G:Lgv7;

    .line 377
    .line 378
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 383
    .line 384
    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 385
    .line 386
    invoke-static {p0}, Lho6;->U(Z)V

    .line 387
    .line 388
    .line 389
    :cond_c
    :goto_1
    return v0

    .line 390
    nop

    .line 391
    :sswitch_data_0
    .sparse-switch
        -0x7dedb192 -> :sswitch_8
        -0x6ccfd9ee -> :sswitch_7
        -0x26c2c9da -> :sswitch_6
        0x1aa756ce -> :sswitch_5
        0x35cbae36 -> :sswitch_4
        0x3953674c -> :sswitch_3
        0x58c0fd4e -> :sswitch_2
        0x59782bd0 -> :sswitch_1
        0x65b42ea2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final l()V
    .locals 4

    .line 1
    const v0, 0x7f16000e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lc46;->i(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lfm0;->n()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/preference/Preference;

    .line 26
    .line 27
    iput-object p0, v1, Landroidx/preference/Preference;->f:Lt36;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lsj1;->p:Lgv7;

    .line 31
    .line 32
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 37
    .line 38
    invoke-static {}, Lho6;->B()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    :try_start_0
    sget-object v1, Ld45;->b:Ld45;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    :cond_1
    move-object v1, v0

    .line 67
    :goto_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/4 v2, 0x0

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    :catch_1
    move v0, v2

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const-string v1, "allow_multithreaded_downloads"

    .line 79
    .line 80
    :try_start_1
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 81
    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const-string v1, "prefs"

    .line 90
    .line 91
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :goto_2
    if-eqz v0, :cond_4

    .line 96
    .line 97
    iget-object v0, p0, Lsj1;->q:Lgv7;

    .line 98
    .line 99
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 104
    .line 105
    invoke-static {}, Lho6;->A()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lsj1;->t()V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    const-string v0, "multithreaded_downloads_category"

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 123
    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->C(Z)V

    .line 127
    .line 128
    .line 129
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lsj1;->s()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lsj1;->v()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lsj1;->u()V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lsj1;->G:Lgv7;

    .line 139
    .line 140
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 145
    .line 146
    invoke-static {}, Lho6;->z()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lsj1;->w()V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final q(IIIILmt3;)V
    .locals 17

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const v4, 0x7fffffff

    .line 16
    .line 17
    .line 18
    const/4 v15, 0x0

    .line 19
    if-eq v0, v4, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v3, v15

    .line 23
    :goto_0
    const/16 v4, 0xa

    .line 24
    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const/16 v5, 0x32

    .line 30
    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const/16 v5, 0x64

    .line 36
    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    const/16 v5, 0x96

    .line 42
    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    const/16 v5, 0xc8

    .line 48
    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    const/16 v5, 0x12c

    .line 54
    .line 55
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    const/16 v5, 0x190

    .line 60
    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v12

    .line 65
    const/16 v5, 0x1f4

    .line 66
    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    const/16 v5, 0x3e8

    .line 72
    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v14

    .line 77
    move v5, v4

    .line 78
    const/4 v4, 0x0

    .line 79
    move/from16 v16, v5

    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    filled-new-array/range {v1 .. v14}, [Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 91
    .line 92
    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v1}, Lel1;->m1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_2

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    move-object v4, v3

    .line 123
    check-cast v4, Ljava/lang/Number;

    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    move/from16 v5, p3

    .line 130
    .line 131
    if-gt v5, v4, :cond_1

    .line 132
    .line 133
    if-gt v4, v0, :cond_1

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-ltz v0, :cond_3

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    move-object v1, v15

    .line 155
    :goto_2
    const/4 v0, 0x0

    .line 156
    if-eqz v1, :cond_4

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    goto :goto_3

    .line 163
    :cond_4
    move v1, v0

    .line 164
    :goto_3
    new-instance v3, Ljh6;

    .line 165
    .line 166
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 167
    .line 168
    .line 169
    iput v1, v3, Ljh6;->a:I

    .line 170
    .line 171
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    new-instance v5, Lhv1;

    .line 176
    .line 177
    const v6, 0x7f140160

    .line 178
    .line 179
    .line 180
    invoke-direct {v5, v4, v6}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 181
    .line 182
    .line 183
    new-instance v7, Ls35;

    .line 184
    .line 185
    invoke-direct {v7, v4, v6, v5, v15}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 186
    .line 187
    .line 188
    const v4, 0x7f13058b

    .line 189
    .line 190
    .line 191
    move-object/from16 v5, p0

    .line 192
    .line 193
    invoke-virtual {v5, v4}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    iget-object v5, v7, Lva;->b:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v5, Lra;

    .line 200
    .line 201
    iput-object v4, v5, Lra;->d:Ljava/lang/CharSequence;

    .line 202
    .line 203
    new-instance v4, Ljava/util/ArrayList;

    .line 204
    .line 205
    const/16 v5, 0xa

    .line 206
    .line 207
    invoke-static {v2, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-eqz v6, :cond_5

    .line 223
    .line 224
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    check-cast v6, Ljava/lang/Number;

    .line 229
    .line 230
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    new-instance v8, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v6, " MB"

    .line 243
    .line 244
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_5
    new-array v5, v0, [Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    check-cast v4, [Ljava/lang/CharSequence;

    .line 262
    .line 263
    new-instance v5, Lqj1;

    .line 264
    .line 265
    invoke-direct {v5, v3, v0}, Lqj1;-><init>(Ljh6;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7, v4, v1, v5}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 269
    .line 270
    .line 271
    new-instance v1, Lrj1;

    .line 272
    .line 273
    move-object/from16 v4, p5

    .line 274
    .line 275
    invoke-direct {v1, v0, v4, v2, v3}, Lrj1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    const v0, 0x7f1303e6

    .line 279
    .line 280
    .line 281
    invoke-virtual {v7, v0, v1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 282
    .line 283
    .line 284
    const v0, 0x7f1300f1

    .line 285
    .line 286
    .line 287
    invoke-virtual {v7, v0, v15}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7}, Ls35;->m()Lwa;

    .line 291
    .line 292
    .line 293
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    iget-object p0, p0, Lsj1;->t:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/preference/Preference;

    .line 8
    .line 9
    invoke-static {}, Lho6;->q()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " MB"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object p0, p0, Lsj1;->r:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/preference/Preference;

    .line 8
    .line 9
    invoke-static {}, Lho6;->A()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->C(Z)V

    .line 14
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
    invoke-static {}, Lho6;->t()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object p0, p0, Lsj1;->y:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/preference/Preference;

    .line 8
    .line 9
    invoke-static {}, Lho6;->v()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " MB"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-object p0, p0, Lsj1;->x:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/preference/Preference;

    .line 8
    .line 9
    invoke-static {}, Lho6;->w()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " MB"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object p0, p0, Lsj1;->H:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/preference/Preference;

    .line 8
    .line 9
    invoke-static {}, Lho6;->y()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " MB"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
