.class public final enum Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

.field public static final enum account_type:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

.field public static final enum calling_package_name:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

.field public static final enum correlation_id:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

.field public static final enum tenant_id:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;


# direct methods
.method static constructor <clinit>()V
    .locals 136

    .line 1
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 2
    .line 3
    const-string v0, "response_body_length"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v0, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 10
    .line 11
    const-string v0, "jwt_valid"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v2, v0, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 18
    .line 19
    const-string v0, "jwt_alg"

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-direct {v3, v0, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 26
    .line 27
    const-string v0, "parent_span_name"

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    invoke-direct {v4, v0, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    new-instance v5, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 34
    .line 35
    const-string v0, "crypto_controller"

    .line 36
    .line 37
    const/4 v6, 0x4

    .line 38
    invoke-direct {v5, v0, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 42
    .line 43
    const-string v0, "crypto_operation"

    .line 44
    .line 45
    const/4 v7, 0x5

    .line 46
    invoke-direct {v6, v0, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v7, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 50
    .line 51
    const-string v0, "crypto_exception_stack_trace"

    .line 52
    .line 53
    const/4 v8, 0x6

    .line 54
    invoke-direct {v7, v0, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    new-instance v8, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 58
    .line 59
    const-string v0, "ccs_request_id"

    .line 60
    .line 61
    const/4 v9, 0x7

    .line 62
    invoke-direct {v8, v0, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    new-instance v9, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 66
    .line 67
    const-string v0, "cert_based_auth_challenge_handler"

    .line 68
    .line 69
    const/16 v10, 0x8

    .line 70
    .line 71
    invoke-direct {v9, v0, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    new-instance v10, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 75
    .line 76
    const-string v0, "cert_based_auth_existing_piv_provider_present"

    .line 77
    .line 78
    const/16 v11, 0x9

    .line 79
    .line 80
    invoke-direct {v10, v0, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    new-instance v11, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 84
    .line 85
    const-string v0, "cert_based_auth_user_choice"

    .line 86
    .line 87
    const/16 v12, 0xa

    .line 88
    .line 89
    invoke-direct {v11, v0, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    new-instance v12, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 93
    .line 94
    const-string v0, "cert_based_auth_public_key_algo_type"

    .line 95
    .line 96
    const/16 v13, 0xb

    .line 97
    .line 98
    invoke-direct {v12, v0, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    new-instance v13, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 102
    .line 103
    const-string v0, "error_type"

    .line 104
    .line 105
    const/16 v14, 0xc

    .line 106
    .line 107
    invoke-direct {v13, v0, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    new-instance v14, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 111
    .line 112
    const-string v0, "error_code"

    .line 113
    .line 114
    const/16 v15, 0xd

    .line 115
    .line 116
    invoke-direct {v14, v0, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    new-instance v15, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 120
    .line 121
    const-string v0, "ipc_strategy"

    .line 122
    .line 123
    move-object/from16 v16, v1

    .line 124
    .line 125
    const/16 v1, 0xe

    .line 126
    .line 127
    invoke-direct {v15, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 131
    .line 132
    const-string v1, "public_api_id"

    .line 133
    .line 134
    move-object/from16 v17, v2

    .line 135
    .line 136
    const/16 v2, 0xf

    .line 137
    .line 138
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 142
    .line 143
    const-string v2, "controller_name"

    .line 144
    .line 145
    move-object/from16 v18, v0

    .line 146
    .line 147
    const/16 v0, 0x10

    .line 148
    .line 149
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 153
    .line 154
    const-string v2, "application_name"

    .line 155
    .line 156
    move-object/from16 v19, v1

    .line 157
    .line 158
    const/16 v1, 0x11

    .line 159
    .line 160
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 164
    .line 165
    const-string v2, "correlation_id"

    .line 166
    .line 167
    move-object/from16 v20, v0

    .line 168
    .line 169
    const/16 v0, 0x12

    .line 170
    .line 171
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    sput-object v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->correlation_id:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 175
    .line 176
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 177
    .line 178
    const-string v2, "correlation_id_v2"

    .line 179
    .line 180
    move-object/from16 v21, v1

    .line 181
    .line 182
    const/16 v1, 0x13

    .line 183
    .line 184
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 188
    .line 189
    const-string v2, "is_serviced_from_cache"

    .line 190
    .line 191
    move-object/from16 v22, v0

    .line 192
    .line 193
    const/16 v0, 0x14

    .line 194
    .line 195
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 199
    .line 200
    const-string v2, "error_message"

    .line 201
    .line 202
    move-object/from16 v23, v1

    .line 203
    .line 204
    const/16 v1, 0x15

    .line 205
    .line 206
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 210
    .line 211
    const-string v2, "is_device_id_claims_requested"

    .line 212
    .line 213
    move-object/from16 v24, v0

    .line 214
    .line 215
    const/16 v0, 0x16

    .line 216
    .line 217
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 221
    .line 222
    const-string v2, "response_content_type"

    .line 223
    .line 224
    move-object/from16 v25, v1

    .line 225
    .line 226
    const/16 v1, 0x17

    .line 227
    .line 228
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 229
    .line 230
    .line 231
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 232
    .line 233
    const-string v2, "http_status_code"

    .line 234
    .line 235
    move-object/from16 v26, v0

    .line 236
    .line 237
    const/16 v0, 0x18

    .line 238
    .line 239
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 243
    .line 244
    const-string v2, "num_concurrent_silent_requests"

    .line 245
    .line 246
    move-object/from16 v27, v1

    .line 247
    .line 248
    const/16 v1, 0x19

    .line 249
    .line 250
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 254
    .line 255
    const-string v2, "silent_requests_queue_size"

    .line 256
    .line 257
    move-object/from16 v28, v0

    .line 258
    .line 259
    const/16 v0, 0x1a

    .line 260
    .line 261
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 265
    .line 266
    const-string v2, "silent_executor_pool_size"

    .line 267
    .line 268
    move-object/from16 v29, v1

    .line 269
    .line 270
    const/16 v1, 0x1b

    .line 271
    .line 272
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 276
    .line 277
    const-string v2, "cancellation_outcome"

    .line 278
    .line 279
    move-object/from16 v30, v0

    .line 280
    .line 281
    const/16 v0, 0x1c

    .line 282
    .line 283
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 284
    .line 285
    .line 286
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 287
    .line 288
    const-string v2, "elapsed_time_cache_save"

    .line 289
    .line 290
    move-object/from16 v31, v1

    .line 291
    .line 292
    const/16 v1, 0x1d

    .line 293
    .line 294
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 295
    .line 296
    .line 297
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 298
    .line 299
    const-string v2, "elapsed_time_cache_load"

    .line 300
    .line 301
    move-object/from16 v32, v0

    .line 302
    .line 303
    const/16 v0, 0x1e

    .line 304
    .line 305
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 306
    .line 307
    .line 308
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 309
    .line 310
    const-string v2, "elapsed_time_cache_load_aggregated_account_data"

    .line 311
    .line 312
    move-object/from16 v33, v1

    .line 313
    .line 314
    const/16 v1, 0x1f

    .line 315
    .line 316
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 317
    .line 318
    .line 319
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 320
    .line 321
    const-string v2, "elapsed_time_cache_load_with_aggregated_account_data"

    .line 322
    .line 323
    move-object/from16 v34, v0

    .line 324
    .line 325
    const/16 v0, 0x20

    .line 326
    .line 327
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 328
    .line 329
    .line 330
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 331
    .line 332
    const-string v2, "elapsed_time_cache_save_and_load_aggregated_account_data"

    .line 333
    .line 334
    move-object/from16 v35, v1

    .line 335
    .line 336
    const/16 v1, 0x21

    .line 337
    .line 338
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 342
    .line 343
    const-string v2, "elapsed_time_cache_delete_access_tokens_with_intersecting_scopes"

    .line 344
    .line 345
    move-object/from16 v36, v0

    .line 346
    .line 347
    const/16 v0, 0x22

    .line 348
    .line 349
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 350
    .line 351
    .line 352
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 353
    .line 354
    const-string v2, "elapsed_time_cache_remove_credential"

    .line 355
    .line 356
    move-object/from16 v37, v1

    .line 357
    .line 358
    const/16 v1, 0x23

    .line 359
    .line 360
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 361
    .line 362
    .line 363
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 364
    .line 365
    const-string v2, "elapsed_time_cache_get_account"

    .line 366
    .line 367
    move-object/from16 v38, v0

    .line 368
    .line 369
    const/16 v0, 0x24

    .line 370
    .line 371
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 372
    .line 373
    .line 374
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 375
    .line 376
    const-string v2, "elapsed_time_cache_get_accounts_with_aggregated_account_data"

    .line 377
    .line 378
    move-object/from16 v39, v1

    .line 379
    .line 380
    const/16 v1, 0x25

    .line 381
    .line 382
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 383
    .line 384
    .line 385
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 386
    .line 387
    const-string v2, "elapsed_time_cache_get_account_by_local_account_id"

    .line 388
    .line 389
    move-object/from16 v40, v0

    .line 390
    .line 391
    const/16 v0, 0x26

    .line 392
    .line 393
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 394
    .line 395
    .line 396
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 397
    .line 398
    const-string v2, "elapsed_time_cache_get_account_with_aggregated_account_data_by_local_account_id"

    .line 399
    .line 400
    move-object/from16 v41, v1

    .line 401
    .line 402
    const/16 v1, 0x27

    .line 403
    .line 404
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 405
    .line 406
    .line 407
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 408
    .line 409
    const-string v2, "elapsed_time_cache_get_accounts"

    .line 410
    .line 411
    move-object/from16 v42, v0

    .line 412
    .line 413
    const/16 v0, 0x28

    .line 414
    .line 415
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 416
    .line 417
    .line 418
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 419
    .line 420
    const-string v2, "elapsed_time_cache_get_all_tenant_accounts_for_account_by_client_id"

    .line 421
    .line 422
    move-object/from16 v43, v1

    .line 423
    .line 424
    const/16 v1, 0x29

    .line 425
    .line 426
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 427
    .line 428
    .line 429
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 430
    .line 431
    const-string v2, "elapsed_time_cache_get_id_tokens_for_account_record"

    .line 432
    .line 433
    move-object/from16 v44, v0

    .line 434
    .line 435
    const/16 v0, 0x2a

    .line 436
    .line 437
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 438
    .line 439
    .line 440
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 441
    .line 442
    const-string v2, "elapsed_time_cache_get_account_by_home_account_id"

    .line 443
    .line 444
    move-object/from16 v45, v1

    .line 445
    .line 446
    const/16 v1, 0x2b

    .line 447
    .line 448
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 449
    .line 450
    .line 451
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 452
    .line 453
    const-string v2, "elapsed_time_cache_remove_account"

    .line 454
    .line 455
    move-object/from16 v46, v0

    .line 456
    .line 457
    const/16 v0, 0x2c

    .line 458
    .line 459
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 460
    .line 461
    .line 462
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 463
    .line 464
    const-string v2, "elapsed_time_cache_clear_all"

    .line 465
    .line 466
    move-object/from16 v47, v1

    .line 467
    .line 468
    const/16 v1, 0x2d

    .line 469
    .line 470
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 471
    .line 472
    .line 473
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 474
    .line 475
    const-string v2, "elapsed_time_cache_get_all_client_ids"

    .line 476
    .line 477
    move-object/from16 v48, v0

    .line 478
    .line 479
    const/16 v0, 0x2e

    .line 480
    .line 481
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 482
    .line 483
    .line 484
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 485
    .line 486
    const-string v2, "elapsed_time_network_acquire_prt"

    .line 487
    .line 488
    move-object/from16 v49, v1

    .line 489
    .line 490
    const/16 v1, 0x2f

    .line 491
    .line 492
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 493
    .line 494
    .line 495
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 496
    .line 497
    const-string v2, "elapsed_time_network_acquire_nonce"

    .line 498
    .line 499
    move-object/from16 v50, v0

    .line 500
    .line 501
    const/16 v0, 0x30

    .line 502
    .line 503
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 504
    .line 505
    .line 506
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 507
    .line 508
    const-string v2, "elapsed_time_network_acquire_at"

    .line 509
    .line 510
    move-object/from16 v51, v1

    .line 511
    .line 512
    const/16 v1, 0x31

    .line 513
    .line 514
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 515
    .line 516
    .line 517
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 518
    .line 519
    const-string v2, "broker_operation_name"

    .line 520
    .line 521
    move-object/from16 v52, v0

    .line 522
    .line 523
    const/16 v0, 0x32

    .line 524
    .line 525
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 526
    .line 527
    .line 528
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 529
    .line 530
    const-string v2, "fido_challenge_handler"

    .line 531
    .line 532
    move-object/from16 v53, v1

    .line 533
    .line 534
    const/16 v1, 0x33

    .line 535
    .line 536
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 537
    .line 538
    .line 539
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 540
    .line 541
    const-string v2, "fido_manager"

    .line 542
    .line 543
    move-object/from16 v54, v0

    .line 544
    .line 545
    const/16 v0, 0x34

    .line 546
    .line 547
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 548
    .line 549
    .line 550
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 551
    .line 552
    const-string v2, "ccs_request_sequence"

    .line 553
    .line 554
    move-object/from16 v55, v1

    .line 555
    .line 556
    const/16 v1, 0x35

    .line 557
    .line 558
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 559
    .line 560
    .line 561
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 562
    .line 563
    const-string v2, "backup_ipc_used"

    .line 564
    .line 565
    move-object/from16 v56, v0

    .line 566
    .line 567
    const/16 v0, 0x36

    .line 568
    .line 569
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 570
    .line 571
    .line 572
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 573
    .line 574
    const-string v2, "calling_package_name"

    .line 575
    .line 576
    move-object/from16 v57, v1

    .line 577
    .line 578
    const/16 v1, 0x37

    .line 579
    .line 580
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 581
    .line 582
    .line 583
    sput-object v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->calling_package_name:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 584
    .line 585
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 586
    .line 587
    const-string v2, "requested_cloud_name"

    .line 588
    .line 589
    move-object/from16 v58, v0

    .line 590
    .line 591
    const/16 v0, 0x38

    .line 592
    .line 593
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 594
    .line 595
    .line 596
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 597
    .line 598
    const-string v2, "home_cloud_name"

    .line 599
    .line 600
    move-object/from16 v59, v1

    .line 601
    .line 602
    const/16 v1, 0x39

    .line 603
    .line 604
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 605
    .line 606
    .line 607
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 608
    .line 609
    const-string v2, "stop_returning_rt_result"

    .line 610
    .line 611
    move-object/from16 v60, v0

    .line 612
    .line 613
    const/16 v0, 0x3a

    .line 614
    .line 615
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 616
    .line 617
    .line 618
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 619
    .line 620
    const-string v2, "keystore_operation"

    .line 621
    .line 622
    move-object/from16 v61, v1

    .line 623
    .line 624
    const/16 v1, 0x3b

    .line 625
    .line 626
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 627
    .line 628
    .line 629
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 630
    .line 631
    const-string v2, "keystore_exception_stack_trace"

    .line 632
    .line 633
    move-object/from16 v62, v0

    .line 634
    .line 635
    const/16 v0, 0x3c

    .line 636
    .line 637
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 638
    .line 639
    .line 640
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 641
    .line 642
    const-string v2, "keystore_exception_message"

    .line 643
    .line 644
    move-object/from16 v63, v1

    .line 645
    .line 646
    const/16 v1, 0x3d

    .line 647
    .line 648
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 649
    .line 650
    .line 651
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 652
    .line 653
    const-string v2, "keystore_numeric_error_code"

    .line 654
    .line 655
    move-object/from16 v64, v0

    .line 656
    .line 657
    const/16 v0, 0x3e

    .line 658
    .line 659
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 660
    .line 661
    .line 662
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 663
    .line 664
    const-string v2, "is_sso_nonce_found_in_ests_request"

    .line 665
    .line 666
    move-object/from16 v65, v1

    .line 667
    .line 668
    const/16 v1, 0x3f

    .line 669
    .line 670
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 671
    .line 672
    .line 673
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 674
    .line 675
    const-string v2, "is_new_refresh_token_cred_header_attached"

    .line 676
    .line 677
    move-object/from16 v66, v0

    .line 678
    .line 679
    const/16 v0, 0x40

    .line 680
    .line 681
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 682
    .line 683
    .line 684
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 685
    .line 686
    const-string v2, "elapsed_time_keypair_generation"

    .line 687
    .line 688
    move-object/from16 v67, v1

    .line 689
    .line 690
    const/16 v1, 0x41

    .line 691
    .line 692
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 693
    .line 694
    .line 695
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 696
    .line 697
    const-string v2, "key_pair_gen_successful_method"

    .line 698
    .line 699
    move-object/from16 v68, v0

    .line 700
    .line 701
    const/16 v0, 0x42

    .line 702
    .line 703
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 704
    .line 705
    .line 706
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 707
    .line 708
    const-string v2, "keypair_gen_exception"

    .line 709
    .line 710
    move-object/from16 v69, v1

    .line 711
    .line 712
    const/16 v1, 0x43

    .line 713
    .line 714
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 715
    .line 716
    .line 717
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 718
    .line 719
    const-string v2, "out_of_memory_exception_stacktrace"

    .line 720
    .line 721
    move-object/from16 v70, v0

    .line 722
    .line 723
    const/16 v0, 0x44

    .line 724
    .line 725
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 726
    .line 727
    .line 728
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 729
    .line 730
    const-string v2, "is_mam_flow"

    .line 731
    .line 732
    move-object/from16 v71, v1

    .line 733
    .line 734
    const/16 v1, 0x45

    .line 735
    .line 736
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 737
    .line 738
    .line 739
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 740
    .line 741
    const-string v2, "is_switch_browser_protocol"

    .line 742
    .line 743
    move-object/from16 v72, v0

    .line 744
    .line 745
    const/16 v0, 0x46

    .line 746
    .line 747
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 748
    .line 749
    .line 750
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 751
    .line 752
    const-string v2, "browser_package_name"

    .line 753
    .line 754
    move-object/from16 v73, v1

    .line 755
    .line 756
    const/16 v1, 0x47

    .line 757
    .line 758
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 759
    .line 760
    .line 761
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 762
    .line 763
    const-string v2, "is_custom_tabs_supported"

    .line 764
    .line 765
    move-object/from16 v74, v0

    .line 766
    .line 767
    const/16 v0, 0x48

    .line 768
    .line 769
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 770
    .line 771
    .line 772
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 773
    .line 774
    const-string v2, "is_switch_browser_request_handled"

    .line 775
    .line 776
    move-object/from16 v75, v1

    .line 777
    .line 778
    const/16 v1, 0x49

    .line 779
    .line 780
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 781
    .line 782
    .line 783
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 784
    .line 785
    const-string v2, "is_switch_browser_resume_handled"

    .line 786
    .line 787
    move-object/from16 v76, v0

    .line 788
    .line 789
    const/16 v0, 0x4a

    .line 790
    .line 791
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 792
    .line 793
    .line 794
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 795
    .line 796
    const-string v2, "auth_tab_used"

    .line 797
    .line 798
    move-object/from16 v77, v1

    .line 799
    .line 800
    const/16 v1, 0x4b

    .line 801
    .line 802
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 803
    .line 804
    .line 805
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 806
    .line 807
    const-string v2, "auth_tab_result_code"

    .line 808
    .line 809
    move-object/from16 v78, v0

    .line 810
    .line 811
    const/16 v0, 0x4c

    .line 812
    .line 813
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 814
    .line 815
    .line 816
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 817
    .line 818
    const-string v2, "is_auth_tab_supported"

    .line 819
    .line 820
    move-object/from16 v79, v1

    .line 821
    .line 822
    const/16 v1, 0x4d

    .line 823
    .line 824
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 825
    .line 826
    .line 827
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 828
    .line 829
    const-string v2, "auth_tab_fallback_to_custom_tabs"

    .line 830
    .line 831
    move-object/from16 v80, v0

    .line 832
    .line 833
    const/16 v0, 0x4e

    .line 834
    .line 835
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 836
    .line 837
    .line 838
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 839
    .line 840
    const-string v2, "tenant_id"

    .line 841
    .line 842
    move-object/from16 v81, v1

    .line 843
    .line 844
    const/16 v1, 0x4f

    .line 845
    .line 846
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 847
    .line 848
    .line 849
    sput-object v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->tenant_id:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 850
    .line 851
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 852
    .line 853
    const-string v2, "account_type"

    .line 854
    .line 855
    move-object/from16 v82, v0

    .line 856
    .line 857
    const/16 v0, 0x50

    .line 858
    .line 859
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 860
    .line 861
    .line 862
    sput-object v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->account_type:Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 863
    .line 864
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 865
    .line 866
    const-string v2, "active_broker_package_name"

    .line 867
    .line 868
    move-object/from16 v83, v1

    .line 869
    .line 870
    const/16 v1, 0x51

    .line 871
    .line 872
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 873
    .line 874
    .line 875
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 876
    .line 877
    const-string v2, "current_broker_package_name"

    .line 878
    .line 879
    move-object/from16 v84, v0

    .line 880
    .line 881
    const/16 v0, 0x52

    .line 882
    .line 883
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 884
    .line 885
    .line 886
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 887
    .line 888
    const-string v2, "is_webcp_in_webview_enabled"

    .line 889
    .line 890
    move-object/from16 v85, v1

    .line 891
    .line 892
    const/16 v1, 0x53

    .line 893
    .line 894
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 895
    .line 896
    .line 897
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 898
    .line 899
    const-string v2, "web_view_ssl_primary_error_code"

    .line 900
    .line 901
    move-object/from16 v86, v0

    .line 902
    .line 903
    const/16 v0, 0x54

    .line 904
    .line 905
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 906
    .line 907
    .line 908
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 909
    .line 910
    const-string v2, "authux_js_action_name"

    .line 911
    .line 912
    move-object/from16 v87, v1

    .line 913
    .line 914
    const/16 v1, 0x55

    .line 915
    .line 916
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 917
    .line 918
    .line 919
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 920
    .line 921
    const-string v2, "authux_js_action_component"

    .line 922
    .line 923
    move-object/from16 v88, v0

    .line 924
    .line 925
    const/16 v0, 0x56

    .line 926
    .line 927
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 928
    .line 929
    .line 930
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 931
    .line 932
    const-string v2, "authux_js_operation"

    .line 933
    .line 934
    move-object/from16 v89, v1

    .line 935
    .line 936
    const/16 v1, 0x57

    .line 937
    .line 938
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 939
    .line 940
    .line 941
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 942
    .line 943
    const-string v2, "stored_number_match_entry"

    .line 944
    .line 945
    move-object/from16 v90, v0

    .line 946
    .line 947
    const/16 v0, 0x58

    .line 948
    .line 949
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 950
    .line 951
    .line 952
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 953
    .line 954
    const-string v2, "web_cp_flight_get_time"

    .line 955
    .line 956
    move-object/from16 v91, v1

    .line 957
    .line 958
    const/16 v1, 0x59

    .line 959
    .line 960
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 961
    .line 962
    .line 963
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 964
    .line 965
    const-string v2, "openid_issuer"

    .line 966
    .line 967
    move-object/from16 v92, v0

    .line 968
    .line 969
    const/16 v0, 0x5a

    .line 970
    .line 971
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 972
    .line 973
    .line 974
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 975
    .line 976
    const-string v2, "openid_issuer_invalid_reason"

    .line 977
    .line 978
    move-object/from16 v93, v1

    .line 979
    .line 980
    const/16 v1, 0x5b

    .line 981
    .line 982
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 983
    .line 984
    .line 985
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 986
    .line 987
    const-string v2, "openid_config_request_authority"

    .line 988
    .line 989
    move-object/from16 v94, v0

    .line 990
    .line 991
    const/16 v0, 0x5c

    .line 992
    .line 993
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 994
    .line 995
    .line 996
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 997
    .line 998
    const-string v2, "is_redirect_to_playstore_launch_from_webcp"

    .line 999
    .line 1000
    move-object/from16 v95, v1

    .line 1001
    .line 1002
    const/16 v1, 0x5d

    .line 1003
    .line 1004
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1005
    .line 1006
    .line 1007
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1008
    .line 1009
    const-string v2, "is_in_web_cp_flow"

    .line 1010
    .line 1011
    move-object/from16 v96, v0

    .line 1012
    .line 1013
    const/16 v0, 0x5e

    .line 1014
    .line 1015
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1016
    .line 1017
    .line 1018
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1019
    .line 1020
    const-string v2, "in_memory_cache_used_for_accounts_and_credentials"

    .line 1021
    .line 1022
    move-object/from16 v97, v1

    .line 1023
    .line 1024
    const/16 v1, 0x5f

    .line 1025
    .line 1026
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1027
    .line 1028
    .line 1029
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1030
    .line 1031
    const-string v2, "is_filter_then_clone_enabled"

    .line 1032
    .line 1033
    move-object/from16 v98, v0

    .line 1034
    .line 1035
    const/16 v0, 0x60

    .line 1036
    .line 1037
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1038
    .line 1039
    .line 1040
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1041
    .line 1042
    const-string v2, "cache_key_in_storage_but_not_in_memory"

    .line 1043
    .line 1044
    move-object/from16 v99, v1

    .line 1045
    .line 1046
    const/16 v1, 0x61

    .line 1047
    .line 1048
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1049
    .line 1050
    .line 1051
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1052
    .line 1053
    const-string v2, "elapsed_time_in_memory_cache_load"

    .line 1054
    .line 1055
    move-object/from16 v100, v0

    .line 1056
    .line 1057
    const/16 v0, 0x62

    .line 1058
    .line 1059
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1060
    .line 1061
    .line 1062
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1063
    .line 1064
    const-string v2, "passkey_operation_type"

    .line 1065
    .line 1066
    move-object/from16 v101, v1

    .line 1067
    .line 1068
    const/16 v1, 0x63

    .line 1069
    .line 1070
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1071
    .line 1072
    .line 1073
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1074
    .line 1075
    const-string v2, "passkey_dom_exception_name"

    .line 1076
    .line 1077
    move-object/from16 v102, v0

    .line 1078
    .line 1079
    const/16 v0, 0x64

    .line 1080
    .line 1081
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1082
    .line 1083
    .line 1084
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1085
    .line 1086
    const-string v2, "passkey_origin"

    .line 1087
    .line 1088
    move-object/from16 v103, v1

    .line 1089
    .line 1090
    const/16 v1, 0x65

    .line 1091
    .line 1092
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1093
    .line 1094
    .line 1095
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1096
    .line 1097
    const-string v2, "passkey_aaguid"

    .line 1098
    .line 1099
    move-object/from16 v104, v0

    .line 1100
    .line 1101
    const/16 v0, 0x66

    .line 1102
    .line 1103
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1104
    .line 1105
    .line 1106
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1107
    .line 1108
    const-string v2, "elapsed_time_save_aggregated_account_data"

    .line 1109
    .line 1110
    move-object/from16 v105, v1

    .line 1111
    .line 1112
    const/16 v1, 0x67

    .line 1113
    .line 1114
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1115
    .line 1116
    .line 1117
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1118
    .line 1119
    const-string v2, "elapsed_time_load_aggregated_account_data"

    .line 1120
    .line 1121
    move-object/from16 v106, v0

    .line 1122
    .line 1123
    const/16 v0, 0x68

    .line 1124
    .line 1125
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1126
    .line 1127
    .line 1128
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1129
    .line 1130
    const-string v2, "is_account_aggregation_skipped"

    .line 1131
    .line 1132
    move-object/from16 v107, v1

    .line 1133
    .line 1134
    const/16 v1, 0x69

    .line 1135
    .line 1136
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1137
    .line 1138
    .line 1139
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1140
    .line 1141
    const-string v2, "is_redirect_url_opened_in_browser"

    .line 1142
    .line 1143
    move-object/from16 v108, v0

    .line 1144
    .line 1145
    const/16 v0, 0x6a

    .line 1146
    .line 1147
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1148
    .line 1149
    .line 1150
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1151
    .line 1152
    const-string v2, "browser_sso_success_count"

    .line 1153
    .line 1154
    move-object/from16 v109, v1

    .line 1155
    .line 1156
    const/16 v1, 0x6b

    .line 1157
    .line 1158
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1159
    .line 1160
    .line 1161
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1162
    .line 1163
    const-string v2, "browser_sso_failure_count"

    .line 1164
    .line 1165
    move-object/from16 v110, v0

    .line 1166
    .line 1167
    const/16 v0, 0x6c

    .line 1168
    .line 1169
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1170
    .line 1171
    .line 1172
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1173
    .line 1174
    const-string v2, "drs_discovery_retry_number"

    .line 1175
    .line 1176
    move-object/from16 v111, v1

    .line 1177
    .line 1178
    const/16 v1, 0x6d

    .line 1179
    .line 1180
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1181
    .line 1182
    .line 1183
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1184
    .line 1185
    const-string v2, "client_tls_retry_number"

    .line 1186
    .line 1187
    move-object/from16 v112, v0

    .line 1188
    .line 1189
    const/16 v0, 0x6e

    .line 1190
    .line 1191
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1192
    .line 1193
    .line 1194
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1195
    .line 1196
    const-string v2, "key_pair_gen_description"

    .line 1197
    .line 1198
    move-object/from16 v113, v1

    .line 1199
    .line 1200
    const/16 v1, 0x6f

    .line 1201
    .line 1202
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1203
    .line 1204
    .line 1205
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1206
    .line 1207
    const-string v2, "key_pair_gen_algorithm"

    .line 1208
    .line 1209
    move-object/from16 v114, v0

    .line 1210
    .line 1211
    const/16 v0, 0x70

    .line 1212
    .line 1213
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1214
    .line 1215
    .line 1216
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1217
    .line 1218
    const-string v2, "key_pair_gen_encryption_paddings"

    .line 1219
    .line 1220
    move-object/from16 v115, v1

    .line 1221
    .line 1222
    const/16 v1, 0x71

    .line 1223
    .line 1224
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1225
    .line 1226
    .line 1227
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1228
    .line 1229
    const-string v2, "key_pair_gen_failure_history"

    .line 1230
    .line 1231
    move-object/from16 v116, v0

    .line 1232
    .line 1233
    const/16 v0, 0x72

    .line 1234
    .line 1235
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1236
    .line 1237
    .line 1238
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1239
    .line 1240
    const-string v2, "key_pair_gen_elapsed_time"

    .line 1241
    .line 1242
    move-object/from16 v117, v1

    .line 1243
    .line 1244
    const/16 v1, 0x73

    .line 1245
    .line 1246
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1247
    .line 1248
    .line 1249
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1250
    .line 1251
    const-string v2, "key_pair_supported_paddings"

    .line 1252
    .line 1253
    move-object/from16 v118, v0

    .line 1254
    .line 1255
    const/16 v0, 0x74

    .line 1256
    .line 1257
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1258
    .line 1259
    .line 1260
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1261
    .line 1262
    const-string v2, "available_transformation_list"

    .line 1263
    .line 1264
    move-object/from16 v119, v1

    .line 1265
    .line 1266
    const/16 v1, 0x75

    .line 1267
    .line 1268
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1269
    .line 1270
    .line 1271
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1272
    .line 1273
    const-string v2, "elected_cipher_transformation"

    .line 1274
    .line 1275
    move-object/from16 v120, v0

    .line 1276
    .line 1277
    const/16 v0, 0x76

    .line 1278
    .line 1279
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1280
    .line 1281
    .line 1282
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1283
    .line 1284
    const-string v2, "secret_key_transformation"

    .line 1285
    .line 1286
    move-object/from16 v121, v1

    .line 1287
    .line 1288
    const/16 v1, 0x77

    .line 1289
    .line 1290
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1291
    .line 1292
    .line 1293
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1294
    .line 1295
    const-string v2, "secret_key_algorithm"

    .line 1296
    .line 1297
    move-object/from16 v122, v0

    .line 1298
    .line 1299
    const/16 v0, 0x78

    .line 1300
    .line 1301
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1302
    .line 1303
    .line 1304
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1305
    .line 1306
    const-string v2, "secret_key_wrapping_serializer_id"

    .line 1307
    .line 1308
    move-object/from16 v123, v1

    .line 1309
    .line 1310
    const/16 v1, 0x79

    .line 1311
    .line 1312
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1313
    .line 1314
    .line 1315
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1316
    .line 1317
    const-string v2, "secret_key_size"

    .line 1318
    .line 1319
    move-object/from16 v124, v0

    .line 1320
    .line 1321
    const/16 v0, 0x7a

    .line 1322
    .line 1323
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1324
    .line 1325
    .line 1326
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1327
    .line 1328
    const-string v2, "secret_key_serialization_duration"

    .line 1329
    .line 1330
    move-object/from16 v125, v1

    .line 1331
    .line 1332
    const/16 v1, 0x7b

    .line 1333
    .line 1334
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1335
    .line 1336
    .line 1337
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1338
    .line 1339
    const-string v2, "is_openid_vc_handler_found"

    .line 1340
    .line 1341
    move-object/from16 v126, v0

    .line 1342
    .line 1343
    const/16 v0, 0x7c

    .line 1344
    .line 1345
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1346
    .line 1347
    .line 1348
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1349
    .line 1350
    const-string v2, "content_provider_status"

    .line 1351
    .line 1352
    move-object/from16 v127, v1

    .line 1353
    .line 1354
    const/16 v1, 0x7d

    .line 1355
    .line 1356
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1357
    .line 1358
    .line 1359
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1360
    .line 1361
    const-string v2, "bound_service_status"

    .line 1362
    .line 1363
    move-object/from16 v128, v0

    .line 1364
    .line 1365
    const/16 v0, 0x7e

    .line 1366
    .line 1367
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1368
    .line 1369
    .line 1370
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1371
    .line 1372
    const-string v2, "legacy_account_manager_status"

    .line 1373
    .line 1374
    move-object/from16 v129, v1

    .line 1375
    .line 1376
    const/16 v1, 0x7f

    .line 1377
    .line 1378
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1379
    .line 1380
    .line 1381
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1382
    .line 1383
    const-string v2, "device_registration_protocol_name"

    .line 1384
    .line 1385
    move-object/from16 v130, v0

    .line 1386
    .line 1387
    const/16 v0, 0x80

    .line 1388
    .line 1389
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1390
    .line 1391
    .line 1392
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1393
    .line 1394
    const-string v2, "target_blank_navigation_route"

    .line 1395
    .line 1396
    move-object/from16 v131, v1

    .line 1397
    .line 1398
    const/16 v1, 0x81

    .line 1399
    .line 1400
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1401
    .line 1402
    .line 1403
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1404
    .line 1405
    const-string v2, "server_error"

    .line 1406
    .line 1407
    move-object/from16 v132, v0

    .line 1408
    .line 1409
    const/16 v0, 0x82

    .line 1410
    .line 1411
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1412
    .line 1413
    .line 1414
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1415
    .line 1416
    const-string v2, "server_sub_error"

    .line 1417
    .line 1418
    move-object/from16 v133, v1

    .line 1419
    .line 1420
    const/16 v1, 0x83

    .line 1421
    .line 1422
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1423
    .line 1424
    .line 1425
    new-instance v1, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1426
    .line 1427
    const-string v2, "server_cloud_instance"

    .line 1428
    .line 1429
    move-object/from16 v134, v0

    .line 1430
    .line 1431
    const/16 v0, 0x84

    .line 1432
    .line 1433
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1434
    .line 1435
    .line 1436
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1437
    .line 1438
    const-string v2, "server_caller_data_boundary"

    .line 1439
    .line 1440
    move-object/from16 v135, v1

    .line 1441
    .line 1442
    const/16 v1, 0x85

    .line 1443
    .line 1444
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1445
    .line 1446
    .line 1447
    move-object/from16 v1, v16

    .line 1448
    .line 1449
    move-object/from16 v2, v17

    .line 1450
    .line 1451
    move-object/from16 v16, v18

    .line 1452
    .line 1453
    move-object/from16 v17, v19

    .line 1454
    .line 1455
    move-object/from16 v18, v20

    .line 1456
    .line 1457
    move-object/from16 v19, v21

    .line 1458
    .line 1459
    move-object/from16 v20, v22

    .line 1460
    .line 1461
    move-object/from16 v21, v23

    .line 1462
    .line 1463
    move-object/from16 v22, v24

    .line 1464
    .line 1465
    move-object/from16 v23, v25

    .line 1466
    .line 1467
    move-object/from16 v24, v26

    .line 1468
    .line 1469
    move-object/from16 v25, v27

    .line 1470
    .line 1471
    move-object/from16 v26, v28

    .line 1472
    .line 1473
    move-object/from16 v27, v29

    .line 1474
    .line 1475
    move-object/from16 v28, v30

    .line 1476
    .line 1477
    move-object/from16 v29, v31

    .line 1478
    .line 1479
    move-object/from16 v30, v32

    .line 1480
    .line 1481
    move-object/from16 v31, v33

    .line 1482
    .line 1483
    move-object/from16 v32, v34

    .line 1484
    .line 1485
    move-object/from16 v33, v35

    .line 1486
    .line 1487
    move-object/from16 v34, v36

    .line 1488
    .line 1489
    move-object/from16 v35, v37

    .line 1490
    .line 1491
    move-object/from16 v36, v38

    .line 1492
    .line 1493
    move-object/from16 v37, v39

    .line 1494
    .line 1495
    move-object/from16 v38, v40

    .line 1496
    .line 1497
    move-object/from16 v39, v41

    .line 1498
    .line 1499
    move-object/from16 v40, v42

    .line 1500
    .line 1501
    move-object/from16 v41, v43

    .line 1502
    .line 1503
    move-object/from16 v42, v44

    .line 1504
    .line 1505
    move-object/from16 v43, v45

    .line 1506
    .line 1507
    move-object/from16 v44, v46

    .line 1508
    .line 1509
    move-object/from16 v45, v47

    .line 1510
    .line 1511
    move-object/from16 v46, v48

    .line 1512
    .line 1513
    move-object/from16 v47, v49

    .line 1514
    .line 1515
    move-object/from16 v48, v50

    .line 1516
    .line 1517
    move-object/from16 v49, v51

    .line 1518
    .line 1519
    move-object/from16 v50, v52

    .line 1520
    .line 1521
    move-object/from16 v51, v53

    .line 1522
    .line 1523
    move-object/from16 v52, v54

    .line 1524
    .line 1525
    move-object/from16 v53, v55

    .line 1526
    .line 1527
    move-object/from16 v54, v56

    .line 1528
    .line 1529
    move-object/from16 v55, v57

    .line 1530
    .line 1531
    move-object/from16 v56, v58

    .line 1532
    .line 1533
    move-object/from16 v57, v59

    .line 1534
    .line 1535
    move-object/from16 v58, v60

    .line 1536
    .line 1537
    move-object/from16 v59, v61

    .line 1538
    .line 1539
    move-object/from16 v60, v62

    .line 1540
    .line 1541
    move-object/from16 v61, v63

    .line 1542
    .line 1543
    move-object/from16 v62, v64

    .line 1544
    .line 1545
    move-object/from16 v63, v65

    .line 1546
    .line 1547
    move-object/from16 v64, v66

    .line 1548
    .line 1549
    move-object/from16 v65, v67

    .line 1550
    .line 1551
    move-object/from16 v66, v68

    .line 1552
    .line 1553
    move-object/from16 v67, v69

    .line 1554
    .line 1555
    move-object/from16 v68, v70

    .line 1556
    .line 1557
    move-object/from16 v69, v71

    .line 1558
    .line 1559
    move-object/from16 v70, v72

    .line 1560
    .line 1561
    move-object/from16 v71, v73

    .line 1562
    .line 1563
    move-object/from16 v72, v74

    .line 1564
    .line 1565
    move-object/from16 v73, v75

    .line 1566
    .line 1567
    move-object/from16 v74, v76

    .line 1568
    .line 1569
    move-object/from16 v75, v77

    .line 1570
    .line 1571
    move-object/from16 v76, v78

    .line 1572
    .line 1573
    move-object/from16 v77, v79

    .line 1574
    .line 1575
    move-object/from16 v78, v80

    .line 1576
    .line 1577
    move-object/from16 v79, v81

    .line 1578
    .line 1579
    move-object/from16 v80, v82

    .line 1580
    .line 1581
    move-object/from16 v81, v83

    .line 1582
    .line 1583
    move-object/from16 v82, v84

    .line 1584
    .line 1585
    move-object/from16 v83, v85

    .line 1586
    .line 1587
    move-object/from16 v84, v86

    .line 1588
    .line 1589
    move-object/from16 v85, v87

    .line 1590
    .line 1591
    move-object/from16 v86, v88

    .line 1592
    .line 1593
    move-object/from16 v87, v89

    .line 1594
    .line 1595
    move-object/from16 v88, v90

    .line 1596
    .line 1597
    move-object/from16 v89, v91

    .line 1598
    .line 1599
    move-object/from16 v90, v92

    .line 1600
    .line 1601
    move-object/from16 v91, v93

    .line 1602
    .line 1603
    move-object/from16 v92, v94

    .line 1604
    .line 1605
    move-object/from16 v93, v95

    .line 1606
    .line 1607
    move-object/from16 v94, v96

    .line 1608
    .line 1609
    move-object/from16 v95, v97

    .line 1610
    .line 1611
    move-object/from16 v96, v98

    .line 1612
    .line 1613
    move-object/from16 v97, v99

    .line 1614
    .line 1615
    move-object/from16 v98, v100

    .line 1616
    .line 1617
    move-object/from16 v99, v101

    .line 1618
    .line 1619
    move-object/from16 v100, v102

    .line 1620
    .line 1621
    move-object/from16 v101, v103

    .line 1622
    .line 1623
    move-object/from16 v102, v104

    .line 1624
    .line 1625
    move-object/from16 v103, v105

    .line 1626
    .line 1627
    move-object/from16 v104, v106

    .line 1628
    .line 1629
    move-object/from16 v105, v107

    .line 1630
    .line 1631
    move-object/from16 v106, v108

    .line 1632
    .line 1633
    move-object/from16 v107, v109

    .line 1634
    .line 1635
    move-object/from16 v108, v110

    .line 1636
    .line 1637
    move-object/from16 v109, v111

    .line 1638
    .line 1639
    move-object/from16 v110, v112

    .line 1640
    .line 1641
    move-object/from16 v111, v113

    .line 1642
    .line 1643
    move-object/from16 v112, v114

    .line 1644
    .line 1645
    move-object/from16 v113, v115

    .line 1646
    .line 1647
    move-object/from16 v114, v116

    .line 1648
    .line 1649
    move-object/from16 v115, v117

    .line 1650
    .line 1651
    move-object/from16 v116, v118

    .line 1652
    .line 1653
    move-object/from16 v117, v119

    .line 1654
    .line 1655
    move-object/from16 v118, v120

    .line 1656
    .line 1657
    move-object/from16 v119, v121

    .line 1658
    .line 1659
    move-object/from16 v120, v122

    .line 1660
    .line 1661
    move-object/from16 v121, v123

    .line 1662
    .line 1663
    move-object/from16 v122, v124

    .line 1664
    .line 1665
    move-object/from16 v123, v125

    .line 1666
    .line 1667
    move-object/from16 v124, v126

    .line 1668
    .line 1669
    move-object/from16 v125, v127

    .line 1670
    .line 1671
    move-object/from16 v126, v128

    .line 1672
    .line 1673
    move-object/from16 v127, v129

    .line 1674
    .line 1675
    move-object/from16 v128, v130

    .line 1676
    .line 1677
    move-object/from16 v129, v131

    .line 1678
    .line 1679
    move-object/from16 v130, v132

    .line 1680
    .line 1681
    move-object/from16 v131, v133

    .line 1682
    .line 1683
    move-object/from16 v132, v134

    .line 1684
    .line 1685
    move-object/from16 v133, v135

    .line 1686
    .line 1687
    move-object/from16 v134, v0

    .line 1688
    .line 1689
    filled-new-array/range {v1 .. v134}, [Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v0

    .line 1693
    sput-object v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->$VALUES:[Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 1694
    .line 1695
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->$VALUES:[Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/microsoft/identity/common/java/opentelemetry/AttributeName;

    .line 8
    .line 9
    return-object v0
.end method
