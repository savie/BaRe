.class public abstract Lcom/microsoft/identity/common/PropertyBagUtil;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p0, Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    invoke-static {p0}, Lcom/microsoft/identity/common/PropertyBagUtil;->clientExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static clientExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/ClientException;
    .locals 5

    .line 1
    if-eqz p0, :cond_11

    .line 2
    .line 3
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v0, p0

    .line 26
    :goto_0
    instance-of v1, v0, Lcom/microsoft/identity/common/java/exception/TerminalException;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    move-object v1, v0

    .line 31
    check-cast v1, Lcom/microsoft/identity/common/java/exception/TerminalException;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/exception/TerminalException;->getErrorCode()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    move-object v0, p0

    .line 44
    :cond_2
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "An unhandled exception occurred with message: "

    .line 49
    .line 50
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {p0, v1, v2, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_3
    instance-of p0, v0, Ljava/io/IOException;

    .line 69
    .line 70
    if-eqz p0, :cond_4

    .line 71
    .line 72
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v2, "An IO error occurred with message: "

    .line 77
    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v2, "io_error"

    .line 93
    .line 94
    invoke-direct {p0, v2, v1, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_4
    instance-of p0, v0, Ljava/lang/InterruptedException;

    .line 99
    .line 100
    if-eqz p0, :cond_5

    .line 101
    .line 102
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 103
    .line 104
    const-string v1, "operation_interrupted"

    .line 105
    .line 106
    const-string v2, "SDK cancelled operation, the thread execution was interrupted"

    .line 107
    .line 108
    invoke-direct {p0, v1, v2, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    return-object p0

    .line 112
    :cond_5
    instance-of p0, v0, Ljava/util/concurrent/TimeoutException;

    .line 113
    .line 114
    if-eqz p0, :cond_6

    .line 115
    .line 116
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v2, "A blocking operation has timed out: "

    .line 121
    .line 122
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string v2, "timed_out"

    .line 137
    .line 138
    invoke-direct {p0, v2, v1, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    return-object p0

    .line 142
    :cond_6
    instance-of p0, v0, Ljava/lang/NullPointerException;

    .line 143
    .line 144
    if-eqz p0, :cond_7

    .line 145
    .line 146
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 147
    .line 148
    const-string v1, "null_pointer_error"

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-direct {p0, v1, v2, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    return-object p0

    .line 158
    :cond_7
    instance-of p0, v0, Ljava/lang/OutOfMemoryError;

    .line 159
    .line 160
    if-eqz p0, :cond_a

    .line 161
    .line 162
    const-string p0, "Received an out of memory error, attempting to attach stacktrace..."

    .line 163
    .line 164
    const-string v1, "ExceptionAdapter"

    .line 165
    .line 166
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :try_start_0
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    if-eqz v2, :cond_9

    .line 178
    .line 179
    const/4 v3, 0x0

    .line 180
    aget-object v3, v2, v3

    .line 181
    .line 182
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    const/4 v3, 0x1

    .line 186
    :goto_1
    array-length v4, v2

    .line 187
    if-ge v3, v4, :cond_8

    .line 188
    .line 189
    aget-object v4, v2, v3

    .line 190
    .line 191
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    add-int/lit8 v3, v3, 0x1

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v3, "Received an out of memory error, stacktrace attached to span with id: "

    .line 206
    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-interface {p0}, Lqj7;->getSpanContext()Lrj7;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-interface {p0}, Lrj7;->getSpanId()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    .line 230
    .line 231
    const-string v2, "elements is marked non-null but is null"

    .line 232
    .line 233
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :catchall_0
    const-string p0, "Failed to emit telemetry for out of memory exception."

    .line 238
    .line 239
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :goto_2
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 243
    .line 244
    const-string v1, "out_of_memory"

    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-direct {p0, v1, v2, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    return-object p0

    .line 254
    :cond_a
    instance-of p0, v0, Ljava/security/GeneralSecurityException;

    .line 255
    .line 256
    if-eqz p0, :cond_10

    .line 257
    .line 258
    instance-of p0, v0, Ljava/security/cert/CertificateException;

    .line 259
    .line 260
    if-eqz p0, :cond_b

    .line 261
    .line 262
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 263
    .line 264
    const-string v1, "certificate_load_failure"

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-direct {p0, v1, v2, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    .line 272
    .line 273
    return-object p0

    .line 274
    :cond_b
    instance-of p0, v0, Ljava/security/KeyStoreException;

    .line 275
    .line 276
    if-eqz p0, :cond_c

    .line 277
    .line 278
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 279
    .line 280
    const-string v1, "keystore_not_initialized"

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-direct {p0, v1, v2, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    .line 288
    .line 289
    return-object p0

    .line 290
    :cond_c
    instance-of p0, v0, Ljava/security/NoSuchAlgorithmException;

    .line 291
    .line 292
    if-eqz p0, :cond_d

    .line 293
    .line 294
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 295
    .line 296
    const-string v1, "no_such_algorithm"

    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-direct {p0, v1, v2, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    .line 304
    .line 305
    return-object p0

    .line 306
    :cond_d
    instance-of p0, v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 307
    .line 308
    if-eqz p0, :cond_e

    .line 309
    .line 310
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 311
    .line 312
    const-string v1, "invalid_algorithm_parameter"

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-direct {p0, v1, v2, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    .line 320
    .line 321
    return-object p0

    .line 322
    :cond_e
    instance-of p0, v0, Ljava/security/UnrecoverableEntryException;

    .line 323
    .line 324
    if-eqz p0, :cond_f

    .line 325
    .line 326
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 327
    .line 328
    const-string v1, "protection_params_invalid"

    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-direct {p0, v1, v2, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    .line 336
    .line 337
    return-object p0

    .line 338
    :cond_f
    instance-of p0, v0, Ljava/security/InvalidKeyException;

    .line 339
    .line 340
    if-eqz p0, :cond_10

    .line 341
    .line 342
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 343
    .line 344
    const-string v1, "invalid_key"

    .line 345
    .line 346
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-direct {p0, v1, v2, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    .line 352
    .line 353
    return-object p0

    .line 354
    :cond_10
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 355
    .line 356
    const-string v1, "unknown_error"

    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-direct {p0, v1, v2, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    .line 364
    .line 365
    return-object p0

    .line 366
    :cond_11
    const-string p0, "exception is marked non-null but is null"

    .line 367
    .line 368
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    const/4 p0, 0x0

    .line 372
    return-object p0
.end method

.method public static final createLongCounter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lvi8;->b:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p1, "Instrument name \""

    .line 15
    .line 16
    const-string v0, "\" is invalid, returning noop instrument. Instrument names must consist of 63 or fewer characters including alphanumeric, _, ., -, and start with a letter."

    .line 17
    .line 18
    invoke-static {p1, p0, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 23
    .line 24
    invoke-static {p0, p1}, Lvi8;->a(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "count"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "Unit \"count\" is invalid. Instrument unit must be 63 or fewer ASCII characters."

    .line 43
    .line 44
    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 45
    .line 46
    invoke-static {p0, p1}, Lvi8;->a(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void
.end method

.method public static final createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;
    .locals 2

    .line 1
    const-string v0, "DefaultOTelSpanFactory:createSpanFromParent"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "parentSpanContext is NULL. Creating span without parent."

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createSpan(Ljava/lang/String;)Lr86;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-interface {p1}, Lrj7;->isValid()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string p1, "parentSpanContext is INVALID. Creating span without parent."

    .line 22
    .line 23
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createSpan(Ljava/lang/String;)Lr86;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    invoke-static {}, Lt40;->a()Lt40;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p1}, Lqj7;->b(Lrj7;)Lr86;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1, p0}, Lva4;->a(Lt40;)Lt40;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lqj7;->c(Lt40;)Lqj7;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0}, Lqj7;->getSpanContext()Lrj7;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-nez p0, :cond_2

    .line 52
    .line 53
    invoke-static {}, Lqj7;->current()Lqj7;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-interface {p0}, Lqj7;->getSpanContext()Lrj7;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :cond_2
    invoke-static {p0}, Lqj7;->b(Lrj7;)Lr86;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    return-object p0
.end method

.method public static deserialize([B)Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0xc

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 9
    .line 10
    const-string v0, "AbstractWrappedSecretKeySerializer:isNewFormat"

    .line 11
    .line 12
    const-string v1, "Data too small to contain header, assuming legacy format"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x4

    .line 19
    invoke-static {p0, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const v4, 0xff3cab

    .line 28
    .line 29
    .line 30
    if-ne v1, v4, :cond_1

    .line 31
    .line 32
    invoke-static {p0, v0, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    move-object v0, v2

    .line 46
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v4, "Detected serializer ID: "

    .line 49
    .line 50
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget v4, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 61
    .line 62
    const-string v4, "WrappedSecretKeySerializerManager:identifySerializer"

    .line 63
    .line 64
    invoke-static {v4, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    :cond_2
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, "Getting serializer for ID: "

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "WrappedSecretKeySerializerManager:getSerializer"

    .line 98
    .line 99
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    const/4 v0, 0x1

    .line 105
    if-ne v3, v0, :cond_3

    .line 106
    .line 107
    new-instance v0, Lcom/microsoft/identity/common/java/opentelemetry/NoopTraceState;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    const-string p0, "Unsupported serializer ID: "

    .line 114
    .line 115
    invoke-static {v3, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-object v2

    .line 123
    :cond_4
    new-instance v0, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKeyLegacySerializer;

    .line 124
    .line 125
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 126
    .line 127
    .line 128
    :goto_2
    invoke-interface {v0, p0}, Lcom/microsoft/identity/common/crypto/wrappedsecretkey/IWrappedSecretKeySerializer;->deserialize([B)Lcom/microsoft/identity/common/crypto/wrappedsecretkey/WrappedSecretKey;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    return-object p0
.end method

.method public static exceptionFromAcquireTokenResult(Lcom/microsoft/identity/common/java/result/AcquireTokenResult;)Lcom/microsoft/identity/common/java/exception/BaseException;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getAuthorizationResult()Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_10

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->getSuccess()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-nez v4, :cond_11

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->getAuthorizationErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v4, "ExceptionAdapter:exceptionFromAuthorizationResult"

    .line 21
    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    const-string p0, "AuthorizationErrorResponse is not set"

    .line 25
    .line 26
    invoke-static {v4, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Authorization error response is null. Authorization Status: "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->getAuthorizationStatus()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "authorization_result_null_error_response"

    .line 50
    .line 51
    invoke-direct {p0, v1, v0, v3}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;->getAuthorizationStatus()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eq v0, v2, :cond_f

    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    if-eq v0, v2, :cond_e

    .line 67
    .line 68
    const/4 v2, 0x3

    .line 69
    if-eq v0, v2, :cond_1

    .line 70
    .line 71
    const-string v0, "No AuthorizationResult status set"

    .line 72
    .line 73
    invoke-static {v4, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getErrorDescription()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {v0, v1, p0, v3}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_1
    instance-of v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;

    .line 91
    .line 92
    if-eqz v0, :cond_d

    .line 93
    .line 94
    move-object v0, p0

    .line 95
    check-cast v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;

    .line 96
    .line 97
    const-string v2, "device_registration_needed"

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    const-string v4, "errorCode is marked non-null but is null"

    .line 108
    .line 109
    const-string v5, "errorDescription is marked non-null but is null"

    .line 110
    .line 111
    const-string v6, "userName is marked non-null but is null"

    .line 112
    .line 113
    if-eqz v2, :cond_9

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->isTokenProtectionRequired()Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_5

    .line 120
    .line 121
    new-instance p0, Lcom/microsoft/identity/common/java/exception/StrongDeviceRegistrationRequiredException;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getErrorDescription()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getUpnToWpj()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p0, v1, v2, v3}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    if-eqz v1, :cond_4

    .line 139
    .line 140
    if-eqz v2, :cond_3

    .line 141
    .line 142
    if-eqz v0, :cond_2

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->setUsername(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-object p0

    .line 148
    :cond_2
    invoke-static {v6}, Lf6;->n(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-object v3

    .line 152
    :cond_3
    invoke-static {v5}, Lf6;->n(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-object v3

    .line 156
    :cond_4
    invoke-static {v4}, Lf6;->n(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-object v3

    .line 160
    :cond_5
    new-instance p0, Lcom/microsoft/identity/common/java/exception/DeviceRegistrationRequiredException;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getErrorDescription()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getUpnToWpj()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-direct {p0, v1, v2, v3}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    if-eqz v1, :cond_8

    .line 178
    .line 179
    if-eqz v2, :cond_7

    .line 180
    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->setUsername(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-object p0

    .line 187
    :cond_6
    invoke-static {v6}, Lf6;->n(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-object v3

    .line 191
    :cond_7
    invoke-static {v5}, Lf6;->n(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-object v3

    .line 195
    :cond_8
    invoke-static {v4}, Lf6;->n(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-object v3

    .line 199
    :cond_9
    const-string v2, "insufficient_device_registration"

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_d

    .line 210
    .line 211
    new-instance p0, Lcom/microsoft/identity/common/java/exception/InsufficientDeviceRegistrationException;

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getErrorDescription()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getUpnToWpj()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-direct {p0, v1, v2, v3}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    if-eqz v1, :cond_c

    .line 229
    .line 230
    if-eqz v2, :cond_b

    .line 231
    .line 232
    if-eqz v0, :cond_a

    .line 233
    .line 234
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->setUsername(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return-object p0

    .line 238
    :cond_a
    invoke-static {v6}, Lf6;->n(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    return-object v3

    .line 242
    :cond_b
    invoke-static {v5}, Lf6;->n(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    return-object v3

    .line 246
    :cond_c
    invoke-static {v4}, Lf6;->n(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    return-object v3

    .line 250
    :cond_d
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 251
    .line 252
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getErrorDescription()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-direct {v0, v2, p0, v1}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 261
    .line 262
    .line 263
    return-object v0

    .line 264
    :cond_e
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 265
    .line 266
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getErrorDescription()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-direct {v0, v1, p0, v3}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    .line 276
    .line 277
    return-object v0

    .line 278
    :cond_f
    new-instance p0, Lcom/microsoft/identity/common/java/exception/UserCancelException;

    .line 279
    .line 280
    invoke-direct {p0, v3, v3, v3}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    .line 282
    .line 283
    return-object p0

    .line 284
    :cond_10
    const-string v0, "ExceptionAdapter:exceptionFromAcquireTokenResult"

    .line 285
    .line 286
    const-string v4, "AuthorizationResult was null -- expected for ATS cases."

    .line 287
    .line 288
    invoke-static {v0, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :cond_11
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getTokenResult()Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    if-eqz p0, :cond_15

    .line 296
    .line 297
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getSuccess()Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-nez v0, :cond_15

    .line 302
    .line 303
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    if-eqz v0, :cond_15

    .line 308
    .line 309
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-nez v0, :cond_15

    .line 322
    .line 323
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    if-eqz v0, :cond_14

    .line 328
    .line 329
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-nez v1, :cond_12

    .line 338
    .line 339
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getSubError()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-nez v1, :cond_12

    .line 348
    .line 349
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    const-string v2, "unauthorized_client"

    .line 354
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-eqz v1, :cond_12

    .line 360
    .line 361
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getSubError()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    const-string v2, "protection_policy_required"

    .line 366
    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-eqz v1, :cond_12

    .line 372
    .line 373
    const-string v1, "ExceptionAdapter"

    .line 374
    .line 375
    const-string v2, "In order to properly construct the IntuneAppProtectionPolicyRequiredException we need the command parameters to be supplied.  Returning as service exception instead."

    .line 376
    .line 377
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-static {v0}, Lcom/microsoft/identity/common/PropertyBagUtil;->getExceptionFromTokenErrorResponse$1(Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;)Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    goto :goto_0

    .line 385
    :cond_12
    invoke-static {v0}, Lcom/microsoft/identity/common/PropertyBagUtil;->getExceptionFromTokenErrorResponse$1(Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;)Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getCliTelemInfo()Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;

    .line 390
    .line 391
    .line 392
    move-result-object p0

    .line 393
    if-eqz p0, :cond_13

    .line 394
    .line 395
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->getSpeRing()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;->setSpeRing(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->getRefreshTokenAge()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;->setRefreshTokenAge(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->getServerErrorCode()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;->setCliTelemErrorCode(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->getServerSubErrorCode()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->setCliTelemSubErrorCode(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :cond_13
    return-object v0

    .line 424
    :cond_14
    const-string p0, "errorResponse is marked non-null but is null"

    .line 425
    .line 426
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    return-object v3

    .line 430
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v4, "Unknown error, Token result is null ["

    .line 433
    .line 434
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    if-nez p0, :cond_16

    .line 438
    .line 439
    move v1, v2

    .line 440
    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string p0, "]"

    .line 444
    .line 445
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p0

    .line 452
    const-string v0, "ExceptionAdapter:exceptionFromTokenResult"

    .line 453
    .line 454
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 458
    .line 459
    const-string v0, "unknown_error"

    .line 460
    .line 461
    const-string v1, "Request failed, but no error returned back from service."

    .line 462
    .line 463
    invoke-direct {p0, v3, v0, v1}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    return-object p0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/java/util/ported/PropertyBag;
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    new-instance v0, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v0, v2, v3}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object v0

    .line 37
    :cond_1
    const-string p0, "bundle is marked non-null but is null"

    .line 38
    .line 39
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public static fromContext(Lt40;)Lzk0;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lx13;->a:Llh9;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lt40;->b(Llh9;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzk0;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lfa4;->b:Lfa4;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception p0

    .line 18
    :goto_0
    const-string v0, "BaggageExtension:fromContext"

    .line 19
    .line 20
    const-string v1, "Failed to get baggage from context"

    .line 21
    .line 22
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Lcom/microsoft/identity/common/java/opentelemetry/NoopBaggage;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public static final getAuthorizationActivityIntent(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;)Landroid/content/Intent;
    .locals 4

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->getInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/util/GzipUtil;->isBrokerProcess(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-class v2, Lcom/microsoft/identity/common/internal/providers/oauth2/BrokerAuthorizationActivity;

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isAuthorizationInCurrentTask()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 38
    .line 39
    if-eq v0, v1, :cond_1

    .line 40
    .line 41
    new-instance v0, Landroid/content/Intent;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-class v2, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;

    .line 48
    .line 49
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-class v2, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 60
    .line 61
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    const-string v1, "com.microsoft.identity.auth.intent"

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getAuthIntent()Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    const-string v1, "com.microsoft.identity.request.url"

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getRequestUrl()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const-string v1, "com.microsoft.identity.request.redirect.uri"

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getRedirectUri()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    const-string v1, "com.microsoft.identity.request.headers"

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getRequestHeader()Ljava/util/HashMap;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    const-string v1, "com.microsoft.identity.client.authorization.agent"

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    const-string v1, "com.microsoft.identity.web.view.zoom.controls.enabled"

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getWebViewZoomControlsEnabled()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    const-string v1, "com.microsoft.identity.web.view.zoom.enabled"

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getWebViewZoomEnabled()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    const-string v1, "com.microsoft.identity.web.view.web.cp.enabled"

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    sget-object v1, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/RequestContext;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "correlation_id"

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    new-instance v1, Lcom/microsoft/identity/common/internal/util/CommonMoshiJsonAdapter;

    .line 151
    .line 152
    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/util/CommonMoshiJsonAdapter;-><init>()V

    .line 153
    .line 154
    .line 155
    new-instance v2, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-interface {v3}, Lqj7;->getSpanContext()Lrj7;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-interface {v3}, Lrj7;->getTraceId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->traceId(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-interface {v3}, Lqj7;->getSpanContext()Lrj7;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-interface {v3}, Lrj7;->getSpanId()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->spanId(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-interface {v3}, Lqj7;->getSpanContext()Lrj7;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-interface {v3}, Lrj7;->getTraceFlags()Lz88;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-interface {v3}, Lz88;->asByte()B

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->traceFlags(B)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext$SerializableSpanContextBuilder;->build()Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/util/CommonMoshiJsonAdapter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const-string v2, "serializable_span_context"

    .line 218
    .line 219
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    .line 221
    .line 222
    :try_start_0
    invoke-static {}, Lt40;->a()Lt40;

    .line 223
    .line 224
    .line 225
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    goto :goto_1

    .line 227
    :catch_0
    move-exception v1

    .line 228
    const-string v2, "OtelContextExtension:current"

    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-static {v2, v3, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    const/4 v1, 0x0

    .line 238
    :goto_1
    invoke-static {v1}, Lcom/microsoft/identity/common/java/opentelemetry/TextMapPropagatorExtension;->inject(Lt40;)Ljava/util/HashMap;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    const-string v2, "otel_context_carrier"

    .line 243
    .line 244
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getSourceLibraryName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    if-eqz v1, :cond_2

    .line 252
    .line 253
    const-string v1, "x-client-SKU"

    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getSourceLibraryName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getSourceLibraryVersion()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    if-eqz v1, :cond_3

    .line 267
    .line 268
    const-string v1, "x-client-Ver"

    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getSourceLibraryVersion()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    .line 276
    .line 277
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getUtid()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    if-eqz v1, :cond_4

    .line 282
    .line 283
    const-string v1, "utid"

    .line 284
    .line 285
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->getUtid()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    .line 291
    .line 292
    :cond_4
    return-object v0
.end method

.method public static final getAuthorizationFragmentFromStartIntent(Landroid/content/Intent;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "com.microsoft.identity.client.authorization.agent"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 11
    .line 12
    invoke-static {}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->getInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 17
    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    const-string v0, "com.microsoft.identity.web.view.silent.authorization.flow.timeout"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    new-instance p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_0
    new-instance p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;-><init>()V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isAuthorizationInCurrentTask()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    new-instance p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;-><init>()V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    new-instance p0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;-><init>()V

    .line 55
    .line 56
    .line 57
    return-object p0
.end method

.method public static getExceptionFromTokenErrorResponse$1(Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;)Lcom/microsoft/identity/common/java/exception/ServiceException;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "invalid_grant"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, "interaction_required"

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getErrorDescription()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-direct {v0, v2, v1, v3}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    new-instance v0, Lcom/microsoft/identity/common/java/exception/UiRequiredException;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getErrorDescription()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-direct {v0, v2, v1, v3}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getSubError()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;->setSubErrorCode(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v1, "Failed to deserialize error data: status, headers, response body."

    .line 58
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getStatusCode()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getResponseHeadersJson()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getResponseBody()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    :try_start_1
    new-instance v5, Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 76
    .line 77
    invoke-static {v4}, Lcom/microsoft/identity/common/java/util/HeaderSerializationUtil;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    new-instance v6, Ljava/util/Date;

    .line 82
    .line 83
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-direct {v5, v6, v3, p0, v4}, Lcom/microsoft/identity/common/java/net/HttpResponse;-><init>(Ljava/util/Date;ILjava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Lkm4; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .line 88
    .line 89
    move-object v2, v5

    .line 90
    goto :goto_2

    .line 91
    :catch_0
    :try_start_2
    const-string p0, "ExceptionAdapter:applyHttpErrorResponseData"

    .line 92
    .line 93
    invoke-static {p0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_2
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/exception/ServiceException;->setHttpResponse(Lcom/microsoft/identity/common/java/net/HttpResponse;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catch_1
    const-string p0, "ExceptionAdapter"

    .line 101
    .line 102
    invoke-static {p0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_3
    return-object v0
.end method

.method public static final getIpcStrategies(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-class v2, Lcom/microsoft/identity/common/PropertyBagUtil;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ":getIpcStrategies"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const/16 v4, 0x64

    .line 38
    .line 39
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    .line 41
    .line 42
    const-string v4, "Broker Strategies added : "

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    new-instance v4, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;

    .line 48
    .line 49
    invoke-direct {v4, p0, v0}, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p1}, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStrategy;->isSupportedByTargetedBroker(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    const-string v0, "ContentProviderStrategy, "

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BoundServiceStrategy;

    .line 67
    .line 68
    new-instance v4, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;

    .line 69
    .line 70
    invoke-direct {v4, p0}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v4}, Lcom/microsoft/identity/common/internal/broker/ipc/BoundServiceStrategy;-><init>(Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/broker/ipc/BoundServiceStrategy;->isSupportedByTargetedBroker(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_1

    .line 81
    .line 82
    const-string v4, "BoundServiceStrategy, "

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_1
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/AccountManagerAddAccountStrategy;

    .line 91
    .line 92
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/broker/ipc/AccountManagerAddAccountStrategy;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/broker/ipc/AccountManagerAddAccountStrategy;->isSupportedByTargetedBroker(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_2

    .line 100
    .line 101
    const-string p0, "AccountManagerStrategy."

    .line 102
    .line 103
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 114
    .line 115
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v2
.end method

.method public static isRunningOnAuthService(Landroid/content/Context;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ":auth"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v2, "activity"

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Landroid/app/ActivityManager;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 61
    .line 62
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 63
    .line 64
    if-ne v3, v1, :cond_0

    .line 65
    .line 66
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_0

    .line 73
    .line 74
    const/4 p0, 0x1

    .line 75
    return p0

    .line 76
    :cond_1
    const/4 p0, 0x0

    .line 77
    return p0
.end method
