.class public Lnet/openid/appauth/AuthorizationManagementActivity;
.super Lzm;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic f:I


# instance fields
.field public a:Z

.field public b:Landroid/content/Intent;

.field public c:La90;

.field public d:Landroid/app/PendingIntent;

.field public e:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lzm;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->a:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final n(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-array p1, v1, [Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {}, Lj15;->e()Lj15;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x5

    .line 12
    const-string v3, "No stored state - unable to handle response"

    .line 13
    .line 14
    invoke-virtual {v1, v2, v0, v3, p1}, Lj15;->f(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string v2, "authIntent"

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/content/Intent;

    .line 28
    .line 29
    iput-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->b:Landroid/content/Intent;

    .line 30
    .line 31
    const-string v2, "authStarted"

    .line 32
    .line 33
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iput-boolean v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->a:Z

    .line 38
    .line 39
    const-string v2, "completeIntent"

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroid/app/PendingIntent;

    .line 46
    .line 47
    iput-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->d:Landroid/app/PendingIntent;

    .line 48
    .line 49
    const-string v2, "cancelIntent"

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/app/PendingIntent;

    .line 56
    .line 57
    iput-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->e:Landroid/app/PendingIntent;

    .line 58
    .line 59
    :try_start_0
    const-string v2, "authRequest"

    .line 60
    .line 61
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v3, "authRequestType"

    .line 66
    .line 67
    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-static {v2, p1}, Ljm1;->O(Ljava/lang/String;Ljava/lang/String;)La90;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_1
    iput-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:La90;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    return-void

    .line 80
    :catch_0
    iget-object p1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->e:Landroid/app/PendingIntent;

    .line 81
    .line 82
    sget-object v0, Lw80;->a:Lz80;

    .line 83
    .line 84
    invoke-virtual {v0}, Lz80;->h()Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0, p1, v0, v1}, Lnet/openid/appauth/AuthorizationManagementActivity;->o(Landroid/app/PendingIntent;Landroid/content/Intent;I)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final o(Landroid/app/PendingIntent;Landroid/content/Intent;I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1, p0, p3, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception p0

    .line 9
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {}, Lj15;->e()Lj15;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x6

    .line 18
    const/4 p3, 0x0

    .line 19
    const-string v0, "Failed to send cancel intent"

    .line 20
    .line 21
    invoke-virtual {p1, p2, p3, v0, p0}, Lj15;->f(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationManagementActivity;->n(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationManagementActivity;->n(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio1;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onResume()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super {v0}, Landroidx/fragment/app/u;->onResume()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->a:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v1, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->b:Landroid/content/Intent;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->a:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    const-string v1, "Authorization flow canceled due to missing browser"

    .line 22
    .line 23
    new-array v4, v3, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v1, v4}, Lj15;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lx80;->b:Lz80;

    .line 29
    .line 30
    invoke-static {v1, v2}, Lz80;->g(Lz80;Ljava/lang/Exception;)Lz80;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lz80;->h()Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->e:Landroid/app/PendingIntent;

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1, v3}, Lnet/openid/appauth/AuthorizationManagementActivity;->o(Landroid/app/PendingIntent;Landroid/content/Intent;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_11

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v4, "error"

    .line 70
    .line 71
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    sget v2, Lz80;->f:I

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    const-string v2, "error_description"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-string v3, "error_uri"

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    sget-object v4, Lw80;->e:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Lz80;

    .line 102
    .line 103
    if-eqz v4, :cond_1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    sget-object v4, Lw80;->c:Lz80;

    .line 107
    .line 108
    :goto_0
    new-instance v5, Lz80;

    .line 109
    .line 110
    iget v6, v4, Lz80;->a:I

    .line 111
    .line 112
    iget v7, v4, Lz80;->b:I

    .line 113
    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    :goto_1
    move-object v9, v2

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    iget-object v2, v4, Lz80;->d:Ljava/lang/String;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :goto_2
    if-eqz v3, :cond_3

    .line 122
    .line 123
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    :goto_3
    move-object v10, v2

    .line 128
    goto :goto_4

    .line 129
    :cond_3
    iget-object v2, v4, Lz80;->e:Landroid/net/Uri;

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :goto_4
    const/4 v11, 0x0

    .line 133
    invoke-direct/range {v5 .. v11}, Lz80;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Lz80;->h()Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    goto/16 :goto_b

    .line 141
    .line 142
    :cond_4
    iget-object v3, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:La90;

    .line 143
    .line 144
    instance-of v4, v3, Le90;

    .line 145
    .line 146
    const-string v5, "state must not be empty"

    .line 147
    .line 148
    const-string v6, "state"

    .line 149
    .line 150
    if-eqz v4, :cond_b

    .line 151
    .line 152
    move-object v8, v3

    .line 153
    check-cast v8, Le90;

    .line 154
    .line 155
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 156
    .line 157
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    invoke-static {v9, v5}, Ljb9;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v3, "token_type"

    .line 168
    .line 169
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    const-string v3, "tokenType must not be empty"

    .line 174
    .line 175
    invoke-static {v10, v3}, Ljb9;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v3, "code"

    .line 179
    .line 180
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    const-string v3, "authorizationCode must not be empty"

    .line 185
    .line 186
    invoke-static {v11, v3}, Ljb9;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v3, "access_token"

    .line 190
    .line 191
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    const-string v3, "accessToken must not be empty"

    .line 196
    .line 197
    invoke-static {v12, v3}, Ljb9;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v3, "expires_in"

    .line 201
    .line 202
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    if-eqz v3, :cond_5

    .line 207
    .line 208
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 209
    .line 210
    .line 211
    move-result-wide v3

    .line 212
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    goto :goto_5

    .line 217
    :cond_5
    move-object v3, v2

    .line 218
    :goto_5
    if-nez v3, :cond_6

    .line 219
    .line 220
    move-object v13, v2

    .line 221
    goto :goto_6

    .line 222
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 223
    .line 224
    .line 225
    move-result-wide v4

    .line 226
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 229
    .line 230
    .line 231
    move-result-wide v13

    .line 232
    invoke-virtual {v6, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 233
    .line 234
    .line 235
    move-result-wide v6

    .line 236
    add-long/2addr v6, v4

    .line 237
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    move-object v13, v3

    .line 242
    :goto_6
    const-string v3, "id_token"

    .line 243
    .line 244
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v14

    .line 248
    const-string v3, "idToken cannot be empty"

    .line 249
    .line 250
    invoke-static {v14, v3}, Ljb9;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const-string v3, "scope"

    .line 254
    .line 255
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_7

    .line 264
    .line 265
    :goto_7
    move-object v15, v2

    .line 266
    goto :goto_8

    .line 267
    :cond_7
    const-string v4, " +"

    .line 268
    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    if-nez v3, :cond_8

    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_8
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v3}, Lsz8;->J(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    move-object v15, v3

    .line 285
    :goto_8
    sget-object v3, Lg90;->F:Ljava/util/Set;

    .line 286
    .line 287
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 288
    .line 289
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    :cond_9
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    if-eqz v6, :cond_a

    .line 305
    .line 306
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    check-cast v6, Ljava/lang/String;

    .line 311
    .line 312
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    if-nez v7, :cond_9

    .line 317
    .line 318
    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    goto :goto_9

    .line 326
    :cond_a
    sget-object v3, Lg90;->F:Ljava/util/Set;

    .line 327
    .line 328
    invoke-static {v4, v3}, Lji8;->e(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    new-instance v7, Lg90;

    .line 333
    .line 334
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 335
    .line 336
    .line 337
    move-result-object v16

    .line 338
    invoke-direct/range {v7 .. v16}, Lg90;-><init>(Le90;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 339
    .line 340
    .line 341
    goto :goto_a

    .line 342
    :cond_b
    instance-of v4, v3, Lrw2;

    .line 343
    .line 344
    if-eqz v4, :cond_10

    .line 345
    .line 346
    check-cast v3, Lrw2;

    .line 347
    .line 348
    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    if-eqz v4, :cond_c

    .line 353
    .line 354
    invoke-static {v4, v5}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    :cond_c
    new-instance v7, Lsw2;

    .line 358
    .line 359
    invoke-direct {v7, v3, v4}, Lsw2;-><init>(Lrw2;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    :goto_a
    iget-object v3, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:La90;

    .line 363
    .line 364
    invoke-interface {v3}, La90;->getState()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    if-nez v3, :cond_d

    .line 369
    .line 370
    invoke-virtual {v7}, Lrs9;->l()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    if-nez v3, :cond_e

    .line 375
    .line 376
    :cond_d
    iget-object v3, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:La90;

    .line 377
    .line 378
    invoke-interface {v3}, La90;->getState()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    if-eqz v3, :cond_f

    .line 383
    .line 384
    iget-object v3, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:La90;

    .line 385
    .line 386
    invoke-interface {v3}, La90;->getState()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    invoke-virtual {v7}, Lrs9;->l()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-nez v3, :cond_f

    .line 399
    .line 400
    :cond_e
    invoke-virtual {v7}, Lrs9;->l()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    iget-object v4, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:La90;

    .line 405
    .line 406
    invoke-interface {v4}, La90;->getState()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    invoke-static {}, Lj15;->e()Lj15;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    const/4 v5, 0x5

    .line 419
    const-string v6, "State returned in authorization response (%s) does not match state from request (%s) - discarding response"

    .line 420
    .line 421
    invoke-virtual {v4, v5, v2, v6, v3}, Lj15;->f(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    sget-object v2, Lw80;->d:Lz80;

    .line 425
    .line 426
    invoke-virtual {v2}, Lz80;->h()Landroid/content/Intent;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    goto :goto_b

    .line 431
    :cond_f
    invoke-virtual {v7}, Lrs9;->v()Landroid/content/Intent;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    :goto_b
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 436
    .line 437
    .line 438
    iget-object v1, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->d:Landroid/app/PendingIntent;

    .line 439
    .line 440
    const/4 v3, -0x1

    .line 441
    invoke-virtual {v0, v1, v2, v3}, Lnet/openid/appauth/AuthorizationManagementActivity;->o(Landroid/app/PendingIntent;Landroid/content/Intent;I)V

    .line 442
    .line 443
    .line 444
    goto :goto_c

    .line 445
    :cond_10
    const-string v0, "Malformed request or uri"

    .line 446
    .line 447
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    return-void

    .line 451
    :cond_11
    const-string v1, "Authorization flow canceled by user"

    .line 452
    .line 453
    new-array v4, v3, [Ljava/lang/Object;

    .line 454
    .line 455
    invoke-static {v1, v4}, Lj15;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    sget-object v1, Lx80;->a:Lz80;

    .line 459
    .line 460
    invoke-static {v1, v2}, Lz80;->g(Lz80;Ljava/lang/Exception;)Lz80;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    invoke-virtual {v1}, Lz80;->h()Landroid/content/Intent;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    iget-object v2, v0, Lnet/openid/appauth/AuthorizationManagementActivity;->e:Landroid/app/PendingIntent;

    .line 469
    .line 470
    invoke-virtual {v0, v2, v1, v3}, Lnet/openid/appauth/AuthorizationManagementActivity;->o(Landroid/app/PendingIntent;Landroid/content/Intent;I)V

    .line 471
    .line 472
    .line 473
    :goto_c
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 474
    .line 475
    .line 476
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lio1;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "authStarted"

    .line 5
    .line 6
    iget-boolean v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->a:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const-string v0, "authIntent"

    .line 12
    .line 13
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->b:Landroid/content/Intent;

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:La90;

    .line 19
    .line 20
    invoke-interface {v0}, La90;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "authRequest"

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:La90;

    .line 30
    .line 31
    instance-of v1, v0, Le90;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string v0, "authorization"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    instance-of v0, v0, Lrw2;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string v0, "end_session"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    const-string v1, "authRequestType"

    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "completeIntent"

    .line 52
    .line 53
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->d:Landroid/app/PendingIntent;

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "cancelIntent"

    .line 59
    .line 60
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->e:Landroid/app/PendingIntent;

    .line 61
    .line 62
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
