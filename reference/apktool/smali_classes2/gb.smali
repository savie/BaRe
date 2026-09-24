.class public final synthetic Lgb;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lig2;
.implements Lg36;
.implements Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lhm6;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lgb;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lgb;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lgb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/pcloud/sdk/internal/a;

    .line 4
    .line 5
    const-class v0, Lhw3;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/pcloud/sdk/internal/a;->f(Lokhttp3/Response;Ljava/lang/Class;)Lgf;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lhw3;

    .line 12
    .line 13
    invoke-virtual {p0}, Lhw3;->d()Lbj6;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public c(Lga6;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lgb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lib;

    .line 4
    .line 5
    iget-object p0, p0, Lib;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    invoke-interface {p1}, Lga6;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Le6;->d()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public construct()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lgb;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->n(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9

    .line 1
    iget v0, p0, Lgb;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lgb;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    sparse-switch v0, :sswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lm37;

    .line 10
    .line 11
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const v0, 0x7f0a0047

    .line 16
    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->AppsQuickActions:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lq47;->j(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const v0, 0x7f0a0046

    .line 31
    .line 32
    .line 33
    if-ne p1, v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->AppsLabels:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lq47;->j(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const v0, 0x7f0a0045

    .line 46
    .line 47
    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->AppConfig:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lq47;->j(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const v0, 0x7f0a006f

    .line 61
    .line 62
    .line 63
    if-ne p1, v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->Messages:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lq47;->j(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const v0, 0x7f0a0048

    .line 76
    .line 77
    .line 78
    if-ne p1, v0, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->CallLogs:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lq47;->j(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const v0, 0x7f0a0063

    .line 91
    .line 92
    .line 93
    if-ne p1, v0, :cond_5

    .line 94
    .line 95
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->Folders:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lq47;->j(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    const v0, 0x7f0a0091

    .line 106
    .line 107
    .line 108
    if-ne p1, v0, :cond_6

    .line 109
    .line 110
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->Wallpapers:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lq47;->j(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_6
    const v0, 0x7f0a0092

    .line 121
    .line 122
    .line 123
    if-ne p1, v0, :cond_7

    .line 124
    .line 125
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->Wifi:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 130
    .line 131
    invoke-virtual {p0, p1}, Lq47;->j(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;)V

    .line 132
    .line 133
    .line 134
    :cond_7
    :goto_0
    return v1

    .line 135
    :sswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 136
    .line 137
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 138
    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    const v0, 0x7f0a008b

    .line 144
    .line 145
    .line 146
    if-ne p1, v0, :cond_8

    .line 147
    .line 148
    const-class p1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 149
    .line 150
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_8
    const v0, 0x7f0a007f

    .line 155
    .line 156
    .line 157
    const-string v2, "text/plain"

    .line 158
    .line 159
    if-ne p1, v0, :cond_9

    .line 160
    .line 161
    :try_start_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Ldd1;->getConstant()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p1, "_settings.txt"

    .line 178
    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    new-instance v0, Lu10;

    .line 187
    .line 188
    const/4 v3, 0x5

    .line 189
    invoke-direct {v0, p0, v3}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v2, p1, v0}, Ler6;->V(Ljava/lang/String;Ljava/lang/String;Lmt3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    move-object p1, v0

    .line 198
    move-object v5, p1

    .line 199
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 200
    .line 201
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    const/16 v7, 0x8

    .line 206
    .line 207
    const/4 v8, 0x0

    .line 208
    const-string v4, "exportSettings"

    .line 209
    .line 210
    const/4 v6, 0x0

    .line 211
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_9
    const v0, 0x7f0a0069

    .line 216
    .line 217
    .line 218
    if-ne p1, v0, :cond_a

    .line 219
    .line 220
    :try_start_1
    new-instance p1, Lu42;

    .line 221
    .line 222
    invoke-direct {p1, p0, v1}, Lu42;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v2, p1}, Ler6;->W(Ljava/lang/String;Lmt3;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :catch_1
    move-exception v0

    .line 230
    move-object p1, v0

    .line 231
    move-object v5, p1

    .line 232
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 233
    .line 234
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    const/16 v7, 0x8

    .line 239
    .line 240
    const/4 v8, 0x0

    .line 241
    const-string v4, "importSettings"

    .line 242
    .line 243
    const/4 v6, 0x0

    .line 244
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_a
    :goto_1
    return v1

    .line 248
    :sswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 249
    .line 250
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 251
    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    const v0, 0x7f0a006a

    .line 257
    .line 258
    .line 259
    if-ne p1, v0, :cond_b

    .line 260
    .line 261
    invoke-virtual {p0}, Ldt;->b0()Z

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    if-eqz p1, :cond_c

    .line 266
    .line 267
    sget-object p1, Lq05;->DEVICE:Lq05;

    .line 268
    .line 269
    invoke-virtual {p0, p1}, Ldt;->f0(Lq05;)V

    .line 270
    .line 271
    .line 272
    sget-object p0, Lbt;->LOCAL:Lbt;

    .line 273
    .line 274
    invoke-static {p0}, Ly13;->E(Lbt;)V

    .line 275
    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_b
    const v0, 0x7f0a004c

    .line 279
    .line 280
    .line 281
    if-ne p1, v0, :cond_c

    .line 282
    .line 283
    invoke-virtual {p0}, Ldt;->Y()Lbt;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p1}, Lbt;->isLocalSection()Z

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-eqz p1, :cond_c

    .line 292
    .line 293
    sget-object p1, Lq05;->CLOUD:Lq05;

    .line 294
    .line 295
    invoke-virtual {p0, p1}, Ldt;->f0(Lq05;)V

    .line 296
    .line 297
    .line 298
    sget-object p0, Lbt;->CLOUD:Lbt;

    .line 299
    .line 300
    invoke-static {p0}, Ly13;->E(Lbt;)V

    .line 301
    .line 302
    .line 303
    :cond_c
    :goto_2
    return v1

    .line 304
    nop

    .line 305
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lgb;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lgb;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lt32;

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$wNyRQU4FRR3qZkFIXqBcIQRWXcc(Lt32;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Lu32;

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$wBiSTxUbOhG0ep8ucfM6ivfiSz8(Lu32;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
