.class public final Lmv1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lil0;


# direct methods
.method public synthetic constructor <init>(Lil0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lmv1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lmv1;->b:Lil0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final e(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final f(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final g(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final h(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lmv1;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v0, v0, Lmv1;->b:Lil0;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->O()Ltb5;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->P()Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Ltb5;->k(Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->O()Lar4;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->P()Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Lar4;->j(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 40
    .line 41
    iget-boolean v1, v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->K0:Z

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->J0:Loq8;

    .line 47
    .line 48
    sget-object v3, Loq8;->i:Loq8;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    invoke-static {v3}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move-object v3, v2

    .line 68
    :goto_0
    sget-object v4, Loq8;->m:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    move-object v6, v5

    .line 85
    check-cast v6, Loq8;

    .line 86
    .line 87
    iget-object v6, v6, Loq8;->b:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_2

    .line 94
    .line 95
    move-object v2, v5

    .line 96
    :cond_3
    check-cast v2, Loq8;

    .line 97
    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    sget-object v2, Loq8;->i:Loq8;

    .line 101
    .line 102
    :cond_4
    iput-object v2, v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->J0:Loq8;

    .line 103
    .line 104
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->h0:Lgv7;

    .line 105
    .line 106
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Landroid/widget/ImageView;

    .line 111
    .line 112
    iget v4, v2, Loq8;->c:I

    .line 113
    .line 114
    iget-object v5, v2, Loq8;->b:Ljava/lang/String;

    .line 115
    .line 116
    const/high16 v6, 0x40400000    # 3.0f

    .line 117
    .line 118
    invoke-static {v3, v4, v5, v6}, Ly13;->D(Landroid/widget/ImageView;ILjava/lang/CharSequence;F)V

    .line 119
    .line 120
    .line 121
    const/4 v3, 0x1

    .line 122
    invoke-virtual {v0, v2, v1, v3}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->a0(Loq8;Loq8;Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->m0()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Lm62;->l(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    return-void

    .line 137
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;

    .line 138
    .line 139
    sget v1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->S:I

    .line 140
    .line 141
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->O:Lgv7;

    .line 142
    .line 143
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 148
    .line 149
    invoke-virtual {v1}, Llo;->getText()Landroid/text/Editable;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-eqz v1, :cond_5

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_5

    .line 160
    .line 161
    invoke-static {v1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    goto :goto_2

    .line 170
    :cond_5
    move-object v1, v2

    .line 171
    :goto_2
    invoke-static {v1}, Lio4;->f(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_6

    .line 176
    .line 177
    move-object v9, v1

    .line 178
    goto :goto_3

    .line 179
    :cond_6
    move-object v9, v2

    .line 180
    :goto_3
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->P:Lgv7;

    .line 181
    .line 182
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 187
    .line 188
    invoke-virtual {v1}, Llo;->getText()Landroid/text/Editable;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    if-eqz v1, :cond_7

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    if-eqz v1, :cond_7

    .line 199
    .line 200
    invoke-static {v1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    goto :goto_4

    .line 209
    :cond_7
    move-object v1, v2

    .line 210
    :goto_4
    invoke-static {v1}, Lio4;->f(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_8

    .line 215
    .line 216
    move-object v10, v1

    .line 217
    goto :goto_5

    .line 218
    :cond_8
    move-object v10, v2

    .line 219
    :goto_5
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->Q:Lgv7;

    .line 220
    .line 221
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 226
    .line 227
    invoke-virtual {v1}, Llo;->getText()Landroid/text/Editable;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    if-eqz v1, :cond_9

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    if-eqz v1, :cond_9

    .line 238
    .line 239
    invoke-static {v1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    goto :goto_6

    .line 248
    :cond_9
    move-object v1, v2

    .line 249
    :goto_6
    invoke-static {v1}, Lio4;->f(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_a

    .line 254
    .line 255
    move-object v11, v1

    .line 256
    goto :goto_7

    .line 257
    :cond_a
    move-object v11, v2

    .line 258
    :goto_7
    new-instance v4, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 259
    .line 260
    const/4 v5, 0x0

    .line 261
    const/4 v6, 0x0

    .line 262
    const/4 v7, 0x0

    .line 263
    const/4 v8, 0x0

    .line 264
    const/16 v12, 0xf

    .line 265
    .line 266
    const/4 v13, 0x0

    .line 267
    invoke-direct/range {v4 .. v13}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->K:Ll90;

    .line 271
    .line 272
    invoke-virtual {v0}, Ll90;->getValue()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Lorg/swiftapps/swiftbackup/contributor/a;

    .line 277
    .line 278
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/contributor/a;->g:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 279
    .line 280
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->get_status()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v13

    .line 284
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/contributor/a;->g:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 285
    .line 286
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->getType()Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;

    .line 287
    .line 288
    .line 289
    move-result-object v14

    .line 290
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/contributor/a;->g:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 291
    .line 292
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->get_name()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v15

    .line 296
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/contributor/a;->g:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 297
    .line 298
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->get_locales()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v16

    .line 302
    const/16 v20, 0x70

    .line 303
    .line 304
    const/16 v21, 0x0

    .line 305
    .line 306
    const/16 v17, 0x0

    .line 307
    .line 308
    const/16 v18, 0x0

    .line 309
    .line 310
    const/16 v19, 0x0

    .line 311
    .line 312
    move-object v12, v4

    .line 313
    invoke-static/range {v12 .. v21}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->copy$default(Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;Ljava/lang/String;Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    iput-object v1, v0, Lorg/swiftapps/swiftbackup/contributor/a;->g:Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 318
    .line 319
    return-void

    .line 320
    nop

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p0, p0, Lmv1;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p0, p0, Lmv1;->a:I

    .line 2
    .line 3
    return-void
.end method
