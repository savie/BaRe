.class public final synthetic Lnv1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Les5;
.implements Lzt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnv1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lnv1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lyt3;
    .locals 7

    .line 1
    iget v0, p0, Lnv1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lnv1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lhl0;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p0, Loh1;

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    new-instance v0, Lcu3;

    .line 15
    .line 16
    move-object v2, p0

    .line 17
    check-cast v2, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;

    .line 18
    .line 19
    const-string v5, "onRemoteDetails(Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;)V"

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v1, 0x1

    .line 23
    const-class v3, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;

    .line 24
    .line 25
    const-string v4, "onRemoteDetails"

    .line 26
    .line 27
    invoke-direct/range {v0 .. v6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Lnv1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lnv1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lhl0;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lhl0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Loh1;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Loh1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    check-cast p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    check-cast p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;

    .line 26
    .line 27
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->N:Lgv7;

    .line 28
    .line 29
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->M:Lgv7;

    .line 30
    .line 31
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/widget/TextView;

    .line 36
    .line 37
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "Status: "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->get_status()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    const-string v4, "ACTIVE"

    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    invoke-static {v3, v4, v5}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-ne v3, v5, :cond_0

    .line 61
    .line 62
    invoke-static {p0}, Lsz8;->x(Landroid/content/Context;)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const v3, 0x7f060023

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    :goto_0
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 75
    .line 76
    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->get_status()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    const/16 v6, 0x11

    .line 95
    .line 96
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v2, "Name"

    .line 108
    .line 109
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->get_name()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->getType()Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;->toDisplayString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    const-string v3, "Registration type"

    .line 125
    .line 126
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->getLocales()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    if-eqz v7, :cond_2

    .line 134
    .line 135
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->isTranslator()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_2

    .line 147
    .line 148
    new-instance v11, Lnk;

    .line 149
    .line 150
    const/4 v2, 0x6

    .line 151
    invoke-direct {v11, v2}, Lnk;-><init>(I)V

    .line 152
    .line 153
    .line 154
    const/16 v12, 0x1f

    .line 155
    .line 156
    const/4 v8, 0x0

    .line 157
    const/4 v9, 0x0

    .line 158
    const/4 v10, 0x0

    .line 159
    invoke-static/range {v7 .. v12}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    const-string v3, "Languages"

    .line 164
    .line 165
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Landroid/widget/TextView;

    .line 173
    .line 174
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 175
    .line 176
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Landroid/widget/TextView;

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-static {v0}, Lsz8;->z(Landroid/content/Context;)I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    invoke-static {v0}, Lsz8;->A(Landroid/content/Context;)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const/4 v5, 0x0

    .line 209
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-eqz v7, :cond_4

    .line 214
    .line 215
    add-int/lit8 v7, v5, 0x1

    .line 216
    .line 217
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    check-cast v8, Ljava/util/Map$Entry;

    .line 222
    .line 223
    if-lez v5, :cond_3

    .line 224
    .line 225
    const-string v5, "\n\n"

    .line 226
    .line 227
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 228
    .line 229
    .line 230
    :cond_3
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    .line 231
    .line 232
    invoke-direct {v5, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    new-instance v10, Landroid/text/style/RelativeSizeSpan;

    .line 240
    .line 241
    const v11, 0x3f666666    # 0.9f

    .line 242
    .line 243
    .line 244
    invoke-direct {v10, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v12

    .line 255
    check-cast v12, Ljava/lang/CharSequence;

    .line 256
    .line 257
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    invoke-virtual {v3, v10, v11, v12, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    invoke-virtual {v3, v5, v9, v10, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 272
    .line 273
    .line 274
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    .line 275
    .line 276
    invoke-direct {v5, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 280
    .line 281
    .line 282
    move-result v9

    .line 283
    const-string v10, "\n"

    .line 284
    .line 285
    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    check-cast v8, Ljava/lang/CharSequence;

    .line 294
    .line 295
    invoke-virtual {v10, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    invoke-virtual {v3, v5, v9, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 303
    .line 304
    .line 305
    move v5, v7

    .line 306
    goto :goto_2

    .line 307
    :cond_4
    new-instance v0, Landroid/text/SpannedString;

    .line 308
    .line 309
    invoke-direct {v0, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->O:Lgv7;

    .line 316
    .line 317
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 322
    .line 323
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->getIdTelegram()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->N()Lov1;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    iget-object v0, v0, Lov1;->k:Lcom/google/android/material/textfield/TextInputLayout;

    .line 335
    .line 336
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->isTranslator()Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    invoke-static {v0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->isTranslator()Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_5

    .line 348
    .line 349
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->P:Lgv7;

    .line 350
    .line 351
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 356
    .line 357
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->getIdCrowdin()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    .line 363
    .line 364
    :cond_5
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->Q:Lgv7;

    .line 365
    .line 366
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object p0

    .line 370
    check-cast p0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 371
    .line 372
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->getIdPaypal()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    nop

    .line 381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lnv1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    instance-of v0, p1, Les5;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    instance-of v0, p1, Lzt3;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p1, Lzt3;

    .line 20
    .line 21
    invoke-interface {p1}, Lzt3;->a()Lyt3;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :cond_0
    return v1

    .line 30
    :pswitch_0
    instance-of v0, p1, Les5;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    instance-of v0, p1, Lzt3;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p1, Lzt3;

    .line 43
    .line 44
    invoke-interface {p1}, Lzt3;->a()Lyt3;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_1
    return v1

    .line 53
    :pswitch_1
    instance-of v0, p1, Les5;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    instance-of v0, p1, Lzt3;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p1, Lzt3;

    .line 66
    .line 67
    invoke-interface {p1}, Lzt3;->a()Lyt3;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    :cond_2
    return v1

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lnv1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :pswitch_1
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
