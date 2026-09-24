.class public final Lx07;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/io/RandomAccessFile;

.field public b:J


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx07;->a:Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    iput-wide p2, p0, Lx07;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 5

    .line 43
    iget-wide v0, p0, Lx07;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    .line 44
    :cond_0
    iget-object v0, p0, Lx07;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 45
    iget-wide v1, p0, Lx07;->b:J

    const-wide/16 v3, -0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lx07;->b:J

    return v0

    .line 46
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Truncated SBA entry payload"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read([BII)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lx07;->b:J

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-gtz v2, :cond_0

    .line 12
    .line 13
    return v3

    .line 14
    :cond_0
    int-to-long v4, p3

    .line 15
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    long-to-int p3, v0

    .line 20
    iget-object v0, p0, Lx07;->a:Ljava/io/RandomAccessFile;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eq p1, v3, :cond_1

    .line 27
    .line 28
    iget-wide p2, p0, Lx07;->b:J

    .line 29
    .line 30
    int-to-long v0, p1

    .line 31
    sub-long/2addr p2, v0

    .line 32
    iput-wide p2, p0, Lx07;->b:J

    .line 33
    .line 34
    return p1

    .line 35
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 36
    .line 37
    const-string p1, "Truncated SBA entry payload"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method
