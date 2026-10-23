.class public final Lfp5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ll80;


# static fields
.field public static final h:Ll15;

.field public static final i:Lg1;


# instance fields
.field public a:Llv1;

.field public b:Ljava/util/Random;

.field public c:Lh80;

.field public d:Lz28;

.field public e:I

.field public f:Ljava/util/AbstractSet;

.field public g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lfp5;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lfp5;->h:Ll15;

    .line 8
    .line 9
    new-instance v0, Lg1;

    .line 10
    .line 11
    const-string v1, "1.3.6.1.4.1.311.2.2.10"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lg1;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lfp5;->i:Lg1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lh80;[BLxr1;)Lkc;
    .locals 6

    .line 1
    :try_start_0
    iget p3, p0, Lfp5;->e:I
    :try_end_0
    .catch Lfk7; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    sget-object v2, Lfp5;->h:Ll15;

    .line 10
    .line 11
    if-ne p3, v1, :cond_1

    .line 12
    .line 13
    :try_start_1
    const-string p2, "Initialized Authentication of {} using NTLM"

    .line 14
    .line 15
    iget-object p3, p1, Lh80;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p3, Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v2, p3, p2}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p2, 0x2

    .line 23
    iput p2, p0, Lfp5;->e:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lfp5;->e(Lh80;)Lkc;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    const-string p3, "Received token: {}"

    .line 31
    .line 32
    invoke-static {p2}, Ll73;->y([B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v2, v3, p3}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p3, Lam5;

    .line 40
    .line 41
    invoke-direct {p3}, Lam5;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p2}, Lam5;->g([B)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lgp5;

    .line 48
    .line 49
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Lfk7; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    .line 51
    .line 52
    :try_start_2
    new-instance v3, Ljw0;

    .line 53
    .line 54
    iget-object v4, p3, Lam5;->f:[B

    .line 55
    .line 56
    sget-object v5, Lvw2;->b:Luw2;

    .line 57
    .line 58
    invoke-direct {v3, v4, v1, v5}, Low0;-><init>([BZLvw2;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v3}, Lgp5;->N(Ljw0;)V
    :try_end_2
    .catch Liw0; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lfk7; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    .line 63
    .line 64
    :try_start_3
    const-string v1, "Received NTLM challenge: {}"

    .line 65
    .line 66
    invoke-interface {v2, p2, v1}, Ll15;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "Received NTLM challenge from: {}"

    .line 70
    .line 71
    iget-object v3, p2, Lgp5;->q:Ljava/lang/String;

    .line 72
    .line 73
    invoke-interface {v2, v3, v1}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lfp5;->f:Ljava/util/AbstractSet;

    .line 77
    .line 78
    new-instance v2, Ldp5;

    .line 79
    .line 80
    invoke-direct {v2, p2}, Ldp5;-><init>(Lgp5;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lfp5;->f:Ljava/util/AbstractSet;

    .line 87
    .line 88
    sget-object v2, Llp5;->d:Llp5;

    .line 89
    .line 90
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    iget-object p3, p3, Lam5;->f:[B

    .line 97
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lfp5;->d(Lh80;Lgp5;[B)Lkc;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput v0, p0, Lfp5;->e:I

    .line 103
    .line 104
    return-object p1

    .line 105
    :cond_2
    new-instance p0, Lhp5;

    .line 106
    .line 107
    const-string p1, "Server does not support 128-bit encryption"

    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :catch_0
    move-exception p0

    .line 114
    new-instance p1, Ljava/io/IOException;

    .line 115
    .line 116
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    throw p1
    :try_end_3
    .catch Lfk7; {:try_start_3 .. :try_end_3} :catch_1

    .line 120
    :catch_1
    move-exception p0

    .line 121
    new-instance p1, Lgv6;

    .line 122
    .line 123
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method public final b(Lh80;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class p1, Lh80;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final c(Ldi7;)V
    .locals 4

    .line 1
    iget-object v0, p1, Ldi7;->h:Llv1;

    .line 2
    .line 3
    iput-object v0, p0, Lfp5;->a:Llv1;

    .line 4
    .line 5
    iget-object v0, p1, Ldi7;->d:Ljava/util/Random;

    .line 6
    .line 7
    iput-object v0, p0, Lfp5;->b:Ljava/util/Random;

    .line 8
    .line 9
    iget-object p1, p1, Ldi7;->r:Lz28;

    .line 10
    .line 11
    iput-object p1, p0, Lfp5;->d:Lz28;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lfp5;->e:I

    .line 15
    .line 16
    new-instance p1, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lfp5;->f:Ljava/util/AbstractSet;

    .line 22
    .line 23
    new-instance p1, Lh80;

    .line 24
    .line 25
    iget-object v0, p0, Lfp5;->b:Ljava/util/Random;

    .line 26
    .line 27
    iget-object v1, p0, Lfp5;->a:Llv1;

    .line 28
    .line 29
    const/16 v2, 0xd

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-direct {p1, v2, v3}, Lh80;-><init>(IZ)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p1, Lh80;->b:Ljava/lang/Object;

    .line 36
    .line 37
    iput-object v1, p1, Lh80;->c:Ljava/lang/Object;

    .line 38
    .line 39
    iput-object p1, p0, Lfp5;->c:Lh80;

    .line 40
    .line 41
    return-void
.end method

.method public final d(Lh80;Lgp5;[B)Lkc;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Lkc;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-direct {v3, v4}, Lkc;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iget-object v5, v2, Lgp5;->n:Lbw8;

    .line 14
    .line 15
    iput-object v5, v3, Lkc;->d:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v5, v2, Lgp5;->r:Lrx7;

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    sget-object v6, Lpe0;->c:Lpe0;

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Lrx7;->b(Lpe0;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    iget-object v5, v2, Lgp5;->r:Lrx7;

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Lrx7;->a(Lpe0;)Lqe0;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget-object v5, v5, Lqe0;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Ljava/lang/String;

    .line 38
    .line 39
    :cond_0
    invoke-virtual {v1}, Lh80;->f()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    new-instance v6, Lcp5;

    .line 46
    .line 47
    iget-object v1, v1, Lh80;->b:Ljava/lang/Object;

    .line 48
    .line 49
    move-object v9, v1

    .line 50
    check-cast v9, Ljava/lang/String;

    .line 51
    .line 52
    iget-object v1, v0, Lfp5;->d:Lz28;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v11, v0, Lfp5;->f:Ljava/util/AbstractSet;

    .line 58
    .line 59
    iget-object v0, v1, Lz28;->b:Ljava/lang/Object;

    .line 60
    .line 61
    move-object v12, v0

    .line 62
    check-cast v12, Lbw8;

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v10, 0x0

    .line 67
    invoke-direct/range {v6 .. v12}, Lcp5;-><init>([B[BLjava/lang/String;[BLjava/util/Set;Lbw8;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lam5;

    .line 71
    .line 72
    invoke-direct {v0}, Lam5;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v1, Ljw0;

    .line 76
    .line 77
    invoke-direct {v1}, Low0;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v1}, Lcp5;->N(Ljw0;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Low0;->c()[B

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iput-object v1, v0, Lam5;->f:[B

    .line 88
    .line 89
    iput-object v0, v3, Lkc;->b:Ljava/lang/Object;

    .line 90
    .line 91
    return-object v3

    .line 92
    :cond_1
    iget-object v5, v0, Lfp5;->f:Ljava/util/AbstractSet;

    .line 93
    .line 94
    sget-object v6, Llp5;->f:Llp5;

    .line 95
    .line 96
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    iget-object v5, v2, Lgp5;->r:Lrx7;

    .line 100
    .line 101
    sget-object v6, Lpe0;->e:Lpe0;

    .line 102
    .line 103
    const-wide/16 v7, 0x2

    .line 104
    .line 105
    sget-object v9, Lpe0;->f:Lpe0;

    .line 106
    .line 107
    if-nez v5, :cond_2

    .line 108
    .line 109
    const/4 v11, 0x0

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    new-instance v11, Lrx7;

    .line 112
    .line 113
    invoke-direct {v11}, Lrx7;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v12, Ljava/util/ArrayList;

    .line 117
    .line 118
    iget-object v5, v5, Lrx7;->a:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v12, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    .line 122
    .line 123
    iput-object v12, v11, Lrx7;->a:Ljava/util/ArrayList;

    .line 124
    .line 125
    iget-object v5, v0, Lfp5;->d:Lz28;

    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object v5, v2, Lgp5;->r:Lrx7;

    .line 131
    .line 132
    invoke-virtual {v5, v9}, Lrx7;->b(Lpe0;)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_4

    .line 137
    .line 138
    invoke-virtual {v11, v6}, Lrx7;->b(Lpe0;)Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_3

    .line 143
    .line 144
    invoke-virtual {v11, v6}, Lrx7;->a(Lpe0;)Lqe0;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    iget-object v5, v5, Lqe0;->b:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v5, Ljava/lang/Long;

    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 153
    .line 154
    .line 155
    move-result-wide v12

    .line 156
    or-long/2addr v12, v7

    .line 157
    goto :goto_0

    .line 158
    :cond_3
    move-wide v12, v7

    .line 159
    :goto_0
    new-instance v5, Lte0;

    .line 160
    .line 161
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    .line 163
    .line 164
    move-result-object v12

    .line 165
    invoke-direct {v5, v6, v12}, Lqe0;-><init>(Lpe0;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v11, v5}, Lrx7;->c(Lqe0;)V

    .line 169
    .line 170
    .line 171
    :cond_4
    iget-object v5, v2, Lgp5;->l:Ljava/util/EnumSet;

    .line 172
    .line 173
    sget-object v12, Llp5;->I:Llp5;

    .line 174
    .line 175
    invoke-virtual {v5, v12}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    sget-object v12, Lpe0;->n:Lpe0;

    .line 180
    .line 181
    if-eqz v5, :cond_5

    .line 182
    .line 183
    sget-object v5, Lpe0;->d:Lpe0;

    .line 184
    .line 185
    invoke-virtual {v11, v5}, Lrx7;->a(Lpe0;)Lqe0;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    check-cast v5, Lve0;

    .line 190
    .line 191
    if-eqz v5, :cond_6

    .line 192
    .line 193
    iget-object v5, v5, Lqe0;->b:Ljava/lang/Object;

    .line 194
    .line 195
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    const-string v13, "cifs/%s"

    .line 200
    .line 201
    invoke-static {v13, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    new-instance v13, Lve0;

    .line 206
    .line 207
    invoke-direct {v13, v12, v5}, Lqe0;-><init>(Lpe0;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11, v13}, Lrx7;->c(Lqe0;)V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_5
    new-instance v5, Lve0;

    .line 215
    .line 216
    const-string v13, ""

    .line 217
    .line 218
    invoke-direct {v5, v12, v13}, Lqe0;-><init>(Lpe0;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v11, v5}, Lrx7;->c(Lqe0;)V

    .line 222
    .line 223
    .line 224
    :cond_6
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 225
    .line 226
    .line 227
    move-result-wide v12

    .line 228
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 229
    .line 230
    sget-object v14, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 231
    .line 232
    invoke-virtual {v14, v12, v13, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 233
    .line 234
    .line 235
    move-result-wide v12

    .line 236
    const-wide/16 v14, 0x64

    .line 237
    .line 238
    div-long/2addr v12, v14

    .line 239
    const-wide v14, 0x19db1ded53e8000L

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    add-long/2addr v12, v14

    .line 245
    if-eqz v11, :cond_7

    .line 246
    .line 247
    invoke-virtual {v11, v9}, Lrx7;->b(Lpe0;)Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_7

    .line 252
    .line 253
    invoke-virtual {v11, v9}, Lrx7;->a(Lpe0;)Lqe0;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    check-cast v5, Lwe0;

    .line 258
    .line 259
    iget-object v5, v5, Lqe0;->b:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v5, Lga3;

    .line 262
    .line 263
    iget-wide v12, v5, Lga3;->a:J

    .line 264
    .line 265
    :cond_7
    iget-object v5, v0, Lfp5;->c:Lh80;

    .line 266
    .line 267
    iget-object v9, v1, Lh80;->b:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v9, Ljava/lang/String;

    .line 270
    .line 271
    iget-object v14, v1, Lh80;->c:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v14, [C

    .line 274
    .line 275
    const/16 v15, 0x8

    .line 276
    .line 277
    move-wide/from16 v16, v7

    .line 278
    .line 279
    new-array v7, v15, [B

    .line 280
    .line 281
    iget-object v8, v5, Lh80;->b:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v8, Ljava/util/Random;

    .line 284
    .line 285
    invoke-virtual {v8, v7}, Ljava/util/Random;->nextBytes([B)V

    .line 286
    .line 287
    .line 288
    invoke-static {v14}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    invoke-virtual {v5, v8, v9}, Lh80;->a(Ljava/lang/String;Ljava/lang/String;)[B

    .line 293
    .line 294
    .line 295
    move-result-object v8

    .line 296
    invoke-static {v14}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v14

    .line 300
    invoke-virtual {v5, v14, v9}, Lh80;->a(Ljava/lang/String;Ljava/lang/String;)[B

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    iget-object v14, v2, Lgp5;->m:[B

    .line 305
    .line 306
    new-instance v10, Ljw0;

    .line 307
    .line 308
    invoke-direct {v10}, Low0;-><init>()V

    .line 309
    .line 310
    .line 311
    iget-object v5, v5, Lh80;->c:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v5, Llv1;

    .line 314
    .line 315
    filled-new-array {v14, v7}, [[B

    .line 316
    .line 317
    .line 318
    move-result-object v14

    .line 319
    invoke-static {v5, v9, v14}, Lip5;->a(Llv1;[B[[B)[B

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    array-length v14, v9

    .line 324
    invoke-virtual {v10, v9, v14}, Low0;->i([BI)Low0;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v10, v7, v15}, Low0;->i([BI)Low0;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v10}, Low0;->c()[B

    .line 331
    .line 332
    .line 333
    iget-object v9, v2, Lgp5;->m:[B

    .line 334
    .line 335
    new-instance v10, Ljw0;

    .line 336
    .line 337
    invoke-direct {v10}, Low0;-><init>()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v10, v4}, Low0;->f(B)Low0;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v10, v4}, Low0;->f(B)Low0;

    .line 344
    .line 345
    .line 346
    const/4 v4, 0x0

    .line 347
    invoke-virtual {v10, v4}, Low0;->k(I)V

    .line 348
    .line 349
    .line 350
    move-object v14, v5

    .line 351
    const-wide/16 v4, 0x0

    .line 352
    .line 353
    invoke-virtual {v10, v4, v5}, Low0;->l(J)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v10, v12, v13}, Low0;->g(J)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v10, v7, v15}, Low0;->i([BI)Low0;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v10, v4, v5}, Low0;->l(J)V

    .line 363
    .line 364
    .line 365
    if-eqz v11, :cond_9

    .line 366
    .line 367
    iget-object v7, v11, Lrx7;->a:Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 374
    .line 375
    .line 376
    move-result v12

    .line 377
    if-eqz v12, :cond_8

    .line 378
    .line 379
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v12

    .line 383
    check-cast v12, Lqe0;

    .line 384
    .line 385
    sget-object v13, Lrx7;->b:Ll15;

    .line 386
    .line 387
    iget-object v15, v12, Lqe0;->a:Lpe0;

    .line 388
    .line 389
    iget-object v4, v12, Lqe0;->b:Ljava/lang/Object;

    .line 390
    .line 391
    const-string v5, "Writing TargetInfo {} --> {}"

    .line 392
    .line 393
    invoke-interface {v13, v15, v4, v5}, Ll15;->B(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v12, v10}, Lqe0;->a(Ljw0;)V

    .line 397
    .line 398
    .line 399
    const-wide/16 v4, 0x0

    .line 400
    .line 401
    goto :goto_2

    .line 402
    :cond_8
    const/4 v4, 0x0

    .line 403
    invoke-virtual {v10, v4}, Low0;->k(I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v10, v4}, Low0;->k(I)V

    .line 407
    .line 408
    .line 409
    const-wide/16 v4, 0x0

    .line 410
    .line 411
    :cond_9
    invoke-virtual {v10, v4, v5}, Low0;->l(J)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v10}, Low0;->c()[B

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    filled-new-array {v9, v4}, [[B

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    invoke-static {v14, v8, v5}, Lip5;->a(Llv1;[B[[B)[B

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    array-length v7, v5

    .line 427
    array-length v9, v4

    .line 428
    add-int/2addr v7, v9

    .line 429
    new-array v7, v7, [B

    .line 430
    .line 431
    array-length v9, v5

    .line 432
    const/4 v10, 0x0

    .line 433
    invoke-static {v5, v10, v7, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    .line 435
    .line 436
    array-length v5, v5

    .line 437
    array-length v9, v4

    .line 438
    invoke-static {v4, v10, v7, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    .line 440
    .line 441
    const/16 v4, 0x10

    .line 442
    .line 443
    invoke-static {v7, v10, v4}, Lms8;->t([BII)[B

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    filled-new-array {v5}, [[B

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    invoke-static {v14, v8, v5}, Lip5;->a(Llv1;[B[[B)[B

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    new-array v8, v10, [B

    .line 456
    .line 457
    iget-object v9, v0, Lfp5;->c:Lh80;

    .line 458
    .line 459
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    iget-object v2, v2, Lgp5;->l:Ljava/util/EnumSet;

    .line 463
    .line 464
    sget-object v9, Llp5;->c:Llp5;

    .line 465
    .line 466
    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v9

    .line 470
    if-eqz v9, :cond_b

    .line 471
    .line 472
    sget-object v9, Llp5;->G:Llp5;

    .line 473
    .line 474
    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v9

    .line 478
    if-nez v9, :cond_a

    .line 479
    .line 480
    sget-object v9, Llp5;->H:Llp5;

    .line 481
    .line 482
    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v9

    .line 486
    if-nez v9, :cond_a

    .line 487
    .line 488
    sget-object v9, Llp5;->n:Llp5;

    .line 489
    .line 490
    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v9

    .line 494
    if-eqz v9, :cond_b

    .line 495
    .line 496
    :cond_a
    new-array v9, v4, [B

    .line 497
    .line 498
    iget-object v10, v0, Lfp5;->b:Ljava/util/Random;

    .line 499
    .line 500
    invoke-virtual {v10, v9}, Ljava/util/Random;->nextBytes([B)V

    .line 501
    .line 502
    .line 503
    iget-object v10, v0, Lfp5;->a:Llv1;

    .line 504
    .line 505
    invoke-static {v10, v5, v9}, Lip5;->c(Llv1;[B[B)[B

    .line 506
    .line 507
    .line 508
    move-result-object v5

    .line 509
    move-object/from16 v24, v5

    .line 510
    .line 511
    move-object v5, v9

    .line 512
    goto :goto_3

    .line 513
    :cond_b
    move-object/from16 v24, v5

    .line 514
    .line 515
    :goto_3
    new-instance v20, Lcp5;

    .line 516
    .line 517
    iget-object v1, v1, Lh80;->b:Ljava/lang/Object;

    .line 518
    .line 519
    move-object/from16 v23, v1

    .line 520
    .line 521
    check-cast v23, Ljava/lang/String;

    .line 522
    .line 523
    iget-object v1, v0, Lfp5;->d:Lz28;

    .line 524
    .line 525
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    iget-object v1, v1, Lz28;->b:Ljava/lang/Object;

    .line 529
    .line 530
    move-object/from16 v26, v1

    .line 531
    .line 532
    check-cast v26, Lbw8;

    .line 533
    .line 534
    move-object/from16 v25, v2

    .line 535
    .line 536
    move-object/from16 v22, v7

    .line 537
    .line 538
    move-object/from16 v21, v8

    .line 539
    .line 540
    invoke-direct/range {v20 .. v26}, Lcp5;-><init>([B[BLjava/lang/String;[BLjava/util/Set;Lbw8;)V

    .line 541
    .line 542
    .line 543
    move-object/from16 v1, v20

    .line 544
    .line 545
    if-eqz v11, :cond_c

    .line 546
    .line 547
    invoke-virtual {v11, v6}, Lrx7;->a(Lpe0;)Lqe0;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    move-object v10, v2

    .line 552
    check-cast v10, Lte0;

    .line 553
    .line 554
    goto :goto_4

    .line 555
    :cond_c
    const/4 v10, 0x0

    .line 556
    :goto_4
    if-eqz v10, :cond_d

    .line 557
    .line 558
    iget-object v2, v10, Lqe0;->b:Ljava/lang/Object;

    .line 559
    .line 560
    check-cast v2, Ljava/lang/Long;

    .line 561
    .line 562
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 563
    .line 564
    .line 565
    move-result-wide v6

    .line 566
    and-long v6, v6, v16

    .line 567
    .line 568
    const-wide/16 v18, 0x0

    .line 569
    .line 570
    cmp-long v2, v6, v18

    .line 571
    .line 572
    if-lez v2, :cond_d

    .line 573
    .line 574
    new-array v2, v4, [B

    .line 575
    .line 576
    iput-object v2, v1, Lcp5;->s:[B

    .line 577
    .line 578
    new-instance v2, Ljw0;

    .line 579
    .line 580
    invoke-direct {v2}, Low0;-><init>()V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v1, v2}, Lcp5;->N(Ljw0;)V

    .line 584
    .line 585
    .line 586
    iget-object v4, v0, Lfp5;->a:Llv1;

    .line 587
    .line 588
    iget-object v6, v0, Lfp5;->g:[B

    .line 589
    .line 590
    invoke-virtual {v2}, Low0;->c()[B

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    move-object/from16 v7, p3

    .line 595
    .line 596
    filled-new-array {v6, v7, v2}, [[B

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    invoke-static {v4, v5, v2}, Lip5;->a(Llv1;[B[[B)[B

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    iput-object v2, v1, Lcp5;->s:[B

    .line 605
    .line 606
    :cond_d
    iput-object v5, v3, Lkc;->c:Ljava/lang/Object;

    .line 607
    .line 608
    sget-object v2, Lfp5;->h:Ll15;

    .line 609
    .line 610
    const-string v4, "Sending NTLM authenticate message: {}"

    .line 611
    .line 612
    invoke-interface {v2, v1, v4}, Ll15;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    new-instance v2, Lam5;

    .line 616
    .line 617
    invoke-direct {v2}, Lam5;-><init>()V

    .line 618
    .line 619
    .line 620
    new-instance v4, Ljw0;

    .line 621
    .line 622
    invoke-direct {v4}, Low0;-><init>()V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1, v4}, Lcp5;->N(Ljw0;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v4}, Low0;->c()[B

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    iput-object v1, v2, Lam5;->f:[B

    .line 633
    .line 634
    iput-object v2, v3, Lkc;->b:Ljava/lang/Object;

    .line 635
    .line 636
    iget-object v0, v0, Lfp5;->f:Ljava/util/AbstractSet;

    .line 637
    .line 638
    iput-object v0, v3, Lkc;->e:Ljava/lang/Object;

    .line 639
    .line 640
    return-object v3
.end method

.method public final e(Lh80;)Lkc;
    .locals 11

    .line 1
    new-instance v0, Lkc;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lkc;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v2, Llp5;->I:Llp5;

    .line 8
    .line 9
    sget-object v3, Llp5;->k:Llp5;

    .line 10
    .line 11
    sget-object v4, Llp5;->d:Llp5;

    .line 12
    .line 13
    invoke-static {v4, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iput-object v2, p0, Lfp5;->f:Ljava/util/AbstractSet;

    .line 18
    .line 19
    iget-object v3, p0, Lfp5;->d:Lz28;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object v3, Llp5;->e:Llp5;

    .line 25
    .line 26
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lh80;->f()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v4, 0x0

    .line 34
    sget-object v5, Llp5;->c:Llp5;

    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lfp5;->f:Ljava/util/AbstractSet;

    .line 39
    .line 40
    sget-object v1, Llp5;->H:Llp5;

    .line 41
    .line 42
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lfp5;->f:Ljava/util/AbstractSet;

    .line 46
    .line 47
    sget-object v1, Llp5;->n:Llp5;

    .line 48
    .line 49
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lfp5;->f:Ljava/util/AbstractSet;

    .line 53
    .line 54
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    iget-object v2, p1, Lh80;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Ljava/lang/String;

    .line 61
    .line 62
    const-string v6, "Guest"

    .line 63
    .line 64
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    iget-object p1, p1, Lh80;->c:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, [C

    .line 73
    .line 74
    array-length p1, p1

    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move v1, v4

    .line 79
    :goto_0
    iget-object p1, p0, Lfp5;->f:Ljava/util/AbstractSet;

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    sget-object v1, Llp5;->r:Llp5;

    .line 88
    .line 89
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :goto_1
    iget-object p1, p0, Lfp5;->f:Ljava/util/AbstractSet;

    .line 93
    .line 94
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_3

    .line 99
    .line 100
    iget-object p1, p0, Lfp5;->d:Lz28;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    :cond_3
    new-instance p1, Lkp5;

    .line 106
    .line 107
    iget-object v1, p0, Lfp5;->f:Ljava/util/AbstractSet;

    .line 108
    .line 109
    iget-object v2, p0, Lfp5;->d:Lz28;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object v2, v2, Lz28;->b:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v2, Lbw8;

    .line 117
    .line 118
    sget-object v5, Lho6;->d:[B

    .line 119
    .line 120
    invoke-direct {p1, v1, v2}, Ljp5;-><init>(Ljava/util/Set;Lbw8;)V

    .line 121
    .line 122
    .line 123
    iput-object v5, p1, Lkp5;->m:[B

    .line 124
    .line 125
    iput-object v5, p1, Lkp5;->n:[B

    .line 126
    .line 127
    const-string v1, "Sending NTLM negotiate message: {}"

    .line 128
    .line 129
    iget-object v2, p0, Lfp5;->g:[B

    .line 130
    .line 131
    sget-object v6, Lfp5;->h:Ll15;

    .line 132
    .line 133
    invoke-interface {v6, v2, v1}, Ll15;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v1, Lzl5;

    .line 137
    .line 138
    invoke-direct {v1}, Lzl5;-><init>()V

    .line 139
    .line 140
    .line 141
    sget-object v2, Lfp5;->i:Lg1;

    .line 142
    .line 143
    iget-object v6, v1, Lzl5;->d:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    new-instance v2, Ljw0;

    .line 149
    .line 150
    invoke-direct {v2}, Low0;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v6, "NTLMSSP\u0000"

    .line 154
    .line 155
    sget-object v7, Lh51;->a:Ljava/nio/charset/Charset;

    .line 156
    .line 157
    invoke-virtual {v2, v6, v7}, Low0;->j(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 158
    .line 159
    .line 160
    const-wide/16 v6, 0x1

    .line 161
    .line 162
    invoke-virtual {v2, v6, v7}, Low0;->l(J)V

    .line 163
    .line 164
    .line 165
    iget-object v6, p1, Ljp5;->j:Ljava/util/Set;

    .line 166
    .line 167
    invoke-static {v6}, Lsz8;->j0(Ljava/util/Collection;)J

    .line 168
    .line 169
    .line 170
    move-result-wide v6

    .line 171
    invoke-virtual {v2, v6, v7}, Low0;->l(J)V

    .line 172
    .line 173
    .line 174
    iget-object v6, p1, Ljp5;->j:Ljava/util/Set;

    .line 175
    .line 176
    sget-object v7, Llp5;->q:Llp5;

    .line 177
    .line 178
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    const-wide/16 v7, 0x0

    .line 183
    .line 184
    const/16 v9, 0x28

    .line 185
    .line 186
    if-eqz v6, :cond_4

    .line 187
    .line 188
    invoke-static {v2, v5, v9}, Lho6;->Z(Ljw0;[BI)I

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    goto :goto_2

    .line 193
    :cond_4
    invoke-virtual {v2, v4}, Low0;->k(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v4}, Low0;->k(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v7, v8}, Low0;->l(J)V

    .line 200
    .line 201
    .line 202
    :goto_2
    iget-object v6, p1, Ljp5;->j:Ljava/util/Set;

    .line 203
    .line 204
    sget-object v10, Llp5;->p:Llp5;

    .line 205
    .line 206
    invoke-interface {v6, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_5

    .line 211
    .line 212
    invoke-static {v2, v5, v9}, Lho6;->Z(Ljw0;[BI)I

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_5
    invoke-virtual {v2, v4}, Low0;->k(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v4}, Low0;->k(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v7, v8}, Low0;->l(J)V

    .line 223
    .line 224
    .line 225
    :goto_3
    iget-object v4, p1, Ljp5;->j:Ljava/util/Set;

    .line 226
    .line 227
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_6

    .line 232
    .line 233
    iget-object p1, p1, Ljp5;->k:Lbw8;

    .line 234
    .line 235
    iget-object v3, p1, Lbw8;->a:Lzv8;

    .line 236
    .line 237
    iget-wide v3, v3, Lzv8;->a:J

    .line 238
    .line 239
    long-to-int v3, v3

    .line 240
    int-to-byte v3, v3

    .line 241
    invoke-virtual {v2, v3}, Low0;->f(B)Low0;

    .line 242
    .line 243
    .line 244
    iget-object v3, p1, Lbw8;->b:Law8;

    .line 245
    .line 246
    iget-wide v3, v3, Law8;->a:J

    .line 247
    .line 248
    long-to-int v3, v3

    .line 249
    int-to-byte v3, v3

    .line 250
    invoke-virtual {v2, v3}, Low0;->f(B)Low0;

    .line 251
    .line 252
    .line 253
    iget v3, p1, Lbw8;->c:I

    .line 254
    .line 255
    invoke-virtual {v2, v3}, Low0;->k(I)V

    .line 256
    .line 257
    .line 258
    const/4 v3, 0x3

    .line 259
    new-array v4, v3, [B

    .line 260
    .line 261
    fill-array-data v4, :array_0

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v4, v3}, Low0;->i([BI)Low0;

    .line 265
    .line 266
    .line 267
    iget-object p1, p1, Lbw8;->d:Lyv8;

    .line 268
    .line 269
    iget-wide v3, p1, Lyv8;->a:J

    .line 270
    .line 271
    long-to-int p1, v3

    .line 272
    int-to-byte p1, p1

    .line 273
    invoke-virtual {v2, p1}, Low0;->f(B)Low0;

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_6
    invoke-virtual {v2, v7, v8}, Low0;->m(J)V

    .line 278
    .line 279
    .line 280
    :goto_4
    array-length p1, v5

    .line 281
    invoke-virtual {v2, v5, p1}, Low0;->i([BI)Low0;

    .line 282
    .line 283
    .line 284
    array-length p1, v5

    .line 285
    invoke-virtual {v2, v5, p1}, Low0;->i([BI)Low0;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Low0;->c()[B

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    iput-object p1, p0, Lfp5;->g:[B

    .line 293
    .line 294
    iput-object p1, v1, Lzl5;->e:[B

    .line 295
    .line 296
    iput-object v1, v0, Lkc;->b:Ljava/lang/Object;

    .line 297
    .line 298
    iget-object p0, p0, Lfp5;->f:Ljava/util/AbstractSet;

    .line 299
    .line 300
    iput-object p0, v0, Lkc;->e:Ljava/lang/Object;

    .line 301
    .line 302
    return-object v0

    .line 303
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
