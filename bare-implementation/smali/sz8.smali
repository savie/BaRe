.class public abstract Lsz8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lyo2;

.field public static final b:[Z

.field public static final c:Ly53;

.field public static final d:Ly53;

.field public static final e:[Ly53;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Lyo2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lsz8;->a:Lyo2;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    new-array v0, v0, [Z

    .line 10
    .line 11
    sput-object v0, Lsz8;->b:[Z

    .line 12
    .line 13
    new-instance v1, Ly53;

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    const/4 v3, -0x1

    .line 17
    const-string v2, "auth_api_credentials_begin_sign_in"

    .line 18
    .line 19
    const-wide/16 v4, 0x9

    .line 20
    .line 21
    invoke-direct/range {v1 .. v6}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Ly53;

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    const/4 v4, -0x1

    .line 28
    const-string v3, "auth_api_credentials_sign_out"

    .line 29
    .line 30
    const-wide/16 v5, 0x2

    .line 31
    .line 32
    invoke-direct/range {v2 .. v7}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lsz8;->c:Ly53;

    .line 36
    .line 37
    new-instance v3, Ly53;

    .line 38
    .line 39
    const/4 v8, 0x1

    .line 40
    const/4 v5, -0x1

    .line 41
    const-string v4, "auth_api_credentials_authorize"

    .line 42
    .line 43
    const-wide/16 v6, 0x1

    .line 44
    .line 45
    invoke-direct/range {v3 .. v8}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 46
    .line 47
    .line 48
    new-instance v4, Ly53;

    .line 49
    .line 50
    const/4 v9, 0x1

    .line 51
    const/4 v6, -0x1

    .line 52
    const-string v5, "auth_api_credentials_revoke_access"

    .line 53
    .line 54
    const-wide/16 v7, 0x1

    .line 55
    .line 56
    invoke-direct/range {v4 .. v9}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 57
    .line 58
    .line 59
    new-instance v5, Ly53;

    .line 60
    .line 61
    const/4 v10, 0x1

    .line 62
    const/4 v7, -0x1

    .line 63
    const-string v6, "auth_api_credentials_clear_token"

    .line 64
    .line 65
    const-wide/16 v8, 0x1

    .line 66
    .line 67
    invoke-direct/range {v5 .. v10}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 68
    .line 69
    .line 70
    new-instance v6, Ly53;

    .line 71
    .line 72
    const/4 v11, 0x1

    .line 73
    const/4 v8, -0x1

    .line 74
    const-string v7, "auth_api_credentials_save_password"

    .line 75
    .line 76
    const-wide/16 v9, 0x4

    .line 77
    .line 78
    invoke-direct/range {v6 .. v11}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 79
    .line 80
    .line 81
    new-instance v7, Ly53;

    .line 82
    .line 83
    const/4 v12, 0x1

    .line 84
    const/4 v9, -0x1

    .line 85
    const-string v8, "auth_api_credentials_get_sign_in_intent"

    .line 86
    .line 87
    const-wide/16 v10, 0x6

    .line 88
    .line 89
    invoke-direct/range {v7 .. v12}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 90
    .line 91
    .line 92
    sput-object v7, Lsz8;->d:Ly53;

    .line 93
    .line 94
    new-instance v8, Ly53;

    .line 95
    .line 96
    const/4 v13, 0x1

    .line 97
    const/4 v10, -0x1

    .line 98
    const-string v9, "auth_api_credentials_save_account_linking_token"

    .line 99
    .line 100
    const-wide/16 v11, 0x3

    .line 101
    .line 102
    invoke-direct/range {v8 .. v13}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 103
    .line 104
    .line 105
    new-instance v9, Ly53;

    .line 106
    .line 107
    const/4 v14, 0x1

    .line 108
    const/4 v11, -0x1

    .line 109
    const-string v10, "auth_api_credentials_get_phone_number_hint_intent"

    .line 110
    .line 111
    const-wide/16 v12, 0x3

    .line 112
    .line 113
    invoke-direct/range {v9 .. v14}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 114
    .line 115
    .line 116
    new-instance v10, Ly53;

    .line 117
    .line 118
    const/4 v15, 0x1

    .line 119
    const/4 v12, -0x1

    .line 120
    const-string v11, "auth_api_credentials_verify_with_google"

    .line 121
    .line 122
    const-wide/16 v13, 0x1

    .line 123
    .line 124
    invoke-direct/range {v10 .. v15}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 125
    .line 126
    .line 127
    new-instance v11, Ly53;

    .line 128
    .line 129
    const/16 v16, 0x1

    .line 130
    .line 131
    const/4 v13, -0x1

    .line 132
    const-string v12, "auth_api_credentials_credential_provider"

    .line 133
    .line 134
    const-wide/16 v14, 0x1

    .line 135
    .line 136
    invoke-direct/range {v11 .. v16}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 137
    .line 138
    .line 139
    new-instance v12, Ly53;

    .line 140
    .line 141
    const/16 v17, 0x1

    .line 142
    .line 143
    const/4 v14, -0x1

    .line 144
    const-string v13, "auth_api_credentials_save_webauthn_credential_specifics"

    .line 145
    .line 146
    const-wide/16 v15, 0x1

    .line 147
    .line 148
    invoke-direct/range {v12 .. v17}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 149
    .line 150
    .line 151
    new-instance v13, Ly53;

    .line 152
    .line 153
    const/16 v18, 0x0

    .line 154
    .line 155
    const/4 v15, -0x1

    .line 156
    const-string v14, "auth_api_credentials_delete_webauthn_credential_specifics"

    .line 157
    .line 158
    const-wide/16 v16, 0x1

    .line 159
    .line 160
    invoke-direct/range {v13 .. v18}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 161
    .line 162
    .line 163
    new-instance v14, Ly53;

    .line 164
    .line 165
    const/16 v19, 0x1

    .line 166
    .line 167
    const/16 v16, -0x1

    .line 168
    .line 169
    const-string v15, "auth_api_credentials_list_webauthn_credential_specifics"

    .line 170
    .line 171
    const-wide/16 v17, 0x1

    .line 172
    .line 173
    invoke-direct/range {v14 .. v19}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 174
    .line 175
    .line 176
    new-instance v15, Ly53;

    .line 177
    .line 178
    const/16 v20, 0x1

    .line 179
    .line 180
    const/16 v17, -0x1

    .line 181
    .line 182
    const-string v16, "auth_api_credentials_get_google_passkey_for_export"

    .line 183
    .line 184
    const-wide/16 v18, 0x2

    .line 185
    .line 186
    invoke-direct/range {v15 .. v20}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 187
    .line 188
    .line 189
    new-instance v16, Ly53;

    .line 190
    .line 191
    const/16 v21, 0x1

    .line 192
    .line 193
    const/16 v18, -0x1

    .line 194
    .line 195
    const-string v17, "auth_api_credentials_get_authentication_intent"

    .line 196
    .line 197
    const-wide/16 v19, 0x1

    .line 198
    .line 199
    invoke-direct/range {v16 .. v21}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 200
    .line 201
    .line 202
    new-instance v17, Ly53;

    .line 203
    .line 204
    const/16 v22, 0x1

    .line 205
    .line 206
    const/16 v19, -0x1

    .line 207
    .line 208
    const-string v18, "auth_api_credentials_get_registration_intent"

    .line 209
    .line 210
    const-wide/16 v20, 0x1

    .line 211
    .line 212
    invoke-direct/range {v17 .. v22}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 213
    .line 214
    .line 215
    new-instance v18, Ly53;

    .line 216
    .line 217
    const/16 v23, 0x1

    .line 218
    .line 219
    const/16 v20, -0x1

    .line 220
    .line 221
    const-string v19, "auth_api_credentials_check_key_availability"

    .line 222
    .line 223
    const-wide/16 v21, 0x1

    .line 224
    .line 225
    invoke-direct/range {v18 .. v23}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 226
    .line 227
    .line 228
    new-instance v19, Ly53;

    .line 229
    .line 230
    const/16 v24, 0x1

    .line 231
    .line 232
    const/16 v21, -0x1

    .line 233
    .line 234
    const-string v20, "auth_api_credentials_has_discoverable_key"

    .line 235
    .line 236
    const-wide/16 v22, 0x1

    .line 237
    .line 238
    invoke-direct/range {v19 .. v24}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 239
    .line 240
    .line 241
    new-instance v20, Ly53;

    .line 242
    .line 243
    const/16 v25, 0x1

    .line 244
    .line 245
    const/16 v22, -0x1

    .line 246
    .line 247
    const-string v21, "auth_api_credentials_validate_calling_browser"

    .line 248
    .line 249
    const-wide/16 v23, 0x1

    .line 250
    .line 251
    invoke-direct/range {v20 .. v25}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 252
    .line 253
    .line 254
    new-instance v21, Ly53;

    .line 255
    .line 256
    const/16 v26, 0x1

    .line 257
    .line 258
    const/16 v23, -0x1

    .line 259
    .line 260
    const-string v22, "auth_api_credentials_validate_rp_id_and_calling_package"

    .line 261
    .line 262
    const-wide/16 v24, 0x1

    .line 263
    .line 264
    invoke-direct/range {v21 .. v26}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 265
    .line 266
    .line 267
    new-instance v22, Ly53;

    .line 268
    .line 269
    const/16 v27, 0x1

    .line 270
    .line 271
    const/16 v24, -0x1

    .line 272
    .line 273
    const-string v23, "auth_api_credentials_get_credential_list_for_browser"

    .line 274
    .line 275
    const-wide/16 v25, 0x1

    .line 276
    .line 277
    invoke-direct/range {v22 .. v27}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 278
    .line 279
    .line 280
    new-instance v23, Ly53;

    .line 281
    .line 282
    const/16 v28, 0x1

    .line 283
    .line 284
    const/16 v25, -0x1

    .line 285
    .line 286
    const-string v24, "auth_api_credentials_update_webauthn_credential_specifics"

    .line 287
    .line 288
    const-wide/16 v26, 0x1

    .line 289
    .line 290
    invoke-direct/range {v23 .. v28}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 291
    .line 292
    .line 293
    filled-new-array/range {v1 .. v23}, [Ly53;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    sput-object v0, Lsz8;->e:[Ly53;

    .line 298
    .line 299
    return-void
.end method

.method public static final A(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x1010038

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lsz8;->y(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static final B(Lfw6;)I
    .locals 2

    .line 1
    const-string v0, "SELECT changes()"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    invoke-interface {p0}, Lnw6;->i0()Z

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-interface {p0, v0}, Lnw6;->getLong(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    long-to-int v0, v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {p0, v1}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :catchall_1
    move-exception v1

    .line 24
    invoke-static {p0, v0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw v1
.end method

.method public static E(Ljava/lang/String;)Ljava/lang/String;
    .locals 25

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-object/from16 v1, p0

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    array-length v1, v0

    .line 19
    and-int/lit8 v1, v1, -0x10

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    const-wide/16 v6, 0x0

    .line 23
    .line 24
    const-wide/16 v8, 0x0

    .line 25
    .line 26
    :goto_0
    const/16 v10, 0x21

    .line 27
    .line 28
    const/16 v11, 0x1f

    .line 29
    .line 30
    const-wide v12, 0x4cf5ad432745937fL    # 5.573325460219186E62

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide v14, -0x783c846eeebdac2bL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    if-ge v5, v1, :cond_0

    .line 41
    .line 42
    invoke-static {v0, v5}, Lsz8;->v([BI)J

    .line 43
    .line 44
    .line 45
    move-result-wide v16

    .line 46
    add-int/lit8 v2, v5, 0x8

    .line 47
    .line 48
    invoke-static {v0, v2}, Lsz8;->v([BI)J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    move/from16 v20, v5

    .line 53
    .line 54
    mul-long v4, v16, v14

    .line 55
    .line 56
    invoke-static {v4, v5, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    mul-long/2addr v4, v12

    .line 61
    xor-long/2addr v4, v6

    .line 62
    const/16 v6, 0x1b

    .line 63
    .line 64
    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    add-long/2addr v4, v8

    .line 69
    const-wide/16 v6, 0x5

    .line 70
    .line 71
    mul-long/2addr v4, v6

    .line 72
    const-wide/32 v16, 0x52dce729

    .line 73
    .line 74
    .line 75
    add-long v4, v4, v16

    .line 76
    .line 77
    mul-long/2addr v2, v12

    .line 78
    invoke-static {v2, v3, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    mul-long/2addr v2, v14

    .line 83
    xor-long/2addr v2, v8

    .line 84
    invoke-static {v2, v3, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    add-long/2addr v2, v4

    .line 89
    mul-long/2addr v2, v6

    .line 90
    const-wide/32 v6, 0x38495ab5

    .line 91
    .line 92
    .line 93
    add-long v8, v2, v6

    .line 94
    .line 95
    add-int/lit8 v2, v20, 0x10

    .line 96
    .line 97
    move-wide v6, v4

    .line 98
    move v5, v2

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    array-length v2, v0

    .line 101
    sub-int/2addr v2, v1

    .line 102
    const/16 v3, 0x8

    .line 103
    .line 104
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    const/4 v5, 0x0

    .line 109
    const-wide/16 v16, 0x0

    .line 110
    .line 111
    :goto_1
    const-wide/16 v20, 0xff

    .line 112
    .line 113
    if-ge v5, v4, :cond_1

    .line 114
    .line 115
    add-int v22, v1, v5

    .line 116
    .line 117
    move-wide/from16 v23, v12

    .line 118
    .line 119
    aget-byte v12, v0, v22

    .line 120
    .line 121
    int-to-long v12, v12

    .line 122
    and-long v12, v12, v20

    .line 123
    .line 124
    mul-int/lit8 v20, v5, 0x8

    .line 125
    .line 126
    shl-long v12, v12, v20

    .line 127
    .line 128
    or-long v16, v16, v12

    .line 129
    .line 130
    add-int/lit8 v5, v5, 0x1

    .line 131
    .line 132
    move-wide/from16 v12, v23

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    move-wide/from16 v23, v12

    .line 136
    .line 137
    move v4, v3

    .line 138
    const-wide/16 v18, 0x0

    .line 139
    .line 140
    :goto_2
    if-ge v4, v2, :cond_2

    .line 141
    .line 142
    add-int v5, v1, v4

    .line 143
    .line 144
    aget-byte v5, v0, v5

    .line 145
    .line 146
    int-to-long v12, v5

    .line 147
    and-long v12, v12, v20

    .line 148
    .line 149
    add-int/lit8 v5, v4, -0x8

    .line 150
    .line 151
    mul-int/2addr v5, v3

    .line 152
    shl-long/2addr v12, v5

    .line 153
    or-long v18, v18, v12

    .line 154
    .line 155
    add-int/lit8 v4, v4, 0x1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_2
    if-le v2, v3, :cond_3

    .line 159
    .line 160
    mul-long v3, v18, v23

    .line 161
    .line 162
    invoke-static {v3, v4, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 163
    .line 164
    .line 165
    move-result-wide v3

    .line 166
    mul-long/2addr v3, v14

    .line 167
    xor-long/2addr v8, v3

    .line 168
    :cond_3
    if-lez v2, :cond_4

    .line 169
    .line 170
    mul-long v1, v16, v14

    .line 171
    .line 172
    invoke-static {v1, v2, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 173
    .line 174
    .line 175
    move-result-wide v1

    .line 176
    mul-long v1, v1, v23

    .line 177
    .line 178
    xor-long/2addr v6, v1

    .line 179
    :cond_4
    array-length v1, v0

    .line 180
    int-to-long v1, v1

    .line 181
    xor-long/2addr v1, v6

    .line 182
    array-length v0, v0

    .line 183
    int-to-long v3, v0

    .line 184
    xor-long/2addr v3, v8

    .line 185
    add-long/2addr v1, v3

    .line 186
    add-long/2addr v3, v1

    .line 187
    ushr-long v5, v1, v10

    .line 188
    .line 189
    xor-long v0, v1, v5

    .line 190
    .line 191
    const-wide v5, -0xae502812aa7333L

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    mul-long/2addr v0, v5

    .line 197
    ushr-long v7, v0, v10

    .line 198
    .line 199
    xor-long/2addr v0, v7

    .line 200
    const-wide v7, -0x3b314601e57a13adL    # -2.902039044684214E23

    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    mul-long/2addr v0, v7

    .line 206
    ushr-long v11, v0, v10

    .line 207
    .line 208
    xor-long/2addr v0, v11

    .line 209
    ushr-long v11, v3, v10

    .line 210
    .line 211
    xor-long v2, v3, v11

    .line 212
    .line 213
    mul-long/2addr v2, v5

    .line 214
    ushr-long v4, v2, v10

    .line 215
    .line 216
    xor-long/2addr v2, v4

    .line 217
    mul-long/2addr v2, v7

    .line 218
    ushr-long v4, v2, v10

    .line 219
    .line 220
    xor-long/2addr v2, v4

    .line 221
    add-long/2addr v0, v2

    .line 222
    add-long/2addr v2, v0

    .line 223
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    const/16 v3, 0x10

    .line 231
    .line 232
    invoke-static {v3, v2}, Lnq7;->o0(ILjava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-static {v3, v0}, Lnq7;->o0(ILjava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {v2, v0}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    return-object v0
.end method

.method public static final F(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/16 p2, 0x8

    .line 9
    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final G(Loh4;ZLsh4;)Lin2;
    .locals 9

    .line 1
    instance-of v0, p0, Lci4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lci4;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lci4;->D(ZLsh4;)Lin2;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lsh4;->p()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-instance v1, Loh1;

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x6

    .line 20
    const/4 v2, 0x1

    .line 21
    const-class v4, Lsh4;

    .line 22
    .line 23
    const-string v5, "invoke"

    .line 24
    .line 25
    const-string v6, "invoke(Ljava/lang/Throwable;)V"

    .line 26
    .line 27
    move-object v3, p2

    .line 28
    invoke-direct/range {v1 .. v8}, Loh1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v0, p1, v1}, Loh4;->invokeOnCompletion(ZZLmt3;)Lin2;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static H(JLsx2;)Z
    .locals 2

    .line 1
    invoke-interface {p2}, Lsx2;->getValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    and-long/2addr p0, v0

    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long p0, p0, v0

    .line 9
    .line 10
    if-lez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public static final I(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static J(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    xor-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    const-string v3, "individual scopes cannot be null or empty"

    .line 32
    .line 33
    invoke-static {v3, v2}, Ljb9;->h(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    :goto_1
    const/4 p0, 0x0

    .line 47
    return-object p0

    .line 48
    :cond_2
    const-string p0, " "

    .line 49
    .line 50
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static K(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lx65;->q0(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v1, 0x0

    .line 22
    move v2, v1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x1

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    invoke-static {v3, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    move v2, v4

    .line 43
    move v4, v1

    .line 44
    :cond_1
    if-eqz v4, :cond_0

    .line 45
    .line 46
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-object v0
.end method

.method public static L(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-object v0
.end method

.method public static N(Lcn4;Le25;)Lac;
    .locals 4

    .line 1
    new-instance v0, Lac;

    .line 2
    .line 3
    sget-object v1, Lus2;->b:Lus2;

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {p0, p1, v2, v1, v3}, Lzo4;->a(Lul4;Le25;FLcj8;Z)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x6

    .line 13
    invoke-direct {v0, p0, p1}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static O(Lul4;Le25;Z)Lbc;
    .locals 3

    .line 1
    new-instance v0, Lbc;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lmi8;->c()F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 11
    .line 12
    :goto_0
    sget-object v1, Lq34;->c:Lq34;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {p0, p1, p2, v1, v2}, Lzo4;->a(Lul4;Le25;FLcj8;Z)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 p1, 0x6

    .line 20
    invoke-direct {v0, p0, p1}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static P(Lcn4;Le25;)Ldc;
    .locals 4

    .line 1
    new-instance v0, Ldc;

    .line 2
    .line 3
    sget-object v1, Lcz4;->c:Lcz4;

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {p0, p1, v2, v1, v3}, Lzo4;->a(Lul4;Le25;FLcj8;Z)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x6

    .line 13
    invoke-direct {v0, p0, p1}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static Q(Lcn4;Le25;)Lfc;
    .locals 4

    .line 1
    new-instance v0, Lfc;

    .line 2
    .line 3
    invoke-static {}, Lmi8;->c()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Lns0;->c:Lns0;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {p0, p1, v1, v2, v3}, Lzo4;->a(Lul4;Le25;FLcj8;Z)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 p1, 0x6

    .line 15
    invoke-direct {v0, p0, p1}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static R(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    instance-of v0, p1, Ljava/util/Collection;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Ljava/util/Collection;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v1, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    mul-int/lit8 v1, v0, 0x2

    .line 41
    .line 42
    :goto_1
    invoke-static {v1}, Lx65;->q0(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 55
    .line 56
    .line 57
    return-object v1
.end method

.method public static S(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    invoke-static {v1}, Lx65;->q0(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static final T(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Lln1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lln1;

    .line 6
    .line 7
    iget-object p0, p0, Lln1;->a:Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-static {p0}, Llg7;->e(Ljava/lang/Throwable;)Lbn6;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    return-object p0
.end method

.method public static final U(II)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    const/high16 v0, 0x42c80000    # 100.0f

    .line 3
    .line 4
    div-float/2addr p1, v0

    .line 5
    const/high16 v0, 0x437f0000    # 255.0f

    .line 6
    .line 7
    mul-float/2addr p1, v0

    .line 8
    invoke-static {p1}, Ltu0;->v(F)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p0, p1}, Lxl1;->g(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static final V(Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f090006

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1, v0}, Lfm6;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static final W(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final X(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static Y(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public static final Z(Lkm0;IZZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v1, v0}, Ll73;->h(III)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-gt p1, v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    if-eqz p2, :cond_5

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_5

    .line 39
    .line 40
    :cond_1
    if-eqz p4, :cond_4

    .line 41
    .line 42
    new-instance p2, Ljl8;

    .line 43
    .line 44
    invoke-direct {p2, p0, p1, p3, p4}, Ljl8;-><init>(Lkm0;IZZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    new-instance p1, Lw7;

    .line 54
    .line 55
    invoke-direct {p1, p0, p2}, Lw7;-><init>(Lkm0;Ljl8;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1}, Lyt5;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    new-instance p1, Lx7;

    .line 69
    .line 70
    const/4 p3, 0x4

    .line 71
    invoke-direct {p1, p0, p2, p3}, Lx7;-><init>(Landroid/view/View;Ljava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    invoke-static {p0, p1}, Lyt5;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    new-instance p1, Lll8;

    .line 79
    .line 80
    invoke-direct {p1, p0, p0, p2}, Lll8;-><init>(Lkm0;Lkm0;Ljl8;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    invoke-virtual {p0, p1, v1}, Lkm0;->c(IZ)V

    .line 88
    .line 89
    .line 90
    invoke-static {p0, p1}, Lsz8;->g0(Lkm0;I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_5
    const/4 p3, 0x1

    .line 95
    if-eqz p2, :cond_6

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_6

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_6

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_6

    .line 114
    .line 115
    move p2, p3

    .line 116
    goto :goto_0

    .line 117
    :cond_6
    move p2, v1

    .line 118
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 119
    .line 120
    .line 121
    move-result p4

    .line 122
    if-ne p4, p1, :cond_7

    .line 123
    .line 124
    move v1, p3

    .line 125
    :cond_7
    invoke-virtual {p0, p1, p2}, Lkm0;->c(IZ)V

    .line 126
    .line 127
    .line 128
    if-eqz p2, :cond_9

    .line 129
    .line 130
    if-eqz v1, :cond_8

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_8
    :goto_1
    return-void

    .line 134
    :cond_9
    :goto_2
    invoke-static {p0, p1}, Lsz8;->g0(Lkm0;I)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v2

    .line 17
    :goto_0
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, v1

    .line 24
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move-object v3, v2

    .line 40
    :goto_2
    if-eqz v3, :cond_3

    .line 41
    .line 42
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    move v3, v1

    .line 46
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 55
    .line 56
    if-eqz v5, :cond_4

    .line 57
    .line 58
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_4
    move-object v4, v2

    .line 62
    :goto_4
    if-eqz v4, :cond_5

    .line 63
    .line 64
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_5
    move v4, v1

    .line 68
    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 77
    .line 78
    if-eqz v6, :cond_6

    .line 79
    .line 80
    move-object v2, v5

    .line 81
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 82
    .line 83
    :cond_6
    if-eqz v2, :cond_7

    .line 84
    .line 85
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 86
    .line 87
    goto :goto_6

    .line 88
    :cond_7
    move v2, v1

    .line 89
    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    filled-new-array {v0, v3, v4, v2}, [Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Ljava/lang/Number;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    const/4 v2, 0x1

    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Ljava/lang/Number;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    const/4 v3, 0x2

    .line 123
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Ljava/lang/Number;

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    const/4 v4, 0x3

    .line 134
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Ljava/lang/Number;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    new-instance v4, Lhl8;

    .line 145
    .line 146
    invoke-direct {v4, v1, v2, v3, v0}, Lhl8;-><init>(IIII)V

    .line 147
    .line 148
    .line 149
    sget-object v0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 150
    .line 151
    invoke-static {p0, v4}, Luk8;->c(Landroid/view/View;Lls5;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public static final a0(Lcom/google/android/material/button/MaterialButton;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lwd6;->c:[I

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x7

    .line 22
    invoke-static {v1, v0, v2}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/16 v2, 0xf

    .line 34
    .line 35
    invoke-static {v1, v0, v2}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/16 v2, 0x12

    .line 47
    .line 48
    invoke-static {v1, v0, v2}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v1, Lwd6;->d:[I

    .line 63
    .line 64
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v1, 0x3

    .line 76
    invoke-static {v0, p1, v1}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catch_0
    move-exception p0

    .line 88
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :catch_1
    move-exception p0

    .line 95
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public static b(Landroid/view/View;I)V
    .locals 10

    .line 1
    and-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v8, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v8, v1

    .line 10
    :goto_0
    and-int/lit8 p1, p1, 0x8

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    move v9, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v9, v1

    .line 17
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    filled-new-array {p1, v0, v3, v4}, [Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Number;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    const/4 v0, 0x2

    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/Number;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    const/4 v0, 0x3

    .line 92
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Ljava/lang/Number;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    new-instance v3, Lil8;

    .line 103
    .line 104
    invoke-direct/range {v3 .. v9}, Lil8;-><init>(IIIIZZ)V

    .line 105
    .line 106
    .line 107
    sget-object p1, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 108
    .line 109
    invoke-static {p0, v3}, Luk8;->c(Landroid/view/View;Lls5;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public static final b0(Lkm0;IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gt p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-le p1, v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {p0, p1, p2, v0, v0}, Lsz8;->Z(Lkm0;IZZZ)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static final c(Lcom/google/android/gms/tasks/Task;Lxc4;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Task "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, " was cancelled normally."

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {p1, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    throw p1

    .line 50
    :cond_2
    new-instance v0, Lo21;

    .line 51
    .line 52
    invoke-static {p1}, Lnc8;->D(Ljv1;)Ljv1;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-direct {v0, v1, p1}, Lo21;-><init>(ILjv1;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lo21;->u()V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lln5;

    .line 64
    .line 65
    const/16 v1, 0xe

    .line 66
    .line 67
    invoke-direct {p1, v0, v1}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 68
    .line 69
    .line 70
    sget-object v1, Lsl2;->b:Lsl2;

    .line 71
    .line 72
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lo21;->s()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method public static final c0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static d(IILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-gez p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "%s (%s) must not be negative"

    .line 12
    .line 13
    invoke-static {p1, p0}, Ly13;->t(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    if-ltz p1, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "%s (%s) must not be greater than size (%s)"

    .line 33
    .line 34
    invoke-static {p1, p0}, Ly13;->t(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    const-string p0, "negative size: "

    .line 40
    .line 41
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static final d0(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/16 p1, 0x8

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static e(Lw97;)Lw97;
    .locals 1

    .line 1
    iget-object v0, p0, Lw97;->a:Ld65;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld65;->b()Ld65;

    .line 4
    .line 5
    .line 6
    iget v0, v0, Ld65;->p:I

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lw97;->b:Lw97;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final e0(Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Lsz8;->I(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const v0, 0x7f010027

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public static f(II)V
    .locals 2

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    if-lt p0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    return-void

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 8
    .line 9
    const-string v1, "index"

    .line 10
    .line 11
    if-ltz p0, :cond_3

    .line 12
    .line 13
    if-gez p1, :cond_2

    .line 14
    .line 15
    const-string p0, "negative size: "

    .line 16
    .line 17
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "%s (%s) must be less than size (%s)"

    .line 38
    .line 39
    invoke-static {p1, p0}, Ly13;->t(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "%s (%s) must not be negative"

    .line 53
    .line 54
    invoke-static {p1, p0}, Ly13;->t(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method public static final f0(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lr23;

    .line 8
    .line 9
    invoke-direct {v0, p0, p2}, Lr23;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->i(Lsg6;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static g(Lpt1;Lbv4;Lot1;)V
    .locals 12

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p2, Lot1;->o:I

    .line 3
    .line 4
    iget-object v1, p2, Lot1;->M:Lys1;

    .line 5
    .line 6
    iget-object v2, p2, Lot1;->p0:[I

    .line 7
    .line 8
    iget-object v3, p2, Lot1;->L:Lys1;

    .line 9
    .line 10
    iget-object v4, p2, Lot1;->J:Lys1;

    .line 11
    .line 12
    iget-object v5, p2, Lot1;->K:Lys1;

    .line 13
    .line 14
    iget-object v6, p2, Lot1;->I:Lys1;

    .line 15
    .line 16
    iput v0, p2, Lot1;->p:I

    .line 17
    .line 18
    iget-object v0, p0, Lot1;->p0:[I

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    aget v8, v0, v7

    .line 22
    .line 23
    const/4 v9, 0x2

    .line 24
    const/4 v10, 0x4

    .line 25
    if-eq v8, v9, :cond_0

    .line 26
    .line 27
    aget v7, v2, v7

    .line 28
    .line 29
    if-ne v7, v10, :cond_0

    .line 30
    .line 31
    iget v7, v6, Lys1;->g:I

    .line 32
    .line 33
    invoke-virtual {p0}, Lot1;->q()I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    iget v11, v5, Lys1;->g:I

    .line 38
    .line 39
    sub-int/2addr v8, v11

    .line 40
    invoke-virtual {p1, v6}, Lbv4;->k(Ljava/lang/Object;)Lej7;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    iput-object v11, v6, Lys1;->i:Lej7;

    .line 45
    .line 46
    invoke-virtual {p1, v5}, Lbv4;->k(Ljava/lang/Object;)Lej7;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    iput-object v11, v5, Lys1;->i:Lej7;

    .line 51
    .line 52
    iget-object v6, v6, Lys1;->i:Lej7;

    .line 53
    .line 54
    invoke-virtual {p1, v6, v7}, Lbv4;->d(Lej7;I)V

    .line 55
    .line 56
    .line 57
    iget-object v5, v5, Lys1;->i:Lej7;

    .line 58
    .line 59
    invoke-virtual {p1, v5, v8}, Lbv4;->d(Lej7;I)V

    .line 60
    .line 61
    .line 62
    iput v9, p2, Lot1;->o:I

    .line 63
    .line 64
    iput v7, p2, Lot1;->Y:I

    .line 65
    .line 66
    sub-int/2addr v8, v7

    .line 67
    iput v8, p2, Lot1;->U:I

    .line 68
    .line 69
    iget v5, p2, Lot1;->b0:I

    .line 70
    .line 71
    if-ge v8, v5, :cond_0

    .line 72
    .line 73
    iput v5, p2, Lot1;->U:I

    .line 74
    .line 75
    :cond_0
    const/4 v5, 0x1

    .line 76
    aget v0, v0, v5

    .line 77
    .line 78
    if-eq v0, v9, :cond_3

    .line 79
    .line 80
    aget v0, v2, v5

    .line 81
    .line 82
    if-ne v0, v10, :cond_3

    .line 83
    .line 84
    iget v0, v4, Lys1;->g:I

    .line 85
    .line 86
    invoke-virtual {p0}, Lot1;->k()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    iget v2, v3, Lys1;->g:I

    .line 91
    .line 92
    sub-int/2addr p0, v2

    .line 93
    invoke-virtual {p1, v4}, Lbv4;->k(Ljava/lang/Object;)Lej7;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iput-object v2, v4, Lys1;->i:Lej7;

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Lbv4;->k(Ljava/lang/Object;)Lej7;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iput-object v2, v3, Lys1;->i:Lej7;

    .line 104
    .line 105
    iget-object v2, v4, Lys1;->i:Lej7;

    .line 106
    .line 107
    invoke-virtual {p1, v2, v0}, Lbv4;->d(Lej7;I)V

    .line 108
    .line 109
    .line 110
    iget-object v2, v3, Lys1;->i:Lej7;

    .line 111
    .line 112
    invoke-virtual {p1, v2, p0}, Lbv4;->d(Lej7;I)V

    .line 113
    .line 114
    .line 115
    iget v2, p2, Lot1;->a0:I

    .line 116
    .line 117
    if-gtz v2, :cond_1

    .line 118
    .line 119
    iget v2, p2, Lot1;->g0:I

    .line 120
    .line 121
    const/16 v3, 0x8

    .line 122
    .line 123
    if-ne v2, v3, :cond_2

    .line 124
    .line 125
    :cond_1
    invoke-virtual {p1, v1}, Lbv4;->k(Ljava/lang/Object;)Lej7;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iput-object v2, v1, Lys1;->i:Lej7;

    .line 130
    .line 131
    iget v1, p2, Lot1;->a0:I

    .line 132
    .line 133
    add-int/2addr v1, v0

    .line 134
    invoke-virtual {p1, v2, v1}, Lbv4;->d(Lej7;I)V

    .line 135
    .line 136
    .line 137
    :cond_2
    iput v9, p2, Lot1;->p:I

    .line 138
    .line 139
    iput v0, p2, Lot1;->Z:I

    .line 140
    .line 141
    sub-int/2addr p0, v0

    .line 142
    iput p0, p2, Lot1;->V:I

    .line 143
    .line 144
    iget p1, p2, Lot1;->c0:I

    .line 145
    .line 146
    if-ge p0, p1, :cond_3

    .line 147
    .line 148
    iput p1, p2, Lot1;->V:I

    .line 149
    .line 150
    :cond_3
    return-void
.end method

.method public static final g0(Lkm0;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lkm0;->getProgressDrawable()Lqk2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    int-to-long v1, p1

    .line 15
    const-wide/16 v3, 0x2710

    .line 16
    .line 17
    mul-long/2addr v1, v3

    .line 18
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v3, 0x1

    .line 23
    if-ge p1, v3, :cond_1

    .line 24
    .line 25
    move p1, v3

    .line 26
    :cond_1
    int-to-long v3, p1

    .line 27
    div-long/2addr v1, v3

    .line 28
    long-to-int p1, v1

    .line 29
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0}, Lkm0;->getProgressDrawable()Lqk2;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p1}, Lqk2;->jumpToCurrentState()V

    .line 39
    .line 40
    .line 41
    :cond_3
    invoke-virtual {p0}, Lkm0;->invalidate()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static h(II)V
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-gt p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "index"

    .line 7
    .line 8
    invoke-static {p0, p1, v0}, Lsz8;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final h0(I)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public static i(III)V
    .locals 1

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    if-lt p1, p0, :cond_1

    .line 4
    .line 5
    if-le p1, p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return-void

    .line 9
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    .line 11
    if-ltz p0, :cond_4

    .line 12
    .line 13
    if-gt p0, p2, :cond_4

    .line 14
    .line 15
    if-ltz p1, :cond_3

    .line 16
    .line 17
    if-le p1, p2, :cond_2

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "end index (%s) must not be less than start index (%s)"

    .line 33
    .line 34
    invoke-static {p1, p0}, Ly13;->t(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    :goto_1
    const-string p0, "end index"

    .line 40
    .line 41
    invoke-static {p1, p2, p0}, Lsz8;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_2

    .line 46
    :cond_4
    const-string p1, "start index"

    .line 47
    .line 48
    invoke-static {p0, p2, p1}, Lsz8;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :goto_2
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public static i0(JLjava/lang/Class;)Ljava/util/EnumSet;
    .locals 5

    .line 1
    const-class v0, Lsx2;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, [Ljava/lang/Enum;

    .line 18
    .line 19
    array-length v1, p2

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_1

    .line 22
    .line 23
    aget-object v3, p2, v2

    .line 24
    .line 25
    move-object v4, v3

    .line 26
    check-cast v4, Lsx2;

    .line 27
    .line 28
    invoke-static {p0, p1, v4}, Lsz8;->H(JLsx2;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v0

    .line 41
    :cond_2
    const-string p0, "Can only be used with EnumWithValue enums."

    .line 42
    .line 43
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method public static j(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static j0(Ljava/util/Collection;)J
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    move-wide v2, v0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-eqz v4, :cond_1

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Ljava/lang/Enum;

    .line 19
    .line 20
    instance-of v5, v4, Lsx2;

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    check-cast v4, Lsx2;

    .line 25
    .line 26
    invoke-interface {v4}, Lsx2;->getValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    or-long/2addr v2, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p0, "Can only be used with EnumWithValue enums."

    .line 33
    .line 34
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-wide v0

    .line 38
    :cond_1
    return-wide v2
.end method

.method public static k(Lnr0;Landroid/graphics/drawable/Drawable;II)Lor0;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v0, :cond_6

    .line 22
    .line 23
    const-string v0, "Unable to draw "

    .line 24
    .line 25
    const/4 v3, 0x5

    .line 26
    const-string v4, "DrawableToBitmap"

    .line 27
    .line 28
    const/high16 v5, -0x80000000

    .line 29
    .line 30
    if-ne p2, v5, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-gtz v6, :cond_2

    .line 37
    .line 38
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width"

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    move-object p1, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    if-ne p3, v5, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-gtz v5, :cond_3

    .line 73
    .line 74
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_1

    .line 79
    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height"

    .line 89
    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-lez v0, :cond_4

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-lez v0, :cond_5

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    :cond_5
    sget-object v0, Ln98;->d:Ljava/util/concurrent/locks/Lock;

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 124
    .line 125
    .line 126
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 127
    .line 128
    invoke-interface {p0, p2, p3, v3}, Lnr0;->k(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    :try_start_0
    new-instance v4, Landroid/graphics/Canvas;

    .line 133
    .line 134
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v1, v1, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 147
    .line 148
    .line 149
    move-object p1, v3

    .line 150
    :goto_1
    const/4 v1, 0x1

    .line 151
    goto :goto_2

    .line 152
    :catchall_0
    move-exception p0

    .line 153
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :cond_6
    move-object p1, v2

    .line 158
    :goto_2
    if-eqz v1, :cond_7

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_7
    sget-object p0, Lsz8;->a:Lyo2;

    .line 162
    .line 163
    :goto_3
    invoke-static {p0, p1}, Lor0;->e(Lnr0;Landroid/graphics/Bitmap;)Lor0;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    return-object p0
.end method

.method public static k0(JLjava/lang/Class;Lbp5;)Lsx2;
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, [Lsx2;

    .line 6
    .line 7
    array-length v0, p2

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    aget-object v2, p2, v1

    .line 12
    .line 13
    invoke-interface {v2}, Lsx2;->getValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    cmp-long v3, v3, p0

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return-object p3
.end method

.method public static l()Ljava/util/ArrayList;
    .locals 11

    .line 1
    const-string v0, "prefs"

    .line 2
    .line 3
    const-string v1, "app_locale"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-object v3, v2

    .line 20
    :goto_0
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {v3}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lis4;->a()Ljava/util/Locale;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lis4;->a()Ljava/util/Locale;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :goto_2
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v5, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    const/4 v6, 0x1

    .line 64
    move v7, v6

    .line 65
    :goto_3
    const/16 v8, 0x8

    .line 66
    .line 67
    if-ge v7, v8, :cond_6

    .line 68
    .line 69
    const/4 v8, 0x7

    .line 70
    invoke-virtual {v3, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 71
    .line 72
    .line 73
    :try_start_1
    sget-object v9, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 74
    .line 75
    if-eqz v9, :cond_3

    .line 76
    .line 77
    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    goto :goto_4

    .line 82
    :cond_3
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :catch_1
    move-object v9, v2

    .line 87
    :goto_4
    if-eqz v9, :cond_5

    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    if-nez v10, :cond_4

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_4
    invoke-static {v9}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-virtual {v9}, Lis4;->a()Ljava/util/Locale;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    goto :goto_6

    .line 105
    :cond_5
    :goto_5
    invoke-static {}, Lxx3;->h()Lis4;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-virtual {v9}, Lis4;->a()Ljava/util/Locale;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    :goto_6
    invoke-virtual {v3, v8, v6, v9}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    add-int/lit8 v7, v7, 0x1

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    const/4 v1, 0x0

    .line 131
    move v2, v1

    .line 132
    :goto_7
    if-ge v2, v0, :cond_7

    .line 133
    .line 134
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Ljava/lang/String;

    .line 139
    .line 140
    new-instance v7, Ljd2;

    .line 141
    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    invoke-direct {v7, v2, v6}, Ljd2;-><init>(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_7

    .line 151
    :cond_7
    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    const/4 v2, 0x2

    .line 156
    if-ne v0, v2, :cond_8

    .line 157
    .line 158
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    check-cast v0, Ljd2;

    .line 166
    .line 167
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    :cond_8
    return-object v4
.end method

.method public static l0([BILrg9;)I
    .locals 3

    .line 1
    invoke-static {p0, p1, p2}, Lsz8;->r0([BILrg9;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p2, Lrg9;->a:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-ltz v0, :cond_2

    .line 9
    .line 10
    array-length v2, p0

    .line 11
    sub-int/2addr v2, p1

    .line 12
    if-gt v0, v2, :cond_1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object p0, Ldh9;->b:Lfh9;

    .line 17
    .line 18
    iput-object p0, p2, Lrg9;->c:Ljava/lang/Object;

    .line 19
    .line 20
    return p1

    .line 21
    :cond_0
    invoke-static {p0, p1, v0}, Ldh9;->o([BII)Lfh9;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iput-object p0, p2, Lrg9;->c:Ljava/lang/Object;

    .line 26
    .line 27
    add-int/2addr p1, v0

    .line 28
    return p1

    .line 29
    :cond_1
    const-string p0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 30
    .line 31
    invoke-static {p0}, Lb6;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return v1

    .line 35
    :cond_2
    const-string p0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 36
    .line 37
    invoke-static {p0}, Lb6;->f(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v1
.end method

.method public static final m(Landroid/app/Dialog;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method public static m0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "android.os.SystemProperties"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v2, "get"

    .line 9
    .line 10
    const-class v3, Ljava/lang/String;

    .line 11
    .line 12
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    instance-of v0, p0, Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    return-object p0

    .line 35
    :catch_0
    :cond_0
    return-object v1
.end method

.method public static n(Landroid/content/Context;Lfc5;F)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p1, Lfc5;->K:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    const/high16 v2, 0x43200000    # 160.0f

    .line 22
    .line 23
    div-float/2addr v1, v2

    .line 24
    mul-float/2addr v1, p2

    .line 25
    invoke-static {v1}, Ltu0;->v(F)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {p1}, Lfc5;->l()Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    check-cast v1, Lic5;

    .line 54
    .line 55
    invoke-virtual {v1}, Lic5;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    iget v2, v1, Lic5;->Q:I

    .line 62
    .line 63
    and-int/lit8 v3, v2, 0x2

    .line 64
    .line 65
    const/4 v5, 0x2

    .line 66
    if-ne v3, v5, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    and-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    if-ne v2, v0, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    .line 75
    .line 76
    invoke-virtual {v1}, Lic5;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const/4 v5, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    move v6, v4

    .line 83
    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Lic5;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lic5;->hasSubMenu()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_0

    .line 94
    .line 95
    iget-object v1, v1, Lic5;->G:Llr7;

    .line 96
    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    const/4 v1, 0x0

    .line 101
    :goto_1
    if-eqz v1, :cond_0

    .line 102
    .line 103
    invoke-static {p0, v1, p2}, Lsz8;->n(Landroid/content/Context;Lfc5;F)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    return-void
.end method

.method public static n0([BI)I
    .locals 3

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    aget-byte v1, p0, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    add-int/lit8 v2, p1, 0x2

    .line 12
    .line 13
    aget-byte v2, p0, v2

    .line 14
    .line 15
    and-int/lit16 v2, v2, 0xff

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x3

    .line 18
    .line 19
    aget-byte p0, p0, p1

    .line 20
    .line 21
    and-int/lit16 p0, p0, 0xff

    .line 22
    .line 23
    shl-int/lit8 p1, v1, 0x8

    .line 24
    .line 25
    or-int/2addr p1, v0

    .line 26
    shl-int/lit8 v0, v2, 0x10

    .line 27
    .line 28
    or-int/2addr p1, v0

    .line 29
    shl-int/lit8 p0, p0, 0x18

    .line 30
    .line 31
    or-int/2addr p0, p1

    .line 32
    return p0
.end method

.method public static final o(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public static o0(Ljm9;I[BIILej9;Lrg9;)I
    .locals 7

    .line 1
    invoke-interface {p0}, Ljm9;->zze()Lxi9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move-object v5, p6

    .line 10
    invoke-static/range {v0 .. v5}, Lsz8;->w0(Ljava/lang/Object;Ljm9;[BIILrg9;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-interface {v1, v0}, Ljm9;->zzf(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, v5, Lrg9;->c:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    if-ge p0, v4, :cond_1

    .line 23
    .line 24
    move-object v6, v5

    .line 25
    move v5, v4

    .line 26
    invoke-static {v2, p0, v6}, Lsz8;->r0([BILrg9;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    iget p2, v6, Lrg9;->a:I

    .line 31
    .line 32
    if-eq p1, p2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move-object v3, v2

    .line 36
    move-object v2, v1

    .line 37
    invoke-interface {v2}, Ljm9;->zze()Lxi9;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static/range {v1 .. v6}, Lsz8;->w0(Ljava/lang/Object;Ljm9;[BIILrg9;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    move-object p2, v1

    .line 46
    move-object v1, v2

    .line 47
    move-object v2, v3

    .line 48
    move v4, v5

    .line 49
    move-object v5, v6

    .line 50
    invoke-interface {v1, p2}, Ljm9;->zzf(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object p2, v5, Lrg9;->c:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    return p0
.end method

.method public static final p(Lox1;)V
    .locals 1

    .line 1
    sget-object v0, Lnh4;->b:Lnh4;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lox1;->get(Lnx1;)Lmx1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Loh4;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Loh4;->isActive()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p0}, Loh4;->getCancellationException()Ljava/util/concurrent/CancellationException;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    throw p0

    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public static p0([BILej9;Lrg9;)I
    .locals 2

    .line 1
    check-cast p2, Lyi9;

    .line 2
    .line 3
    invoke-static {p0, p1, p3}, Lsz8;->r0([BILrg9;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p3, Lrg9;->a:I

    .line 8
    .line 9
    add-int/2addr v0, p1

    .line 10
    :goto_0
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1, p3}, Lsz8;->r0([BILrg9;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget v1, p3, Lrg9;->a:I

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Lyi9;->e(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    const-string p0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 26
    .line 27
    invoke-static {p0}, Lb6;->f(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public static final q(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lsz8;->y(Landroid/content/Context;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static q0(I[BIILmn9;Lrg9;)I
    .locals 10

    .line 1
    ushr-int/lit8 v0, p0, 0x3

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Protocol message contained an invalid tag (zero)."

    .line 5
    .line 6
    if-eqz v0, :cond_c

    .line 7
    .line 8
    and-int/lit8 v0, p0, 0x7

    .line 9
    .line 10
    if-eqz v0, :cond_b

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v0, v3, :cond_a

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-eq v0, v4, :cond_6

    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    if-eq v0, v4, :cond_1

    .line 20
    .line 21
    const/4 p3, 0x5

    .line 22
    if-ne v0, p3, :cond_0

    .line 23
    .line 24
    invoke-static {p1, p2}, Lsz8;->n0([BI)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p4, p0, p1}, Lmn9;->c(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 p2, p2, 0x4

    .line 36
    .line 37
    return p2

    .line 38
    :cond_0
    invoke-static {v2}, Lb6;->f(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    and-int/lit8 v0, p0, -0x8

    .line 43
    .line 44
    or-int/lit8 v0, v0, 0x4

    .line 45
    .line 46
    invoke-static {}, Lmn9;->b()Lmn9;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    iget v2, p5, Lrg9;->d:I

    .line 51
    .line 52
    add-int/2addr v2, v3

    .line 53
    iput v2, p5, Lrg9;->d:I

    .line 54
    .line 55
    const/16 v3, 0x64

    .line 56
    .line 57
    if-ge v2, v3, :cond_5

    .line 58
    .line 59
    move v2, v1

    .line 60
    :goto_0
    if-ge p2, p3, :cond_2

    .line 61
    .line 62
    invoke-static {p1, p2, p5}, Lsz8;->r0([BILrg9;)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    iget v4, p5, Lrg9;->a:I

    .line 67
    .line 68
    if-ne v4, v0, :cond_3

    .line 69
    .line 70
    move v2, v4

    .line 71
    move p2, v6

    .line 72
    :cond_2
    move v7, p3

    .line 73
    move-object v9, p5

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move-object v5, p1

    .line 76
    move v7, p3

    .line 77
    move-object v9, p5

    .line 78
    invoke-static/range {v4 .. v9}, Lsz8;->q0(I[BIILmn9;Lrg9;)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    move v2, v4

    .line 83
    goto :goto_0

    .line 84
    :goto_1
    iget p1, v9, Lrg9;->d:I

    .line 85
    .line 86
    add-int/lit8 p1, p1, -0x1

    .line 87
    .line 88
    iput p1, v9, Lrg9;->d:I

    .line 89
    .line 90
    if-gt p2, v7, :cond_4

    .line 91
    .line 92
    if-ne v2, v0, :cond_4

    .line 93
    .line 94
    invoke-virtual {p4, p0, v8}, Lmn9;->c(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return p2

    .line 98
    :cond_4
    const-string p0, "Failed to parse the message."

    .line 99
    .line 100
    invoke-static {p0}, Lb6;->f(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return v1

    .line 104
    :cond_5
    const-string p0, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    .line 105
    .line 106
    invoke-static {p0}, Lb6;->f(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return v1

    .line 110
    :cond_6
    move-object v5, p1

    .line 111
    move-object v9, p5

    .line 112
    invoke-static {v5, p2, v9}, Lsz8;->r0([BILrg9;)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iget p2, v9, Lrg9;->a:I

    .line 117
    .line 118
    if-ltz p2, :cond_9

    .line 119
    .line 120
    array-length p3, v5

    .line 121
    sub-int/2addr p3, p1

    .line 122
    if-gt p2, p3, :cond_8

    .line 123
    .line 124
    if-nez p2, :cond_7

    .line 125
    .line 126
    sget-object p3, Ldh9;->b:Lfh9;

    .line 127
    .line 128
    invoke-virtual {p4, p0, p3}, Lmn9;->c(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_7
    invoke-static {v5, p1, p2}, Ldh9;->o([BII)Lfh9;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    invoke-virtual {p4, p0, p3}, Lmn9;->c(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :goto_2
    add-int/2addr p1, p2

    .line 140
    return p1

    .line 141
    :cond_8
    const-string p0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 142
    .line 143
    invoke-static {p0}, Lb6;->f(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return v1

    .line 147
    :cond_9
    const-string p0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 148
    .line 149
    invoke-static {p0}, Lb6;->f(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return v1

    .line 153
    :cond_a
    move-object v5, p1

    .line 154
    invoke-static {v5, p2}, Lsz8;->x0([BI)J

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p4, p0, p1}, Lmn9;->c(ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 p2, p2, 0x8

    .line 166
    .line 167
    return p2

    .line 168
    :cond_b
    move-object v5, p1

    .line 169
    move-object v9, p5

    .line 170
    invoke-static {v5, p2, v9}, Lsz8;->u0([BILrg9;)I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    iget-wide p2, v9, Lrg9;->b:J

    .line 175
    .line 176
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {p4, p0, p2}, Lmn9;->c(ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    return p1

    .line 184
    :cond_c
    invoke-static {v2}, Lb6;->f(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return v1
.end method

.method public static final r(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f040129

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lsz8;->y(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static r0([BILrg9;)I
    .locals 1

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    aget-byte p1, p0, p1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iput p1, p2, Lrg9;->a:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lsz8;->s0(I[BILrg9;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final s(Lox1;)Loh4;
    .locals 1

    .line 1
    sget-object v0, Lnh4;->b:Lnh4;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lox1;->get(Lnx1;)Lmx1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Loh4;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, "Current context doesn\'t contain Job in it: "

    .line 13
    .line 14
    invoke-static {p0, v0}, Ll0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static s0(I[BILrg9;)I
    .locals 2

    .line 1
    aget-byte v0, p1, p2

    .line 2
    .line 3
    add-int/lit8 v1, p2, 0x1

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0x7f

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    shl-int/lit8 p1, v0, 0x7

    .line 10
    .line 11
    or-int/2addr p0, p1

    .line 12
    iput p0, p3, Lrg9;->a:I

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 16
    .line 17
    shl-int/lit8 v0, v0, 0x7

    .line 18
    .line 19
    or-int/2addr p0, v0

    .line 20
    add-int/lit8 v0, p2, 0x2

    .line 21
    .line 22
    aget-byte v1, p1, v1

    .line 23
    .line 24
    if-ltz v1, :cond_1

    .line 25
    .line 26
    shl-int/lit8 p1, v1, 0xe

    .line 27
    .line 28
    or-int/2addr p0, p1

    .line 29
    iput p0, p3, Lrg9;->a:I

    .line 30
    .line 31
    return v0

    .line 32
    :cond_1
    and-int/lit8 v1, v1, 0x7f

    .line 33
    .line 34
    shl-int/lit8 v1, v1, 0xe

    .line 35
    .line 36
    or-int/2addr p0, v1

    .line 37
    add-int/lit8 v1, p2, 0x3

    .line 38
    .line 39
    aget-byte v0, p1, v0

    .line 40
    .line 41
    if-ltz v0, :cond_2

    .line 42
    .line 43
    shl-int/lit8 p1, v0, 0x15

    .line 44
    .line 45
    or-int/2addr p0, p1

    .line 46
    iput p0, p3, Lrg9;->a:I

    .line 47
    .line 48
    return v1

    .line 49
    :cond_2
    and-int/lit8 v0, v0, 0x7f

    .line 50
    .line 51
    shl-int/lit8 v0, v0, 0x15

    .line 52
    .line 53
    or-int/2addr p0, v0

    .line 54
    add-int/lit8 p2, p2, 0x4

    .line 55
    .line 56
    aget-byte v0, p1, v1

    .line 57
    .line 58
    if-ltz v0, :cond_3

    .line 59
    .line 60
    shl-int/lit8 p1, v0, 0x1c

    .line 61
    .line 62
    or-int/2addr p0, p1

    .line 63
    iput p0, p3, Lrg9;->a:I

    .line 64
    .line 65
    return p2

    .line 66
    :cond_3
    and-int/lit8 v0, v0, 0x7f

    .line 67
    .line 68
    shl-int/lit8 v0, v0, 0x1c

    .line 69
    .line 70
    or-int/2addr p0, v0

    .line 71
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 72
    .line 73
    aget-byte p2, p1, p2

    .line 74
    .line 75
    if-gez p2, :cond_4

    .line 76
    .line 77
    move p2, v0

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    iput p0, p3, Lrg9;->a:I

    .line 80
    .line 81
    return v0
.end method

.method public static final t(Lfw6;)J
    .locals 3

    .line 1
    invoke-static {p0}, Lsz8;->B(Lfw6;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-string v0, "SELECT last_insert_rowid()"

    .line 11
    .line 12
    invoke-interface {p0, v0}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :try_start_0
    invoke-interface {p0}, Lnw6;->i0()Z

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-interface {p0, v0}, Lnw6;->getLong(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {p0, v2}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return-wide v0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :catchall_1
    move-exception v1

    .line 32
    invoke-static {p0, v0}, Lk55;->d(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw v1
.end method

.method public static t0(I[BIILej9;Lrg9;)I
    .locals 2

    .line 1
    check-cast p4, Lyi9;

    .line 2
    .line 3
    invoke-static {p1, p2, p5}, Lsz8;->r0([BILrg9;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget v0, p5, Lrg9;->a:I

    .line 8
    .line 9
    invoke-virtual {p4, v0}, Lyi9;->e(I)V

    .line 10
    .line 11
    .line 12
    :goto_0
    if-ge p2, p3, :cond_1

    .line 13
    .line 14
    invoke-static {p1, p2, p5}, Lsz8;->r0([BILrg9;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p5, Lrg9;->a:I

    .line 19
    .line 20
    if-eq p0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-static {p1, v0, p5}, Lsz8;->r0([BILrg9;)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget v0, p5, Lrg9;->a:I

    .line 28
    .line 29
    invoke-virtual {p4, v0}, Lyi9;->e(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    return p2
.end method

.method public static final u(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public static u0([BILrg9;)I
    .locals 9

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    add-int/lit8 v3, p1, 0x1

    .line 9
    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    iput-wide v0, p2, Lrg9;->b:J

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 16
    .line 17
    aget-byte v2, p0, v3

    .line 18
    .line 19
    and-int/lit8 v3, v2, 0x7f

    .line 20
    .line 21
    const-wide/16 v4, 0x7f

    .line 22
    .line 23
    and-long/2addr v0, v4

    .line 24
    int-to-long v3, v3

    .line 25
    const/4 v5, 0x7

    .line 26
    shl-long/2addr v3, v5

    .line 27
    or-long/2addr v0, v3

    .line 28
    move v3, v5

    .line 29
    :goto_0
    if-gez v2, :cond_1

    .line 30
    .line 31
    add-int/lit8 v2, p1, 0x1

    .line 32
    .line 33
    aget-byte p1, p0, p1

    .line 34
    .line 35
    add-int/2addr v3, v5

    .line 36
    and-int/lit8 v4, p1, 0x7f

    .line 37
    .line 38
    int-to-long v6, v4

    .line 39
    shl-long/2addr v6, v3

    .line 40
    or-long/2addr v0, v6

    .line 41
    move v8, v2

    .line 42
    move v2, p1

    .line 43
    move p1, v8

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput-wide v0, p2, Lrg9;->b:J

    .line 46
    .line 47
    return p1
.end method

.method public static v([BI)J
    .locals 7

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide/16 v2, 0xff

    .line 5
    .line 6
    and-long/2addr v0, v2

    .line 7
    add-int/lit8 v4, p1, 0x1

    .line 8
    .line 9
    aget-byte v4, p0, v4

    .line 10
    .line 11
    int-to-long v4, v4

    .line 12
    and-long/2addr v4, v2

    .line 13
    const/16 v6, 0x8

    .line 14
    .line 15
    shl-long/2addr v4, v6

    .line 16
    or-long/2addr v0, v4

    .line 17
    add-int/lit8 v4, p1, 0x2

    .line 18
    .line 19
    aget-byte v4, p0, v4

    .line 20
    .line 21
    int-to-long v4, v4

    .line 22
    and-long/2addr v4, v2

    .line 23
    const/16 v6, 0x10

    .line 24
    .line 25
    shl-long/2addr v4, v6

    .line 26
    or-long/2addr v0, v4

    .line 27
    add-int/lit8 v4, p1, 0x3

    .line 28
    .line 29
    aget-byte v4, p0, v4

    .line 30
    .line 31
    int-to-long v4, v4

    .line 32
    and-long/2addr v4, v2

    .line 33
    const/16 v6, 0x18

    .line 34
    .line 35
    shl-long/2addr v4, v6

    .line 36
    or-long/2addr v0, v4

    .line 37
    add-int/lit8 v4, p1, 0x4

    .line 38
    .line 39
    aget-byte v4, p0, v4

    .line 40
    .line 41
    int-to-long v4, v4

    .line 42
    and-long/2addr v4, v2

    .line 43
    const/16 v6, 0x20

    .line 44
    .line 45
    shl-long/2addr v4, v6

    .line 46
    or-long/2addr v0, v4

    .line 47
    add-int/lit8 v4, p1, 0x5

    .line 48
    .line 49
    aget-byte v4, p0, v4

    .line 50
    .line 51
    int-to-long v4, v4

    .line 52
    and-long/2addr v4, v2

    .line 53
    const/16 v6, 0x28

    .line 54
    .line 55
    shl-long/2addr v4, v6

    .line 56
    or-long/2addr v0, v4

    .line 57
    add-int/lit8 v4, p1, 0x6

    .line 58
    .line 59
    aget-byte v4, p0, v4

    .line 60
    .line 61
    int-to-long v4, v4

    .line 62
    and-long/2addr v4, v2

    .line 63
    const/16 v6, 0x30

    .line 64
    .line 65
    shl-long/2addr v4, v6

    .line 66
    or-long/2addr v0, v4

    .line 67
    add-int/lit8 p1, p1, 0x7

    .line 68
    .line 69
    aget-byte p0, p0, p1

    .line 70
    .line 71
    int-to-long p0, p0

    .line 72
    and-long/2addr p0, v2

    .line 73
    const/16 v2, 0x38

    .line 74
    .line 75
    shl-long/2addr p0, v2

    .line 76
    or-long/2addr p0, v0

    .line 77
    return-wide p0
.end method

.method public static v0(Ljava/lang/Object;Ljm9;[BIIILrg9;)I
    .locals 3

    .line 1
    check-cast p1, Lpl9;

    .line 2
    .line 3
    iget v0, p6, Lrg9;->d:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iput v0, p6, Lrg9;->d:I

    .line 8
    .line 9
    const/16 v1, 0x64

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    move-object p1, p0

    .line 15
    move-object p0, v2

    .line 16
    invoke-virtual/range {p0 .. p6}, Lpl9;->q(Ljava/lang/Object;[BIIILrg9;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    iget p2, p6, Lrg9;->d:I

    .line 21
    .line 22
    add-int/lit8 p2, p2, -0x1

    .line 23
    .line 24
    iput p2, p6, Lrg9;->d:I

    .line 25
    .line 26
    iput-object p1, p6, Lrg9;->c:Ljava/lang/Object;

    .line 27
    .line 28
    return p0

    .line 29
    :cond_0
    const-string p0, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    .line 30
    .line 31
    invoke-static {p0}, Lb6;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public static final w(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0600da

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {p0, v0}, Lio4;->c(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static w0(Ljava/lang/Object;Ljm9;[BIILrg9;)I
    .locals 6

    .line 1
    add-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    aget-byte p3, p2, p3

    .line 4
    .line 5
    if-gez p3, :cond_0

    .line 6
    .line 7
    invoke-static {p3, p2, v0, p5}, Lsz8;->s0(I[BILrg9;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget p3, p5, Lrg9;->a:I

    .line 12
    .line 13
    :cond_0
    move v3, v0

    .line 14
    const/4 v0, 0x0

    .line 15
    if-ltz p3, :cond_2

    .line 16
    .line 17
    sub-int/2addr p4, v3

    .line 18
    if-gt p3, p4, :cond_2

    .line 19
    .line 20
    iget p4, p5, Lrg9;->d:I

    .line 21
    .line 22
    add-int/lit8 p4, p4, 0x1

    .line 23
    .line 24
    iput p4, p5, Lrg9;->d:I

    .line 25
    .line 26
    const/16 v1, 0x64

    .line 27
    .line 28
    if-ge p4, v1, :cond_1

    .line 29
    .line 30
    add-int v4, v3, p3

    .line 31
    .line 32
    move-object v1, p0

    .line 33
    move-object v0, p1

    .line 34
    move-object v2, p2

    .line 35
    move-object v5, p5

    .line 36
    invoke-interface/range {v0 .. v5}, Ljm9;->b(Ljava/lang/Object;[BIILrg9;)V

    .line 37
    .line 38
    .line 39
    iget p0, v5, Lrg9;->d:I

    .line 40
    .line 41
    add-int/lit8 p0, p0, -0x1

    .line 42
    .line 43
    iput p0, v5, Lrg9;->d:I

    .line 44
    .line 45
    iput-object v1, v5, Lrg9;->c:Ljava/lang/Object;

    .line 46
    .line 47
    return v4

    .line 48
    :cond_1
    const-string p0, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    .line 49
    .line 50
    invoke-static {p0}, Lb6;->f(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v0

    .line 54
    :cond_2
    const-string p0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 55
    .line 56
    invoke-static {p0}, Lb6;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return v0
.end method

.method public static final x(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f04014a

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lsz8;->y(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static x0([BI)J
    .locals 18

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    add-int/lit8 v2, p1, 0x1

    .line 5
    .line 6
    aget-byte v2, p0, v2

    .line 7
    .line 8
    int-to-long v2, v2

    .line 9
    add-int/lit8 v4, p1, 0x2

    .line 10
    .line 11
    aget-byte v4, p0, v4

    .line 12
    .line 13
    int-to-long v4, v4

    .line 14
    add-int/lit8 v6, p1, 0x3

    .line 15
    .line 16
    aget-byte v6, p0, v6

    .line 17
    .line 18
    int-to-long v6, v6

    .line 19
    add-int/lit8 v8, p1, 0x4

    .line 20
    .line 21
    aget-byte v8, p0, v8

    .line 22
    .line 23
    int-to-long v8, v8

    .line 24
    add-int/lit8 v10, p1, 0x5

    .line 25
    .line 26
    aget-byte v10, p0, v10

    .line 27
    .line 28
    int-to-long v10, v10

    .line 29
    add-int/lit8 v12, p1, 0x6

    .line 30
    .line 31
    aget-byte v12, p0, v12

    .line 32
    .line 33
    int-to-long v12, v12

    .line 34
    add-int/lit8 v14, p1, 0x7

    .line 35
    .line 36
    aget-byte v14, p0, v14

    .line 37
    .line 38
    int-to-long v14, v14

    .line 39
    const-wide/16 v16, 0xff

    .line 40
    .line 41
    and-long v2, v2, v16

    .line 42
    .line 43
    and-long v4, v4, v16

    .line 44
    .line 45
    and-long v6, v6, v16

    .line 46
    .line 47
    and-long v8, v8, v16

    .line 48
    .line 49
    and-long v10, v10, v16

    .line 50
    .line 51
    and-long v12, v12, v16

    .line 52
    .line 53
    and-long v14, v14, v16

    .line 54
    .line 55
    and-long v0, v0, v16

    .line 56
    .line 57
    const/16 v16, 0x8

    .line 58
    .line 59
    shl-long v2, v2, v16

    .line 60
    .line 61
    or-long/2addr v0, v2

    .line 62
    const/16 v2, 0x10

    .line 63
    .line 64
    shl-long v2, v4, v2

    .line 65
    .line 66
    or-long/2addr v0, v2

    .line 67
    const/16 v2, 0x18

    .line 68
    .line 69
    shl-long v2, v6, v2

    .line 70
    .line 71
    or-long/2addr v0, v2

    .line 72
    const/16 v2, 0x20

    .line 73
    .line 74
    shl-long v2, v8, v2

    .line 75
    .line 76
    or-long/2addr v0, v2

    .line 77
    const/16 v2, 0x28

    .line 78
    .line 79
    shl-long v2, v10, v2

    .line 80
    .line 81
    or-long/2addr v0, v2

    .line 82
    const/16 v2, 0x30

    .line 83
    .line 84
    shl-long v2, v12, v2

    .line 85
    .line 86
    or-long/2addr v0, v2

    .line 87
    const/16 v2, 0x38

    .line 88
    .line 89
    shl-long v2, v14, v2

    .line 90
    .line 91
    or-long/2addr v0, v2

    .line 92
    return-wide v0
.end method

.method public static final y(Landroid/content/Context;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/TypedValue;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 15
    .line 16
    .line 17
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 18
    .line 19
    return p0
.end method

.method public static final z(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x1010036

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lsz8;->y(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method


# virtual methods
.method public abstract C(S)S
.end method

.method public abstract D(SS)S
.end method

.method public abstract M()Ljava/lang/Object;
.end method
