.class public final Lj87;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final x:Ll15;


# instance fields
.field public a:J

.field public final b:Lur1;

.field public final c:Ldi7;

.field public final d:Lcv6;

.field public final e:Lke;

.field public final f:Ltf7;

.field public final k:Ljw5;

.field public final n:Ll22;

.field public final p:Ljava/util/HashMap;

.field public final q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final r:Lh80;

.field public final t:Ln87;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lj87;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lj87;->x:Ll15;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lur1;Ldi7;Lh80;Lcv6;Lke;Ltf7;Ljw5;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll22;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v2, v1}, Ll22;-><init>(BI)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Ll22;->b:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance v1, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Ll22;->c:Ljava/lang/Object;

    .line 25
    .line 26
    new-instance v1, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, v0, Ll22;->d:Ljava/lang/Object;

    .line 32
    .line 33
    iput-object v0, p0, Lj87;->n:Ll22;

    .line 34
    .line 35
    new-instance v0, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lj87;->p:Ljava/util/HashMap;

    .line 41
    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lj87;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 48
    .line 49
    iput-object p1, p0, Lj87;->b:Lur1;

    .line 50
    .line 51
    iput-object p2, p0, Lj87;->c:Ldi7;

    .line 52
    .line 53
    iput-object p3, p0, Lj87;->r:Lh80;

    .line 54
    .line 55
    iput-object p4, p0, Lj87;->d:Lcv6;

    .line 56
    .line 57
    iput-object p5, p0, Lj87;->e:Lke;

    .line 58
    .line 59
    iput-object p6, p0, Lj87;->f:Ltf7;

    .line 60
    .line 61
    new-instance p1, Ln87;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lj87;->t:Ln87;

    .line 67
    .line 68
    iput-object p7, p0, Lj87;->k:Ljw5;

    .line 69
    .line 70
    if-eqz p4, :cond_0

    .line 71
    .line 72
    invoke-virtual {p4, p0}, Lcv6;->a(Ljava/lang/AutoCloseable;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method

.method private g(Lbb8;)V
    .locals 6
    .annotation runtime Lo24;
    .end annotation

    .line 1
    iget-wide v0, p1, Lv87;->a:J

    .line 2
    .line 3
    iget-wide v2, p1, Lbb8;->b:J

    .line 4
    .line 5
    iget-wide v4, p0, Lj87;->a:J

    .line 6
    .line 7
    cmp-long p1, v0, v4

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    const-string p1, "Notified of TreeDisconnected <<{}>>"

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lj87;->x:Ll15;

    .line 18
    .line 19
    invoke-interface {v1, v0, p1}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lj87;->n:Ll22;

    .line 23
    .line 24
    iget-object p1, p0, Ll22;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 33
    .line 34
    .line 35
    :try_start_0
    iget-object v0, p0, Ll22;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lvc7;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object p0, p0, Ll22;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Ljava/util/HashMap;

    .line 54
    .line 55
    iget-object v0, v0, Lvc7;->b:Lab8;

    .line 56
    .line 57
    iget-object v0, v0, Lab8;->b:Lfi7;

    .line 58
    .line 59
    iget-object v0, v0, Lfi7;->b:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lvc7;
    .locals 20

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v1, "\\"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_9

    .line 13
    .line 14
    iget-object v9, v4, Lj87;->n:Ll22;

    .line 15
    .line 16
    iget-object v1, v9, Ll22;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object v3, v9, Ll22;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lvc7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lj87;->x:Ll15;

    .line 45
    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    const-string v2, "Returning cached Share {} for {}"

    .line 49
    .line 50
    invoke-interface {v1, v3, v0, v2}, Ll15;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v3

    .line 54
    :cond_0
    iget-object v10, v4, Lj87;->e:Lke;

    .line 55
    .line 56
    const-string v3, "Could not connect to "

    .line 57
    .line 58
    iget-object v5, v4, Lj87;->b:Lur1;

    .line 59
    .line 60
    invoke-virtual {v5}, Lur1;->h()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    move-object v7, v3

    .line 65
    new-instance v3, Lfi7;

    .line 66
    .line 67
    invoke-direct {v3, v6, v0, v2}, Lfi7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-wide v11, v4, Lj87;->a:J

    .line 71
    .line 72
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v2, "Connecting to {} on session {}"

    .line 77
    .line 78
    invoke-interface {v1, v3, v0, v2}, Ll15;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :try_start_1
    new-instance v11, Lou6;

    .line 82
    .line 83
    iget-object v0, v5, Lur1;->c:Lxr1;

    .line 84
    .line 85
    iget-object v0, v0, Lxr1;->b:Lru3;

    .line 86
    .line 87
    iget-object v0, v0, Lru3;->e:Ljava/lang/Object;

    .line 88
    .line 89
    move-object v13, v0

    .line 90
    check-cast v13, Lus6;

    .line 91
    .line 92
    iget-wide v14, v4, Lj87;->a:J

    .line 93
    .line 94
    move-wide v15, v14

    .line 95
    sget-object v14, Lit6;->e:Lit6;

    .line 96
    .line 97
    const-wide/16 v17, 0x0

    .line 98
    .line 99
    const/16 v12, 0x9

    .line 100
    .line 101
    invoke-direct/range {v11 .. v18}, Lrt6;-><init>(ILus6;Lit6;JJ)V

    .line 102
    .line 103
    .line 104
    iput-object v3, v11, Lou6;->e:Lfi7;

    .line 105
    .line 106
    iget-object v0, v11, Lev6;->a:Ldv6;

    .line 107
    .line 108
    check-cast v0, Lut6;

    .line 109
    .line 110
    const/16 v2, 0x100

    .line 111
    .line 112
    iput v2, v0, Lut6;->c:I

    .line 113
    .line 114
    invoke-virtual {v4, v11}, Lj87;->n(Lrt6;)Lp21;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object v2, v4, Lj87;->c:Ldi7;

    .line 119
    .line 120
    iget-wide v11, v2, Ldi7;->o:J

    .line 121
    .line 122
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_1
    .catch Lva8; {:try_start_1 .. :try_end_1} :catch_4

    .line 123
    .line 124
    :try_start_2
    iget-object v0, v0, Lp21;->a:Ln86;

    .line 125
    .line 126
    invoke-virtual {v0, v11, v12, v2}, Ln86;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lva8; {:try_start_2 .. :try_end_2} :catch_4

    .line 130
    :try_start_3
    move-object v11, v0

    .line 131
    check-cast v11, Lpu6;
    :try_end_3
    .catch Lva8; {:try_start_3 .. :try_end_3} :catch_4

    .line 132
    .line 133
    :try_start_4
    new-instance v0, Lcd;

    .line 134
    .line 135
    invoke-direct {v0, v4, v3}, Lcd;-><init>(Lj87;Lfi7;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10, v4, v11, v3, v0}, Lke;->o(Lj87;Lrt6;Lfi7;Loy5;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lvc7;
    :try_end_4
    .catch Lny5; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lva8; {:try_start_4 .. :try_end_4} :catch_4

    .line 143
    .line 144
    if-eqz v0, :cond_1

    .line 145
    .line 146
    return-object v0

    .line 147
    :catch_0
    :cond_1
    :try_start_5
    iget-object v0, v11, Lev6;->a:Ldv6;

    .line 148
    .line 149
    move-object v2, v0

    .line 150
    check-cast v2, Lut6;

    .line 151
    .line 152
    iget-wide v12, v2, Lut6;->j:J

    .line 153
    .line 154
    const/16 v2, 0x1e

    .line 155
    .line 156
    ushr-long/2addr v12, v2

    .line 157
    const-wide/16 v14, 0x3

    .line 158
    .line 159
    cmp-long v2, v12, v14

    .line 160
    .line 161
    const/4 v12, 0x1

    .line 162
    if-nez v2, :cond_2

    .line 163
    .line 164
    move v2, v12

    .line 165
    goto :goto_0

    .line 166
    :cond_2
    const/4 v2, 0x0

    .line 167
    :goto_0
    if-nez v2, :cond_7

    .line 168
    .line 169
    iget-object v0, v11, Lpu6;->g:Ljava/util/EnumSet;

    .line 170
    .line 171
    sget-object v1, Lku6;->b:Lku6;

    .line 172
    .line 173
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_6

    .line 178
    .line 179
    iget-object v0, v11, Lev6;->a:Ldv6;

    .line 180
    .line 181
    check-cast v0, Lut6;

    .line 182
    .line 183
    iget-wide v1, v0, Lut6;->i:J

    .line 184
    .line 185
    new-instance v0, Lab8;

    .line 186
    .line 187
    iget-object v6, v4, Lj87;->c:Ldi7;

    .line 188
    .line 189
    iget-object v5, v5, Lur1;->c:Lxr1;

    .line 190
    .line 191
    iget-object v7, v4, Lj87;->d:Lcv6;

    .line 192
    .line 193
    iget-object v8, v11, Lpu6;->f:Ljava/util/EnumSet;

    .line 194
    .line 195
    move-object/from16 v19, v6

    .line 196
    .line 197
    move-object v6, v5

    .line 198
    move-object/from16 v5, v19

    .line 199
    .line 200
    invoke-direct/range {v0 .. v8}, Lab8;-><init>(JLfi7;Lj87;Ldi7;Lxr1;Lcv6;Ljava/util/Set;)V

    .line 201
    .line 202
    .line 203
    iget-byte v1, v11, Lpu6;->e:B

    .line 204
    .line 205
    if-ne v1, v12, :cond_3

    .line 206
    .line 207
    new-instance v1, Lwm2;

    .line 208
    .line 209
    invoke-direct {v1, v3, v0, v10}, Lwm2;-><init>(Lfi7;Lab8;Lke;)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_3
    const/4 v2, 0x2

    .line 214
    if-ne v1, v2, :cond_4

    .line 215
    .line 216
    new-instance v1, Ll06;

    .line 217
    .line 218
    invoke-direct {v1, v3, v0}, Lvc7;-><init>(Lfi7;Lab8;)V

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_4
    const/4 v2, 0x3

    .line 223
    if-ne v1, v2, :cond_5

    .line 224
    .line 225
    new-instance v1, Lc66;

    .line 226
    .line 227
    invoke-direct {v1, v3, v0}, Lvc7;-><init>(Lfi7;Lab8;)V

    .line 228
    .line 229
    .line 230
    :goto_1
    invoke-virtual {v9, v1}, Ll22;->g(Lvc7;)V

    .line 231
    .line 232
    .line 233
    return-object v1

    .line 234
    :cond_5
    new-instance v0, Lgv6;

    .line 235
    .line 236
    const-string v1, "Unknown ShareType returned in the TREE_CONNECT Response"

    .line 237
    .line 238
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw v0

    .line 242
    :cond_6
    new-instance v0, Lgv6;

    .line 243
    .line 244
    const-string v1, "ASYMMETRIC capability unsupported"

    .line 245
    .line 246
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v0

    .line 250
    :cond_7
    check-cast v0, Lut6;

    .line 251
    .line 252
    invoke-virtual {v0}, Lut6;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-interface {v1, v0}, Ll15;->k(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    new-instance v0, Lyu6;

    .line 260
    .line 261
    iget-object v1, v11, Lev6;->a:Ldv6;

    .line 262
    .line 263
    check-cast v1, Lut6;

    .line 264
    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-direct {v0, v1, v2}, Lyu6;-><init>(Lut6;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :catch_1
    move-exception v0

    .line 282
    goto :goto_2

    .line 283
    :catch_2
    move-exception v0

    .line 284
    :goto_2
    instance-of v1, v0, Lva8;

    .line 285
    .line 286
    if-eqz v1, :cond_8

    .line 287
    .line 288
    check-cast v0, Lva8;

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_8
    new-instance v1, Lva8;

    .line 292
    .line 293
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 294
    .line 295
    .line 296
    move-object v0, v1

    .line 297
    :goto_3
    throw v0

    .line 298
    :catch_3
    move-exception v0

    .line 299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 304
    .line 305
    .line 306
    new-instance v1, Lva8;

    .line 307
    .line 308
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 309
    .line 310
    .line 311
    throw v1
    :try_end_5
    .catch Lva8; {:try_start_5 .. :try_end_5} :catch_4

    .line 312
    :catch_4
    move-exception v0

    .line 313
    new-instance v1, Lgv6;

    .line 314
    .line 315
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 316
    .line 317
    .line 318
    throw v1

    .line 319
    :catchall_0
    move-exception v0

    .line 320
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 325
    .line 326
    .line 327
    throw v0

    .line 328
    :cond_9
    const-string v1, "Share name ("

    .line 329
    .line 330
    const-string v3, ") cannot contain \'\\\' characters."

    .line 331
    .line 332
    invoke-static {v1, v0, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    return-object v2
.end method

.method public final b(Lfi7;)Lj87;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lj87;->b:Lur1;

    .line 2
    .line 3
    iget-object v0, v0, Lur1;->p:Lav6;

    .line 4
    .line 5
    iget-object v1, p1, Lfi7;->a:Ljava/lang/String;

    .line 6
    .line 7
    const/16 v2, 0x1bd

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lav6;->b(ILjava/lang/String;)Lur1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lj87;->r:Lh80;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lur1;->a(Lh80;)Lj87;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance v0, Lyu6;

    .line 22
    .line 23
    sget-object v1, Lit6;->b:Lit6;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Could not connect to DFS root "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-wide v1, 0xffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1, v2, p1, p0}, Lyu6;-><init>(JLjava/lang/String;Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public final close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj87;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h(Lfi7;)Lj87;
    .locals 4

    .line 1
    iget-object v0, p0, Lj87;->p:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lj87;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v2, p1, Lfi7;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lj87;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 27
    .line 28
    .line 29
    return-object v3

    .line 30
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lj87;

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lj87;->b(Lfi7;)Lj87;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 81
    .line 82
    .line 83
    return-object v3

    .line 84
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public final j(Lut6;Z)Ljavax/crypto/SecretKey;
    .locals 2

    .line 1
    iget-object v0, p0, Lj87;->b:Lur1;

    .line 2
    .line 3
    iget-object v0, v0, Lur1;->c:Lxr1;

    .line 4
    .line 5
    iget-object v0, v0, Lxr1;->b:Lru3;

    .line 6
    .line 7
    iget-object v0, v0, Lru3;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lus6;

    .line 10
    .line 11
    invoke-virtual {v0}, Lus6;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object p0, p0, Lj87;->t:Ln87;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p1, Lut6;->e:Lit6;

    .line 20
    .line 21
    sget-object v1, Lit6;->c:Lit6;

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Ln87;->d:Ljavax/crypto/spec/SecretKeySpec;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    iget-wide p1, p1, Lut6;->j:J

    .line 31
    .line 32
    const-wide/16 v0, 0x0

    .line 33
    .line 34
    cmp-long p1, p1, v0

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Ln87;->d:Ljavax/crypto/spec/SecretKeySpec;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    iget-object p0, p0, Ln87;->d:Ljavax/crypto/spec/SecretKeySpec;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_2
    iget-object p0, p0, Ln87;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 45
    .line 46
    return-object p0
.end method

.method public final m()V
    .locals 11

    .line 1
    iget-object v1, p0, Lj87;->d:Lcv6;

    .line 2
    .line 3
    iget-object v2, p0, Lj87;->b:Lur1;

    .line 4
    .line 5
    iget-object v3, p0, Lj87;->q:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    .line 7
    sget-object v4, Lj87;->x:Ll15;

    .line 8
    .line 9
    :try_start_0
    const-string v0, "Logging off session {} from host {}"

    .line 10
    .line 11
    iget-wide v5, p0, Lj87;->a:J

    .line 12
    .line 13
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v2}, Lur1;->h()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-interface {v4, v5, v6, v0}, Ll15;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lj87;->n:Ll22;

    .line 25
    .line 26
    iget-object v5, v0, Ll22;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v5, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v0, v0, Ll22;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 48
    .line 49
    .line 50
    :try_start_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    move-object v6, v0

    .line 72
    check-cast v6, Lvc7;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .line 74
    :try_start_3
    invoke-virtual {v6}, Lvc7;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto/16 :goto_6

    .line 80
    .line 81
    :catch_0
    move-exception v0

    .line 82
    :try_start_4
    const-string v7, "Caught exception while closing TreeConnect with id: {}"

    .line 83
    .line 84
    iget-object v6, v6, Lvc7;->b:Lab8;

    .line 85
    .line 86
    iget-wide v8, v6, Lab8;->a:J

    .line 87
    .line 88
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-interface {v4, v6, v0, v7}, Ll15;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    .line 102
    .line 103
    :try_start_5
    iget-object v0, p0, Lj87;->p:Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_1

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Lj87;

    .line 124
    .line 125
    const-string v6, "Logging off nested session {} for session {}"

    .line 126
    .line 127
    iget-wide v7, v5, Lj87;->a:J

    .line 128
    .line 129
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    iget-wide v8, p0, Lj87;->a:J

    .line 134
    .line 135
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-interface {v4, v7, v8, v6}, Ll15;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 140
    .line 141
    .line 142
    :try_start_6
    invoke-virtual {v5}, Lj87;->m()V
    :try_end_6
    .catch Lva8; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catchall_1
    move-exception v0

    .line 147
    goto/16 :goto_5

    .line 148
    .line 149
    :catch_1
    :try_start_7
    const-string v6, "Caught exception while logging off nested session {}"

    .line 150
    .line 151
    iget-wide v7, v5, Lj87;->a:J

    .line 152
    .line 153
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-interface {v4, v5, v6}, Ll15;->t(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_1
    :try_start_8
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 166
    .line 167
    .line 168
    new-instance v3, Lht6;

    .line 169
    .line 170
    iget-object v0, v2, Lur1;->c:Lxr1;

    .line 171
    .line 172
    iget-object v0, v0, Lxr1;->b:Lru3;

    .line 173
    .line 174
    iget-object v0, v0, Lru3;->e:Ljava/lang/Object;

    .line 175
    .line 176
    move-object v5, v0

    .line 177
    check-cast v5, Lus6;

    .line 178
    .line 179
    iget-wide v7, p0, Lj87;->a:J

    .line 180
    .line 181
    sget-object v6, Lit6;->d:Lit6;

    .line 182
    .line 183
    const-wide/16 v9, 0x0

    .line 184
    .line 185
    const/4 v4, 0x4

    .line 186
    invoke-direct/range {v3 .. v10}, Lrt6;-><init>(ILus6;Lit6;JJ)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v3}, Lj87;->n(Lrt6;)Lp21;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget-object v2, p0, Lj87;->c:Ldi7;

    .line 194
    .line 195
    iget-wide v2, v2, Ldi7;->o:J

    .line 196
    .line 197
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 198
    .line 199
    :try_start_9
    iget-object v0, v0, Lp21;->a:Ln86;

    .line 200
    .line 201
    invoke-virtual {v0, v2, v3, v4}, Ln86;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 205
    :try_start_a
    check-cast v0, Lht6;

    .line 206
    .line 207
    iget-object v2, v0, Lev6;->a:Ldv6;

    .line 208
    .line 209
    check-cast v2, Lut6;

    .line 210
    .line 211
    iget-wide v2, v2, Lut6;->j:J

    .line 212
    .line 213
    invoke-static {v2, v3}, Lbp5;->a(J)Z

    .line 214
    .line 215
    .line 216
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 217
    if-eqz v2, :cond_2

    .line 218
    .line 219
    new-instance v0, Ld97;

    .line 220
    .line 221
    iget-wide v2, p0, Lj87;->a:J

    .line 222
    .line 223
    invoke-direct {v0, v2, v3}, Lv87;-><init>(J)V

    .line 224
    .line 225
    .line 226
    iget-object p0, v1, Lcv6;->a:Lju7;

    .line 227
    .line 228
    invoke-virtual {p0, v0}, Lju7;->g(Ljava/lang/Object;)Lrd5;

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_2
    :try_start_b
    new-instance v2, Lyu6;

    .line 233
    .line 234
    iget-object v0, v0, Lev6;->a:Ldv6;

    .line 235
    .line 236
    check-cast v0, Lut6;

    .line 237
    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v4, "Could not logoff session <<"

    .line 244
    .line 245
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-wide v4, p0, Lj87;->a:J

    .line 249
    .line 250
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v4, ">>"

    .line 254
    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-direct {v2, v0, v3}, Lyu6;-><init>(Lut6;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw v2

    .line 266
    :catch_2
    move-exception v0

    .line 267
    goto :goto_2

    .line 268
    :catch_3
    move-exception v0

    .line 269
    goto :goto_2

    .line 270
    :catch_4
    move-exception v0

    .line 271
    goto :goto_4

    .line 272
    :goto_2
    instance-of v2, v0, Lva8;

    .line 273
    .line 274
    if-eqz v2, :cond_3

    .line 275
    .line 276
    check-cast v0, Lva8;

    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_3
    new-instance v2, Lva8;

    .line 280
    .line 281
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    move-object v0, v2

    .line 285
    :goto_3
    throw v0

    .line 286
    :goto_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 291
    .line 292
    .line 293
    new-instance v2, Lva8;

    .line 294
    .line 295
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 296
    .line 297
    .line 298
    throw v2

    .line 299
    :goto_5
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 304
    .line 305
    .line 306
    throw v0

    .line 307
    :catchall_2
    move-exception v0

    .line 308
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 313
    .line 314
    .line 315
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 316
    :goto_6
    new-instance v2, Ld97;

    .line 317
    .line 318
    iget-wide v3, p0, Lj87;->a:J

    .line 319
    .line 320
    invoke-direct {v2, v3, v4}, Lv87;-><init>(J)V

    .line 321
    .line 322
    .line 323
    iget-object p0, v1, Lcv6;->a:Lju7;

    .line 324
    .line 325
    invoke-virtual {p0, v2}, Lju7;->g(Ljava/lang/Object;)Lrd5;

    .line 326
    .line 327
    .line 328
    throw v0
.end method

.method public final n(Lrt6;)Lp21;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lev6;->c()Ldv6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lut6;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lj87;->j(Lut6;Z)Ljavax/crypto/SecretKey;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lj87;->t:Ln87;

    .line 13
    .line 14
    iget-boolean v3, v2, Ln87;->a:Z

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Lva8;

    .line 22
    .line 23
    const-string p1, "Message signing is required, but no signing key is negotiated"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    iget-boolean v3, v2, Ln87;->b:Z

    .line 30
    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    iget-object v4, v2, Ln87;->f:Ljavax/crypto/spec/SecretKeySpec;

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    new-instance p0, Lva8;

    .line 39
    .line 40
    const-string p1, "Message encryption is required, but no encryption key is negotiated"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_3
    :goto_1
    iget-object v4, v2, Ln87;->f:Ljavax/crypto/spec/SecretKeySpec;

    .line 47
    .line 48
    iget-object v5, p0, Lj87;->b:Lur1;

    .line 49
    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    iget-object v4, v5, Lur1;->c:Lxr1;

    .line 53
    .line 54
    iget-object v6, v4, Lxr1;->b:Lru3;

    .line 55
    .line 56
    iget-object v6, v6, Lru3;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v6, Lus6;

    .line 59
    .line 60
    invoke-virtual {v6}, Lus6;->a()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    invoke-virtual {v4}, Lxr1;->b()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    const/4 v1, 0x0

    .line 74
    :goto_2
    or-int/2addr v1, v3

    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    iget-object v0, v2, Ln87;->f:Ljavax/crypto/spec/SecretKeySpec;

    .line 78
    .line 79
    iget-object p0, p0, Lj87;->k:Ljw5;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    new-instance v1, Liw5;

    .line 87
    .line 88
    invoke-direct {v1, p0, p1, v0}, Liw5;-><init>(Ljw5;Lrt6;Ljavax/crypto/spec/SecretKeySpec;)V

    .line 89
    .line 90
    .line 91
    move-object p1, v1

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    sget-object p0, Ljw5;->d:Ll15;

    .line 94
    .line 95
    invoke-virtual {p1}, Lev6;->c()Ldv6;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lut6;

    .line 100
    .line 101
    iget-object v0, v0, Lut6;->e:Lit6;

    .line 102
    .line 103
    const-string v1, "Not wrapping {} as encrypted, as no key is set."

    .line 104
    .line 105
    invoke-interface {p0, v0, v1}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_3
    invoke-virtual {v5, p1}, Lur1;->j(Lrt6;)Lp21;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_6
    iget-object p0, p0, Lj87;->f:Ltf7;

    .line 114
    .line 115
    invoke-interface {p0, p1, v0}, Ltf7;->f(Lrt6;Ljavax/crypto/SecretKey;)Lrt6;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {v5, p0}, Lur1;->j(Lrt6;)Lp21;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0
.end method
