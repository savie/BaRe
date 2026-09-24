.class public final synthetic Ldj;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Ldj;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ldj;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget v0, p0, Ldj;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const v2, 0x7f130426

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object p0, p0, Ldj;->b:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lbs8;

    .line 16
    .line 17
    iget-object p0, p0, Lbs8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 18
    .line 19
    invoke-virtual {p0, v4}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->b0(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast p0, Lwa;

    .line 24
    .line 25
    invoke-virtual {p0}, Lho;->dismiss()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    check-cast p0, Ln97;

    .line 30
    .line 31
    iget-object p1, p0, Ln97;->f:Lcz;

    .line 32
    .line 33
    sget-object v0, Lm97;->ADD_LABELS:Lm97;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v3}, Lol1;->j(Z)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 43
    .line 44
    sget p1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->R:I

    .line 45
    .line 46
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 47
    .line 48
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    const/4 v10, 0x4

    .line 53
    const/4 v11, 0x0

    .line 54
    const-string v8, "Share logs called with SwiftLogger text only"

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Ld7;

    .line 61
    .line 62
    const/16 v0, 0x15

    .line 63
    .line 64
    invoke-direct {p1, p0, v0}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->Q:Lgv7;

    .line 68
    .line 69
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lu35;

    .line 74
    .line 75
    invoke-static {v0}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Lil0;->M(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->O()Lcs6;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v0, v0, Lcs6;->e:Lex6;

    .line 86
    .line 87
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lfm7;

    .line 92
    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    iget-object v0, v0, Lfm7;->a:Ljava/util/List;

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    move-object v0, v5

    .line 99
    :goto_0
    if-eqz v0, :cond_1

    .line 100
    .line 101
    sget-object v1, Lzn4;->a:Lzn4;

    .line 102
    .line 103
    new-instance v1, Lxr6;

    .line 104
    .line 105
    invoke-direct {v1, v0, p0, p1, v5}, Lxr6;-><init>(Ljava/util/List;Lorg/swiftapps/swiftbackup/slog/SLogActivity;Ld7;Ljv1;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v5, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    const-string p0, "Required value was null."

    .line 113
    .line 114
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_1
    return-void

    .line 118
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;

    .line 119
    .line 120
    sget p1, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->R:I

    .line 121
    .line 122
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->U()Lxm6;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object p1, p1, Lxm6;->f:Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_2

    .line 133
    .line 134
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->U()Lxm6;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    iget-object p0, p0, Lxm6;->f:Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 139
    .line 140
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    .line 141
    .line 142
    .line 143
    :cond_2
    return-void

    .line 144
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 145
    .line 146
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 147
    .line 148
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->Z()Lye5;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    sget-object p1, Lzn4;->a:Lzn4;

    .line 153
    .line 154
    new-instance p1, Lqj;

    .line 155
    .line 156
    invoke-direct {p1, p0, v5, v1}, Lqj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 157
    .line 158
    .line 159
    invoke-static {v5, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 164
    .line 165
    sget p1, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 166
    .line 167
    invoke-static {}, Lb67;->e()Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_3

    .line 172
    .line 173
    sget-object p1, Ldz5;->a:Ldz5;

    .line 174
    .line 175
    new-instance p1, Le11;

    .line 176
    .line 177
    const/4 v0, 0x3

    .line 178
    invoke-direct {p1, p0, v0}, Le11;-><init>(Ljava/lang/Object;I)V

    .line 179
    .line 180
    .line 181
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 182
    .line 183
    filled-new-array {v0}, [Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {p0, p1, v0}, Ldz5;->a(Lzm;Lt45;[Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_3
    const-string p0, "Notifications permission not needed below Android 13 (T)!"

    .line 192
    .line 193
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :goto_2
    return-void

    .line 197
    :pswitch_6
    check-cast p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 198
    .line 199
    sget-object p1, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 200
    .line 201
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    iget-object p0, p0, Lz44;->f:Landroid/widget/EditText;

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    if-eqz p0, :cond_4

    .line 212
    .line 213
    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    .line 214
    .line 215
    .line 216
    :cond_4
    return-void

    .line 217
    :pswitch_7
    check-cast p0, Llr2;

    .line 218
    .line 219
    invoke-virtual {p0}, Llr2;->t()V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :pswitch_8
    check-cast p0, Luj2;

    .line 224
    .line 225
    iget-object p0, p0, Luj2;->d:Lmt3;

    .line 226
    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 235
    .line 236
    sget p1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 237
    .line 238
    invoke-virtual {p0, v2}, Lil0;->M(I)V

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->X:Ljava/lang/String;

    .line 242
    .line 243
    if-eqz p1, :cond_5

    .line 244
    .line 245
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-nez v0, :cond_5

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_5
    move-object p1, v5

    .line 253
    :goto_3
    sget-object v0, Lzn4;->a:Lzn4;

    .line 254
    .line 255
    new-instance v0, Ls10;

    .line 256
    .line 257
    invoke-direct {v0, p1, p0, v5, v3}, Ls10;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 258
    .line 259
    .line 260
    invoke-static {v5, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :pswitch_a
    check-cast p0, Lr91;

    .line 265
    .line 266
    iget-object v0, p0, Lr91;->i:Landroid/widget/EditText;

    .line 267
    .line 268
    if-nez v0, :cond_6

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_6
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-eqz p1, :cond_7

    .line 280
    .line 281
    iget-object p1, p0, Lr91;->i:Landroid/widget/EditText;

    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 284
    .line 285
    .line 286
    :cond_7
    if-eqz v0, :cond_8

    .line 287
    .line 288
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 289
    .line 290
    .line 291
    :cond_8
    invoke-virtual {p0}, Lqw2;->p()V

    .line 292
    .line 293
    .line 294
    :goto_4
    return-void

    .line 295
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 296
    .line 297
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 298
    .line 299
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->Z()Ls11;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    sget-object p1, Lzn4;->a:Lzn4;

    .line 304
    .line 305
    new-instance p1, Lz2;

    .line 306
    .line 307
    invoke-direct {p1, p0, v5, v1}, Lz2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 308
    .line 309
    .line 310
    invoke-static {v5, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :pswitch_c
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 315
    .line 316
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->T:Lm01;

    .line 317
    .line 318
    if-eqz p1, :cond_a

    .line 319
    .line 320
    invoke-virtual {p1}, Lgm7;->b()I

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    if-lez p1, :cond_9

    .line 325
    .line 326
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Y()Landroidx/recyclerview/widget/RecyclerView;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 331
    .line 332
    .line 333
    :cond_9
    return-void

    .line 334
    :cond_a
    const-string p0, "mAdapter"

    .line 335
    .line 336
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v5

    .line 340
    :pswitch_d
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 341
    .line 342
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 343
    .line 344
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->l0()Lr20;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    iget-object p1, p0, Lr20;->i:Lzc6;

    .line 349
    .line 350
    if-nez p1, :cond_b

    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_b
    iget-object v0, p0, Lr20;->k:Lex6;

    .line 354
    .line 355
    sget-object v1, Lym7;->LOADING:Lym7;

    .line 356
    .line 357
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    new-instance v0, Lm20;

    .line 361
    .line 362
    invoke-direct {v0, p0, p1, v3}, Lm20;-><init>(Lr20;Lzc6;Z)V

    .line 363
    .line 364
    .line 365
    invoke-static {v0}, Lzn4;->d(Lbt3;)V

    .line 366
    .line 367
    .line 368
    :goto_5
    return-void

    .line 369
    :pswitch_e
    check-cast p0, Lrj;

    .line 370
    .line 371
    sget-object p1, Lv53;->a:Lv53;

    .line 372
    .line 373
    iget-object v0, p0, Lrj;->f:Lji;

    .line 374
    .line 375
    invoke-virtual {p1, v0, v4}, Lv53;->f(Lji;Z)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0}, Lrj;->I()V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    nop

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
