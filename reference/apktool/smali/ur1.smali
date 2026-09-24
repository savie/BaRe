.class public final Lur1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final I:Ll15;

.field public static final J:Ljq6;


# instance fields
.field public final G:Lcv6;

.field public final H:Ljava/util/concurrent/locks/ReentrantLock;

.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Luu6;

.field public c:Lxr1;

.field public final d:Lla;

.field public final e:Lla;

.field public final f:Lgd;

.field public final k:Lro;

.field public n:Lke;

.field public final p:Lav6;

.field public final q:Lyf1;

.field public final r:Ltf7;

.field public final t:Ljw5;

.field public final x:Ldi7;

.field public final y:Lyl2;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Lur1;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lur1;->I:Ll15;

    .line 8
    .line 9
    new-instance v0, Ljq6;

    .line 10
    .line 11
    new-instance v1, Lus2;

    .line 12
    .line 13
    const/16 v2, 0x17

    .line 14
    .line 15
    invoke-direct {v1, v2}, Lus2;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lfo8;

    .line 19
    .line 20
    const/16 v3, 0xd

    .line 21
    .line 22
    invoke-direct {v2, v3}, Lfo8;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lsl4;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v4, Lge;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x4

    .line 36
    new-array v5, v5, [Lkw5;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    aput-object v1, v5, v6

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    aput-object v2, v5, v1

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    aput-object v3, v5, v1

    .line 46
    .line 47
    const/4 v1, 0x3

    .line 48
    aput-object v4, v5, v1

    .line 49
    .line 50
    const/4 v1, 0x6

    .line 51
    invoke-direct {v0, v1}, Ljq6;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iput-object v5, v0, Ljq6;->b:Ljava/lang/Object;

    .line 55
    .line 56
    sput-object v0, Lur1;->J:Ljq6;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>(Ldi7;Lav6;Lcv6;Lyf1;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lur1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Lla;

    .line 13
    .line 14
    const/4 v2, 0x7

    .line 15
    invoke-direct {v0, v2}, Lla;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lur1;->d:Lla;

    .line 19
    .line 20
    new-instance v3, Lla;

    .line 21
    .line 22
    invoke-direct {v3, v2}, Lla;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lur1;->e:Lla;

    .line 26
    .line 27
    new-instance v2, Lgd;

    .line 28
    .line 29
    const/4 v3, 0x5

    .line 30
    invoke-direct {v2, v3}, Lgd;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v3, v2, Lgd;->b:Ljava/lang/Object;

    .line 39
    .line 40
    new-instance v3, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v3, v2, Lgd;->c:Ljava/lang/Object;

    .line 46
    .line 47
    new-instance v3, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v3, v2, Lgd;->d:Ljava/lang/Object;

    .line 53
    .line 54
    iput-object v2, p0, Lur1;->f:Lgd;

    .line 55
    .line 56
    new-instance v3, Ljt6;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v4, p0, Lur1;->H:Ljava/util/concurrent/locks/ReentrantLock;

    .line 67
    .line 68
    iput-object p1, p0, Lur1;->x:Ldi7;

    .line 69
    .line 70
    iput-object p2, p0, Lur1;->p:Lav6;

    .line 71
    .line 72
    iget-object p2, p1, Ldi7;->n:Lcz4;

    .line 73
    .line 74
    new-instance v4, Lu00;

    .line 75
    .line 76
    new-instance v5, Llk;

    .line 77
    .line 78
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    sget-object v6, Lur1;->J:Ljq6;

    .line 82
    .line 83
    const/4 v7, 0x6

    .line 84
    invoke-direct {v4, v7, v5, p0, v6}, Lu00;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-instance p2, Lyl2;

    .line 91
    .line 92
    iget-object v5, p1, Ldi7;->c:Ljavax/net/SocketFactory;

    .line 93
    .line 94
    iget v6, p1, Ldi7;->s:I

    .line 95
    .line 96
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    const-class v7, Lyl2;

    .line 100
    .line 101
    invoke-static {v7}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    iput-object v7, p2, Lyl2;->b:Ljava/lang/Object;

    .line 106
    .line 107
    new-instance v7, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 108
    .line 109
    invoke-direct {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v7, p2, Lyl2;->d:Ljava/io/Serializable;

    .line 113
    .line 114
    new-instance v7, Lma6;

    .line 115
    .line 116
    invoke-direct {v7}, Lma6;-><init>()V

    .line 117
    .line 118
    .line 119
    iput v6, p2, Lyl2;->a:I

    .line 120
    .line 121
    iput-object v5, p2, Lyl2;->e:Ljava/lang/Object;

    .line 122
    .line 123
    iput-object v4, p2, Lyl2;->c:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object p2, p0, Lur1;->y:Lyl2;

    .line 126
    .line 127
    iput-object p3, p0, Lur1;->G:Lcv6;

    .line 128
    .line 129
    iput-object p4, p0, Lur1;->q:Lyf1;

    .line 130
    .line 131
    invoke-virtual {p3, p0}, Lcv6;->a(Ljava/lang/AutoCloseable;)V

    .line 132
    .line 133
    .line 134
    new-instance p2, Lro;

    .line 135
    .line 136
    const/16 p3, 0xe

    .line 137
    .line 138
    invoke-direct {p2, p3}, Lro;-><init>(I)V

    .line 139
    .line 140
    .line 141
    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 142
    .line 143
    const-wide/16 v4, 0x0

    .line 144
    .line 145
    invoke-direct {p3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 146
    .line 147
    .line 148
    iput-object p3, p2, Lro;->b:Ljava/lang/Object;

    .line 149
    .line 150
    new-instance p3, Ljava/util/concurrent/Semaphore;

    .line 151
    .line 152
    invoke-direct {p3, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 153
    .line 154
    .line 155
    iput-object p3, p2, Lro;->c:Ljava/lang/Object;

    .line 156
    .line 157
    iput-object p2, p0, Lur1;->k:Lro;

    .line 158
    .line 159
    iget-boolean p2, p1, Ldi7;->f:Z

    .line 160
    .line 161
    if-eqz p2, :cond_0

    .line 162
    .line 163
    new-instance p2, Lnw5;

    .line 164
    .line 165
    iget-object p3, p1, Ldi7;->h:Llv1;

    .line 166
    .line 167
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object p3, p2, Lnw5;->a:Llv1;

    .line 171
    .line 172
    iput-object p2, p0, Lur1;->r:Ltf7;

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_0
    sget-object p2, Lur1;->I:Ll15;

    .line 176
    .line 177
    const-string p3, "Signing is disabled for this connection."

    .line 178
    .line 179
    invoke-interface {p2, p3}, Ll15;->x(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-instance p2, Lus2;

    .line 183
    .line 184
    const/16 p3, 0x13

    .line 185
    .line 186
    invoke-direct {p2, p3}, Lus2;-><init>(I)V

    .line 187
    .line 188
    .line 189
    iput-object p2, p0, Lur1;->r:Ltf7;

    .line 190
    .line 191
    :goto_0
    new-instance p2, Ljw5;

    .line 192
    .line 193
    iget-object p1, p1, Ldi7;->h:Llv1;

    .line 194
    .line 195
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 196
    .line 197
    .line 198
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 199
    .line 200
    const/4 p4, 0x0

    .line 201
    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 202
    .line 203
    .line 204
    iput-object p1, p2, Ljw5;->a:Llv1;

    .line 205
    .line 206
    iput-object p2, p0, Lur1;->t:Ljw5;

    .line 207
    .line 208
    new-instance p1, Luu6;

    .line 209
    .line 210
    iget-object p2, p0, Lur1;->t:Ljw5;

    .line 211
    .line 212
    const/4 p3, 0x4

    .line 213
    invoke-direct {p1, p3, p4}, Lol1;-><init>(IZ)V

    .line 214
    .line 215
    .line 216
    iput-object v0, p1, Luu6;->e:Lla;

    .line 217
    .line 218
    iput-object p2, p1, Luu6;->f:Ljw5;

    .line 219
    .line 220
    new-instance p2, Lls6;

    .line 221
    .line 222
    invoke-direct {p2, p3, p4}, Lol1;-><init>(IZ)V

    .line 223
    .line 224
    .line 225
    new-instance v1, Lft6;

    .line 226
    .line 227
    invoke-direct {v1, p3, p4}, Lol1;-><init>(IZ)V

    .line 228
    .line 229
    .line 230
    iput-object v2, v1, Lft6;->e:Lgd;

    .line 231
    .line 232
    new-instance v4, Lmu6;

    .line 233
    .line 234
    iget-object v5, p0, Lur1;->r:Ltf7;

    .line 235
    .line 236
    invoke-direct {v4, p3, p4}, Lol1;-><init>(IZ)V

    .line 237
    .line 238
    .line 239
    iput-object v0, v4, Lmu6;->e:Lla;

    .line 240
    .line 241
    iput-object v5, v4, Lmu6;->f:Ltf7;

    .line 242
    .line 243
    new-instance v0, Lss6;

    .line 244
    .line 245
    iget-object v5, p0, Lur1;->k:Lro;

    .line 246
    .line 247
    invoke-direct {v0, p3, p4}, Lol1;-><init>(IZ)V

    .line 248
    .line 249
    .line 250
    iput-object v5, v0, Lss6;->e:Lro;

    .line 251
    .line 252
    new-instance v5, Lhs6;

    .line 253
    .line 254
    invoke-direct {v5, p3, p4}, Lol1;-><init>(IZ)V

    .line 255
    .line 256
    .line 257
    iput-object v2, v5, Lhs6;->e:Lgd;

    .line 258
    .line 259
    new-instance v6, Lwt6;

    .line 260
    .line 261
    invoke-direct {v6, v3, v2}, Lwt6;-><init>(Ljt6;Lgd;)V

    .line 262
    .line 263
    .line 264
    new-instance v2, Lgs6;

    .line 265
    .line 266
    invoke-direct {v2, p3, p4}, Lol1;-><init>(IZ)V

    .line 267
    .line 268
    .line 269
    new-instance v3, Lld2;

    .line 270
    .line 271
    invoke-direct {v3, p3, p4}, Lol1;-><init>(IZ)V

    .line 272
    .line 273
    .line 274
    iput-object v3, v2, Lol1;->b:Ljava/lang/Object;

    .line 275
    .line 276
    iput-object v2, v6, Lol1;->b:Ljava/lang/Object;

    .line 277
    .line 278
    iput-object v6, v5, Lol1;->b:Ljava/lang/Object;

    .line 279
    .line 280
    iput-object v5, v0, Lol1;->b:Ljava/lang/Object;

    .line 281
    .line 282
    iput-object v0, v4, Lol1;->b:Ljava/lang/Object;

    .line 283
    .line 284
    iput-object v4, v1, Lol1;->b:Ljava/lang/Object;

    .line 285
    .line 286
    iput-object v1, p2, Lol1;->b:Ljava/lang/Object;

    .line 287
    .line 288
    iput-object p2, p1, Lol1;->b:Ljava/lang/Object;

    .line 289
    .line 290
    iput-object p1, p0, Lur1;->b:Luu6;

    .line 291
    .line 292
    return-void
.end method

.method private n(Ld97;)V
    .locals 2
    .annotation runtime Lo24;
    .end annotation

    .line 1
    iget-wide v0, p1, Lv87;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lur1;->d:Lla;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lla;->f(Ljava/lang/Long;)V

    .line 10
    .line 11
    .line 12
    iget-wide p0, p1, Lv87;->a:J

    .line 13
    .line 14
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object p1, Lur1;->I:Ll15;

    .line 19
    .line 20
    const-string v0, "Session << {} >> logged off"

    .line 21
    .line 22
    invoke-interface {p1, p0, v0}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lh80;)Lj87;
    .locals 7

    .line 1
    new-instance v0, Liv6;

    .line 2
    .line 3
    new-instance v1, Lln5;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-direct {v1, p0, v2}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lur1;->x:Ldi7;

    .line 10
    .line 11
    invoke-direct {v0, p0, v2, v1}, Liv6;-><init>(Lur1;Ldi7;Lln5;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v0, p1}, Liv6;->b(Lh80;)Ll80;

    .line 15
    .line 16
    .line 17
    move-result-object v1
    :try_end_0
    .catch Lfk7; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :try_start_1
    iget-object v3, p1, Lh80;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Ljava/lang/String;

    .line 21
    .line 22
    instance-of v4, v1, Lfp5;
    :try_end_1
    .catch Lfk7; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    :try_start_2
    iget-object v4, v2, Ldi7;->r:Lz28;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lh80;->f()Z

    .line 32
    .line 33
    .line 34
    move-result v4
    :try_end_2
    .catch Lfk7; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    :try_start_3
    const-string v4, "Guest"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    iget-object v4, p1, Lh80;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v4, [C

    .line 49
    .line 50
    array-length v4, v4
    :try_end_3
    .catch Lfk7; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 51
    if-nez v4, :cond_0

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    move v4, v5

    .line 58
    :goto_0
    if-eqz v4, :cond_2

    .line 59
    .line 60
    :cond_1
    :try_start_4
    new-instance v4, Lmp5;

    .line 61
    .line 62
    check-cast v1, Lfp5;
    :try_end_4
    .catch Lfk7; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 63
    .line 64
    :try_start_5
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    .line 69
    invoke-direct {v6, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 70
    .line 71
    .line 72
    iput-object v6, v4, Lmp5;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    .line 74
    iput-object v1, v4, Lmp5;->a:Lfp5;

    .line 75
    .line 76
    move-object v1, v4

    .line 77
    :cond_2
    new-instance v4, Lhv6;

    .line 78
    .line 79
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v1, v4, Lhv6;->a:Ll80;

    .line 83
    .line 84
    iput-object p1, v4, Lhv6;->d:Lh80;
    :try_end_5
    .catch Lfk7; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 85
    .line 86
    :try_start_6
    invoke-interface {v1, v2}, Ll80;->c(Ldi7;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, v0, Liv6;->b:Lxr1;
    :try_end_6
    .catch Lfk7; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 90
    .line 91
    :try_start_7
    iget-object p1, p1, Lxr1;->a:[B

    .line 92
    .line 93
    array-length v1, p1

    .line 94
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 95
    .line 96
    .line 97
    move-result-object p1
    :try_end_7
    .catch Lfk7; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 98
    :try_start_8
    invoke-virtual {v0, v4, p1}, Liv6;->d(Lhv6;[B)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v4}, Liv6;->e(Lhv6;)Lj87;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    sget-object v1, Liv6;->r:Ll15;

    .line 106
    .line 107
    invoke-virtual {p0}, Lur1;->h()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    iget-wide v4, p1, Lj87;->a:J

    .line 112
    .line 113
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    filled-new-array {v3, p0, v2}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-interface {v1, p0}, Ll15;->E([Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object p0, v0, Liv6;->d:Lla;

    .line 125
    .line 126
    iget-wide v0, p1, Lj87;->a:J

    .line 127
    .line 128
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v0
    :try_end_8
    .catch Lfk7; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 132
    :try_start_9
    iget-object v1, p0, Lla;->a:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_9
    .catch Lfk7; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 137
    .line 138
    .line 139
    :try_start_a
    iget-object p0, p0, Lla;->b:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p0, Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 144
    .line 145
    .line 146
    :try_start_b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 147
    .line 148
    .line 149
    return-object p1

    .line 150
    :catchall_0
    move-exception p0

    .line 151
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 152
    .line 153
    .line 154
    throw p0
    :try_end_b
    .catch Lfk7; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 155
    :catch_1
    move-exception p0

    .line 156
    :goto_1
    new-instance p1, Lgv6;

    .line 157
    .line 158
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    throw p1
.end method

.method public final b(Z)V
    .locals 9

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lur1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lur1;->G:Lcv6;

    .line 14
    .line 15
    const-string v1, "Closed connection to {}"

    .line 16
    .line 17
    iget-object v2, p0, Lur1;->y:Lyl2;

    .line 18
    .line 19
    sget-object v3, Lur1;->I:Ll15;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    :try_start_0
    iget-object p1, p0, Lur1;->d:Lla;

    .line 24
    .line 25
    iget-object v4, p1, Lla;->a:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v4, Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object p1, p1, Lla;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    .line 45
    :try_start_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lj87;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .line 64
    :try_start_3
    invoke-virtual {v4}, Lj87;->m()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move-exception v5

    .line 71
    :try_start_4
    const-string v6, "Exception while closing session {}"

    .line 72
    .line 73
    iget-wide v7, v4, Lj87;->a:J

    .line 74
    .line 75
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-interface {v3, v4, v5, v6}, Ll15;->C(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 85
    .line 86
    .line 87
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    :goto_2
    invoke-virtual {v2}, Lyl2;->c()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lur1;->h()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-interface {v3, v2, v1}, Ll15;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v1, Lwr1;

    .line 99
    .line 100
    iget-object p0, p0, Lur1;->c:Lxr1;

    .line 101
    .line 102
    iget-object p0, p0, Lxr1;->c:Le87;

    .line 103
    .line 104
    iget-object v2, p0, Le87;->b:Ljava/lang/String;

    .line 105
    .line 106
    iget p0, p0, Le87;->c:I

    .line 107
    .line 108
    invoke-direct {v1, v2, p0}, Lwr1;-><init>(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    iget-object p0, v0, Lcv6;->a:Lju7;

    .line 112
    .line 113
    invoke-virtual {p0, v1}, Lju7;->g(Ljava/lang/Object;)Lrd5;

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_2
    invoke-virtual {v2}, Lyl2;->c()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lur1;->h()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-interface {v3, p1, v1}, Ll15;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance p1, Lwr1;

    .line 128
    .line 129
    iget-object p0, p0, Lur1;->c:Lxr1;

    .line 130
    .line 131
    iget-object p0, p0, Lxr1;->c:Le87;

    .line 132
    .line 133
    iget-object v1, p0, Le87;->b:Ljava/lang/String;

    .line 134
    .line 135
    iget p0, p0, Le87;->c:I

    .line 136
    .line 137
    invoke-direct {p1, v1, p0}, Lwr1;-><init>(Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    iget-object p0, v0, Lcv6;->a:Lju7;

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lju7;->g(Ljava/lang/Object;)Lrd5;

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lur1;->b(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final g(ILjava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lur1;->y:Lyl2;

    .line 8
    .line 9
    invoke-virtual {v3}, Lyl2;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_1d

    .line 14
    .line 15
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 16
    .line 17
    invoke-direct {v4, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget-object v6, v3, Lyl2;->e:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v6, Ljavax/net/SocketFactory;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v6, v5, v4}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iput-object v4, v3, Lyl2;->f:Ljava/lang/Object;

    .line 37
    .line 38
    iget v6, v3, Lyl2;->a:I

    .line 39
    .line 40
    invoke-virtual {v4, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 44
    .line 45
    iget-object v6, v3, Lyl2;->f:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v6, Ljava/net/Socket;

    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const/16 v7, 0x2328

    .line 54
    .line 55
    invoke-direct {v4, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 56
    .line 57
    .line 58
    iput-object v4, v3, Lyl2;->g:Ljava/lang/Object;

    .line 59
    .line 60
    new-instance v4, Lxl2;

    .line 61
    .line 62
    iget-object v6, v3, Lyl2;->f:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v6, Ljava/net/Socket;

    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    iget-object v7, v3, Lyl2;->c:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v7, Lu00;

    .line 73
    .line 74
    iget-object v8, v7, Lu00;->d:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v8, Lkw5;

    .line 77
    .line 78
    iget-object v7, v7, Lu00;->c:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v7, Lur1;

    .line 81
    .line 82
    invoke-direct {v4, v5, v6, v8, v7}, Lxl2;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lkw5;Lur1;)V

    .line 83
    .line 84
    .line 85
    iput-object v4, v3, Lyl2;->h:Ljava/lang/Object;

    .line 86
    .line 87
    iget-object v3, v4, Lxl2;->e:Ljava/lang/Thread;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget-object v4, v4, Lxl2;->a:Ll15;

    .line 94
    .line 95
    const-string v6, "Starting PacketReader on thread: {}"

    .line 96
    .line 97
    invoke-interface {v4, v5, v6}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 101
    .line 102
    .line 103
    new-instance v3, Lxr1;

    .line 104
    .line 105
    iget-object v4, v0, Lur1;->x:Ldi7;

    .line 106
    .line 107
    iget-object v5, v4, Ldi7;->e:Ljava/util/UUID;

    .line 108
    .line 109
    invoke-direct {v3, v5, v2, v1, v4}, Lxr1;-><init>(Ljava/util/UUID;Ljava/lang/String;ILdi7;)V

    .line 110
    .line 111
    .line 112
    iput-object v3, v0, Lur1;->c:Lxr1;

    .line 113
    .line 114
    new-instance v1, Lfv6;

    .line 115
    .line 116
    iget-object v2, v0, Lur1;->c:Lxr1;

    .line 117
    .line 118
    invoke-direct {v1, v0, v4, v2}, Lfv6;-><init>(Lur1;Ldi7;Lxr1;)V

    .line 119
    .line 120
    .line 121
    sget-object v2, Lfv6;->e:Ll15;

    .line 122
    .line 123
    iget-object v3, v1, Lfv6;->a:Ldi7;

    .line 124
    .line 125
    iget-object v4, v3, Ldi7;->a:Ljava/util/EnumSet;

    .line 126
    .line 127
    invoke-static {v4}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    const-string v5, "Negotiating dialects {}"

    .line 132
    .line 133
    invoke-interface {v2, v4, v5}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-boolean v4, v3, Ldi7;->g:Z

    .line 137
    .line 138
    const/4 v5, 0x0

    .line 139
    iget-object v6, v1, Lfv6;->c:Lur1;

    .line 140
    .line 141
    const/4 v7, 0x1

    .line 142
    iget-object v8, v1, Lfv6;->d:Lij2;

    .line 143
    .line 144
    if-eqz v4, :cond_4

    .line 145
    .line 146
    new-instance v4, Lds6;

    .line 147
    .line 148
    iget-object v9, v3, Ldi7;->a:Ljava/util/EnumSet;

    .line 149
    .line 150
    invoke-static {v9}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    new-instance v10, Les6;

    .line 155
    .line 156
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-direct {v4, v10}, Lev6;-><init>(Ldv6;)V

    .line 160
    .line 161
    .line 162
    iput-object v9, v4, Lds6;->c:Ljava/util/EnumSet;

    .line 163
    .line 164
    iget-object v9, v6, Lur1;->k:Lro;

    .line 165
    .line 166
    invoke-virtual {v9, v7}, Lro;->f(I)[J

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    aget-wide v10, v9, v5

    .line 171
    .line 172
    const-wide/16 v12, 0x0

    .line 173
    .line 174
    cmp-long v9, v10, v12

    .line 175
    .line 176
    if-nez v9, :cond_3

    .line 177
    .line 178
    new-instance v9, Ljk6;

    .line 179
    .line 180
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    invoke-direct {v9, v4, v10, v11, v12}, Ljk6;-><init>(Lev6;JLjava/util/UUID;)V

    .line 185
    .line 186
    .line 187
    iget-object v10, v6, Lur1;->f:Lgd;

    .line 188
    .line 189
    invoke-virtual {v10, v9}, Lgd;->m(Ljk6;)V

    .line 190
    .line 191
    .line 192
    iput-object v4, v8, Lij2;->a:Ljava/lang/Object;

    .line 193
    .line 194
    iget-object v10, v6, Lur1;->y:Lyl2;

    .line 195
    .line 196
    invoke-virtual {v10, v4}, Lyl2;->f(Lev6;)V

    .line 197
    .line 198
    .line 199
    iget-object v4, v9, Ljk6;->a:Lm86;

    .line 200
    .line 201
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 205
    .line 206
    invoke-direct {v9, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 207
    .line 208
    .line 209
    new-instance v9, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 210
    .line 211
    invoke-direct {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 212
    .line 213
    .line 214
    iget-wide v9, v3, Ldi7;->o:J

    .line 215
    .line 216
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 217
    .line 218
    :try_start_0
    invoke-virtual {v4, v9, v10, v11}, Lm86;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    if-eqz v9, :cond_1

    .line 223
    .line 224
    check-cast v9, Lrt6;

    .line 225
    .line 226
    instance-of v4, v9, Lpt6;

    .line 227
    .line 228
    if-eqz v4, :cond_0

    .line 229
    .line 230
    check-cast v9, Lpt6;

    .line 231
    .line 232
    iget-object v4, v9, Lpt6;->f:Lus6;

    .line 233
    .line 234
    sget-object v10, Lus6;->e:Lus6;

    .line 235
    .line 236
    if-ne v4, v10, :cond_5

    .line 237
    .line 238
    invoke-virtual {v1}, Lfv6;->a()Lpt6;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    goto :goto_2

    .line 243
    :cond_0
    const-string v0, "Expected a SMB2 NEGOTIATE Response to our SMB_COM_NEGOTIATE, but got: "

    .line 244
    .line 245
    invoke-static {v9, v0}, Ly5;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_1
    :try_start_1
    iget-object v0, v4, Lm86;->d:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, Lnh4;

    .line 252
    .line 253
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    .line 254
    .line 255
    const-string v2, "Timeout expired"

    .line 256
    .line 257
    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v1}, Lnh4;->r(Ljava/lang/Exception;)Ljava/lang/Throwable;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    :try_start_2
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    .line 267
    .line 268
    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 269
    .line 270
    .line 271
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    goto :goto_0

    .line 274
    :catch_1
    move-exception v0

    .line 275
    :goto_0
    instance-of v1, v0, Lva8;

    .line 276
    .line 277
    if-eqz v1, :cond_2

    .line 278
    .line 279
    check-cast v0, Lva8;

    .line 280
    .line 281
    goto :goto_1

    .line 282
    :cond_2
    new-instance v1, Lva8;

    .line 283
    .line 284
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 285
    .line 286
    .line 287
    move-object v0, v1

    .line 288
    :goto_1
    throw v0

    .line 289
    :catch_2
    move-exception v0

    .line 290
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 295
    .line 296
    .line 297
    new-instance v1, Lva8;

    .line 298
    .line 299
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 300
    .line 301
    .line 302
    throw v1

    .line 303
    :cond_3
    const-string v0, "The SMBv1 SMB_COM_NEGOTIATE packet needs to be the first packet sent."

    .line 304
    .line 305
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :cond_4
    invoke-virtual {v1}, Lfv6;->a()Lpt6;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    :cond_5
    :goto_2
    iput-object v9, v8, Lij2;->b:Ljava/lang/Object;

    .line 314
    .line 315
    iget-object v4, v9, Lev6;->a:Ldv6;

    .line 316
    .line 317
    check-cast v4, Lut6;

    .line 318
    .line 319
    iget-wide v10, v4, Lut6;->j:J

    .line 320
    .line 321
    invoke-static {v10, v11}, Lbp5;->a(J)Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-eqz v4, :cond_1c

    .line 326
    .line 327
    iget-object v4, v8, Lij2;->b:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v4, Lpt6;

    .line 330
    .line 331
    iget-object v9, v4, Lpt6;->f:Lus6;

    .line 332
    .line 333
    const/4 v10, 0x2

    .line 334
    sget-object v11, Lwu6;->d:Lwu6;

    .line 335
    .line 336
    sget-object v12, Lus6;->n:Lus6;

    .line 337
    .line 338
    if-ne v9, v12, :cond_11

    .line 339
    .line 340
    iget-object v4, v4, Lpt6;->m:Ljava/util/List;

    .line 341
    .line 342
    if-eqz v4, :cond_10

    .line 343
    .line 344
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    move v9, v5

    .line 349
    move v13, v9

    .line 350
    move v14, v13

    .line 351
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    .line 353
    .line 354
    move-result v15

    .line 355
    if-eqz v15, :cond_12

    .line 356
    .line 357
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v15

    .line 361
    check-cast v15, Lmt6;

    .line 362
    .line 363
    iget-object v5, v15, Lmt6;->a:Lnt6;

    .line 364
    .line 365
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    if-eqz v5, :cond_d

    .line 370
    .line 371
    if-eq v5, v7, :cond_a

    .line 372
    .line 373
    if-ne v5, v10, :cond_9

    .line 374
    .line 375
    if-nez v14, :cond_8

    .line 376
    .line 377
    check-cast v15, Lms6;

    .line 378
    .line 379
    iget-object v5, v15, Lms6;->b:Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 382
    .line 383
    .line 384
    move-result v14

    .line 385
    if-eqz v14, :cond_7

    .line 386
    .line 387
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 388
    .line 389
    .line 390
    move-result v14

    .line 391
    if-ne v14, v7, :cond_6

    .line 392
    .line 393
    const/4 v14, 0x0

    .line 394
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v15

    .line 398
    sget-object v14, Ltu6;->b:Ltu6;

    .line 399
    .line 400
    if-ne v15, v14, :cond_6

    .line 401
    .line 402
    const-string v5, "SMB3CompressionAlgorithm is \'NONE\', continuing without compression"

    .line 403
    .line 404
    invoke-interface {v2, v5}, Ll15;->w(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto :goto_4

    .line 408
    :cond_6
    invoke-static {v5}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 409
    .line 410
    .line 411
    :goto_4
    move-object/from16 v16, v3

    .line 412
    .line 413
    move v14, v7

    .line 414
    goto/16 :goto_5

    .line 415
    .line 416
    :cond_7
    const-string v0, "The SMB2CompressionCapabilities NegotiateContext should contain at least 1 algorithm"

    .line 417
    .line 418
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    return-void

    .line 422
    :cond_8
    const-string v0, "SMB2_COMPRESSION_CAPABILITIES should only appear once in the NegotiateContextList"

    .line 423
    .line 424
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :cond_9
    const-string v0, "unknown negotiate context type"

    .line 429
    .line 430
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    :cond_a
    if-nez v13, :cond_c

    .line 435
    .line 436
    check-cast v15, Lws6;

    .line 437
    .line 438
    iget-object v5, v15, Lws6;->b:Ljava/util/List;

    .line 439
    .line 440
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 441
    .line 442
    .line 443
    move-result v13

    .line 444
    if-ne v13, v7, :cond_b

    .line 445
    .line 446
    const/4 v13, 0x0

    .line 447
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    check-cast v5, Lwu6;

    .line 452
    .line 453
    iput-object v5, v8, Lij2;->c:Ljava/lang/Object;

    .line 454
    .line 455
    move-object/from16 v16, v3

    .line 456
    .line 457
    move v13, v7

    .line 458
    goto :goto_5

    .line 459
    :cond_b
    const-string v0, "The SMB2EncryptionCapabilities NegotiateContext does not contain exactly 1 cipher"

    .line 460
    .line 461
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    return-void

    .line 465
    :cond_c
    const-string v0, "SMB2_ENCRYPTION_CAPABILITIES should only appear once in the NegotiateContextList"

    .line 466
    .line 467
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    return-void

    .line 471
    :cond_d
    if-nez v9, :cond_f

    .line 472
    .line 473
    check-cast v15, Lvt6;

    .line 474
    .line 475
    iget-object v5, v15, Lvt6;->b:Ljava/util/List;

    .line 476
    .line 477
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 478
    .line 479
    .line 480
    move-result v9

    .line 481
    if-ne v9, v7, :cond_e

    .line 482
    .line 483
    const/4 v9, 0x0

    .line 484
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    check-cast v5, Lxu6;

    .line 489
    .line 490
    iput-object v5, v8, Lij2;->d:Ljava/lang/Object;

    .line 491
    .line 492
    iget-object v5, v8, Lij2;->a:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v5, Lev6;

    .line 495
    .line 496
    invoke-static {v5}, Lvm4;->p(Lev6;)[B

    .line 497
    .line 498
    .line 499
    move-result-object v5

    .line 500
    iget-object v9, v8, Lij2;->b:Ljava/lang/Object;

    .line 501
    .line 502
    check-cast v9, Lpt6;

    .line 503
    .line 504
    invoke-static {v9}, Lvm4;->p(Lev6;)[B

    .line 505
    .line 506
    .line 507
    move-result-object v9

    .line 508
    iget-object v15, v8, Lij2;->d:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast v15, Lxu6;

    .line 511
    .line 512
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    const-string v15, "SHA-512"

    .line 516
    .line 517
    :try_start_3
    iget-object v10, v3, Ldi7;->h:Llv1;

    .line 518
    .line 519
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    new-instance v10, Lqg0;

    .line 523
    .line 524
    invoke-direct {v10, v15}, Lqg0;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    iget-object v15, v10, Lqg0;->a:Lhl2;
    :try_end_3
    .catch Lh67; {:try_start_3 .. :try_end_3} :catch_3

    .line 528
    .line 529
    invoke-interface {v15}, Lhl2;->c()I

    .line 530
    .line 531
    .line 532
    move-result v7

    .line 533
    new-array v7, v7, [B

    .line 534
    .line 535
    invoke-interface {v15}, Lhl2;->reset()V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v10, v7}, Lqg0;->b([B)V

    .line 539
    .line 540
    .line 541
    array-length v7, v5

    .line 542
    move-object/from16 v16, v3

    .line 543
    .line 544
    const/4 v3, 0x0

    .line 545
    invoke-interface {v15, v5, v3, v7}, Lhl2;->update([BII)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v10}, Lqg0;->a()[B

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    invoke-interface {v15}, Lhl2;->reset()V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v10, v5}, Lqg0;->b([B)V

    .line 556
    .line 557
    .line 558
    array-length v5, v9

    .line 559
    invoke-interface {v15, v9, v3, v5}, Lhl2;->update([BII)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v10}, Lqg0;->a()[B

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    iput-object v3, v8, Lij2;->e:Ljava/lang/Object;

    .line 567
    .line 568
    const/4 v9, 0x1

    .line 569
    :goto_5
    move-object/from16 v3, v16

    .line 570
    .line 571
    const/4 v5, 0x0

    .line 572
    const/4 v7, 0x1

    .line 573
    const/4 v10, 0x2

    .line 574
    goto/16 :goto_3

    .line 575
    .line 576
    :catch_3
    move-exception v0

    .line 577
    new-instance v1, Lgv6;

    .line 578
    .line 579
    const-string v2, "Cannot get the message digest for SHA-512"

    .line 580
    .line 581
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    .line 583
    .line 584
    throw v1

    .line 585
    :cond_e
    const-string v0, "The SMB2PreauthIntegrityCapabilities NegotiateContext does not contain exactly 1 hash algorithm"

    .line 586
    .line 587
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    return-void

    .line 591
    :cond_f
    const-string v0, "SMB2_PREAUTH_INTEGRITY_CAPABILITIES should only appear once in the NegotiateContextList"

    .line 592
    .line 593
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    return-void

    .line 597
    :cond_10
    const-string v0, "negotiate context list is null for SMB 3.1.1 dialect"

    .line 598
    .line 599
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    return-void

    .line 603
    :cond_11
    invoke-virtual {v9}, Lus6;->a()Z

    .line 604
    .line 605
    .line 606
    move-result v3

    .line 607
    if-eqz v3, :cond_12

    .line 608
    .line 609
    iget-object v3, v8, Lij2;->b:Ljava/lang/Object;

    .line 610
    .line 611
    check-cast v3, Lpt6;

    .line 612
    .line 613
    iget-object v3, v3, Lpt6;->h:Ljava/util/EnumSet;

    .line 614
    .line 615
    sget-object v4, Lbt6;->c:Lbt6;

    .line 616
    .line 617
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    if-eqz v3, :cond_12

    .line 622
    .line 623
    iput-object v11, v8, Lij2;->c:Ljava/lang/Object;

    .line 624
    .line 625
    :cond_12
    iget-object v1, v1, Lfv6;->b:Lxr1;

    .line 626
    .line 627
    iget-object v3, v1, Lxr1;->c:Le87;

    .line 628
    .line 629
    iget-object v4, v8, Lij2;->b:Ljava/lang/Object;

    .line 630
    .line 631
    check-cast v4, Lpt6;

    .line 632
    .line 633
    iget-object v5, v4, Lpt6;->g:Ljava/util/UUID;

    .line 634
    .line 635
    iget-object v7, v4, Lpt6;->f:Lus6;

    .line 636
    .line 637
    iget v9, v4, Lpt6;->e:I

    .line 638
    .line 639
    iget-object v4, v4, Lpt6;->h:Ljava/util/EnumSet;

    .line 640
    .line 641
    iget-boolean v10, v3, Le87;->a:Z

    .line 642
    .line 643
    iget-object v13, v3, Le87;->b:Ljava/lang/String;

    .line 644
    .line 645
    if-nez v10, :cond_1b

    .line 646
    .line 647
    const/4 v10, 0x1

    .line 648
    iput-boolean v10, v3, Le87;->a:Z

    .line 649
    .line 650
    iput-object v5, v3, Le87;->d:Ljava/util/UUID;

    .line 651
    .line 652
    iput-object v7, v3, Le87;->e:Lus6;

    .line 653
    .line 654
    iput v9, v3, Le87;->f:I

    .line 655
    .line 656
    iput-object v4, v3, Le87;->g:Ljava/util/EnumSet;

    .line 657
    .line 658
    iget-object v4, v6, Lur1;->q:Lyf1;

    .line 659
    .line 660
    iget-object v5, v4, Lyf1;->b:Ljava/lang/Object;

    .line 661
    .line 662
    check-cast v5, Ljava/util/concurrent/locks/ReentrantLock;

    .line 663
    .line 664
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 665
    .line 666
    .line 667
    :try_start_4
    iget-object v4, v4, Lyf1;->c:Ljava/lang/Object;

    .line 668
    .line 669
    check-cast v4, Ljava/util/HashMap;

    .line 670
    .line 671
    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v4

    .line 675
    check-cast v4, Le87;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 676
    .line 677
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 678
    .line 679
    .line 680
    if-nez v4, :cond_13

    .line 681
    .line 682
    iget-object v4, v6, Lur1;->q:Lyf1;

    .line 683
    .line 684
    iget-object v5, v4, Lyf1;->b:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast v5, Ljava/util/concurrent/locks/ReentrantLock;

    .line 687
    .line 688
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 689
    .line 690
    .line 691
    :try_start_5
    iget-object v4, v4, Lyf1;->c:Ljava/lang/Object;

    .line 692
    .line 693
    check-cast v4, Ljava/util/HashMap;

    .line 694
    .line 695
    invoke-virtual {v4, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 696
    .line 697
    .line 698
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 699
    .line 700
    .line 701
    iput-object v3, v8, Lij2;->f:Ljava/lang/Object;

    .line 702
    .line 703
    goto :goto_7

    .line 704
    :catchall_1
    move-exception v0

    .line 705
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 706
    .line 707
    .line 708
    throw v0

    .line 709
    :cond_13
    iget-object v5, v4, Le87;->d:Ljava/util/UUID;

    .line 710
    .line 711
    iget-object v6, v3, Le87;->d:Ljava/util/UUID;

    .line 712
    .line 713
    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    move-result v5

    .line 717
    iget-object v6, v4, Le87;->e:Lus6;

    .line 718
    .line 719
    iget-object v7, v3, Le87;->e:Lus6;

    .line 720
    .line 721
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    move-result v6

    .line 725
    iget v7, v4, Le87;->f:I

    .line 726
    .line 727
    iget v9, v3, Le87;->f:I

    .line 728
    .line 729
    if-ne v7, v9, :cond_14

    .line 730
    .line 731
    move v7, v10

    .line 732
    goto :goto_6

    .line 733
    :cond_14
    const/4 v7, 0x0

    .line 734
    :goto_6
    iget-object v9, v4, Le87;->g:Ljava/util/EnumSet;

    .line 735
    .line 736
    iget-object v3, v3, Le87;->g:Ljava/util/EnumSet;

    .line 737
    .line 738
    invoke-interface {v9, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    if-eqz v5, :cond_1a

    .line 743
    .line 744
    if-eqz v6, :cond_1a

    .line 745
    .line 746
    if-eqz v7, :cond_1a

    .line 747
    .line 748
    if-eqz v3, :cond_1a

    .line 749
    .line 750
    iput-object v4, v8, Lij2;->f:Ljava/lang/Object;

    .line 751
    .line 752
    :goto_7
    iget-object v3, v8, Lij2;->b:Ljava/lang/Object;

    .line 753
    .line 754
    check-cast v3, Lpt6;

    .line 755
    .line 756
    iget-object v4, v8, Lij2;->f:Ljava/lang/Object;

    .line 757
    .line 758
    check-cast v4, Le87;

    .line 759
    .line 760
    iput-object v4, v1, Lxr1;->c:Le87;

    .line 761
    .line 762
    new-instance v4, Lru3;

    .line 763
    .line 764
    iget-object v5, v3, Lpt6;->f:Lus6;

    .line 765
    .line 766
    iget v6, v3, Lpt6;->i:I

    .line 767
    .line 768
    iget v7, v3, Lpt6;->j:I

    .line 769
    .line 770
    iget v9, v3, Lpt6;->k:I

    .line 771
    .line 772
    sget-object v10, Lbt6;->b:Lbt6;

    .line 773
    .line 774
    invoke-virtual {v1, v10}, Lxr1;->a(Lbt6;)Z

    .line 775
    .line 776
    .line 777
    move-result v10

    .line 778
    const/4 v13, 0x2

    .line 779
    invoke-direct {v4, v13}, Lru3;-><init>(I)V

    .line 780
    .line 781
    .line 782
    iput-object v5, v4, Lru3;->e:Ljava/lang/Object;

    .line 783
    .line 784
    const/high16 v5, 0x10000

    .line 785
    .line 786
    if-eqz v10, :cond_15

    .line 787
    .line 788
    goto :goto_8

    .line 789
    :cond_15
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 790
    .line 791
    .line 792
    move-result v6

    .line 793
    :goto_8
    iput v6, v4, Lru3;->b:I

    .line 794
    .line 795
    if-eqz v10, :cond_16

    .line 796
    .line 797
    goto :goto_9

    .line 798
    :cond_16
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 799
    .line 800
    .line 801
    move-result v7

    .line 802
    :goto_9
    iput v7, v4, Lru3;->c:I

    .line 803
    .line 804
    if-eqz v10, :cond_17

    .line 805
    .line 806
    goto :goto_a

    .line 807
    :cond_17
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    .line 808
    .line 809
    .line 810
    move-result v9

    .line 811
    :goto_a
    iput v9, v4, Lru3;->d:I

    .line 812
    .line 813
    iput-object v4, v1, Lxr1;->b:Lru3;

    .line 814
    .line 815
    iget-object v4, v8, Lij2;->c:Ljava/lang/Object;

    .line 816
    .line 817
    check-cast v4, Lwu6;

    .line 818
    .line 819
    iput-object v4, v1, Lxr1;->i:Lwu6;

    .line 820
    .line 821
    iget-object v4, v8, Lij2;->d:Ljava/lang/Object;

    .line 822
    .line 823
    check-cast v4, Lxu6;

    .line 824
    .line 825
    iput-object v4, v1, Lxr1;->g:Lxu6;

    .line 826
    .line 827
    iget-object v4, v8, Lij2;->e:Ljava/lang/Object;

    .line 828
    .line 829
    check-cast v4, [B

    .line 830
    .line 831
    if-eqz v4, :cond_18

    .line 832
    .line 833
    goto :goto_b

    .line 834
    :cond_18
    const/4 v13, 0x0

    .line 835
    new-array v4, v13, [B

    .line 836
    .line 837
    :goto_b
    iput-object v4, v1, Lxr1;->h:[B

    .line 838
    .line 839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 840
    .line 841
    .line 842
    iget-object v3, v3, Lpt6;->l:Lga3;

    .line 843
    .line 844
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    .line 846
    .line 847
    const-string v3, "Negotiated the following connection settings: {}"

    .line 848
    .line 849
    invoke-interface {v2, v1, v3}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    iget-object v1, v0, Lur1;->c:Lxr1;

    .line 853
    .line 854
    iget-object v2, v0, Lur1;->t:Ljw5;

    .line 855
    .line 856
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    .line 858
    .line 859
    iget-object v3, v1, Lxr1;->b:Lru3;

    .line 860
    .line 861
    iget-object v3, v3, Lru3;->e:Ljava/lang/Object;

    .line 862
    .line 863
    check-cast v3, Lus6;

    .line 864
    .line 865
    iput-object v3, v2, Ljw5;->c:Lus6;

    .line 866
    .line 867
    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    move-result v3

    .line 871
    if-eqz v3, :cond_19

    .line 872
    .line 873
    iget-object v1, v1, Lxr1;->i:Lwu6;

    .line 874
    .line 875
    iput-object v1, v2, Ljw5;->b:Lwu6;

    .line 876
    .line 877
    goto :goto_c

    .line 878
    :cond_19
    iput-object v11, v2, Ljw5;->b:Lwu6;

    .line 879
    .line 880
    :goto_c
    sget-object v1, Ljw5;->d:Ll15;

    .line 881
    .line 882
    const-string v3, "Initialized PacketEncryptor with Cipher << {} >>"

    .line 883
    .line 884
    iget-object v2, v2, Ljw5;->b:Lwu6;

    .line 885
    .line 886
    invoke-interface {v1, v2, v3}, Ll15;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    new-instance v1, Lke;

    .line 890
    .line 891
    const/16 v2, 0xe

    .line 892
    .line 893
    invoke-direct {v1, v2}, Lke;-><init>(I)V

    .line 894
    .line 895
    .line 896
    new-instance v2, Lfo8;

    .line 897
    .line 898
    const/16 v3, 0x10

    .line 899
    .line 900
    invoke-direct {v2, v3}, Lfo8;-><init>(I)V

    .line 901
    .line 902
    .line 903
    iput-object v2, v1, Lke;->b:Ljava/lang/Object;

    .line 904
    .line 905
    iput-object v1, v0, Lur1;->n:Lke;

    .line 906
    .line 907
    const-string v1, "Successfully connected to: {}"

    .line 908
    .line 909
    invoke-virtual {v0}, Lur1;->h()Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    sget-object v2, Lur1;->I:Ll15;

    .line 914
    .line 915
    invoke-interface {v2, v0, v1}, Ll15;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    return-void

    .line 919
    :cond_1a
    new-instance v0, Lva8;

    .line 920
    .line 921
    const-string v1, "Different server found for same hostname \'"

    .line 922
    .line 923
    const-string v2, "\', disconnecting..."

    .line 924
    .line 925
    invoke-static {v1, v13, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 930
    .line 931
    .line 932
    throw v0

    .line 933
    :catchall_2
    move-exception v0

    .line 934
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 935
    .line 936
    .line 937
    throw v0

    .line 938
    :cond_1b
    const-string v0, "Server object \'"

    .line 939
    .line 940
    const-string v1, "\' already initialized"

    .line 941
    .line 942
    invoke-static {v0, v13, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 947
    .line 948
    .line 949
    return-void

    .line 950
    :cond_1c
    new-instance v0, Lyu6;

    .line 951
    .line 952
    iget-object v1, v9, Lev6;->a:Ldv6;

    .line 953
    .line 954
    check-cast v1, Lut6;

    .line 955
    .line 956
    const-string v2, "Failure during dialect negotiation"

    .line 957
    .line 958
    invoke-direct {v0, v1, v2}, Lyu6;-><init>(Lut6;Ljava/lang/String;)V

    .line 959
    .line 960
    .line 961
    throw v0

    .line 962
    :cond_1d
    invoke-virtual {v0}, Lur1;->h()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    const-string v1, "This connection is already connected to "

    .line 967
    .line 968
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lur1;->c:Lxr1;

    .line 2
    .line 3
    iget-object p0, p0, Lxr1;->c:Le87;

    .line 4
    .line 5
    iget-object p0, p0, Le87;->b:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public final j(Lrt6;)Lp21;
    .locals 8

    .line 1
    iget-object v0, p0, Lur1;->k:Lro;

    .line 2
    .line 3
    invoke-virtual {p1}, Lrt6;->e()Lrt6;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v1, v1, Lis6;

    .line 8
    .line 9
    if-nez v1, :cond_4

    .line 10
    .line 11
    iget-object v1, p0, Lur1;->H:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v2, v0, Lro;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Ljava/util/concurrent/Semaphore;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p1}, Lrt6;->d()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x1

    .line 29
    sub-int/2addr v3, v4

    .line 30
    const/high16 v5, 0x10000

    .line 31
    .line 32
    div-int/2addr v3, v5

    .line 33
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 34
    .line 35
    .line 36
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    add-int/2addr v3, v4

    .line 38
    sget-object v5, Lur1;->I:Ll15;

    .line 39
    .line 40
    if-le v3, v4, :cond_0

    .line 41
    .line 42
    :try_start_1
    iget-object v6, p0, Lur1;->c:Lxr1;

    .line 43
    .line 44
    sget-object v7, Lbt6;->b:Lbt6;

    .line 45
    .line 46
    invoke-virtual {v6, v7}, Lxr1;->a(Lbt6;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-nez v6, :cond_0

    .line 51
    .line 52
    const-string v3, "Connection to {} does not support multi-credit requests."

    .line 53
    .line 54
    invoke-virtual {p0}, Lur1;->h()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-interface {v5, v6, v3}, Ll15;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    if-ge v3, v2, :cond_1

    .line 63
    .line 64
    move v4, v3

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    if-le v3, v4, :cond_2

    .line 67
    .line 68
    if-le v2, v4, :cond_2

    .line 69
    .line 70
    add-int/lit8 v4, v2, -0x1

    .line 71
    .line 72
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lev6;->c()Ldv6;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lut6;

    .line 77
    .line 78
    iput v4, v3, Lut6;->b:I

    .line 79
    .line 80
    if-nez v2, :cond_3

    .line 81
    .line 82
    const-string v3, "There are no credits left to send {}, will block until there are more credits available."

    .line 83
    .line 84
    invoke-virtual {p1}, Lev6;->c()Ldv6;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Lut6;

    .line 89
    .line 90
    iget-object v6, v6, Lut6;->e:Lit6;

    .line 91
    .line 92
    invoke-interface {v5, v6, v3}, Ll15;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    :goto_1
    invoke-virtual {v0, v4}, Lro;->f(I)[J

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lev6;->c()Ldv6;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Lut6;

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    aget-wide v6, v0, v6

    .line 110
    .line 111
    iput-wide v6, v3, Lut6;->f:J

    .line 112
    .line 113
    invoke-virtual {p1}, Lev6;->c()Ldv6;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lut6;

    .line 118
    .line 119
    rsub-int v3, v2, 0x200

    .line 120
    .line 121
    sub-int/2addr v3, v4

    .line 122
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    iput v3, v0, Lut6;->c:I

    .line 127
    .line 128
    const-string v0, "Granted {} (out of {}) credits to {}"

    .line 129
    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    filled-new-array {v3, v2, p1}, [Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-interface {v5, v0, v2}, Ll15;->o(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 146
    .line 147
    .line 148
    new-instance v0, Ljk6;

    .line 149
    .line 150
    invoke-virtual {p1}, Lrt6;->e()Lrt6;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p1}, Lev6;->c()Ldv6;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Lut6;

    .line 159
    .line 160
    iget-wide v2, v2, Lut6;->f:J

    .line 161
    .line 162
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-direct {v0, v1, v2, v3, v4}, Ljk6;-><init>(Lev6;JLjava/util/UUID;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, Lur1;->f:Lgd;

    .line 170
    .line 171
    invoke-virtual {v1, v0}, Lgd;->m(Ljk6;)V

    .line 172
    .line 173
    .line 174
    new-instance v1, Ltr1;

    .line 175
    .line 176
    invoke-virtual {p1}, Lev6;->c()Ldv6;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Lut6;

    .line 181
    .line 182
    iget-wide v2, v2, Lut6;->h:J

    .line 183
    .line 184
    invoke-direct {v1, p0, v0, v2, v3}, Ltr1;-><init>(Lur1;Ljk6;J)V

    .line 185
    .line 186
    .line 187
    new-instance v2, Lp21;

    .line 188
    .line 189
    iget-object v0, v0, Ljk6;->a:Lm86;

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    new-instance v3, Ln86;

    .line 195
    .line 196
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 197
    .line 198
    .line 199
    iput-object v0, v3, Ln86;->a:Lm86;

    .line 200
    .line 201
    invoke-direct {v2, v3, v1}, Lp21;-><init>(Ln86;Ltr1;)V

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 206
    .line 207
    .line 208
    throw p0

    .line 209
    :cond_4
    const/4 v2, 0x0

    .line 210
    :goto_3
    iget-object p0, p0, Lur1;->y:Lyl2;

    .line 211
    .line 212
    invoke-virtual {p0, p1}, Lyl2;->f(Lev6;)V

    .line 213
    .line 214
    .line 215
    return-object v2
.end method

.method public final m(Lrt6;)Lrt6;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lur1;->j(Lrt6;)Lp21;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lur1;->x:Ldi7;

    .line 6
    .line 7
    iget-wide v0, p0, Ldi7;->o:J

    .line 8
    .line 9
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    :try_start_0
    iget-object p1, p1, Lp21;->a:Ln86;

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1, p0}, Ln86;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    check-cast p0, Lrt6;

    .line 18
    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception p0

    .line 23
    :goto_0
    instance-of p1, p0, Lva8;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    check-cast p0, Lva8;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance p1, Lva8;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    move-object p0, p1

    .line 36
    :goto_1
    throw p0

    .line 37
    :catch_2
    move-exception p0

    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lva8;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method
