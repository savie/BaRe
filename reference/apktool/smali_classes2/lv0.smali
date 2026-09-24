.class public final Llv0;
.super Lokhttp3/RequestBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Ld86;


# direct methods
.method public constructor <init>(JLmv0;Ld86;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Llv0;->b:J

    .line 5
    .line 6
    iput-object p4, p0, Llv0;->c:Ld86;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Llv0;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()Lokhttp3/MediaType;
    .locals 0

    .line 1
    sget-object p0, Lmv0;->h:Lokhttp3/MediaType;

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
    .locals 10

    .line 1
    iget-wide v0, p0, Llv0;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    const/4 v5, -0x1

    .line 8
    const/high16 v6, 0x10000

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    iget-object p0, p0, Llv0;->c:Ld86;

    .line 12
    .line 13
    if-ltz v4, :cond_1

    .line 14
    .line 15
    new-array v4, v6, [B

    .line 16
    .line 17
    :goto_0
    cmp-long v6, v0, v2

    .line 18
    .line 19
    if-lez v6, :cond_2

    .line 20
    .line 21
    const-wide/32 v8, 0x10000

    .line 22
    .line 23
    .line 24
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v8

    .line 28
    long-to-int v6, v8

    .line 29
    invoke-virtual {p0, v4, v7, v6}, Ld86;->read([BII)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eq v6, v5, :cond_0

    .line 34
    .line 35
    invoke-interface {p1, v4, v7, v6}, Lyw0;->write([BII)Lyw0;

    .line 36
    .line 37
    .line 38
    int-to-long v8, v6

    .line 39
    sub-long/2addr v0, v8

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 42
    .line 43
    const-string p1, "Unexpected EOF while streaming Box upload"

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_1
    new-array v0, v6, [B

    .line 50
    .line 51
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ne v1, v5, :cond_3

    .line 56
    .line 57
    :cond_2
    return-void

    .line 58
    :cond_3
    invoke-interface {p1, v0, v7, v1}, Lyw0;->write([BII)Lyw0;

    .line 59
    .line 60
    .line 61
    goto :goto_1
.end method
