.class public final Lc04;
.super Lokhttp3/RequestBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Ljava/io/InputStream;

.field public final synthetic d:Le04;


# direct methods
.method public constructor <init>(JLjava/io/InputStream;Le04;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lc04;->b:J

    .line 5
    .line 6
    iput-object p3, p0, Lc04;->c:Ljava/io/InputStream;

    .line 7
    .line 8
    iput-object p4, p0, Lc04;->d:Le04;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc04;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()Lokhttp3/MediaType;
    .locals 0

    .line 1
    sget-object p0, Ld04;->k:Lokhttp3/MediaType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final d(Lyw0;)V
    .locals 7

    .line 1
    const/high16 v0, 0x40000

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iget-wide v1, p0, Lc04;->b:J

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
    const-wide/32 v3, 0x40000

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    long-to-int v3, v3

    .line 21
    iget-object v4, p0, Lc04;->c:Ljava/io/InputStream;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual {v4, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, -0x1

    .line 29
    if-eq v3, v4, :cond_0

    .line 30
    .line 31
    invoke-interface {p1, v0, v5, v3}, Lyw0;->write([BII)Lyw0;

    .line 32
    .line 33
    .line 34
    int-to-long v3, v3

    .line 35
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget-object v6, p0, Lc04;->d:Le04;

    .line 40
    .line 41
    invoke-virtual {v6, v5}, Le04;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    sub-long/2addr v1, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 47
    .line 48
    const-string p1, "Unexpected EOF while streaming Google Drive upload chunk"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_1
    return-void
.end method
