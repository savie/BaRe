.class public Lv64$g;
.super Lokhttp3/RequestBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final b:Lokhttp3/RequestBody;

.field public final c:Lox0;

.field public final d:Ljava/io/RandomAccessFile;

.field public final e:J

.field public final f:[B

.field public final g:J

.field public final h:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JLokhttp3/MediaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrg5;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "randome access file"

    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lv64$g;->d:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 56
    iput-wide p2, p0, Lv64$g;->g:J

    .line 57
    const-string p2, "content type"

    invoke-static {p4, p2}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lv64$g;->h:Lokhttp3/MediaType;

    .line 58
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p1

    iput-wide p1, p0, Lv64$g;->e:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Lrg5;

    invoke-direct {p1, p0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 60
    :cond_0
    const-string p0, "length must not be negative value"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lokhttp3/RequestBody;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrg5;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v0, "body"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lv64$g;->b:Lokhttp3/RequestBody;

    .line 10
    .line 11
    invoke-virtual {p1}, Lokhttp3/RequestBody;->a()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lokhttp3/RequestBody;->a()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p0, Lv64$g;->g:J

    .line 26
    .line 27
    invoke-virtual {p1}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "content type"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lv64$g;->h:Lokhttp3/MediaType;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string p1, "length must not be negative value"

    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance p1, Lrg5;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public constructor <init>(Lox0;Lokhttp3/MediaType;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lv64$g;->c:Lox0;

    .line 63
    iget-wide v0, p1, Lox0;->d:J

    .line 64
    iput-wide v0, p0, Lv64$g;->g:J

    .line 65
    const-string p1, "content type"

    invoke-static {p2, p1}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lv64$g;->h:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>([BILokhttp3/MediaType;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "data bytes"

    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lv64$g;->f:[B

    if-ltz p2, :cond_0

    int-to-long p1, p2

    .line 68
    iput-wide p1, p0, Lv64$g;->g:J

    .line 69
    const-string p1, "content type"

    invoke-static {p3, p1}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lv64$g;->h:Lokhttp3/MediaType;

    return-void

    .line 70
    :cond_0
    const-string p0, "length must not be negative value"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lv64$g;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()Lokhttp3/MediaType;
    .locals 0

    .line 1
    iget-object p0, p0, Lv64$g;->h:Lokhttp3/MediaType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Lyw0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lv64$g;->b:Lokhttp3/RequestBody;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->d(Lyw0;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-wide v0, p0, Lv64$g;->g:J

    .line 10
    .line 11
    iget-object v2, p0, Lv64$g;->c:Lox0;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v2}, Lox0;->q0()Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ly13;->G(Ljava/io/InputStream;)Lrc4;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p1, p0, v0, v1}, Lyw0;->V(Lrc4;J)Lyw0;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v2, p0, Lv64$g;->d:Ljava/io/RandomAccessFile;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-wide v3, p0, Lv64$g;->e:J

    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Ly13;->G(Ljava/io/InputStream;)Lrc4;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p1, p0, v0, v1}, Lyw0;->V(Lrc4;J)Lyw0;

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    const/4 v2, 0x0

    .line 53
    long-to-int v0, v0

    .line 54
    iget-object p0, p0, Lv64$g;->f:[B

    .line 55
    .line 56
    invoke-interface {p1, p0, v2, v0}, Lyw0;->write([BII)Lyw0;

    .line 57
    .line 58
    .line 59
    return-void
.end method
