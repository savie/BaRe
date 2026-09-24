.class public final Lkb3;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final L:Ljava/util/List;


# instance fields
.field public G:Z

.field public volatile H:Z

.field public final I:Ljava/util/concurrent/ExecutorService;

.field public final J:Lw40;

.field public final K:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field public final a:Lnb3;

.field public final b:Ljava/util/List;

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:Lbt3;

.field public final k:Lokhttp3/OkHttpClient;

.field public n:J

.field public p:[B

.field public q:I

.field public r:J

.field public final t:J

.field public final x:Lvs0;

.field public final y:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v6, "https://egest.filen-5.net"

    .line 2
    .line 3
    const-string v7, "https://egest.filen-6.net"

    .line 4
    .line 5
    const-string v0, "https://egest.filen.io"

    .line 6
    .line 7
    const-string v1, "https://egest.filen.net"

    .line 8
    .line 9
    const-string v2, "https://egest.filen-1.net"

    .line 10
    .line 11
    const-string v3, "https://egest.filen-2.net"

    .line 12
    .line 13
    const-string v4, "https://egest.filen-3.net"

    .line 14
    .line 15
    const-string v5, "https://egest.filen-4.net"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lkb3;->L:Ljava/util/List;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lnb3;Lokhttp3/OkHttpClient;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/32 v2, 0x20000000

    .line 10
    .line 11
    .line 12
    cmp-long v2, v0, v2

    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    if-ltz v2, :cond_0

    .line 17
    .line 18
    const/16 v0, 0x20

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-wide/32 v4, 0x18000000

    .line 22
    .line 23
    .line 24
    cmp-long v0, v0, v4

    .line 25
    .line 26
    if-ltz v0, :cond_1

    .line 27
    .line 28
    const/16 v0, 0x10

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v0, v3

    .line 32
    :goto_0
    new-instance v1, Lel;

    .line 33
    .line 34
    const/16 v2, 0xd

    .line 35
    .line 36
    invoke-direct {v1, v2}, Lel;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget-object p3, Lkb3;->L:Ljava/util/List;

    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lkb3;->a:Lnb3;

    .line 54
    .line 55
    iput-object p3, p0, Lkb3;->b:Ljava/util/List;

    .line 56
    .line 57
    iput v0, p0, Lkb3;->c:I

    .line 58
    .line 59
    iput v3, p0, Lkb3;->d:I

    .line 60
    .line 61
    const-wide/16 v2, 0x3e8

    .line 62
    .line 63
    iput-wide v2, p0, Lkb3;->e:J

    .line 64
    .line 65
    iput-object v1, p0, Lkb3;->f:Lbt3;

    .line 66
    .line 67
    invoke-virtual {p2}, Lokhttp3/OkHttpClient;->b()Lokhttp3/OkHttpClient$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-wide/16 v1, 0x3c

    .line 72
    .line 73
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    .line 75
    invoke-virtual {p2, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->c(JLjava/util/concurrent/TimeUnit;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v2, v3}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iput v1, p2, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 83
    .line 84
    new-instance v1, Lokhttp3/OkHttpClient;

    .line 85
    .line 86
    invoke-direct {v1, p2}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lkb3;->k:Lokhttp3/OkHttpClient;

    .line 90
    .line 91
    const/4 p2, 0x0

    .line 92
    new-array p2, p2, [B

    .line 93
    .line 94
    iput-object p2, p0, Lkb3;->p:[B

    .line 95
    .line 96
    iget-wide v1, p1, Lnb3;->d:J

    .line 97
    .line 98
    const-wide/16 v3, 0x0

    .line 99
    .line 100
    cmp-long p2, v1, v3

    .line 101
    .line 102
    if-nez p2, :cond_2

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const-wide/16 v3, 0x1

    .line 106
    .line 107
    sub-long v5, v1, v3

    .line 108
    .line 109
    const-wide/32 v7, 0x100000

    .line 110
    .line 111
    .line 112
    div-long/2addr v5, v7

    .line 113
    add-long/2addr v3, v5

    .line 114
    :goto_1
    iput-wide v3, p0, Lkb3;->t:J

    .line 115
    .line 116
    iget-object p2, p1, Lnb3;->m:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    const/4 v4, 0x0

    .line 123
    if-nez v3, :cond_3

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    move-object p2, v4

    .line 127
    :goto_2
    if-eqz p2, :cond_4

    .line 128
    .line 129
    new-instance p2, Lvs0;

    .line 130
    .line 131
    invoke-direct {p2}, Lvs0;-><init>()V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_4
    move-object p2, v4

    .line 136
    :goto_3
    iput-object p2, p0, Lkb3;->x:Lvs0;

    .line 137
    .line 138
    if-nez p2, :cond_5

    .line 139
    .line 140
    iget-object p2, p1, Lnb3;->n:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-nez p2, :cond_5

    .line 147
    .line 148
    const-string p2, "SHA-512"

    .line 149
    .line 150
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    goto :goto_4

    .line 155
    :cond_5
    move-object p2, v4

    .line 156
    :goto_4
    iput-object p2, p0, Lkb3;->y:Ljava/security/MessageDigest;

    .line 157
    .line 158
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    iput-object p2, p0, Lkb3;->I:Ljava/util/concurrent/ExecutorService;

    .line 163
    .line 164
    new-instance p2, Lw40;

    .line 165
    .line 166
    invoke-direct {p2}, Lw40;-><init>()V

    .line 167
    .line 168
    .line 169
    iput-object p2, p0, Lkb3;->J:Lw40;

    .line 170
    .line 171
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    iput-object p2, p0, Lkb3;->K:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 176
    .line 177
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-nez p0, :cond_7

    .line 182
    .line 183
    iget-wide p0, p1, Lnb3;->i:J

    .line 184
    .line 185
    invoke-static {v1, v2, p0, p1}, Lx13;->F(JJ)Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    if-eqz p0, :cond_6

    .line 190
    .line 191
    return-void

    .line 192
    :cond_6
    const-string p0, "Inconsistent Filen file size and chunk count"

    .line 193
    .line 194
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw v4

    .line 198
    :cond_7
    const-string p0, "Filen egest URL list cannot be empty"

    .line 199
    .line 200
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v4
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lkb3;->G:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lkb3;->a:Lnb3;

    .line 7
    .line 8
    iget-object v1, v0, Lnb3;->m:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, v0, Lnb3;->n:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iput-boolean v3, p0, Lkb3;->G:Z

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v1, p0, Lkb3;->x:Lvs0;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Lvs0;->c()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v0, v0, Lnb3;->m:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lkb3;->y:Ljava/security/MessageDigest;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance v1, Lsh;

    .line 55
    .line 56
    const/4 v4, 0x6

    .line 57
    invoke-direct {v1, v4}, Lsh;-><init>(I)V

    .line 58
    .line 59
    .line 60
    const/16 v4, 0x1e

    .line 61
    .line 62
    const-string v5, ""

    .line 63
    .line 64
    invoke-static {v0, v5, v1, v4}, Lx50;->t0([BLjava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    move v0, v3

    .line 74
    :goto_0
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iput-boolean v3, p0, Lkb3;->G:Z

    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 80
    .line 81
    const-string v0, "Filen file integrity verification failed"

    .line 82
    .line 83
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public final close()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lkb3;->H:Z

    .line 3
    .line 4
    iget-object v0, p0, Lkb3;->K:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lokhttp3/Call;

    .line 24
    .line 25
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lkb3;->I:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lkb3;->J:Lw40;

    .line 35
    .line 36
    invoke-virtual {v0}, Lw40;->clear()V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    new-array v0, v0, [B

    .line 41
    .line 42
    iput-object v0, p0, Lkb3;->p:[B

    .line 43
    .line 44
    return-void
.end method

.method public final read()I
    .locals 3

    const/4 v0, 0x1

    .line 238
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 239
    invoke-virtual {p0, v1, v2, v0}, Lkb3;->read([BII)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final read([BII)I
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-ltz p2, :cond_b

    .line 6
    .line 7
    if-ltz p3, :cond_b

    .line 8
    .line 9
    add-int v1, p2, p3

    .line 10
    .line 11
    array-length v2, p1

    .line 12
    if-gt v1, v2, :cond_b

    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    iget-boolean v1, p0, Lkb3;->H:Z

    .line 18
    .line 19
    if-nez v1, :cond_a

    .line 20
    .line 21
    iget-wide v1, p0, Lkb3;->r:J

    .line 22
    .line 23
    iget-object v3, p0, Lkb3;->a:Lnb3;

    .line 24
    .line 25
    iget-wide v3, v3, Lnb3;->d:J

    .line 26
    .line 27
    cmp-long v1, v1, v3

    .line 28
    .line 29
    if-ltz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lkb3;->a()V

    .line 32
    .line 33
    .line 34
    const/4 p0, -0x1

    .line 35
    return p0

    .line 36
    :cond_1
    move v1, v0

    .line 37
    :goto_0
    if-ge v1, p3, :cond_8

    .line 38
    .line 39
    iget-wide v2, p0, Lkb3;->r:J

    .line 40
    .line 41
    iget-object v4, p0, Lkb3;->a:Lnb3;

    .line 42
    .line 43
    iget-wide v4, v4, Lnb3;->d:J

    .line 44
    .line 45
    cmp-long v2, v2, v4

    .line 46
    .line 47
    if-gez v2, :cond_8

    .line 48
    .line 49
    iget v2, p0, Lkb3;->q:I

    .line 50
    .line 51
    iget-object v3, p0, Lkb3;->p:[B

    .line 52
    .line 53
    array-length v3, v3

    .line 54
    if-lt v2, v3, :cond_7

    .line 55
    .line 56
    iget-object v2, p0, Lkb3;->J:Lw40;

    .line 57
    .line 58
    :goto_1
    iget v3, v2, Lw40;->c:I

    .line 59
    .line 60
    iget v4, p0, Lkb3;->c:I

    .line 61
    .line 62
    if-ge v3, v4, :cond_2

    .line 63
    .line 64
    iget-wide v3, p0, Lkb3;->n:J

    .line 65
    .line 66
    iget-wide v5, p0, Lkb3;->t:J

    .line 67
    .line 68
    cmp-long v5, v3, v5

    .line 69
    .line 70
    if-gez v5, :cond_2

    .line 71
    .line 72
    const-wide/16 v5, 0x1

    .line 73
    .line 74
    add-long/2addr v5, v3

    .line 75
    iput-wide v5, p0, Lkb3;->n:J

    .line 76
    .line 77
    iget-object v5, p0, Lkb3;->I:Ljava/util/concurrent/ExecutorService;

    .line 78
    .line 79
    new-instance v6, Ljb3;

    .line 80
    .line 81
    invoke-direct {v6, p0, v3, v4}, Ljb3;-><init>(Lkb3;J)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, v3}, Lw40;->addLast(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Lw40;->removeFirst()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/util/concurrent/Future;

    .line 97
    .line 98
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    check-cast v2, [B
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    iput-object v2, p0, Lkb3;->p:[B

    .line 108
    .line 109
    iget-object v3, p0, Lkb3;->x:Lvs0;

    .line 110
    .line 111
    if-eqz v3, :cond_3

    .line 112
    .line 113
    invoke-virtual {v3, v2}, Lvs0;->g([B)V

    .line 114
    .line 115
    .line 116
    :cond_3
    iget-object v2, p0, Lkb3;->y:Ljava/security/MessageDigest;

    .line 117
    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    iget-object v3, p0, Lkb3;->p:[B

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 123
    .line 124
    .line 125
    :cond_4
    iput v0, p0, Lkb3;->q:I

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :catch_0
    move-exception p1

    .line 129
    iget-object p0, p0, Lkb3;->K:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_5

    .line 143
    .line 144
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Lokhttp3/Call;

    .line 149
    .line 150
    invoke-interface {p2}, Lokhttp3/Call;->cancel()V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    if-nez p0, :cond_6

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    move-object p1, p0

    .line 162
    :goto_3
    throw p1

    .line 163
    :cond_7
    :goto_4
    sub-int v2, p3, v1

    .line 164
    .line 165
    int-to-long v2, v2

    .line 166
    iget-object v4, p0, Lkb3;->p:[B

    .line 167
    .line 168
    array-length v4, v4

    .line 169
    iget v5, p0, Lkb3;->q:I

    .line 170
    .line 171
    sub-int/2addr v4, v5

    .line 172
    int-to-long v4, v4

    .line 173
    iget-object v6, p0, Lkb3;->a:Lnb3;

    .line 174
    .line 175
    iget-wide v6, v6, Lnb3;->d:J

    .line 176
    .line 177
    iget-wide v8, p0, Lkb3;->r:J

    .line 178
    .line 179
    sub-long/2addr v6, v8

    .line 180
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 181
    .line 182
    .line 183
    move-result-wide v4

    .line 184
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 185
    .line 186
    .line 187
    move-result-wide v2

    .line 188
    long-to-int v2, v2

    .line 189
    iget-object v3, p0, Lkb3;->p:[B

    .line 190
    .line 191
    iget v4, p0, Lkb3;->q:I

    .line 192
    .line 193
    add-int v5, p2, v1

    .line 194
    .line 195
    invoke-static {v3, v4, p1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    .line 197
    .line 198
    iget v3, p0, Lkb3;->q:I

    .line 199
    .line 200
    add-int/2addr v3, v2

    .line 201
    iput v3, p0, Lkb3;->q:I

    .line 202
    .line 203
    add-int/2addr v1, v2

    .line 204
    iget-wide v3, p0, Lkb3;->r:J

    .line 205
    .line 206
    int-to-long v5, v2

    .line 207
    add-long/2addr v3, v5

    .line 208
    iput-wide v3, p0, Lkb3;->r:J

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_8
    iget-wide p1, p0, Lkb3;->r:J

    .line 213
    .line 214
    iget-object p3, p0, Lkb3;->a:Lnb3;

    .line 215
    .line 216
    iget-wide v2, p3, Lnb3;->d:J

    .line 217
    .line 218
    cmp-long p1, p1, v2

    .line 219
    .line 220
    if-nez p1, :cond_9

    .line 221
    .line 222
    invoke-virtual {p0}, Lkb3;->a()V

    .line 223
    .line 224
    .line 225
    :cond_9
    return v1

    .line 226
    :cond_a
    const-string p0, "Stream is closed"

    .line 227
    .line 228
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return v0

    .line 232
    :cond_b
    const-string p0, "Failed requirement."

    .line 233
    .line 234
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return v0
.end method
