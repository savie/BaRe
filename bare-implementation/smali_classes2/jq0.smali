.class public final synthetic Ljq0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lw76;
.implements Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;
.implements Lg36;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ljq0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ljq0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ljq0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lyq0;Lib;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ljq0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object p0, p0, Ljq0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p2, p2, Lib;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p2, Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string v3, "Fetched in-app SKU details: Total: ("

    .line 26
    .line 27
    const-string v4, ")"

    .line 28
    .line 29
    invoke-static {v2, v3, v4}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v5, 0x4

    .line 34
    const/4 v6, 0x0

    .line 35
    const-string v2, "BillingManager"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v1 .. v6}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget v1, p1, Lyq0;->a:I

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget-object p2, Lwq0;->a:Lwq0;

    .line 56
    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "Error when querying in-app skus: "

    .line 60
    .line 61
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p2, "_queryProductDetailsFromGooglePlay"

    .line 72
    .line 73
    invoke-static {p2, p1}, Lwq0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public construct()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ljq0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/nimbusds/jose/shaded/gson/InstanceCreator;

    .line 4
    .line 5
    iget-object p0, p0, Ljq0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/reflect/Type;

    .line 8
    .line 9
    invoke-static {v0, p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->j(Lcom/nimbusds/jose/shaded/gson/InstanceCreator;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    iget v0, p0, Ljq0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Ljq0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Ljq0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lcs8;

    .line 13
    .line 14
    iget-object v0, p0, Lcs8;->a:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 15
    .line 16
    check-cast v3, Let8;

    .line 17
    .line 18
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const v4, 0x7f0a006b

    .line 23
    .line 24
    .line 25
    if-ne p1, v4, :cond_0

    .line 26
    .line 27
    new-instance p0, Landroid/content/Intent;

    .line 28
    .line 29
    const-string p1, "android.settings.WIFI_SETTINGS"

    .line 30
    .line 31
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/high16 p1, 0x10000000

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    sget-object v0, Lzn4;->a:Lzn4;

    .line 64
    .line 65
    invoke-static {p1, p0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const v4, 0x7f0a003c

    .line 70
    .line 71
    .line 72
    if-ne p1, v4, :cond_1

    .line 73
    .line 74
    iget-object p0, p0, Lcs8;->b:Liu8;

    .line 75
    .line 76
    new-instance p1, Lbz7;

    .line 77
    .line 78
    invoke-static {v3}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v2, Lq05;->DEVICE:Lq05;

    .line 83
    .line 84
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-direct {p1, v0, v2, v3}, Lbz7;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    new-instance v0, Lut8;

    .line 96
    .line 97
    const v2, 0x7f130086

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, p1, v2, p0, v1}, Lut8;-><init>(Lbz7;ILiu8;Z)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    const v4, 0x7f0a003a

    .line 108
    .line 109
    .line 110
    if-ne p1, v4, :cond_2

    .line 111
    .line 112
    new-instance p1, Ld11;

    .line 113
    .line 114
    const/16 v4, 0xf

    .line 115
    .line 116
    invoke-direct {p1, v4, p0, v3}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v2, p1, v1}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 120
    .line 121
    .line 122
    :cond_2
    :goto_0
    return v1

    .line 123
    :pswitch_0
    check-cast p0, Lj57;

    .line 124
    .line 125
    iget-object v0, p0, Lj57;->l:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 126
    .line 127
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 128
    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    const v4, 0x7f0a007e

    .line 134
    .line 135
    .line 136
    if-ne p1, v4, :cond_3

    .line 137
    .line 138
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 139
    .line 140
    new-instance p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$SingleSchedule;

    .line 141
    .line 142
    invoke-direct {p0, v3}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$SingleSchedule;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    const p1, 0x7f130426

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p1}, Lil0;->M(I)V

    .line 152
    .line 153
    .line 154
    new-instance p1, Lcz;

    .line 155
    .line 156
    const/16 v2, 0x11

    .line 157
    .line 158
    invoke-direct {p1, v0, v2}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 159
    .line 160
    .line 161
    invoke-static {v1, p0, p1}, Lorg/swiftapps/swiftbackup/home/schedule/a;->b(ZLorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;Lmt3;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_4

    .line 165
    .line 166
    :cond_3
    const v4, 0x7f0a0065

    .line 167
    .line 168
    .line 169
    if-ne p1, v4, :cond_7

    .line 170
    .line 171
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemType()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    sget-object p1, Li57;->a:[I

    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    aget p0, p1, p0

    .line 182
    .line 183
    if-eq p0, v1, :cond_6

    .line 184
    .line 185
    const/4 p1, 0x2

    .line 186
    if-eq p0, p1, :cond_5

    .line 187
    .line 188
    const/4 p1, 0x3

    .line 189
    if-eq p0, p1, :cond_4

    .line 190
    .line 191
    goto/16 :goto_4

    .line 192
    .line 193
    :cond_4
    sget p0, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;->S:I

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    new-instance p0, Landroid/content/Intent;

    .line 199
    .line 200
    const-class p1, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;

    .line 201
    .line 202
    invoke-direct {p0, v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_5
    sget p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 210
    .line 211
    invoke-static {v0}, Lus2;->D(Lk28;)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_6
    sget p0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 216
    .line 217
    invoke-static {v0}, Ljb9;->f0(Lsa1;)V

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_7
    const v4, 0x7f0a0050

    .line 222
    .line 223
    .line 224
    if-ne p1, v4, :cond_b

    .line 225
    .line 226
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    const-string v0, "app_locale"

    .line 231
    .line 232
    :try_start_1
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 233
    .line 234
    if-eqz v3, :cond_8

    .line 235
    .line 236
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    goto :goto_1

    .line 241
    :cond_8
    const-string v0, "prefs"

    .line 242
    .line 243
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    :catch_1
    :goto_1
    if-eqz v2, :cond_a

    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-nez v0, :cond_9

    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_9
    invoke-static {v2}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    goto :goto_3

    .line 265
    :cond_a
    :goto_2
    invoke-static {}, Lxx3;->h()Lis4;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    new-instance v0, Ljj2;

    .line 281
    .line 282
    const/4 v2, 0x7

    .line 283
    invoke-direct {v0, v2, p0, p1}, Ljj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    const-string p0, "schedule_id"

    .line 287
    .line 288
    invoke-static {p1, p0, v0}, Lorg/swiftapps/swiftbackup/common/Const;->f(Ljava/lang/String;Ljava/lang/String;Lmt3;)V

    .line 289
    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_b
    const v2, 0x7f0a0054

    .line 293
    .line 294
    .line 295
    if-ne p1, v2, :cond_c

    .line 296
    .line 297
    new-instance p1, Lxq;

    .line 298
    .line 299
    const/16 v2, 0x9

    .line 300
    .line 301
    invoke-direct {p1, v2, p0, v3}, Lxq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    const p0, 0x7f1301df

    .line 305
    .line 306
    .line 307
    invoke-static {v0, p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->J(Lio1;ILbt3;)V

    .line 308
    .line 309
    .line 310
    :cond_c
    :goto_4
    return v1

    .line 311
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
