.class public final Lar2;
.super Lokhttp3/RequestBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lmt3;

.field public final synthetic d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(JLmt3;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lar2;->b:J

    .line 5
    .line 6
    iput-object p3, p0, Lar2;->c:Lmt3;

    .line 7
    .line 8
    iput-object p4, p0, Lar2;->d:Ljava/io/InputStream;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lar2;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()Lokhttp3/MediaType;
    .locals 0

    .line 1
    sget-object p0, Lbr2;->h:Lokhttp3/MediaType;

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
    .locals 11

    .line 1
    const/high16 v0, 0x40000

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v4, p0, Lar2;->c:Lmt3;

    .line 12
    .line 13
    invoke-interface {v4, v3}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-wide v5, p0, Lar2;->b:J

    .line 17
    .line 18
    move-wide v7, v1

    .line 19
    :goto_0
    cmp-long v3, v5, v1

    .line 20
    .line 21
    if-lez v3, :cond_1

    .line 22
    .line 23
    const-wide/32 v9, 0x40000

    .line 24
    .line 25
    .line 26
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v9

    .line 30
    long-to-int v3, v9

    .line 31
    iget-object v9, p0, Lar2;->d:Ljava/io/InputStream;

    .line 32
    .line 33
    const/4 v10, 0x0

    .line 34
    invoke-virtual {v9, v0, v10, v3}, Ljava/io/InputStream;->read([BII)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v9, -0x1

    .line 39
    if-eq v3, v9, :cond_0

    .line 40
    .line 41
    invoke-interface {p1, v0, v10, v3}, Lyw0;->write([BII)Lyw0;

    .line 42
    .line 43
    .line 44
    int-to-long v9, v3

    .line 45
    add-long/2addr v7, v9

    .line 46
    sub-long/2addr v5, v9

    .line 47
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v4, v3}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 56
    .line 57
    const-string p1, "Unexpected EOF while streaming Dropbox request body"

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_1
    return-void
.end method
