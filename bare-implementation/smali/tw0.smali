.class public final Ltw0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lwn8;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lo21;

.field public final synthetic c:Luw0;


# direct methods
.method public constructor <init>(Luw0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltw0;->c:Luw0;

    .line 5
    .line 6
    sget-object p1, Lww0;->p:Ldu9;

    .line 7
    .line 8
    iput-object p1, p0, Ltw0;->a:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ln67;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Ltw0;->b:Lo21;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lo21;->a(Ln67;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final b(Lmi3;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Ltw0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lww0;->p:Ldu9;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lww0;->l:Ldu9;

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_9

    .line 13
    .line 14
    :cond_0
    sget-object v0, Luw0;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    iget-object v3, p0, Ltw0;->c:Luw0;

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lt41;

    .line 23
    .line 24
    :goto_0
    sget-object v1, Luw0;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    invoke-virtual {v3, v4, v5, v2}, Luw0;->w(JZ)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    sget-object p1, Lww0;->l:Ldu9;

    .line 37
    .line 38
    iput-object p1, p0, Ltw0;->a:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v3}, Luw0;->o()Ljava/lang/Throwable;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-nez p0, :cond_1

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    goto/16 :goto_9

    .line 48
    .line 49
    :cond_1
    sget p1, Ltk7;->a:I

    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    sget-object v1, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    sget v1, Lww0;->b:I

    .line 59
    .line 60
    int-to-long v4, v1

    .line 61
    div-long v8, v6, v4

    .line 62
    .line 63
    rem-long v4, v6, v4

    .line 64
    .line 65
    long-to-int v5, v4

    .line 66
    iget-wide v10, v0, Ln67;->e:J

    .line 67
    .line 68
    cmp-long v1, v10, v8

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-virtual {v3, v8, v9, v0}, Luw0;->m(JLt41;)Lt41;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    move-object v4, v1

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    move-object v4, v0

    .line 82
    :goto_1
    const/4 v8, 0x0

    .line 83
    invoke-virtual/range {v3 .. v8}, Luw0;->H(Lt41;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sget-object v1, Lww0;->m:Ldu9;

    .line 88
    .line 89
    const/4 v9, 0x0

    .line 90
    if-eq v0, v1, :cond_13

    .line 91
    .line 92
    sget-object v10, Lww0;->o:Ldu9;

    .line 93
    .line 94
    if-ne v0, v10, :cond_6

    .line 95
    .line 96
    invoke-virtual {v3}, Luw0;->r()J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    cmp-long v0, v6, v0

    .line 101
    .line 102
    if-gez v0, :cond_5

    .line 103
    .line 104
    invoke-virtual {v4}, Ldq1;->b()V

    .line 105
    .line 106
    .line 107
    :cond_5
    move-object v0, v4

    .line 108
    goto :goto_0

    .line 109
    :cond_6
    sget-object v8, Lww0;->n:Ldu9;

    .line 110
    .line 111
    if-ne v0, v8, :cond_12

    .line 112
    .line 113
    invoke-static {p1}, Lnc8;->D(Ljv1;)Ljv1;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1}, Lg67;->t(Ljv1;)Lo21;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    :try_start_0
    iput-object p1, p0, Ltw0;->b:Lo21;

    .line 122
    .line 123
    move-object v8, p0

    .line 124
    invoke-virtual/range {v3 .. v8}, Luw0;->H(Lt41;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    if-ne p0, v1, :cond_7

    .line 129
    .line 130
    invoke-virtual {v8, v4, v5}, Ltw0;->a(Ln67;I)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_7

    .line 134
    .line 135
    :catchall_0
    move-exception v0

    .line 136
    move-object p0, v0

    .line 137
    goto/16 :goto_8

    .line 138
    .line 139
    :cond_7
    if-ne p0, v10, :cond_11

    .line 140
    .line 141
    invoke-virtual {v3}, Luw0;->r()J

    .line 142
    .line 143
    .line 144
    move-result-wide v0

    .line 145
    cmp-long p0, v6, v0

    .line 146
    .line 147
    if-gez p0, :cond_8

    .line 148
    .line 149
    invoke-virtual {v4}, Ldq1;->b()V

    .line 150
    .line 151
    .line 152
    :cond_8
    sget-object p0, Luw0;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 153
    .line 154
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    check-cast p0, Lt41;

    .line 159
    .line 160
    :goto_2
    sget-object v0, Luw0;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 161
    .line 162
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 163
    .line 164
    .line 165
    move-result-wide v0

    .line 166
    invoke-virtual {v3, v0, v1, v2}, Luw0;->w(JZ)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_a

    .line 171
    .line 172
    iget-object p0, v8, Ltw0;->b:Lo21;

    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    iput-object v9, v8, Ltw0;->b:Lo21;

    .line 178
    .line 179
    sget-object v0, Lww0;->l:Ldu9;

    .line 180
    .line 181
    iput-object v0, v8, Ltw0;->a:Ljava/lang/Object;

    .line 182
    .line 183
    invoke-virtual {v3}, Luw0;->o()Ljava/lang/Throwable;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    if-nez v0, :cond_9

    .line 188
    .line 189
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 190
    .line 191
    invoke-virtual {p0, v0}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_7

    .line 195
    .line 196
    :cond_9
    new-instance v1, Lbn6;

    .line 197
    .line 198
    invoke-direct {v1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v1}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_7

    .line 205
    .line 206
    :cond_a
    sget-object v0, Luw0;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 207
    .line 208
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 209
    .line 210
    .line 211
    move-result-wide v6

    .line 212
    sget v0, Lww0;->b:I

    .line 213
    .line 214
    int-to-long v0, v0

    .line 215
    div-long v4, v6, v0

    .line 216
    .line 217
    rem-long v0, v6, v0

    .line 218
    .line 219
    long-to-int v0, v0

    .line 220
    iget-wide v10, p0, Ln67;->e:J

    .line 221
    .line 222
    cmp-long v1, v10, v4

    .line 223
    .line 224
    if-eqz v1, :cond_c

    .line 225
    .line 226
    invoke-virtual {v3, v4, v5, p0}, Luw0;->m(JLt41;)Lt41;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    if-nez v1, :cond_b

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_b
    move-object v4, v1

    .line 234
    :goto_3
    move v5, v0

    .line 235
    goto :goto_4

    .line 236
    :cond_c
    move-object v4, p0

    .line 237
    goto :goto_3

    .line 238
    :goto_4
    invoke-virtual/range {v3 .. v8}, Luw0;->H(Lt41;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    move-object v1, v4

    .line 243
    sget-object v0, Lww0;->m:Ldu9;

    .line 244
    .line 245
    if-ne p0, v0, :cond_d

    .line 246
    .line 247
    invoke-virtual {v8, v1, v5}, Ltw0;->a(Ln67;I)V

    .line 248
    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_d
    sget-object v0, Lww0;->o:Ldu9;

    .line 252
    .line 253
    if-ne p0, v0, :cond_f

    .line 254
    .line 255
    invoke-virtual {v3}, Luw0;->r()J

    .line 256
    .line 257
    .line 258
    move-result-wide v4

    .line 259
    cmp-long p0, v6, v4

    .line 260
    .line 261
    if-gez p0, :cond_e

    .line 262
    .line 263
    invoke-virtual {v1}, Ldq1;->b()V

    .line 264
    .line 265
    .line 266
    :cond_e
    move-object p0, v1

    .line 267
    goto :goto_2

    .line 268
    :cond_f
    sget-object v0, Lww0;->n:Ldu9;

    .line 269
    .line 270
    if-eq p0, v0, :cond_10

    .line 271
    .line 272
    invoke-virtual {v1}, Ldq1;->b()V

    .line 273
    .line 274
    .line 275
    iput-object p0, v8, Ltw0;->a:Ljava/lang/Object;

    .line 276
    .line 277
    iput-object v9, v8, Ltw0;->b:Lo21;

    .line 278
    .line 279
    :goto_5
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 283
    .line 284
    const-string v0, "unexpected"

    .line 285
    .line 286
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw p0

    .line 290
    :cond_11
    invoke-virtual {v4}, Ldq1;->b()V

    .line 291
    .line 292
    .line 293
    iput-object p0, v8, Ltw0;->a:Ljava/lang/Object;

    .line 294
    .line 295
    iput-object v9, v8, Ltw0;->b:Lo21;

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :goto_6
    invoke-virtual {p1, p0, v9}, Lo21;->e(Ljava/lang/Object;Lrt3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .line 300
    .line 301
    :goto_7
    invoke-virtual {p1}, Lo21;->s()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    return-object p0

    .line 306
    :goto_8
    invoke-virtual {p1}, Lo21;->B()V

    .line 307
    .line 308
    .line 309
    throw p0

    .line 310
    :cond_12
    move-object v8, p0

    .line 311
    invoke-virtual {v4}, Ldq1;->b()V

    .line 312
    .line 313
    .line 314
    iput-object v0, v8, Ltw0;->a:Ljava/lang/Object;

    .line 315
    .line 316
    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    return-object p0

    .line 321
    :cond_13
    const-string p0, "unreachable"

    .line 322
    .line 323
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    return-object v9
.end method
