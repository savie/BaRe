.class public final Li08;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljh1;


# static fields
.field public static final e:Lokhttp3/OkHttpClient;


# instance fields
.field public final a:Lzz7;

.field public final b:Ldd1;

.field public c:Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

.field public final d:Lh08;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x1e

    .line 7
    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2, v3}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, v0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 18
    .line 19
    new-instance v1, Lokhttp3/OkHttpClient;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Li08;->e:Lokhttp3/OkHttpClient;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lzz7;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li08;->a:Lzz7;

    .line 5
    .line 6
    sget-object v0, Ldd1;->TeraBox:Ldd1;

    .line 7
    .line 8
    iput-object v0, p0, Li08;->b:Ldd1;

    .line 9
    .line 10
    new-instance v1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 11
    .line 12
    const/16 v11, 0xff

    .line 13
    .line 14
    const/4 v12, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v10, 0x0

    .line 24
    invoke-direct/range {v1 .. v12}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Li08;->c:Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 28
    .line 29
    new-instance v0, Lh08;

    .line 30
    .line 31
    new-instance v1, Lxq4;

    .line 32
    .line 33
    const/16 v2, 0x10

    .line 34
    .line 35
    invoke-direct {v1, p0, v2}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Llm;

    .line 39
    .line 40
    const/16 v3, 0x12

    .line 41
    .line 42
    invoke-direct {v2, p0, v3}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    const/16 v3, 0x18

    .line 46
    .line 47
    invoke-direct {v0, p1, v1, v2, v3}, Lh08;-><init>(Lzz7;Lxq4;Llm;I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Li08;->d:Lh08;

    .line 51
    .line 52
    return-void
.end method

.method public static t(Lc62;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc62;->a()Ljava/io/BufferedInputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    invoke-static {p1, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lo08;

    .line 31
    .line 32
    iget-wide v1, v1, Lo08;->c:J

    .line 33
    .line 34
    invoke-static {p0, v1, v2}, Li08;->x(Ljava/io/BufferedInputStream;J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :catchall_1
    move-exception v0

    .line 50
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public static x(Ljava/io/BufferedInputStream;J)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "MD5"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x40000

    .line 8
    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    :goto_0
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v2, p1, v2

    .line 14
    .line 15
    if-lez v2, :cond_1

    .line 16
    .line 17
    const-wide/32 v2, 0x40000

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    long-to-int v2, v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v4, -0x1

    .line 31
    if-eq v2, v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 34
    .line 35
    .line 36
    int-to-long v2, v2

    .line 37
    sub-long/2addr p1, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 40
    .line 41
    const-string p1, "Unexpected EOF while hashing TeraBox upload chunk."

    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance p1, Lou;

    .line 55
    .line 56
    const/16 p2, 0xe

    .line 57
    .line 58
    invoke-direct {p1, p2}, Lou;-><init>(I)V

    .line 59
    .line 60
    .line 61
    const/16 p2, 0x1e

    .line 62
    .line 63
    const-string v0, ""

    .line 64
    .line 65
    invoke-static {p0, v0, p1, p2}, Lx50;->t0([BLjava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static y(Ljava/lang/String;Lt15;)Ltc4;
    .locals 9

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-wide v1, p1, Lt15;->a:J

    .line 12
    .line 13
    iget-wide p0, p1, Lt15;->b:J

    .line 14
    .line 15
    const-string v3, "bytes="

    .line 16
    .line 17
    const-string v4, "-"

    .line 18
    .line 19
    invoke-static {v3, v4, v1, v2}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget-object p1, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 31
    .line 32
    const-string v1, "Range"

    .line 33
    .line 34
    invoke-virtual {p1, v1, p0}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance p0, Lokhttp3/Request;

    .line 38
    .line 39
    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Li08;->e:Lokhttp3/OkHttpClient;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v0, Lokhttp3/internal/connection/RealCall;

    .line 48
    .line 49
    invoke-direct {v0, p1, p0}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-boolean p0, v3, Lokhttp3/Response;->H:Z

    .line 57
    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    new-instance p0, Ltc4;

    .line 61
    .line 62
    iget-object p1, v3, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 63
    .line 64
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v1, Lji1;

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v8, 0x4

    .line 72
    const/4 v2, 0x0

    .line 73
    const-class v4, Lokhttp3/Response;

    .line 74
    .line 75
    const-string v5, "close"

    .line 76
    .line 77
    const-string v6, "close()V"

    .line 78
    .line 79
    invoke-direct/range {v1 .. v8}, Lji1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x4

    .line 83
    invoke-direct {p0, p1, v1, v0}, Ltc4;-><init>(Ljava/io/InputStream;Lbt3;I)V

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_1
    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    .line 88
    .line 89
    .line 90
    iget p0, v3, Lokhttp3/Response;->d:I

    .line 91
    .line 92
    const-string p1, "Error while getting response from url. Response code: "

    .line 93
    .line 94
    invoke-static {p0, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/4 p0, 0x0

    .line 102
    return-object p0
.end method


# virtual methods
.method public final A(La08;)Lpg1;
    .locals 5

    .line 1
    iget-object p0, p1, La08;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p1, La08;->c:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "Swift Backup"

    .line 6
    .line 7
    invoke-static {v1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-static {v2}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v4, "/From: Other Applications/"

    .line 28
    .line 29
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "-"

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {p0, v1}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const/4 v1, 0x1

    .line 52
    new-array v1, v1, [C

    .line 53
    .line 54
    const/16 v2, 0x2f

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    aput-char v2, v1, v3

    .line 58
    .line 59
    invoke-static {p0, v1}, Lnq7;->L0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    move-object p0, v0

    .line 70
    :cond_0
    new-instance v1, Lpg1;

    .line 71
    .line 72
    invoke-direct {v1, v0, p0}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-wide v2, p1, La08;->d:J

    .line 76
    .line 77
    iput-wide v2, v1, Lpg1;->c:J

    .line 78
    .line 79
    iget-wide v2, p1, La08;->f:J

    .line 80
    .line 81
    iput-wide v2, v1, Lpg1;->d:J

    .line 82
    .line 83
    iget-wide v2, p1, La08;->g:J

    .line 84
    .line 85
    iput-wide v2, v1, Lpg1;->e:J

    .line 86
    .line 87
    iget-object v0, p1, La08;->h:Ljava/lang/String;

    .line 88
    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move-object p0, v0

    .line 93
    :goto_0
    iput-object p0, v1, Lpg1;->f:Ljava/lang/String;

    .line 94
    .line 95
    iget-boolean p0, p1, La08;->e:Z

    .line 96
    .line 97
    iput-boolean p0, v1, Lpg1;->g:Z

    .line 98
    .line 99
    return-object v1
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/String;Lt15;)Ltc4;
    .locals 6

    .line 1
    const-string v0, "TeraBox file metadata did not contain dlink for path="

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Li08;->d:Lh08;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Li08;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v1, v2, v3}, Lh08;->h(Ljava/lang/String;Z)La08;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v1, La08;->i:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v1, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Li08;->c:Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getAccessToken()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "access_tokens"

    .line 54
    .line 55
    invoke-virtual {p1, v0, p0}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    iget-object p0, p0, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {p0, p2}, Li08;->y(Ljava/lang/String;Lt15;)Ltc4;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    move-object p0, v0

    .line 87
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 88
    .line 89
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string p2, "get: "

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const/4 v4, 0x4

    .line 100
    const/4 v5, 0x0

    .line 101
    const-string v1, "TeraBoxService"

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method public final d(Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
    .locals 7

    .line 1
    iget-object p1, p0, Li08;->d:Lh08;

    .line 2
    .line 3
    iget-object v0, p0, Li08;->a:Lzz7;

    .line 4
    .line 5
    invoke-virtual {v0}, Lzz7;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Li08;->c:Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getAccessToken()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Li08;->c:Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getRefreshToken()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    goto :goto_5

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :try_start_0
    invoke-virtual {p1, p0}, Lh08;->i(Z)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;->INSTANCE:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_1
    new-instance p0, Le7;

    .line 47
    .line 48
    const/16 v0, 0x19

    .line 49
    .line 50
    invoke-direct {p0, p1, v0}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lh08;->f(Lmt3;)Lfl4;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string p1, "uk"

    .line 58
    .line 59
    invoke-static {p0, p1}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    const-string p1, "uname"

    .line 63
    .line 64
    invoke-static {p0, p1}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;

    .line 68
    .line 69
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;-><init>()V
    :try_end_0
    .catch Lyz7; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :goto_0
    move-object v3, p0

    .line 74
    goto :goto_2

    .line 75
    :goto_1
    move-object v3, p0

    .line 76
    goto :goto_3

    .line 77
    :catch_0
    move-exception v0

    .line 78
    move-object p0, v0

    .line 79
    goto :goto_0

    .line 80
    :goto_2
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 81
    .line 82
    const/16 v5, 0x8

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    const-string v1, "TeraBoxService"

    .line 86
    .line 87
    const-string v2, "login"

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 94
    .line 95
    invoke-direct {p0, v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;-><init>(Ljava/lang/Exception;)V

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :catch_1
    move-exception v0

    .line 100
    move-object p0, v0

    .line 101
    goto :goto_1

    .line 102
    :goto_3
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 103
    .line 104
    const/16 v5, 0x8

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    const-string v1, "TeraBoxService"

    .line 108
    .line 109
    const-string v2, "login"

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Lyz7;->a()Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_2

    .line 120
    .line 121
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;->INSTANCE:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_2
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 125
    .line 126
    invoke-direct {p0, v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;-><init>(Ljava/lang/Exception;)V

    .line 127
    .line 128
    .line 129
    :goto_4
    return-object p0

    .line 130
    :cond_3
    :goto_5
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;->INSTANCE:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;

    .line 131
    .line 132
    return-object p0
.end method

.method public final e(Lc62;Ljava/lang/String;JLcz;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    iget-object v3, v0, Li08;->d:Lh08;

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    :try_start_0
    new-array v5, v5, [C

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/16 v7, 0x2f

    .line 16
    .line 17
    aput-char v7, v5, v6

    .line 18
    .line 19
    invoke-static {v1, v5}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-static {v7, v5, v4}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-lez v7, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v5}, Li08;->u(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Li08;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static/range {p3 .. p4}, Lsl4;->B(J)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object/from16 v7, p1

    .line 45
    .line 46
    invoke-static {v7, v1}, Li08;->t(Lc62;Ljava/util/List;)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    sget-object v8, Lw14;->a:Lgv7;

    .line 51
    .line 52
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v8, v10}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v8, Le08;

    .line 64
    .line 65
    invoke-direct {v8, v6, v3, v5, v11}, Le08;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v8}, Lh08;->f(Lmt3;)Lfl4;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    const-string v9, "path"

    .line 73
    .line 74
    invoke-static {v8, v9}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    const-string v9, "uploadid"

    .line 78
    .line 79
    invoke-static {v8, v9}, Lbb9;->J(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    if-nez v8, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move-object v4, v8

    .line 87
    :goto_0
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v8, :cond_3

    .line 92
    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v2, v0}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void

    .line 103
    :cond_3
    new-instance v12, Lkh6;

    .line 104
    .line 105
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7}, Lc62;->a()Ljava/io/BufferedInputStream;

    .line 109
    .line 110
    .line 111
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    move v13, v6

    .line 117
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_7

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    add-int/lit8 v14, v13, 0x1

    .line 128
    .line 129
    if-ltz v13, :cond_6

    .line 130
    .line 131
    move-object v7, v6

    .line 132
    check-cast v7, Lo08;

    .line 133
    .line 134
    move-object v6, v4

    .line 135
    iget-object v4, v0, Li08;->d:Lh08;

    .line 136
    .line 137
    new-instance v9, Lmm;

    .line 138
    .line 139
    const/4 v15, 0x5

    .line 140
    invoke-direct {v9, v15, v12, v2}, Lmm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {v4 .. v9}, Lh08;->m(Ljava/lang/String;Ljava/lang/String;Lo08;Ljava/io/BufferedInputStream;Lmm;)Lp08;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    iget-object v4, v4, Lp08;->a:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-nez v9, :cond_5

    .line 160
    .line 161
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-eqz v9, :cond_4

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 169
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v2, "TeraBox chunk MD5 mismatch at index="

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v2, " expected="

    .line 184
    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v2, " actual="

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v0

    .line 207
    :catchall_0
    move-exception v0

    .line 208
    move-object v1, v0

    .line 209
    goto :goto_3

    .line 210
    :cond_5
    :goto_2
    move-object v4, v6

    .line 211
    move v13, v14

    .line 212
    goto :goto_1

    .line 213
    :cond_6
    invoke-static {}, Lfl1;->F0()V

    .line 214
    .line 215
    .line 216
    const/4 v0, 0x0

    .line 217
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :cond_7
    move-object v6, v4

    .line 219
    :try_start_2
    invoke-interface {v8}, Ljava/io/Closeable;->close()V

    .line 220
    .line 221
    .line 222
    new-instance v0, Lb08;

    .line 223
    .line 224
    move-object v1, v3

    .line 225
    move-object v2, v5

    .line 226
    move-object v5, v6

    .line 227
    move-object v6, v11

    .line 228
    move-wide/from16 v3, p3

    .line 229
    .line 230
    invoke-direct/range {v0 .. v6}, Lb08;-><init>(Lh08;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v0}, Lh08;->f(Lmt3;)Lfl4;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v0}, Lh08;->k(Lfl4;)La08;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :goto_3
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    :catchall_1
    move-exception v0

    .line 243
    :try_start_4
    invoke-static {v8, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 244
    .line 245
    .line 246
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 249
    .line 250
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    const-string v3, "put: "

    .line 255
    .line 256
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    const/4 v3, 0x4

    .line 261
    const/4 v4, 0x0

    .line 262
    const-string v5, "TeraBoxService"

    .line 263
    .line 264
    const/4 v6, 0x0

    .line 265
    move-object/from16 p0, v1

    .line 266
    .line 267
    move-object/from16 p2, v2

    .line 268
    .line 269
    move/from16 p4, v3

    .line 270
    .line 271
    move-object/from16 p5, v4

    .line 272
    .line 273
    move-object/from16 p1, v5

    .line 274
    .line 275
    move-object/from16 p3, v6

    .line 276
    .line 277
    invoke-static/range {p0 .. p5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    throw v0
.end method

.method public final f(Ljava/lang/String;)Lpg1;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v0, p0, Li08;->d:Lh08;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Li08;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v2, v3}, Lh08;->h(Ljava/lang/String;Z)La08;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Li08;->A(La08;)Lpg1;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Lyz7; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :cond_0
    return-object v1

    .line 24
    :goto_0
    move-object v5, p0

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    move-object p0, v0

    .line 28
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 29
    .line 30
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v0, "getFile: Error while getting file at path="

    .line 35
    .line 36
    const-string v3, ": "

    .line 37
    .line 38
    invoke-static {v0, p1, v3, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v6, 0x4

    .line 43
    const/4 v7, 0x0

    .line 44
    const-string v3, "TeraBoxService"

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catch_1
    move-exception v0

    .line 52
    move-object p0, v0

    .line 53
    goto :goto_0

    .line 54
    :goto_1
    invoke-virtual {v5}, Lyz7;->b()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_1

    .line 59
    .line 60
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 61
    .line 62
    const/16 v7, 0x8

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    const-string v3, "TeraBoxService"

    .line 66
    .line 67
    const-string v4, "getFile"

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_2
    return-object v1
.end method

.method public final g()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Li08;->b:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final declared-synchronized h(Ljava/lang/String;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    const-string v2, "createDirectory"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {p0, p1}, Li08;->u(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    move-object p1, v0

    .line 13
    goto :goto_1

    .line 14
    :catch_0
    move-exception v0

    .line 15
    move-object v3, v0

    .line 16
    :try_start_2
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 17
    .line 18
    const-string v1, "TeraBoxService"

    .line 19
    .line 20
    const/16 v5, 0x8

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    .line 27
    :goto_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    throw p1
.end method

.method public final i()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->Companion:Lm08;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Li08;->b:Ldd1;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lm08;->a(Ldd1;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    const-string p0, "prefs"

    .line 25
    .line 26
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v2, "delete"

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Li08;->d:Lh08;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Li08;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Lh08;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lyz7; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    move-object p0, v0

    .line 18
    move-object v3, p0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v0

    .line 21
    move-object p0, v0

    .line 22
    move-object v3, p0

    .line 23
    goto :goto_1

    .line 24
    :goto_0
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 25
    .line 26
    const/16 v5, 0x8

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    const-string v1, "TeraBoxService"

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :goto_1
    invoke-virtual {v3}, Lyz7;->b()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 43
    .line 44
    const/16 v5, 0x8

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    const-string v1, "TeraBoxService"

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_2
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->Companion:Lm08;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li08;->b:Ldd1;

    .line 7
    .line 8
    invoke-static {v0}, Lm08;->b(Ldd1;)Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Li08;->c:Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getAccessToken()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getRefreshToken()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public final l()Lni1;
    .locals 7

    .line 1
    :try_start_0
    iget-object p0, p0, Li08;->d:Lh08;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lhj;

    .line 7
    .line 8
    const/16 v1, 0x1c

    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lh08;->f(Lmt3;)Lfl4;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "used"

    .line 18
    .line 19
    invoke-static {p0, v0}, Lbb9;->z(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "total"

    .line 24
    .line 25
    invoke-static {p0, v1}, Lbb9;->z(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance v1, Lni1;

    .line 30
    .line 31
    invoke-direct {v1, v0, p0}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :goto_0
    move-object v3, p0

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    move-object p0, v0

    .line 39
    goto :goto_0

    .line 40
    :goto_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 41
    .line 42
    const/16 v5, 0x8

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    const-string v1, "TeraBoxService"

    .line 46
    .line 47
    const-string v2, "getQuota"

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance p0, Lni1;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, v0}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 57
    .line 58
    .line 59
    return-object p0
.end method

.method public final m()Z
    .locals 0

    .line 1
    iget-object p0, p0, Li08;->c:Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "TeraBoxService"

    .line 2
    .line 3
    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lih1;
    .locals 9

    .line 1
    const-string v1, "getMetadataPathExistence: Unable to check metadata path="

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Li08;->d:Lh08;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Li08;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v2, v3}, Lh08;->h(Ljava/lang/String;Z)La08;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Li08;->A(La08;)Lpg1;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    if-eqz p0, :cond_1

    .line 23
    .line 24
    sget-object p0, Lih1;->Exists:Lih1;

    .line 25
    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    move-object p0, v0

    .line 29
    move-object v5, p0

    .line 30
    goto :goto_1

    .line 31
    :catch_1
    move-exception v0

    .line 32
    move-object p0, v0

    .line 33
    move-object v5, p0

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    sget-object p0, Lih1;->Missing:Lih1;
    :try_end_0
    .catch Lyz7; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    return-object p0

    .line 38
    :goto_1
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/16 v7, 0x8

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    const-string v3, "TeraBoxService"

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p0, Lih1;->Unknown:Lih1;

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :goto_2
    invoke-virtual {v5}, Lyz7;->b()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    sget-object p0, Lih1;->Missing:Lih1;

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_2
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const/16 v7, 0x8

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    const-string v3, "TeraBoxService"

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    sget-object p0, Lih1;->Unknown:Lih1;

    .line 81
    .line 82
    :goto_3
    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Li08;->c:Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getEmailAddressValue()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final q(Ljava/lang/String;)Lhh1;
    .locals 11

    .line 1
    sget-object v1, Lfh1;->a:Lfh1;

    .line 2
    .line 3
    const-string v2, "listMetadataDirectory: "

    .line 4
    .line 5
    const-string v3, "TeraBoxService"

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v4, "listMetadataDirectory"

    .line 11
    .line 12
    :try_start_0
    new-instance v0, Lgh1;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Li08;->w(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Lgh1;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Lyz7; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    move-object p0, v0

    .line 24
    goto :goto_0

    .line 25
    :catch_1
    move-exception v0

    .line 26
    move-object p0, v0

    .line 27
    goto :goto_1

    .line 28
    :goto_0
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 32
    .line 33
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const/4 v9, 0x4

    .line 42
    const/4 v10, 0x0

    .line 43
    const-string v6, "TeraBoxService"

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :goto_1
    invoke-virtual {p0}, Lyz7;->b()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    new-instance v1, Lgh1;

    .line 57
    .line 58
    sget-object p0, Lov2;->a:Lov2;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lgh1;-><init>(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_0
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    move-object p1, v2

    .line 68
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 69
    .line 70
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const/4 v6, 0x4

    .line 79
    const/4 v7, 0x0

    .line 80
    const-string v3, "TeraBoxService"

    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :goto_2
    return-object v1
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Li08;->f(Ljava/lang/String;)Lpg1;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

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

.method public final s(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Li08;->w(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    move-object p0, v0

    .line 11
    instance-of p1, p0, Lyz7;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    check-cast v0, Lyz7;

    .line 17
    .line 18
    invoke-virtual {v0}, Lyz7;->b()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    :cond_0
    const-string p1, "TeraBoxService"

    .line 25
    .line 26
    const-string v0, "list"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 32
    .line 33
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "list: "

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v5, 0x4

    .line 44
    const/4 v6, 0x0

    .line 45
    const-string v2, "TeraBoxService"

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    sget-object p0, Lov2;->a:Lov2;

    .line 52
    .line 53
    return-object p0
.end method

.method public final declared-synchronized u(Ljava/lang/String;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    new-array v1, v0, [C

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x2f

    .line 7
    .line 8
    aput-char v3, v1, v2

    .line 9
    .line 10
    invoke-static {p1, v1}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_8

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Li08;->v(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    const-string v1, ""

    .line 29
    .line 30
    new-array v0, v0, [C

    .line 31
    .line 32
    aput-char v3, v0, v2

    .line 33
    .line 34
    const/4 v2, 0x6

    .line 35
    invoke-static {p1, v0, v2}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    move-object v3, v2

    .line 59
    check-cast v3, Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object p1, v0

    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/lang/String;

    .line 90
    .line 91
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    move-object v3, v2

    .line 119
    check-cast v3, Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-nez v3, :cond_4

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    const-string v2, "/"

    .line 132
    .line 133
    const/4 v5, 0x0

    .line 134
    const/16 v6, 0x3e

    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    const/4 v4, 0x0

    .line 138
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p0, v1}, Li08;->v(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_3

    .line 147
    .line 148
    invoke-virtual {p0, v1}, Li08;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v2, "TeraBoxService"

    .line 153
    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v4, "createDirImpl: Creating directory="

    .line 160
    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .line 173
    .line 174
    :try_start_1
    iget-object v2, p0, Li08;->d:Lh08;

    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    new-instance v3, Lbz;

    .line 180
    .line 181
    const/16 v4, 0x8

    .line 182
    .line 183
    invoke-direct {v3, v4, v2, v0}, Lbz;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v3}, Lh08;->f(Lmt3;)Lfl4;
    :try_end_1
    .catch Lyz7; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    :try_start_2
    iget-object v2, v0, Lyz7;->b:Ljava/lang/Integer;

    .line 192
    .line 193
    if-eqz v2, :cond_6

    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    const/4 v3, -0x8

    .line 200
    if-ne v2, v3, :cond_6

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_6
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :cond_7
    monitor-exit p0

    .line 205
    return-void

    .line 206
    :cond_8
    :goto_3
    monitor-exit p0

    .line 207
    return-void

    .line 208
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    throw p1
.end method

.method public final v(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Li08;->d:Lh08;

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Li08;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {v1, p0, v0}, Lh08;->h(Ljava/lang/String;Z)La08;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    iget-boolean p0, p0, La08;->e:Z
    :try_end_0
    .catch Lyz7; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    if-ne p0, p1, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    return v0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v0

    .line 24
    :goto_0
    invoke-virtual {p0}, Lyz7;->b()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    return v0

    .line 31
    :cond_2
    throw p0
.end method

.method public final w(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Li08;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    move v2, v1

    .line 12
    :cond_0
    iget-object v3, p0, Li08;->d:Lh08;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v4, Lc08;

    .line 18
    .line 19
    invoke-direct {v4, v3, p1, v2}, Lc08;-><init>(Lh08;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Lh08;->f(Lmt3;)Lfl4;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "info"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz v4, :cond_4

    .line 34
    .line 35
    invoke-virtual {v4}, Lqj4;->g()Lxi4;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    new-instance v6, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v4, v4, Lxi4;->a:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_3

    .line 55
    .line 56
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, Lqj4;

    .line 61
    .line 62
    invoke-static {v7}, Lbb9;->k(Lqj4;)Lfl4;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    if-eqz v7, :cond_2

    .line 67
    .line 68
    invoke-static {v7}, Lh08;->k(Lfl4;)La08;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move-object v7, v5

    .line 74
    :goto_1
    if-eqz v7, :cond_1

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move-object v5, v6

    .line 81
    :cond_4
    if-nez v5, :cond_5

    .line 82
    .line 83
    sget-object v5, Lov2;->a:Lov2;

    .line 84
    .line 85
    :cond_5
    const-string v4, "has_more"

    .line 86
    .line 87
    invoke-static {v3, v4}, Lbb9;->w(Lfl4;Ljava/lang/String;)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-nez v3, :cond_6

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-ne v3, v1, :cond_7

    .line 99
    .line 100
    move v3, v1

    .line 101
    goto :goto_3

    .line 102
    :cond_7
    :goto_2
    const/4 v3, 0x0

    .line 103
    :goto_3
    invoke-static {v5, v0}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    if-nez v3, :cond_0

    .line 109
    .line 110
    new-instance p1, Ljava/util/ArrayList;

    .line 111
    .line 112
    const/16 v1, 0xa

    .line 113
    .line 114
    invoke-static {v0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_8

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, La08;

    .line 136
    .line 137
    invoke-virtual {p0, v1}, Li08;->A(La08;)Lpg1;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_8
    return-object p1
.end method

.method public final z(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    new-array v0, p0, [C

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x2f

    .line 9
    .line 10
    aput-char v2, v0, v1

    .line 11
    .line 12
    invoke-static {p1, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-array p0, p0, [C

    .line 17
    .line 18
    aput-char v2, p0, v1

    .line 19
    .line 20
    const/4 v1, 0x6

    .line 21
    invoke-static {v0, p0, v1}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    const-string v2, ".."

    .line 49
    .line 50
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string p0, "TeraBox path cannot contain traversal segments: "

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    return-object p0

    .line 68
    :cond_2
    :goto_1
    const-string p0, "Swift Backup"

    .line 69
    .line 70
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string p1, ""

    .line 79
    .line 80
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string v1, "/From: Other Applications/"

    .line 89
    .line 90
    const-string v2, "-"

    .line 91
    .line 92
    invoke-static {v1, p0, v2, p1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    move-object v1, p1

    .line 124
    check-cast v1, Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_3

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    const/4 v4, 0x0

    .line 137
    const/16 v5, 0x3e

    .line 138
    .line 139
    const-string v1, "/"

    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    const/4 v3, 0x0

    .line 143
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0
.end method
