.class public final synthetic Lsm;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsm;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget p0, p0, Lsm;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-boolean p0, Lmp6;->g:Z

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Lq63;

    .line 18
    .line 19
    invoke-static {v1}, Ltv7;->b(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0, v0, v4}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v4}, Lq63;->r(I)Landroid/os/ParcelFileDescriptor;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :goto_0
    return-object v3

    .line 31
    :pswitch_0
    invoke-static {}, Lnp6$b;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_1
    sget-boolean p0, Lj36;->a:Z

    .line 37
    .line 38
    const-string p0, "checkSdkVersionLimits:"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_2
    sget p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 42
    .line 43
    sget-object p0, Llr4;->a:Llr4;

    .line 44
    .line 45
    sget-object p0, Lzn4;->a:Lzn4;

    .line 46
    .line 47
    new-instance p0, Lsm;

    .line 48
    .line 49
    const/16 v0, 0xa

    .line 50
    .line 51
    invoke-direct {p0, v0}, Lsm;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Lzn4;->c(Lbt3;)V

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :pswitch_3
    sget-object p0, Llr4;->a:Llr4;

    .line 59
    .line 60
    new-instance p0, Lbk;

    .line 61
    .line 62
    const/16 v0, 0x1b

    .line 63
    .line 64
    invoke-direct {p0, v3, v0}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Lzn4;->c(Lbt3;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Llr4;->i()V

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    :pswitch_4
    sget-object p0, Lmp6;->a:Lmp6;

    .line 75
    .line 76
    invoke-static {p0, v4, v0, v1}, Lmp6;->d(Lmp6;ZZI)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_5
    sget-boolean p0, Lg42;->a:Z

    .line 86
    .line 87
    const-string p0, "AQJB00ddeFjHIhrhI0Zmk64s5lfaz0B5Ic0rjyD2QlsqOWc1FCOSxIIiUErAOa/cQyMbHcVp"

    .line 88
    .line 89
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :pswitch_6
    sget-boolean p0, Lg42;->a:Z

    .line 95
    .line 96
    const-string p0, "AQIA0W84FmnX8iU6NWj9MGDx2of7B4szRKFQoD/RA8cRyJnS2MJj3Q892mbhIX9jSrAnf09G7hQ="

    .line 97
    .line 98
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :pswitch_7
    sget-boolean p0, Lg42;->a:Z

    .line 104
    .line 105
    const-string p0, "AQKFm9ZDY9prw/IU2BwVtPZOymTTHDrc3ZFXNGu1Kq8Spd21Yv4TQ83XS89UZKtt"

    .line 106
    .line 107
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :pswitch_8
    invoke-static {}, Ldd1;->J()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :pswitch_9
    new-instance p0, Lta1;

    .line 118
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_a
    sget-boolean p0, Lhp0;->a:Z

    .line 124
    .line 125
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 126
    .line 127
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    sget-boolean v1, Lhp0;->a:Z

    .line 139
    .line 140
    if-eqz v1, :cond_1

    .line 141
    .line 142
    goto/16 :goto_3

    .line 143
    .line 144
    :cond_1
    const-string v1, "Performing battery optimization tests"

    .line 145
    .line 146
    const-string v3, "BatteryOptUtil"

    .line 147
    .line 148
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    invoke-static {p0, v0}, Lhp0;->a(Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    invoke-static {p0}, Lhp0;->b(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_2

    .line 159
    .line 160
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 161
    .line 162
    const-string v6, "Check 1 failed"

    .line 163
    .line 164
    sget-object v7, Lvr6$a;->YELLOW:Lvr6$a;

    .line 165
    .line 166
    invoke-virtual {v5, v3, v6, v7}, Lvr6;->e(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 167
    .line 168
    .line 169
    :cond_2
    invoke-static {p0, v4}, Lhp0;->a(Ljava/lang/String;Z)V

    .line 170
    .line 171
    .line 172
    invoke-static {p0}, Lhp0;->b(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_3

    .line 177
    .line 178
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 179
    .line 180
    const-string v7, "Check 2 failed"

    .line 181
    .line 182
    sget-object v8, Lvr6$a;->YELLOW:Lvr6$a;

    .line 183
    .line 184
    invoke-virtual {v6, v3, v7, v8}, Lvr6;->e(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 185
    .line 186
    .line 187
    :cond_3
    invoke-static {p0, v0}, Lhp0;->a(Ljava/lang/String;Z)V

    .line 188
    .line 189
    .line 190
    invoke-static {p0}, Lhp0;->b(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-nez p0, :cond_4

    .line 195
    .line 196
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 197
    .line 198
    const-string v7, "Check 3 failed"

    .line 199
    .line 200
    sget-object v8, Lvr6$a;->YELLOW:Lvr6$a;

    .line 201
    .line 202
    invoke-virtual {v6, v3, v7, v8}, Lvr6;->e(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 203
    .line 204
    .line 205
    :cond_4
    if-eqz v1, :cond_5

    .line 206
    .line 207
    if-nez v5, :cond_5

    .line 208
    .line 209
    if-eqz p0, :cond_5

    .line 210
    .line 211
    move v0, v4

    .line 212
    :cond_5
    sput-boolean v0, Lhp0;->a:Z

    .line 213
    .line 214
    if-eqz v0, :cond_6

    .line 215
    .line 216
    const-string p0, "passed"

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_6
    const-string p0, "failed"

    .line 220
    .line 221
    :goto_1
    sget-object v0, Lhs5;->b:Lgv7;

    .line 222
    .line 223
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Ljava/lang/Boolean;

    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_7

    .line 234
    .line 235
    sget-object v0, Lgs5;->Xiaomi:Lgs5;

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_7
    sget-object v0, Lhs5;->a:Lgv7;

    .line 239
    .line 240
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    check-cast v0, Ljava/lang/Boolean;

    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_8

    .line 251
    .line 252
    sget-object v0, Lgs5;->OnePlus:Lgs5;

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_8
    sget-object v0, Lgs5;->Other:Lgs5;

    .line 256
    .line 257
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v4, "Manufacturer specific tests "

    .line 260
    .line 261
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string p0, " ("

    .line 268
    .line 269
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string p0, ")"

    .line 276
    .line 277
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    sget-boolean p0, Lhp0;->a:Z

    .line 285
    .line 286
    if-eqz p0, :cond_9

    .line 287
    .line 288
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_9
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 293
    .line 294
    const/4 v8, 0x4

    .line 295
    const/4 v9, 0x0

    .line 296
    const-string v5, "BatteryOptUtil"

    .line 297
    .line 298
    const/4 v7, 0x0

    .line 299
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    :goto_3
    return-object v2

    .line 303
    :pswitch_b
    sget-object p0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 304
    .line 305
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 306
    .line 307
    .line 308
    move-result p0

    .line 309
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    return-object p0

    .line 314
    :pswitch_c
    sget-object p0, Lmk7;->a:Lgv7;

    .line 315
    .line 316
    invoke-static {}, Lb67;->d()Z

    .line 317
    .line 318
    .line 319
    move-result p0

    .line 320
    if-eqz p0, :cond_a

    .line 321
    .line 322
    new-instance p0, Lok7;

    .line 323
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_a
    new-instance p0, Lnk7;

    .line 329
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    .line 332
    .line 333
    :goto_4
    return-object p0

    .line 334
    :pswitch_d
    new-instance p0, Lcl;

    .line 335
    .line 336
    invoke-direct {p0, v4}, Lcl;-><init>(I)V

    .line 337
    .line 338
    .line 339
    :try_start_0
    invoke-virtual {p0}, Lcl;->invoke()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :catch_0
    check-cast v3, Ljava/lang/String;

    .line 344
    .line 345
    return-object v3

    .line 346
    nop

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
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
