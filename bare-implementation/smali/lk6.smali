.class public final Llk6;
.super Lokhttp3/RequestBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic b:Lmt3;

.field public final synthetic c:J

.field public final synthetic d:Lc62;


# direct methods
.method public constructor <init>(JLc62;Lmt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Llk6;->b:Lmt3;

    .line 5
    .line 6
    iput-wide p1, p0, Llk6;->c:J

    .line 7
    .line 8
    iput-object p3, p0, Llk6;->d:Lc62;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Llk6;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()Lokhttp3/MediaType;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final d(Lyw0;)V
    .locals 9

    .line 1
    iget-object v0, p0, Llk6;->d:Lc62;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc62;->a()Ljava/io/BufferedInputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Llk6;->b:Lmt3;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-interface {p0, v4}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {v0}, Ly13;->G(Ljava/io/InputStream;)Lrc4;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v4, Lnw0;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    const-wide/32 v5, 0x40000

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v4, v5, v6}, Lrc4;->H(Lnw0;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    const-wide/16 v7, -0x1

    .line 38
    .line 39
    cmp-long v7, v5, v7

    .line 40
    .line 41
    if-eqz v7, :cond_2

    .line 42
    .line 43
    invoke-interface {p1, v4, v5, v6}, Lnh7;->f0(Lnw0;J)V

    .line 44
    .line 45
    .line 46
    add-long/2addr v2, v5

    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {p0, v5}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    sget-object p0, Lmk6;->a:Ll15;

    .line 60
    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v4, "loaded: "

    .line 67
    .line 68
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p0, p1}, Ll15;->k(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Lf13;->a(Ljava/io/Closeable;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :goto_1
    invoke-static {v1}, Lf13;->a(Ljava/io/Closeable;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 92
    .line 93
    .line 94
    throw p0
.end method
