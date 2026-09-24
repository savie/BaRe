.class public final Ljc3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final q:Lhc3;

.field public static final r:Ljava/util/List;


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

.field public final b:Lwa3;

.field public final c:Ljava/util/List;

.field public final d:Lbt3;

.field public final e:Lmt3;

.field public final f:Lmt3;

.field public final g:Lbt3;

.field public final h:I

.field public final i:I

.field public final j:J

.field public final k:Lbt3;

.field public final l:Lokhttp3/OkHttpClient;

.field public final m:Lcom/google/gson/a;

.field public final n:Lka;

.field public volatile o:Z

.field public final p:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lhc3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ljc3;->q:Lhc3;

    .line 7
    .line 8
    const-string v7, "https://ingest.filen-5.net"

    .line 9
    .line 10
    const-string v8, "https://ingest.filen-6.net"

    .line 11
    .line 12
    const-string v1, "https://ingest.filen.io"

    .line 13
    .line 14
    const-string v2, "https://ingest.filen.net"

    .line 15
    .line 16
    const-string v3, "https://ingest.filen-1.net"

    .line 17
    .line 18
    const-string v4, "https://ingest.filen-2.net"

    .line 19
    .line 20
    const-string v5, "https://ingest.filen-3.net"

    .line 21
    .line 22
    const-string v6, "https://ingest.filen-4.net"

    .line 23
    .line 24
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Ljc3;->r:Ljava/util/List;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;Lwa3;Lokhttp3/OkHttpClient;)V
    .locals 10

    .line 1
    new-instance v0, Ldl;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ldl;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lae1;

    .line 9
    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v9, 0x4

    .line 12
    const/4 v3, 0x1

    .line 13
    sget-object v4, Ljc3;->q:Lhc3;

    .line 14
    .line 15
    const-class v5, Lhc3;

    .line 16
    .line 17
    const-string v6, "secureRandomString"

    .line 18
    .line 19
    const-string v7, "secureRandomString(I)Ljava/lang/String;"

    .line 20
    .line 21
    invoke-direct/range {v2 .. v9}, Lae1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lzi1;

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-direct {v1, v3}, Lzi1;-><init>(I)V

    .line 28
    .line 29
    .line 30
    sget-object v3, Lgc3;->a:Lgc3;

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    const-wide/32 v6, 0x18000000

    .line 41
    .line 42
    .line 43
    cmp-long v4, v4, v6

    .line 44
    .line 45
    const/16 v5, 0x8

    .line 46
    .line 47
    if-ltz v4, :cond_0

    .line 48
    .line 49
    const/16 v4, 0x10

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v4, v5

    .line 53
    :goto_0
    new-instance v6, Lzk;

    .line 54
    .line 55
    const/16 v7, 0xa

    .line 56
    .line 57
    invoke-direct {v6, v7}, Lzk;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    sget-object v7, Ljc3;->r:Ljava/util/List;

    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Ljc3;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 75
    .line 76
    iput-object p2, p0, Ljc3;->b:Lwa3;

    .line 77
    .line 78
    iput-object v7, p0, Ljc3;->c:Ljava/util/List;

    .line 79
    .line 80
    iput-object v0, p0, Ljc3;->d:Lbt3;

    .line 81
    .line 82
    iput-object v2, p0, Ljc3;->e:Lmt3;

    .line 83
    .line 84
    iput-object v1, p0, Ljc3;->f:Lmt3;

    .line 85
    .line 86
    iput-object v3, p0, Ljc3;->g:Lbt3;

    .line 87
    .line 88
    iput v4, p0, Ljc3;->h:I

    .line 89
    .line 90
    iput v5, p0, Ljc3;->i:I

    .line 91
    .line 92
    const-wide/16 v0, 0x3e8

    .line 93
    .line 94
    iput-wide v0, p0, Ljc3;->j:J

    .line 95
    .line 96
    iput-object v6, p0, Ljc3;->k:Lbt3;

    .line 97
    .line 98
    invoke-virtual {p3}, Lokhttp3/OkHttpClient;->b()Lokhttp3/OkHttpClient$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const-wide/16 v0, 0xb4

    .line 103
    .line 104
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 105
    .line 106
    invoke-virtual {p2, v0, v1, p3}, Lokhttp3/OkHttpClient$Builder;->c(JLjava/util/concurrent/TimeUnit;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v1, p3}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    iput p3, p2, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 114
    .line 115
    new-instance p3, Lokhttp3/OkHttpClient;

    .line 116
    .line 117
    invoke-direct {p3, p2}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 118
    .line 119
    .line 120
    iput-object p3, p0, Ljc3;->l:Lokhttp3/OkHttpClient;

    .line 121
    .line 122
    new-instance p2, Lt14;

    .line 123
    .line 124
    invoke-direct {p2}, Lt14;-><init>()V

    .line 125
    .line 126
    .line 127
    const/4 p3, 0x0

    .line 128
    iput-boolean p3, p2, Lt14;->h:Z

    .line 129
    .line 130
    new-instance p3, Lcom/google/gson/a;

    .line 131
    .line 132
    invoke-direct {p3, p2}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 133
    .line 134
    .line 135
    iput-object p3, p0, Ljc3;->m:Lcom/google/gson/a;

    .line 136
    .line 137
    new-instance p2, Lka;

    .line 138
    .line 139
    invoke-direct {p2, p1}, Lka;-><init>(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)V

    .line 140
    .line 141
    .line 142
    iput-object p2, p0, Ljc3;->n:Lka;

    .line 143
    .line 144
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iput-object p1, p0, Ljc3;->p:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 149
    .line 150
    return-void
.end method

.method public static a(Lfl4;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_2

    .line 7
    .line 8
    instance-of v1, p0, Lel4;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v0

    .line 14
    :goto_0
    if-eqz p0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lqj4;->o()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object p0, v0

    .line 30
    :goto_1
    if-eqz p0, :cond_2

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_2
    const-string p0, "Missing Filen upload response field: "

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lhw;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lhw;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x1e

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-static {p0, v2, v0, v1}, Lx50;->t0([BLjava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final d(Lw40;Llh6;Llh6;Lkh6;Llm;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lw40;->removeFirst()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/concurrent/Future;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lic3;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    iget-object v0, p0, Lic3;->a:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p1, Llh6;->a:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object p1, p0, Lic3;->b:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, p2, Llh6;->a:Ljava/lang/Object;

    .line 20
    .line 21
    iget-wide p1, p3, Lkh6;->a:J

    .line 22
    .line 23
    iget p0, p0, Lic3;->c:I

    .line 24
    .line 25
    int-to-long v0, p0

    .line 26
    add-long/2addr p1, v0

    .line 27
    iput-wide p1, p3, Lkh6;->a:J

    .line 28
    .line 29
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p4, p0}, Llm;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object p0, p1

    .line 46
    :goto_0
    throw p0
.end method

.method public static final e([BLjc3;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lhb3;->a:[B

    .line 2
    .line 3
    iget-object p1, p1, Ljc3;->f:Lmt3;

    .line 4
    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, [B

    .line 16
    .line 17
    invoke-static {p2, p0, p1}, Lhb3;->k(Ljava/lang/String;[B[B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method


# virtual methods
.method public final c(Ljava/io/BufferedInputStream;Ljava/lang/String;Ljava/lang/String;JLlm;)Lnb3;
    .locals 62

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v10

    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v11

    .line 16
    const/16 v0, 0x20

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v12

    .line 22
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long v0, p4, v4

    .line 28
    .line 29
    if-ltz v0, :cond_f

    .line 30
    .line 31
    iget-object v6, v1, Ljc3;->c:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_e

    .line 38
    .line 39
    iget v6, v1, Ljc3;->i:I

    .line 40
    .line 41
    if-lez v6, :cond_d

    .line 42
    .line 43
    iget-object v6, v1, Ljc3;->d:Lbt3;

    .line 44
    .line 45
    invoke-interface {v6}, Lbt3;->invoke()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Ljava/lang/String;

    .line 50
    .line 51
    iget-object v7, v1, Ljc3;->e:Lmt3;

    .line 52
    .line 53
    invoke-interface {v7, v12}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    move-object v8, v7

    .line 58
    check-cast v8, Ljava/lang/String;

    .line 59
    .line 60
    iget-object v7, v1, Ljc3;->e:Lmt3;

    .line 61
    .line 62
    invoke-interface {v7, v12}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Ljava/lang/String;

    .line 67
    .line 68
    sget-object v14, Lf51;->a:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    invoke-virtual {v7, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const-string v15, "version"

    .line 78
    .line 79
    const/16 v16, 0x0

    .line 80
    .line 81
    const-string v13, "metadata"

    .line 82
    .line 83
    move-object/from16 v17, v12

    .line 84
    .line 85
    const-string v12, "parent"

    .line 86
    .line 87
    move/from16 v18, v0

    .line 88
    .line 89
    const-string v0, "nameHashed"

    .line 90
    .line 91
    move-wide/from16 v19, v4

    .line 92
    .line 93
    const-string v4, "uuid"

    .line 94
    .line 95
    const-string v5, "hash"

    .line 96
    .line 97
    move-object/from16 v21, v8

    .line 98
    .line 99
    const-string v8, "blake3"

    .line 100
    .line 101
    const-string v9, "creation"

    .line 102
    .line 103
    move-object/from16 v22, v11

    .line 104
    .line 105
    const-string v11, "lastModified"

    .line 106
    .line 107
    move-object/from16 v23, v15

    .line 108
    .line 109
    const-string v15, "key"

    .line 110
    .line 111
    const/16 v24, 0x0

    .line 112
    .line 113
    const-string v25, "SHA-512"

    .line 114
    .line 115
    move-object/from16 v26, v13

    .line 116
    .line 117
    const-string v13, "name"

    .line 118
    .line 119
    move-object/from16 v27, v10

    .line 120
    .line 121
    const-string v10, "size"

    .line 122
    .line 123
    const-string v3, "mime"

    .line 124
    .line 125
    move-object/from16 v28, v12

    .line 126
    .line 127
    const-string v12, "application/octet-stream"

    .line 128
    .line 129
    move-object/from16 v29, v0

    .line 130
    .line 131
    const-string v0, "Filen upload cancelled"

    .line 132
    .line 133
    if-nez v18, :cond_2

    .line 134
    .line 135
    move-object/from16 v18, v0

    .line 136
    .line 137
    iget-boolean v0, v1, Ljc3;->o:Z

    .line 138
    .line 139
    if-nez v0, :cond_1

    .line 140
    .line 141
    iget-object v0, v1, Ljc3;->g:Lbt3;

    .line 142
    .line 143
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Ljava/lang/Number;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 150
    .line 151
    .line 152
    move-result-wide v30

    .line 153
    new-instance v0, Lvs0;

    .line 154
    .line 155
    invoke-direct {v0}, Lvs0;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lvs0;->c()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static/range {v25 .. v25}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 163
    .line 164
    .line 165
    move-result-object v17

    .line 166
    invoke-virtual/range {v17 .. v17}, Ljava/security/MessageDigest;->digest()[B

    .line 167
    .line 168
    .line 169
    move-result-object v17

    .line 170
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    move-object/from16 v32, v4

    .line 174
    .line 175
    invoke-static/range {v17 .. v17}, Ljc3;->b([B)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    move-object/from16 v33, v6

    .line 180
    .line 181
    new-instance v6, Ljava/lang/String;

    .line 182
    .line 183
    invoke-direct {v6, v7, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 184
    .line 185
    .line 186
    iget-object v14, v1, Ljc3;->m:Lcom/google/gson/a;

    .line 187
    .line 188
    move-object/from16 v42, v7

    .line 189
    .line 190
    new-instance v7, Lpw5;

    .line 191
    .line 192
    invoke-direct {v7, v13, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    move-object/from16 v34, v7

    .line 196
    .line 197
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    move-object/from16 v43, v13

    .line 202
    .line 203
    new-instance v13, Lpw5;

    .line 204
    .line 205
    invoke-direct {v13, v10, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    new-instance v7, Lpw5;

    .line 209
    .line 210
    invoke-direct {v7, v3, v12}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    move-object/from16 v36, v7

    .line 214
    .line 215
    new-instance v7, Lpw5;

    .line 216
    .line 217
    invoke-direct {v7, v15, v6}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    new-instance v15, Lpw5;

    .line 225
    .line 226
    invoke-direct {v15, v11, v6}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    new-instance v11, Lpw5;

    .line 234
    .line 235
    invoke-direct {v11, v9, v6}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    new-instance v6, Lpw5;

    .line 239
    .line 240
    invoke-direct {v6, v8, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    new-instance v8, Lpw5;

    .line 244
    .line 245
    invoke-direct {v8, v5, v4}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    move-object/from16 v40, v6

    .line 249
    .line 250
    move-object/from16 v37, v7

    .line 251
    .line 252
    move-object/from16 v41, v8

    .line 253
    .line 254
    move-object/from16 v39, v11

    .line 255
    .line 256
    move-object/from16 v35, v13

    .line 257
    .line 258
    move-object/from16 v38, v15

    .line 259
    .line 260
    filled-new-array/range {v34 .. v41}, [Lpw5;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-static {v5}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {v14, v5}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    iget-object v6, v1, Ljc3;->b:Lwa3;

    .line 273
    .line 274
    new-instance v7, Lpw5;

    .line 275
    .line 276
    move-object/from16 v13, v32

    .line 277
    .line 278
    move-object/from16 v8, v33

    .line 279
    .line 280
    invoke-direct {v7, v13, v8}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    move-object/from16 v9, v42

    .line 284
    .line 285
    invoke-static {v9, v1, v2}, Ljc3;->e([BLjc3;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    new-instance v13, Lpw5;

    .line 290
    .line 291
    move-object/from16 v14, v43

    .line 292
    .line 293
    invoke-direct {v13, v14, v11}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    sget-object v11, Lhb3;->a:[B

    .line 297
    .line 298
    iget-object v11, v1, Ljc3;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 299
    .line 300
    invoke-static {v2, v11}, Lhb3;->m(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v11

    .line 304
    new-instance v14, Lpw5;

    .line 305
    .line 306
    move-object/from16 v15, v29

    .line 307
    .line 308
    invoke-direct {v14, v15, v11}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    const-string v11, "0"

    .line 312
    .line 313
    invoke-static {v9, v1, v11}, Ljc3;->e([BLjc3;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v11

    .line 317
    new-instance v15, Lpw5;

    .line 318
    .line 319
    invoke-direct {v15, v10, v11}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    new-instance v10, Lpw5;

    .line 323
    .line 324
    move-object/from16 v11, p2

    .line 325
    .line 326
    move-object/from16 v35, v13

    .line 327
    .line 328
    move-object/from16 v13, v28

    .line 329
    .line 330
    invoke-direct {v10, v13, v11}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    invoke-static {v9, v1, v12}, Ljc3;->e([BLjc3;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v12

    .line 337
    new-instance v13, Lpw5;

    .line 338
    .line 339
    invoke-direct {v13, v3, v12}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    iget-object v3, v1, Ljc3;->n:Lka;

    .line 343
    .line 344
    iget-object v12, v1, Ljc3;->f:Lmt3;

    .line 345
    .line 346
    move-object/from16 v39, v13

    .line 347
    .line 348
    move-object/from16 v13, v27

    .line 349
    .line 350
    invoke-interface {v12, v13}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v12

    .line 354
    check-cast v12, [B

    .line 355
    .line 356
    invoke-virtual {v3, v5, v12}, Lka;->e(Ljava/lang/String;[B)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    new-instance v5, Lpw5;

    .line 361
    .line 362
    move-object/from16 v12, v26

    .line 363
    .line 364
    invoke-direct {v5, v12, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    new-instance v3, Lpw5;

    .line 368
    .line 369
    move-object/from16 v12, v22

    .line 370
    .line 371
    move-object/from16 v13, v23

    .line 372
    .line 373
    invoke-direct {v3, v13, v12}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    move-object/from16 v41, v3

    .line 377
    .line 378
    move-object/from16 v40, v5

    .line 379
    .line 380
    move-object/from16 v34, v7

    .line 381
    .line 382
    move-object/from16 v38, v10

    .line 383
    .line 384
    move-object/from16 v36, v14

    .line 385
    .line 386
    move-object/from16 v37, v15

    .line 387
    .line 388
    filled-new-array/range {v34 .. v41}, [Lpw5;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-static {v3}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 393
    .line 394
    .line 395
    move-result-object v37

    .line 396
    iget-object v3, v1, Ljc3;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 397
    .line 398
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getApiKey()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v38

    .line 402
    iget-object v3, v1, Ljc3;->p:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 403
    .line 404
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    new-instance v5, Lah;

    .line 408
    .line 409
    const/16 v7, 0x18

    .line 410
    .line 411
    invoke-direct {v5, v1, v7}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    const-string v35, "POST"

    .line 421
    .line 422
    const-string v36, "/v3/upload/empty"

    .line 423
    .line 424
    move-object/from16 v39, v3

    .line 425
    .line 426
    move-object/from16 v40, v5

    .line 427
    .line 428
    move-object/from16 v34, v6

    .line 429
    .line 430
    invoke-virtual/range {v34 .. v40}, Lwa3;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;Lbt3;)Lqj4;

    .line 431
    .line 432
    .line 433
    iget-boolean v1, v1, Ljc3;->o:Z

    .line 434
    .line 435
    if-nez v1, :cond_0

    .line 436
    .line 437
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    move-object/from16 v6, p6

    .line 442
    .line 443
    invoke-virtual {v6, v1}, Llm;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-object/from16 v17, v0

    .line 447
    .line 448
    new-instance v0, Lnb3;

    .line 449
    .line 450
    const-string v15, ""

    .line 451
    .line 452
    const/16 v16, 0x2

    .line 453
    .line 454
    move-object/from16 v18, v4

    .line 455
    .line 456
    const-wide/16 v4, 0x0

    .line 457
    .line 458
    const-string v6, "application/octet-stream"

    .line 459
    .line 460
    const-wide/16 v12, 0x0

    .line 461
    .line 462
    const-string v14, ""

    .line 463
    .line 464
    move-wide/from16 v10, v30

    .line 465
    .line 466
    move-object/from16 v3, p2

    .line 467
    .line 468
    move-object v1, v8

    .line 469
    move-object v7, v9

    .line 470
    move-wide/from16 v8, v30

    .line 471
    .line 472
    invoke-direct/range {v0 .. v18}, Lnb3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[BJJJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    return-object v0

    .line 476
    :cond_0
    invoke-static/range {v18 .. v18}, Ll0;->e(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    return-object v16

    .line 480
    :cond_1
    invoke-static/range {v18 .. v18}, Ll0;->e(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    return-object v16

    .line 484
    :cond_2
    move-object/from16 v18, v0

    .line 485
    .line 486
    move-object/from16 v32, v4

    .line 487
    .line 488
    move-object/from16 v33, v6

    .line 489
    .line 490
    move-object v14, v13

    .line 491
    move-object/from16 v13, v27

    .line 492
    .line 493
    move-object/from16 v6, p6

    .line 494
    .line 495
    new-instance v0, Lvs0;

    .line 496
    .line 497
    invoke-direct {v0}, Lvs0;-><init>()V

    .line 498
    .line 499
    .line 500
    invoke-static/range {v25 .. v25}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    iget v4, v1, Ljc3;->h:I

    .line 505
    .line 506
    if-lez v4, :cond_c

    .line 507
    .line 508
    move-object/from16 v27, v13

    .line 509
    .line 510
    new-instance v13, Lkh6;

    .line 511
    .line 512
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 513
    .line 514
    .line 515
    move-object/from16 v25, v9

    .line 516
    .line 517
    new-instance v9, Llh6;

    .line 518
    .line 519
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 520
    .line 521
    .line 522
    move-object/from16 v30, v3

    .line 523
    .line 524
    const-string v3, ""

    .line 525
    .line 526
    iput-object v3, v9, Llh6;->a:Ljava/lang/Object;

    .line 527
    .line 528
    move-object/from16 v31, v11

    .line 529
    .line 530
    new-instance v11, Llh6;

    .line 531
    .line 532
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 533
    .line 534
    .line 535
    iput-object v3, v11, Llh6;->a:Ljava/lang/Object;

    .line 536
    .line 537
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    new-instance v4, Lw40;

    .line 542
    .line 543
    invoke-direct {v4}, Lw40;-><init>()V

    .line 544
    .line 545
    .line 546
    move-object/from16 v34, v5

    .line 547
    .line 548
    move-wide/from16 v5, v19

    .line 549
    .line 550
    :goto_0
    cmp-long v35, v19, p4

    .line 551
    .line 552
    if-gez v35, :cond_7

    .line 553
    .line 554
    move-object/from16 v35, v3

    .line 555
    .line 556
    :try_start_0
    iget-boolean v3, v1, Ljc3;->o:Z

    .line 557
    .line 558
    if-nez v3, :cond_6

    .line 559
    .line 560
    move-object/from16 v36, v4

    .line 561
    .line 562
    const-wide/32 v3, 0x100000

    .line 563
    .line 564
    .line 565
    move-wide/from16 v37, v5

    .line 566
    .line 567
    sub-long v5, p4, v19

    .line 568
    .line 569
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 570
    .line 571
    .line 572
    move-result-wide v3

    .line 573
    long-to-int v3, v3

    .line 574
    new-array v4, v3, [B

    .line 575
    .line 576
    move/from16 v5, v24

    .line 577
    .line 578
    :goto_1
    if-ge v5, v3, :cond_4

    .line 579
    .line 580
    sub-int v6, v3, v5

    .line 581
    .line 582
    move-object/from16 v39, v15

    .line 583
    .line 584
    move-object/from16 v15, p1

    .line 585
    .line 586
    invoke-virtual {v15, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    .line 587
    .line 588
    .line 589
    move-result v6

    .line 590
    if-ltz v6, :cond_3

    .line 591
    .line 592
    add-int/2addr v5, v6

    .line 593
    move-object/from16 v15, v39

    .line 594
    .line 595
    goto :goto_1

    .line 596
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 597
    .line 598
    const-string v2, "Filen upload source ended early"

    .line 599
    .line 600
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    throw v0

    .line 604
    :cond_4
    move-object/from16 v39, v15

    .line 605
    .line 606
    move-object/from16 v15, p1

    .line 607
    .line 608
    invoke-virtual {v0, v4}, Lvs0;->g([B)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 612
    .line 613
    .line 614
    move-object v5, v0

    .line 615
    new-instance v0, Lfc3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 616
    .line 617
    move v15, v3

    .line 618
    move-object v3, v7

    .line 619
    move-object/from16 v51, v8

    .line 620
    .line 621
    move-object/from16 v43, v14

    .line 622
    .line 623
    move-object/from16 v53, v18

    .line 624
    .line 625
    move-object/from16 v8, v21

    .line 626
    .line 627
    move-object/from16 v44, v22

    .line 628
    .line 629
    move-object/from16 v45, v23

    .line 630
    .line 631
    move-object/from16 v46, v26

    .line 632
    .line 633
    move-object/from16 v47, v28

    .line 634
    .line 635
    move-object/from16 v48, v29

    .line 636
    .line 637
    move-object/from16 v52, v30

    .line 638
    .line 639
    move-object/from16 v49, v32

    .line 640
    .line 641
    move-object/from16 v50, v34

    .line 642
    .line 643
    move-object/from16 v14, v36

    .line 644
    .line 645
    move-object/from16 v7, p2

    .line 646
    .line 647
    move-object/from16 v22, v2

    .line 648
    .line 649
    move-object v2, v4

    .line 650
    move-object/from16 v21, v5

    .line 651
    .line 652
    move-object/from16 v23, v10

    .line 653
    .line 654
    move-object/from16 v18, v12

    .line 655
    .line 656
    move-object/from16 v4, v33

    .line 657
    .line 658
    move-object/from16 v10, v35

    .line 659
    .line 660
    move-wide/from16 v5, v37

    .line 661
    .line 662
    move-object/from16 v12, p6

    .line 663
    .line 664
    :try_start_1
    invoke-direct/range {v0 .. v8}, Lfc3;-><init>(Ljc3;[B[BLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    move-object/from16 v61, v7

    .line 668
    .line 669
    move-object v7, v3

    .line 670
    move-object/from16 v3, v61

    .line 671
    .line 672
    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    invoke-virtual {v14, v0}, Lw40;->addLast(Ljava/lang/Object;)V

    .line 677
    .line 678
    .line 679
    move-wide/from16 v37, v5

    .line 680
    .line 681
    int-to-long v5, v15

    .line 682
    add-long v19, v19, v5

    .line 683
    .line 684
    const-wide/16 v5, 0x1

    .line 685
    .line 686
    add-long v5, v37, v5

    .line 687
    .line 688
    iget v0, v14, Lw40;->c:I

    .line 689
    .line 690
    iget v2, v1, Ljc3;->h:I

    .line 691
    .line 692
    if-lt v0, v2, :cond_5

    .line 693
    .line 694
    invoke-static {v14, v9, v11, v13, v12}, Ljc3;->d(Lw40;Llh6;Llh6;Lkh6;Llm;)V

    .line 695
    .line 696
    .line 697
    goto :goto_2

    .line 698
    :catchall_0
    move-exception v0

    .line 699
    goto/16 :goto_4

    .line 700
    .line 701
    :cond_5
    :goto_2
    move-object/from16 v33, v4

    .line 702
    .line 703
    move-object v3, v10

    .line 704
    move-object v4, v14

    .line 705
    move-object/from16 v12, v18

    .line 706
    .line 707
    move-object/from16 v0, v21

    .line 708
    .line 709
    move-object/from16 v2, v22

    .line 710
    .line 711
    move-object/from16 v10, v23

    .line 712
    .line 713
    move-object/from16 v15, v39

    .line 714
    .line 715
    move-object/from16 v14, v43

    .line 716
    .line 717
    move-object/from16 v22, v44

    .line 718
    .line 719
    move-object/from16 v23, v45

    .line 720
    .line 721
    move-object/from16 v26, v46

    .line 722
    .line 723
    move-object/from16 v28, v47

    .line 724
    .line 725
    move-object/from16 v29, v48

    .line 726
    .line 727
    move-object/from16 v32, v49

    .line 728
    .line 729
    move-object/from16 v34, v50

    .line 730
    .line 731
    move-object/from16 v30, v52

    .line 732
    .line 733
    move-object/from16 v18, v53

    .line 734
    .line 735
    move-object/from16 v21, v8

    .line 736
    .line 737
    move-object/from16 v8, v51

    .line 738
    .line 739
    goto/16 :goto_0

    .line 740
    .line 741
    :catchall_1
    move-exception v0

    .line 742
    move-object/from16 v10, v35

    .line 743
    .line 744
    goto/16 :goto_4

    .line 745
    .line 746
    :cond_6
    move-object/from16 v53, v18

    .line 747
    .line 748
    move-object/from16 v10, v35

    .line 749
    .line 750
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 751
    .line 752
    move-object/from16 v2, v53

    .line 753
    .line 754
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    throw v0

    .line 758
    :cond_7
    move-wide/from16 v37, v5

    .line 759
    .line 760
    move-object/from16 v51, v8

    .line 761
    .line 762
    move-object/from16 v43, v14

    .line 763
    .line 764
    move-object/from16 v39, v15

    .line 765
    .line 766
    move-object/from16 v8, v21

    .line 767
    .line 768
    move-object/from16 v44, v22

    .line 769
    .line 770
    move-object/from16 v45, v23

    .line 771
    .line 772
    move-object/from16 v46, v26

    .line 773
    .line 774
    move-object/from16 v47, v28

    .line 775
    .line 776
    move-object/from16 v48, v29

    .line 777
    .line 778
    move-object/from16 v52, v30

    .line 779
    .line 780
    move-object/from16 v49, v32

    .line 781
    .line 782
    move-object/from16 v50, v34

    .line 783
    .line 784
    move-object/from16 v21, v0

    .line 785
    .line 786
    move-object/from16 v22, v2

    .line 787
    .line 788
    move-object v14, v4

    .line 789
    move-object/from16 v23, v10

    .line 790
    .line 791
    move-object/from16 v2, v18

    .line 792
    .line 793
    move-object/from16 v4, v33

    .line 794
    .line 795
    move-object v10, v3

    .line 796
    move-object/from16 v18, v12

    .line 797
    .line 798
    move-object/from16 v3, p2

    .line 799
    .line 800
    move-object/from16 v12, p6

    .line 801
    .line 802
    :goto_3
    invoke-virtual {v14}, Lw40;->isEmpty()Z

    .line 803
    .line 804
    .line 805
    move-result v0

    .line 806
    if-nez v0, :cond_8

    .line 807
    .line 808
    invoke-static {v14, v9, v11, v13, v12}, Ljc3;->d(Lw40;Llh6;Llh6;Lkh6;Llm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    .line 810
    .line 811
    goto :goto_3

    .line 812
    :cond_8
    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 813
    .line 814
    .line 815
    iget-object v0, v1, Ljc3;->g:Lbt3;

    .line 816
    .line 817
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    check-cast v0, Ljava/lang/Number;

    .line 822
    .line 823
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 824
    .line 825
    .line 826
    move-result-wide v5

    .line 827
    invoke-virtual/range {v21 .. v21}, Lvs0;->c()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    invoke-virtual/range {v22 .. v22}, Ljava/security/MessageDigest;->digest()[B

    .line 832
    .line 833
    .line 834
    move-result-object v10

    .line 835
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 836
    .line 837
    .line 838
    invoke-static {v10}, Ljc3;->b([B)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v10

    .line 842
    iget-object v12, v1, Ljc3;->m:Lcom/google/gson/a;

    .line 843
    .line 844
    new-instance v13, Lpw5;

    .line 845
    .line 846
    move-object/from16 v14, p3

    .line 847
    .line 848
    move-object/from16 v15, v43

    .line 849
    .line 850
    invoke-direct {v13, v15, v14}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 851
    .line 852
    .line 853
    move-object/from16 v19, v2

    .line 854
    .line 855
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 856
    .line 857
    .line 858
    move-result-object v2

    .line 859
    move-wide/from16 v20, v5

    .line 860
    .line 861
    new-instance v5, Lpw5;

    .line 862
    .line 863
    move-object/from16 v6, v23

    .line 864
    .line 865
    invoke-direct {v5, v6, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 866
    .line 867
    .line 868
    new-instance v2, Lpw5;

    .line 869
    .line 870
    move-object/from16 v54, v5

    .line 871
    .line 872
    move-object/from16 v53, v13

    .line 873
    .line 874
    move-object/from16 v13, v18

    .line 875
    .line 876
    move-object/from16 v5, v52

    .line 877
    .line 878
    invoke-direct {v2, v5, v13}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 879
    .line 880
    .line 881
    move-object/from16 v55, v2

    .line 882
    .line 883
    new-instance v2, Ljava/lang/String;

    .line 884
    .line 885
    move-object/from16 v18, v11

    .line 886
    .line 887
    sget-object v11, Lf51;->a:Ljava/nio/charset/Charset;

    .line 888
    .line 889
    invoke-direct {v2, v7, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 890
    .line 891
    .line 892
    new-instance v11, Lpw5;

    .line 893
    .line 894
    move-object/from16 v22, v9

    .line 895
    .line 896
    move-object/from16 v9, v39

    .line 897
    .line 898
    invoke-direct {v11, v9, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 899
    .line 900
    .line 901
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    new-instance v9, Lpw5;

    .line 906
    .line 907
    move-object/from16 v56, v11

    .line 908
    .line 909
    move-object/from16 v11, v31

    .line 910
    .line 911
    invoke-direct {v9, v11, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 912
    .line 913
    .line 914
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 915
    .line 916
    .line 917
    move-result-object v2

    .line 918
    new-instance v11, Lpw5;

    .line 919
    .line 920
    move-object/from16 v57, v9

    .line 921
    .line 922
    move-object/from16 v9, v25

    .line 923
    .line 924
    invoke-direct {v11, v9, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 925
    .line 926
    .line 927
    new-instance v2, Lpw5;

    .line 928
    .line 929
    move-object/from16 v9, v51

    .line 930
    .line 931
    invoke-direct {v2, v9, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 932
    .line 933
    .line 934
    new-instance v9, Lpw5;

    .line 935
    .line 936
    move-object/from16 p1, v0

    .line 937
    .line 938
    move-object/from16 v0, v50

    .line 939
    .line 940
    invoke-direct {v9, v0, v10}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 941
    .line 942
    .line 943
    move-object/from16 v59, v2

    .line 944
    .line 945
    move-object/from16 v60, v9

    .line 946
    .line 947
    move-object/from16 v58, v11

    .line 948
    .line 949
    filled-new-array/range {v53 .. v60}, [Lpw5;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    invoke-static {v0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    invoke-virtual {v12, v0}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    new-instance v2, Lpw5;

    .line 962
    .line 963
    move-object/from16 v9, v49

    .line 964
    .line 965
    invoke-direct {v2, v9, v4}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 966
    .line 967
    .line 968
    sget-object v9, Lhb3;->a:[B

    .line 969
    .line 970
    iget-object v9, v1, Ljc3;->f:Lmt3;

    .line 971
    .line 972
    move-object/from16 v11, v27

    .line 973
    .line 974
    invoke-interface {v9, v11}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v9

    .line 978
    check-cast v9, [B

    .line 979
    .line 980
    invoke-static {v14, v7, v9}, Lhb3;->k(Ljava/lang/String;[B[B)Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v9

    .line 984
    new-instance v12, Lpw5;

    .line 985
    .line 986
    invoke-direct {v12, v15, v9}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 987
    .line 988
    .line 989
    iget-object v9, v1, Ljc3;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 990
    .line 991
    invoke-static {v14, v9}, Lhb3;->m(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v9

    .line 995
    new-instance v15, Lpw5;

    .line 996
    .line 997
    move-object/from16 v50, v2

    .line 998
    .line 999
    move-object/from16 v2, v48

    .line 1000
    .line 1001
    invoke-direct {v15, v2, v9}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1002
    .line 1003
    .line 1004
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v2

    .line 1008
    iget-object v9, v1, Ljc3;->f:Lmt3;

    .line 1009
    .line 1010
    invoke-interface {v9, v11}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v9

    .line 1014
    check-cast v9, [B

    .line 1015
    .line 1016
    invoke-static {v2, v7, v9}, Lhb3;->k(Ljava/lang/String;[B[B)Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v2

    .line 1020
    new-instance v9, Lpw5;

    .line 1021
    .line 1022
    invoke-direct {v9, v6, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1023
    .line 1024
    .line 1025
    new-instance v2, Lpw5;

    .line 1026
    .line 1027
    move-object/from16 v6, v47

    .line 1028
    .line 1029
    invoke-direct {v2, v6, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1030
    .line 1031
    .line 1032
    iget-object v6, v1, Ljc3;->f:Lmt3;

    .line 1033
    .line 1034
    invoke-interface {v6, v11}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v6

    .line 1038
    check-cast v6, [B

    .line 1039
    .line 1040
    invoke-static {v13, v7, v6}, Lhb3;->k(Ljava/lang/String;[B[B)Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v6

    .line 1044
    new-instance v13, Lpw5;

    .line 1045
    .line 1046
    invoke-direct {v13, v5, v6}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1047
    .line 1048
    .line 1049
    iget-object v5, v1, Ljc3;->n:Lka;

    .line 1050
    .line 1051
    iget-object v6, v1, Ljc3;->f:Lmt3;

    .line 1052
    .line 1053
    invoke-interface {v6, v11}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v6

    .line 1057
    check-cast v6, [B

    .line 1058
    .line 1059
    invoke-virtual {v5, v0, v6}, Lka;->e(Ljava/lang/String;[B)Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    new-instance v5, Lpw5;

    .line 1064
    .line 1065
    move-object/from16 v6, v46

    .line 1066
    .line 1067
    invoke-direct {v5, v6, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1068
    .line 1069
    .line 1070
    new-instance v0, Lpw5;

    .line 1071
    .line 1072
    move-object/from16 v6, v44

    .line 1073
    .line 1074
    move-object/from16 v11, v45

    .line 1075
    .line 1076
    invoke-direct {v0, v11, v6}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1077
    .line 1078
    .line 1079
    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v6

    .line 1083
    new-instance v11, Lpw5;

    .line 1084
    .line 1085
    move-object/from16 v57, v0

    .line 1086
    .line 1087
    const-string v0, "chunks"

    .line 1088
    .line 1089
    invoke-direct {v11, v0, v6}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1090
    .line 1091
    .line 1092
    iget-object v0, v1, Ljc3;->e:Lmt3;

    .line 1093
    .line 1094
    move-object/from16 v6, v17

    .line 1095
    .line 1096
    invoke-interface {v0, v6}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    new-instance v6, Lpw5;

    .line 1101
    .line 1102
    move-object/from16 v54, v2

    .line 1103
    .line 1104
    const-string v2, "rm"

    .line 1105
    .line 1106
    invoke-direct {v6, v2, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1107
    .line 1108
    .line 1109
    new-instance v0, Lpw5;

    .line 1110
    .line 1111
    const-string v2, "uploadKey"

    .line 1112
    .line 1113
    invoke-direct {v0, v2, v8}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1114
    .line 1115
    .line 1116
    move-object/from16 v60, v0

    .line 1117
    .line 1118
    move-object/from16 v56, v5

    .line 1119
    .line 1120
    move-object/from16 v59, v6

    .line 1121
    .line 1122
    move-object/from16 v53, v9

    .line 1123
    .line 1124
    move-object/from16 v58, v11

    .line 1125
    .line 1126
    move-object/from16 v51, v12

    .line 1127
    .line 1128
    move-object/from16 v55, v13

    .line 1129
    .line 1130
    move-object/from16 v52, v15

    .line 1131
    .line 1132
    filled-new-array/range {v50 .. v60}, [Lpw5;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v0

    .line 1136
    invoke-static {v0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v26

    .line 1140
    iget-boolean v0, v1, Ljc3;->o:Z

    .line 1141
    .line 1142
    if-nez v0, :cond_a

    .line 1143
    .line 1144
    iget-object v0, v1, Ljc3;->b:Lwa3;

    .line 1145
    .line 1146
    iget-object v2, v1, Ljc3;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 1147
    .line 1148
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getApiKey()Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v27

    .line 1152
    iget-object v2, v1, Ljc3;->p:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 1153
    .line 1154
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1155
    .line 1156
    .line 1157
    new-instance v5, Lak;

    .line 1158
    .line 1159
    const/16 v6, 0xf

    .line 1160
    .line 1161
    invoke-direct {v5, v1, v6}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1168
    .line 1169
    .line 1170
    const-string v24, "POST"

    .line 1171
    .line 1172
    const-string v25, "/v3/upload/done"

    .line 1173
    .line 1174
    move-object/from16 v23, v0

    .line 1175
    .line 1176
    move-object/from16 v28, v2

    .line 1177
    .line 1178
    move-object/from16 v29, v5

    .line 1179
    .line 1180
    invoke-virtual/range {v23 .. v29}, Lwa3;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;Lbt3;)Lqj4;

    .line 1181
    .line 1182
    .line 1183
    iget-boolean v0, v1, Ljc3;->o:Z

    .line 1184
    .line 1185
    if-nez v0, :cond_9

    .line 1186
    .line 1187
    new-instance v0, Lnb3;

    .line 1188
    .line 1189
    move-object/from16 v1, v22

    .line 1190
    .line 1191
    iget-object v1, v1, Llh6;->a:Ljava/lang/Object;

    .line 1192
    .line 1193
    check-cast v1, Ljava/lang/String;

    .line 1194
    .line 1195
    move-object/from16 v2, v18

    .line 1196
    .line 1197
    iget-object v2, v2, Llh6;->a:Ljava/lang/Object;

    .line 1198
    .line 1199
    move-object v15, v2

    .line 1200
    check-cast v15, Ljava/lang/String;

    .line 1201
    .line 1202
    const/16 v16, 0x2

    .line 1203
    .line 1204
    const-string v6, "application/octet-stream"

    .line 1205
    .line 1206
    move-object/from16 v18, v10

    .line 1207
    .line 1208
    move-wide/from16 v10, v20

    .line 1209
    .line 1210
    move-object/from16 v17, p1

    .line 1211
    .line 1212
    move-object v2, v14

    .line 1213
    move-wide/from16 v8, v20

    .line 1214
    .line 1215
    move-wide/from16 v12, v37

    .line 1216
    .line 1217
    move-object v14, v1

    .line 1218
    move-object v1, v4

    .line 1219
    move-wide/from16 v4, p4

    .line 1220
    .line 1221
    invoke-direct/range {v0 .. v18}, Lnb3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[BJJJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    return-object v0

    .line 1225
    :cond_9
    invoke-static/range {v19 .. v19}, Ll0;->e(Ljava/lang/String;)V

    .line 1226
    .line 1227
    .line 1228
    return-object v16

    .line 1229
    :cond_a
    invoke-static/range {v19 .. v19}, Ll0;->e(Ljava/lang/String;)V

    .line 1230
    .line 1231
    .line 1232
    return-object v16

    .line 1233
    :goto_4
    :try_start_2
    iget-object v1, v1, Ljc3;->p:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 1234
    .line 1235
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v1

    .line 1242
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1243
    .line 1244
    .line 1245
    move-result v2

    .line 1246
    if-eqz v2, :cond_b

    .line 1247
    .line 1248
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v2

    .line 1252
    check-cast v2, Lokhttp3/Call;

    .line 1253
    .line 1254
    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    .line 1255
    .line 1256
    .line 1257
    goto :goto_5

    .line 1258
    :catchall_2
    move-exception v0

    .line 1259
    goto :goto_6

    .line 1260
    :cond_b
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1261
    :goto_6
    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1262
    .line 1263
    .line 1264
    throw v0

    .line 1265
    :cond_c
    const-string v0, "Filen parallel upload count must be positive"

    .line 1266
    .line 1267
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 1268
    .line 1269
    .line 1270
    return-object v16

    .line 1271
    :cond_d
    const/16 v16, 0x0

    .line 1272
    .line 1273
    const-string v0, "Filen chunk attempt count must be positive"

    .line 1274
    .line 1275
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    return-object v16

    .line 1279
    :cond_e
    const/16 v16, 0x0

    .line 1280
    .line 1281
    const-string v0, "Filen ingest URL list cannot be empty"

    .line 1282
    .line 1283
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 1284
    .line 1285
    .line 1286
    return-object v16

    .line 1287
    :cond_f
    const/16 v16, 0x0

    .line 1288
    .line 1289
    const-string v0, "Filen upload length cannot be negative"

    .line 1290
    .line 1291
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 1292
    .line 1293
    .line 1294
    return-object v16
.end method
