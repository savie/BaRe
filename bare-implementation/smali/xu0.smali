.class public final Lxu0;
.super Luu0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Ljava/nio/channels/SeekableByteChannel;


# direct methods
.method public constructor <init>(JJLjava/nio/channels/SeekableByteChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Luu0;-><init>(JJ)V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lxu0;->d:Ljava/nio/channels/SeekableByteChannel;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLjava/nio/ByteBuffer;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lxu0;->d:Ljava/nio/channels/SeekableByteChannel;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lxu0;->d:Ljava/nio/channels/SeekableByteChannel;

    .line 5
    .line 6
    invoke-interface {v1, p1, p2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lxu0;->d:Ljava/nio/channels/SeekableByteChannel;

    .line 10
    .line 11
    invoke-interface {p0, p3}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p0
.end method
