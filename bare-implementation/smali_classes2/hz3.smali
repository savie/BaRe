.class public abstract Lhz3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a()Landroid/accounts/Account;
    .locals 6

    .line 1
    sget-object v0, Ld45;->b:Ld45;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    move-object v2, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getProviderData()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    move-object v4, v3

    .line 34
    check-cast v4, Ldh8;

    .line 35
    .line 36
    invoke-interface {v4}, Ldh8;->l()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v5, "google.com"

    .line 41
    .line 42
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    move-object v3, v1

    .line 50
    :goto_0
    check-cast v3, Ldh8;

    .line 51
    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    invoke-interface {v3}, Ldh8;->m()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_5

    .line 59
    .line 60
    :cond_4
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getEmail()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :cond_5
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    .line 70
    :goto_1
    if-nez v2, :cond_6

    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_6
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 74
    .line 75
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Ll39;->k(Landroid/content/Context;)Ll39;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v3, v0, Ll39;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    monitor-exit v0

    .line 89
    if-eqz v3, :cond_8

    .line 90
    .line 91
    iget-object v0, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d:Ljava/lang/String;

    .line 92
    .line 93
    if-nez v0, :cond_7

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_7
    new-instance v3, Landroid/accounts/Account;

    .line 97
    .line 98
    const-string v4, "com.google"

    .line 99
    .line 100
    invoke-direct {v3, v0, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_8
    :goto_2
    move-object v3, v1

    .line 105
    :goto_3
    if-eqz v3, :cond_9

    .line 106
    .line 107
    iget-object v1, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 108
    .line 109
    :cond_9
    const/4 v0, 0x1

    .line 110
    invoke-static {v1, v2, v0}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_a

    .line 115
    .line 116
    return-object v3

    .line 117
    :cond_a
    new-instance v0, Landroid/accounts/Account;

    .line 118
    .line 119
    const-string v1, "com.google"

    .line 120
    .line 121
    invoke-direct {v0, v2, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-object v0

    .line 125
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    throw v1

    .line 127
    :catchall_0
    move-exception v1

    .line 128
    goto :goto_4
.end method

.method public static b(Lf80;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_8

    .line 3
    .line 4
    new-instance v1, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lf80;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "refreshToken"

    .line 14
    .line 15
    invoke-static {v1, v3, v2}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lf80;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Ljava/lang/String;

    .line 21
    .line 22
    const-string v4, "scope"

    .line 23
    .line 24
    invoke-static {v1, v4, v2}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lf80;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Ll90;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const-string v5, "config"

    .line 34
    .line 35
    invoke-virtual {v2}, Ll90;->i()Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v5, v2}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v2, p0, Lf80;->g:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lz80;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    const-string v5, "mAuthorizationException"

    .line 49
    .line 50
    invoke-virtual {v2}, Lz80;->i()Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1, v5, v2}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v2, p0, Lf80;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lg90;

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    const-string v5, "lastAuthorizationResponse"

    .line 64
    .line 65
    invoke-virtual {v2}, Lg90;->L()Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v1, v5, v2}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v2, p0, Lf80;->e:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Ln58;

    .line 75
    .line 76
    const-string v5, "additionalParameters"

    .line 77
    .line 78
    const-string v6, "configuration"

    .line 79
    .line 80
    const-string v7, "request"

    .line 81
    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    new-instance v8, Lorg/json/JSONObject;

    .line 85
    .line 86
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v9, v2, Ln58;->a:Ll58;

    .line 90
    .line 91
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    new-instance v10, Lorg/json/JSONObject;

    .line 95
    .line 96
    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .line 98
    .line 99
    iget-object v11, v9, Ll58;->a:Ll90;

    .line 100
    .line 101
    invoke-virtual {v11}, Ll90;->i()Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-static {v10, v6, v11}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 106
    .line 107
    .line 108
    const-string v11, "clientId"

    .line 109
    .line 110
    iget-object v12, v9, Ll58;->c:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v10, v11, v12}, Ljm1;->H(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v11, "nonce"

    .line 116
    .line 117
    iget-object v12, v9, Ll58;->b:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v10, v11, v12}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v11, "grantType"

    .line 123
    .line 124
    iget-object v12, v9, Ll58;->d:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v10, v11, v12}, Ljm1;->H(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v11, "redirectUri"

    .line 130
    .line 131
    iget-object v12, v9, Ll58;->e:Landroid/net/Uri;

    .line 132
    .line 133
    invoke-static {v10, v11, v12}, Ljm1;->K(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    .line 135
    .line 136
    iget-object v11, v9, Ll58;->g:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v10, v4, v11}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v11, "authorizationCode"

    .line 142
    .line 143
    iget-object v12, v9, Ll58;->f:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v10, v11, v12}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v11, v9, Ll58;->h:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v10, v3, v11}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v3, "codeVerifier"

    .line 154
    .line 155
    iget-object v11, v9, Ll58;->i:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v10, v3, v11}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v3, v9, Ll58;->j:Ljava/util/Map;

    .line 161
    .line 162
    invoke-static {v3}, Ljm1;->E(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-static {v10, v5, v3}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v8, v7, v10}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 170
    .line 171
    .line 172
    const-string v3, "token_type"

    .line 173
    .line 174
    iget-object v9, v2, Ln58;->b:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v8, v3, v9}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v3, "access_token"

    .line 180
    .line 181
    iget-object v9, v2, Ln58;->c:Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {v8, v3, v9}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v3, "expires_at"

    .line 187
    .line 188
    iget-object v9, v2, Ln58;->d:Ljava/lang/Long;

    .line 189
    .line 190
    invoke-static {v8, v3, v9}, Ljm1;->L(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    .line 192
    .line 193
    const-string v3, "id_token"

    .line 194
    .line 195
    iget-object v9, v2, Ln58;->e:Ljava/lang/String;

    .line 196
    .line 197
    invoke-static {v8, v3, v9}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v3, "refresh_token"

    .line 201
    .line 202
    iget-object v9, v2, Ln58;->f:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v8, v3, v9}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object v3, v2, Ln58;->g:Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {v8, v4, v3}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v2, v2, Ln58;->h:Ljava/util/Map;

    .line 213
    .line 214
    invoke-static {v2}, Ljm1;->E(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-static {v8, v5, v2}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 219
    .line 220
    .line 221
    const-string v2, "mLastTokenResponse"

    .line 222
    .line 223
    invoke-static {v1, v2, v8}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 224
    .line 225
    .line 226
    :cond_3
    iget-object v2, p0, Lf80;->f:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v2, Lfi6;

    .line 229
    .line 230
    if-eqz v2, :cond_7

    .line 231
    .line 232
    new-instance v3, Lorg/json/JSONObject;

    .line 233
    .line 234
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 235
    .line 236
    .line 237
    iget-object v4, v2, Lfi6;->a:Lei6;

    .line 238
    .line 239
    new-instance v8, Lorg/json/JSONObject;

    .line 240
    .line 241
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 242
    .line 243
    .line 244
    iget-object v9, v4, Lei6;->b:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-static {v9}, Ljm1;->Y(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    const-string v10, "redirect_uris"

    .line 251
    .line 252
    invoke-static {v8, v10, v9}, Ljm1;->I(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 253
    .line 254
    .line 255
    const-string v9, "application_type"

    .line 256
    .line 257
    const-string v10, "native"

    .line 258
    .line 259
    invoke-static {v8, v9, v10}, Ljm1;->H(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v9, v4, Lei6;->c:Ljava/util/List;

    .line 263
    .line 264
    if-eqz v9, :cond_4

    .line 265
    .line 266
    const-string v10, "response_types"

    .line 267
    .line 268
    invoke-static {v9}, Ljm1;->Y(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    invoke-static {v8, v10, v9}, Ljm1;->I(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 273
    .line 274
    .line 275
    :cond_4
    iget-object v9, v4, Lei6;->d:Ljava/util/List;

    .line 276
    .line 277
    if-eqz v9, :cond_5

    .line 278
    .line 279
    const-string v10, "grant_types"

    .line 280
    .line 281
    invoke-static {v9}, Ljm1;->Y(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    invoke-static {v8, v10, v9}, Ljm1;->I(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 286
    .line 287
    .line 288
    :cond_5
    const-string v9, "subject_type"

    .line 289
    .line 290
    iget-object v10, v4, Lei6;->e:Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {v8, v9, v10}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    const-string v9, "jwks_uri"

    .line 296
    .line 297
    iget-object v10, v4, Lei6;->f:Landroid/net/Uri;

    .line 298
    .line 299
    invoke-static {v8, v9, v10}, Ljm1;->K(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    .line 300
    .line 301
    .line 302
    const-string v9, "jwks"

    .line 303
    .line 304
    iget-object v10, v4, Lei6;->g:Lorg/json/JSONObject;

    .line 305
    .line 306
    if-nez v10, :cond_6

    .line 307
    .line 308
    goto :goto_0

    .line 309
    :cond_6
    :try_start_0
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .line 311
    .line 312
    :goto_0
    iget-object v9, v4, Lei6;->h:Ljava/lang/String;

    .line 313
    .line 314
    const-string v10, "token_endpoint_auth_method"

    .line 315
    .line 316
    invoke-static {v8, v10, v9}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    iget-object v9, v4, Lei6;->a:Ll90;

    .line 320
    .line 321
    invoke-virtual {v9}, Ll90;->i()Lorg/json/JSONObject;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    invoke-static {v8, v6, v9}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 326
    .line 327
    .line 328
    iget-object v4, v4, Lei6;->i:Ljava/util/LinkedHashMap;

    .line 329
    .line 330
    invoke-static {v4}, Ljm1;->E(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-static {v8, v5, v4}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 335
    .line 336
    .line 337
    invoke-static {v3, v7, v8}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 338
    .line 339
    .line 340
    const-string v4, "client_id"

    .line 341
    .line 342
    iget-object v6, v2, Lfi6;->b:Ljava/lang/String;

    .line 343
    .line 344
    invoke-static {v3, v4, v6}, Ljm1;->H(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    const-string v4, "client_id_issued_at"

    .line 348
    .line 349
    iget-object v6, v2, Lfi6;->c:Ljava/lang/Long;

    .line 350
    .line 351
    invoke-static {v3, v4, v6}, Ljm1;->L(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 352
    .line 353
    .line 354
    const-string v4, "client_secret"

    .line 355
    .line 356
    iget-object v6, v2, Lfi6;->d:Ljava/lang/String;

    .line 357
    .line 358
    invoke-static {v3, v4, v6}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    const-string v4, "client_secret_expires_at"

    .line 362
    .line 363
    iget-object v6, v2, Lfi6;->e:Ljava/lang/Long;

    .line 364
    .line 365
    invoke-static {v3, v4, v6}, Ljm1;->L(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 366
    .line 367
    .line 368
    const-string v4, "registration_access_token"

    .line 369
    .line 370
    iget-object v6, v2, Lfi6;->f:Ljava/lang/String;

    .line 371
    .line 372
    invoke-static {v3, v4, v6}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    const-string v4, "registration_client_uri"

    .line 376
    .line 377
    iget-object v6, v2, Lfi6;->g:Landroid/net/Uri;

    .line 378
    .line 379
    invoke-static {v3, v4, v6}, Ljm1;->K(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    .line 380
    .line 381
    .line 382
    iget-object v4, v2, Lfi6;->h:Ljava/lang/String;

    .line 383
    .line 384
    invoke-static {v3, v10, v4}, Ljm1;->M(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    iget-object v2, v2, Lfi6;->i:Ljava/util/LinkedHashMap;

    .line 388
    .line 389
    invoke-static {v2}, Ljm1;->E(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-static {v3, v5, v2}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 394
    .line 395
    .line 396
    const-string v2, "lastRegistrationResponse"

    .line 397
    .line 398
    invoke-static {v1, v2, v3}, Ljm1;->J(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 399
    .line 400
    .line 401
    goto :goto_1

    .line 402
    :catch_0
    move-exception p0

    .line 403
    const-string v0, "JSONException thrown in violation of contract"

    .line 404
    .line 405
    invoke-static {v0, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    .line 407
    .line 408
    return-void

    .line 409
    :cond_7
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    goto :goto_2

    .line 414
    :cond_8
    move-object v1, v0

    .line 415
    :goto_2
    sget-object v2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 416
    .line 417
    const-string v3, "editor"

    .line 418
    .line 419
    if-eqz v2, :cond_b

    .line 420
    .line 421
    const-string v4, "nogms_auth_state"

    .line 422
    .line 423
    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 428
    .line 429
    .line 430
    if-eqz p0, :cond_9

    .line 431
    .line 432
    invoke-virtual {p0}, Lf80;->a()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p0

    .line 436
    if-eqz p0, :cond_9

    .line 437
    .line 438
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    if-lez v1, :cond_9

    .line 443
    .line 444
    goto :goto_3

    .line 445
    :cond_9
    move-object p0, v0

    .line 446
    :goto_3
    sget-object v1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 447
    .line 448
    if-eqz v1, :cond_a

    .line 449
    .line 450
    const-string v0, "nogms_access_token"

    .line 451
    .line 452
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 453
    .line 454
    .line 455
    move-result-object p0

    .line 456
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 457
    .line 458
    .line 459
    return-void

    .line 460
    :cond_a
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v0

    .line 464
    :cond_b
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw v0
.end method

.method public static c(Landroid/app/Activity;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getG()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "EXTRA_REQUEST_CODE"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Llz3;->d:Llz3;

    .line 16
    .line 17
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 18
    .line 19
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget v3, Lmz3;->a:I

    .line 24
    .line 25
    invoke-virtual {v0, v2, v3}, Lmz3;->c(Landroid/content/Context;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->N:I

    .line 32
    .line 33
    new-instance v0, Landroid/content/Intent;

    .line 34
    .line 35
    const-class v2, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

    .line 36
    .line 37
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 52
    .line 53
    const/4 v6, 0x4

    .line 54
    const/4 v7, 0x0

    .line 55
    const-string v3, "GmsUtil"

    .line 56
    .line 57
    const-string v4, "GMS not found"

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-static/range {v2 .. v7}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->M:I

    .line 64
    .line 65
    new-instance v0, Landroid/content/Intent;

    .line 66
    .line 67
    const-class v2, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;

    .line 68
    .line 69
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 80
    .line 81
    .line 82
    :goto_1
    return-void
.end method
