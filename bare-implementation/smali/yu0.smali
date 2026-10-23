.class public final Lyu0;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Ljava/nio/channels/SeekableByteChannel;

.field public c:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyu0;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 5
    .line 6
    iput-wide p2, p0, Lyu0;->c:J

    .line 7
    .line 8
    const-wide/16 v0, 0x2000

    .line 9
    .line 10
    cmp-long p1, p2, v0

    .line 11
    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long p1, p2, v0

    .line 17
    .line 18
    if-lez p1, :cond_0

    .line 19
    .line 20
    long-to-int p1, p2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 p1, 0x2000

    .line 23
    .line 24
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lyu0;->a:Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final read()I
    .locals 4

    .line 69
    iget-wide v0, p0, Lyu0;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 70
    iput-wide v0, p0, Lyu0;->c:J

    const/4 v0, 0x1

    .line 71
    iget-object v1, p0, Lyu0;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 72
    iget-object p0, p0, Lyu0;->b:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0, v1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 73
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-gez p0, :cond_0

    return p0

    .line 74
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final read([BII)I
    .locals 4

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    iget-wide v0, p0, Lyu0;->c:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-gtz v2, :cond_1

    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    return p0

    .line 15
    :cond_1
    int-to-long v2, p3

    .line 16
    cmp-long v2, v2, v0

    .line 17
    .line 18
    if-lez v2, :cond_2

    .line 19
    .line 20
    long-to-int p3, v0

    .line 21
    :cond_2
    iget-object v0, p0, Lyu0;->a:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lyu0;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 28
    .line 29
    if-gt p3, v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 36
    .line 37
    .line 38
    invoke-interface {v2, v0}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v2, v0}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 55
    .line 56
    .line 57
    :goto_0
    if-ltz p3, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    iget-wide p1, p0, Lyu0;->c:J

    .line 63
    .line 64
    int-to-long v0, p3

    .line 65
    sub-long/2addr p1, v0

    .line 66
    iput-wide p1, p0, Lyu0;->c:J

    .line 67
    .line 68
    :cond_4
    return p3
.end method
