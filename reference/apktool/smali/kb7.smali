.class public final Lkb7;
.super Ljava/io/OutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final synthetic b:Llb7;


# direct methods
.method public constructor <init>(Llb7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkb7;->b:Llb7;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x2000

    .line 7
    .line 8
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lkb7;->a:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public final write(I)V
    .locals 4

    .line 45
    iget-object v0, p0, Lkb7;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    int-to-byte v1, p1

    .line 46
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 47
    iget-object p0, p0, Lkb7;->b:Llb7;

    iget-object v1, p0, Llb7;->a:Ljava/nio/channels/FileChannel;

    .line 48
    invoke-interface {v1, v0}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 49
    iget-object v0, p0, Llb7;->e:Ljava/util/zip/CRC32;

    .line 50
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    .line 51
    iget-wide v0, p0, Llb7;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Llb7;->f:J

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 44
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lkb7;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkb7;->b:Llb7;

    .line 2
    .line 3
    iget-object v1, v0, Llb7;->a:Ljava/nio/channels/FileChannel;

    .line 4
    .line 5
    const/16 v2, 0x2000

    .line 6
    .line 7
    if-le p3, v2, :cond_0

    .line 8
    .line 9
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {v1, p0}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lkb7;->a:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, p0}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object p0, v0, Llb7;->e:Ljava/util/zip/CRC32;

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 35
    .line 36
    .line 37
    int-to-long p0, p3

    .line 38
    iget-wide p2, v0, Llb7;->f:J

    .line 39
    .line 40
    add-long/2addr p2, p0

    .line 41
    iput-wide p2, v0, Llb7;->f:J

    .line 42
    .line 43
    return-void
.end method
