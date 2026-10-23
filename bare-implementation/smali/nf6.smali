.class public final Lnf6;
.super Lokhttp3/RequestBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic b:Le11;

.field public final synthetic c:Lnv5;


# direct methods
.method public constructor <init>(Lcom/pcloud/sdk/internal/a;Le11;Lnv5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lnf6;->b:Le11;

    .line 5
    .line 6
    iput-object p3, p0, Lnf6;->c:Lnv5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 1
    iget-object p0, p0, Lnf6;->c:Lnv5;

    .line 2
    .line 3
    iget-wide v0, p0, Lnv5;->b:J

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p0, v0, v2

    .line 8
    .line 9
    if-ltz p0, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-string p0, "Content length must be >= 0."

    .line 13
    .line 14
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-wide v2
.end method

.method public final b()Lokhttp3/MediaType;
    .locals 1

    .line 1
    const-string p0, "multipart/form-data"

    .line 2
    .line 3
    sget-object v0, Lokhttp3/MediaType;->d:Lai6;

    .line 4
    .line 5
    :try_start_0
    invoke-static {p0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final d(Lyw0;)V
    .locals 5

    .line 1
    new-instance v0, Lc86;

    .line 2
    .line 3
    iget-object v1, p0, Lnf6;->c:Lnv5;

    .line 4
    .line 5
    iget-wide v2, v1, Lnv5;->b:J

    .line 6
    .line 7
    iget-object p0, p0, Lnf6;->b:Le11;

    .line 8
    .line 9
    invoke-direct {v0, p1, v2, v3, p0}, Lc86;-><init>(Lyw0;JLe11;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Lrf6;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lrf6;-><init>(Lnh7;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, v1, Lnv5;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object p1, v1, Lnv5;->c:Lc62;

    .line 23
    .line 24
    invoke-virtual {p1}, Lc62;->a()Ljava/io/BufferedInputStream;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :try_start_0
    invoke-static {p1}, Ly13;->G(Ljava/io/InputStream;)Lrc4;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {p0, v1}, Lyw0;->B(Lij7;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 36
    .line 37
    .line 38
    iget-boolean p1, p0, Lrf6;->c:Z

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lrf6;->b:Lnw0;

    .line 43
    .line 44
    iget-wide v1, p0, Lnw0;->b:J

    .line 45
    .line 46
    const-wide/16 v3, 0x0

    .line 47
    .line 48
    cmp-long p1, v1, v3

    .line 49
    .line 50
    if-lez p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0, p0, v1, v2}, Lc86;->f0(Lnw0;J)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void

    .line 56
    :cond_1
    const-string p0, "closed"

    .line 57
    .line 58
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :catchall_1
    move-exception v0

    .line 65
    invoke-static {p1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method
