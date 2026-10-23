.class public final Lg08;
.super Lokhttp3/RequestBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Ljava/io/BufferedInputStream;

.field public final synthetic d:Lmm;


# direct methods
.method public constructor <init>(JLjava/io/BufferedInputStream;Lmm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lg08;->b:J

    .line 5
    .line 6
    iput-object p3, p0, Lg08;->c:Ljava/io/BufferedInputStream;

    .line 7
    .line 8
    iput-object p4, p0, Lg08;->d:Lmm;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg08;->b:J

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
    .locals 6

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iget-wide v1, p0, Lg08;->b:J

    .line 6
    .line 7
    :goto_0
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v3, v1, v3

    .line 10
    .line 11
    if-lez v3, :cond_1

    .line 12
    .line 13
    const-wide/16 v3, 0x2000

    .line 14
    .line 15
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    long-to-int v3, v3

    .line 20
    iget-object v4, p0, Lg08;->c:Ljava/io/BufferedInputStream;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-virtual {v4, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, -0x1

    .line 28
    if-eq v3, v4, :cond_0

    .line 29
    .line 30
    invoke-interface {p1, v0, v5, v3}, Lyw0;->write([BII)Lyw0;

    .line 31
    .line 32
    .line 33
    int-to-long v3, v3

    .line 34
    sub-long/2addr v1, v3

    .line 35
    iget-object v5, p0, Lg08;->d:Lmm;

    .line 36
    .line 37
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v5, v3}, Lmm;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 46
    .line 47
    const-string p1, "Unexpected EOF while uploading TeraBox chunk."

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    return-void
.end method
