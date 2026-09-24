.class public abstract Lcom/jcraft/jsch/Channel;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/Channel$MyPipedInputStream;,
        Lcom/jcraft/jsch/Channel$PassiveOutputStream;,
        Lcom/jcraft/jsch/Channel$PassiveInputStream;
    }
.end annotation


# static fields
.field public static final u:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:I

.field public volatile b:I

.field public c:[B

.field public volatile d:I

.field public volatile e:I

.field public volatile f:I

.field public volatile g:J

.field public volatile h:I

.field public i:Lcom/jcraft/jsch/IO;

.field public j:Ljava/lang/Thread;

.field public volatile k:Z

.field public volatile l:Z

.field public volatile m:Z

.field public volatile n:Z

.field public volatile o:Z

.field public volatile p:I

.field public volatile q:I

.field public volatile r:I

.field public s:Lcom/jcraft/jsch/Session;

.field public t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/jcraft/jsch/Channel;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 6
    .line 7
    sget-object v1, Lcom/jcraft/jsch/Util;->a:[B

    .line 8
    .line 9
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    const-string v2, "foo"

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->c:[B

    .line 18
    .line 19
    const/high16 v1, 0x100000

    .line 20
    .line 21
    iput v1, p0, Lcom/jcraft/jsch/Channel;->d:I

    .line 22
    .line 23
    iget v1, p0, Lcom/jcraft/jsch/Channel;->d:I

    .line 24
    .line 25
    iput v1, p0, Lcom/jcraft/jsch/Channel;->e:I

    .line 26
    .line 27
    const/16 v1, 0x4000

    .line 28
    .line 29
    iput v1, p0, Lcom/jcraft/jsch/Channel;->f:I

    .line 30
    .line 31
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    iput-wide v1, p0, Lcom/jcraft/jsch/Channel;->g:J

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/jcraft/jsch/Channel;->h:I

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iput-object v2, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 40
    .line 41
    iput-object v2, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->k:Z

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->l:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->m:Z

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->n:Z

    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->o:Z

    .line 52
    .line 53
    iput v0, p0, Lcom/jcraft/jsch/Channel;->p:I

    .line 54
    .line 55
    iput v1, p0, Lcom/jcraft/jsch/Channel;->q:I

    .line 56
    .line 57
    iput v1, p0, Lcom/jcraft/jsch/Channel;->r:I

    .line 58
    .line 59
    iput v1, p0, Lcom/jcraft/jsch/Channel;->t:I

    .line 60
    .line 61
    sget-object v0, Lcom/jcraft/jsch/Channel;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const v1, 0x7fffffff

    .line 68
    .line 69
    .line 70
    and-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/jcraft/jsch/Channel;->a:I

    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/jcraft/jsch/Channel;->g:J

    .line 3
    .line 4
    add-long/2addr v0, p1

    .line 5
    iput-wide v0, p0, Lcom/jcraft/jsch/Channel;->g:J

    .line 6
    .line 7
    iget p1, p0, Lcom/jcraft/jsch/Channel;->t:I

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->m:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->l:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->k:Z

    .line 12
    .line 13
    iget v0, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    .line 20
    .line 21
    const/16 v2, 0x64

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/jcraft/jsch/Packet;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->a()V

    .line 32
    .line 33
    .line 34
    const/16 v3, 0x61

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 40
    .line 41
    .line 42
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    :catch_0
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->k:Z

    .line 8
    .line 9
    iget v0, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    .line 16
    .line 17
    const/16 v2, 0x64

    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/jcraft/jsch/Packet;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->a()V

    .line 28
    .line 29
    .line 30
    const/16 v3, 0x60

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 36
    .line 37
    .line 38
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->m:Z

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    :catch_0
    :goto_2
    return-void
.end method

.method public final connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->connect(I)V

    return-void
.end method

.method public connect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/jcraft/jsch/Channel;->r:I

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->h()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception p1

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 15
    .line 16
    .line 17
    instance-of p0, p1, Lcom/jcraft/jsch/JSchException;

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, La6;->f(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    check-cast p1, Lcom/jcraft/jsch/JSchException;

    .line 26
    .line 27
    throw p1
.end method

.method public d()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->l:Z

    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/jcraft/jsch/IO;->e:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    .line 23
    :catch_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->s:Lcom/jcraft/jsch/Session;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/Session;->g(Lcom/jcraft/jsch/Channel;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :try_start_2
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    .line 19
    .line 20
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :try_start_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->b()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->k:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->l:Z

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    .line 32
    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_1
    move-exception v0

    .line 41
    goto :goto_2

    .line 42
    :catch_0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->s:Lcom/jcraft/jsch/Session;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/Session;->g(Lcom/jcraft/jsch/Channel;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void

    .line 50
    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 51
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 52
    :goto_2
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->s:Lcom/jcraft/jsch/Session;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Lcom/jcraft/jsch/Session;->g(Lcom/jcraft/jsch/Channel;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    throw v0
.end method

.method public e()Lcom/jcraft/jsch/Packet;
    .locals 3

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x5a

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->c:[B

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/jcraft/jsch/Channel;->a:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 29
    .line 30
    .line 31
    iget v2, p0, Lcom/jcraft/jsch/Channel;->e:I

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 34
    .line 35
    .line 36
    iget p0, p0, Lcom/jcraft/jsch/Channel;->f:I

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 39
    .line 40
    .line 41
    return-object v1
.end method

.method public f(Lcom/jcraft/jsch/Buffer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->k(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iput-wide v0, p0, Lcom/jcraft/jsch/Channel;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/jcraft/jsch/Channel;->h:I

    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1
.end method

.method public g()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getExitStatus()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/Channel;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public final getExtInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->s:Lcom/jcraft/jsch/Session;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "getExtInputStream() should be called before connect()"

    .line 27
    .line 28
    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const v0, 0x8000

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "max_input_buffer_size"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move v1, v0

    .line 50
    :goto_0
    new-instance v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 51
    .line 52
    invoke-direct {v2, v0, v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(II)V

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    if-ge v0, v1, :cond_1

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v0, v3

    .line 61
    :goto_1
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 62
    .line 63
    new-instance v1, Lcom/jcraft/jsch/Channel$PassiveOutputStream;

    .line 64
    .line 65
    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/Channel$PassiveOutputStream;-><init>(Ljava/io/PipedInputStream;Z)V

    .line 66
    .line 67
    .line 68
    iput-boolean v3, p0, Lcom/jcraft/jsch/IO;->f:Z

    .line 69
    .line 70
    iput-object v1, p0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    .line 71
    .line 72
    return-object v2
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/Channel;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->s:Lcom/jcraft/jsch/Session;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "getInputStream() should be called before connect()"

    .line 27
    .line 28
    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const v0, 0x8000

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "max_input_buffer_size"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move v1, v0

    .line 50
    :goto_0
    new-instance v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 51
    .line 52
    invoke-direct {v2, v0, v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(II)V

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    if-ge v0, v1, :cond_1

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v0, v3

    .line 61
    :goto_1
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 62
    .line 63
    new-instance v1, Lcom/jcraft/jsch/Channel$PassiveOutputStream;

    .line 64
    .line 65
    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/Channel$PassiveOutputStream;-><init>(Ljava/io/PipedInputStream;Z)V

    .line 66
    .line 67
    .line 68
    iput-boolean v3, p0, Lcom/jcraft/jsch/IO;->e:Z

    .line 69
    .line 70
    iput-object v1, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 71
    .line 72
    return-object v2
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Channel$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p0}, Lcom/jcraft/jsch/Channel$1;-><init>(Lcom/jcraft/jsch/Channel;Lcom/jcraft/jsch/Channel;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getSession()Lcom/jcraft/jsch/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->s:Lcom/jcraft/jsch/Session;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "session is not available"

    .line 7
    .line 8
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final h()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lcom/jcraft/jsch/Session;->z:Z

    .line 6
    .line 7
    if-eqz v1, :cond_7

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->e()Lcom/jcraft/jsch/Packet;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iget v3, p0, Lcom/jcraft/jsch/Channel;->r:I

    .line 21
    .line 22
    int-to-long v3, v3

    .line 23
    const-wide/16 v5, 0x0

    .line 24
    .line 25
    cmp-long v5, v3, v5

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    move v7, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v7, 0x7d0

    .line 33
    .line 34
    :goto_0
    monitor-enter p0

    .line 35
    :goto_1
    :try_start_0
    iget v8, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 36
    .line 37
    const/4 v9, -0x1

    .line 38
    if-ne v8, v9, :cond_3

    .line 39
    .line 40
    iget-boolean v8, v0, Lcom/jcraft/jsch/Session;->z:Z

    .line 41
    .line 42
    if-eqz v8, :cond_3

    .line 43
    .line 44
    if-lez v7, :cond_3

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    if-lez v5, :cond_1

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    sub-long/2addr v9, v1

    .line 54
    cmp-long v9, v9, v3

    .line 55
    .line 56
    if-lez v9, :cond_1

    .line 57
    .line 58
    move v7, v8

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_4

    .line 62
    :cond_1
    if-nez v5, :cond_2

    .line 63
    .line 64
    const-wide/16 v9, 0xa

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move-wide v9, v3

    .line 68
    :goto_2
    :try_start_1
    iput v6, p0, Lcom/jcraft/jsch/Channel;->t:I

    .line 69
    .line 70
    invoke-virtual {p0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    .line 72
    .line 73
    :catch_0
    :try_start_2
    iput v8, p0, Lcom/jcraft/jsch/Channel;->t:I

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    iput v8, p0, Lcom/jcraft/jsch/Channel;->t:I

    .line 78
    .line 79
    throw v0

    .line 80
    :goto_3
    add-int/lit8 v7, v7, -0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->z:Z

    .line 85
    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    iget v0, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 89
    .line 90
    if-eq v0, v9, :cond_5

    .line 91
    .line 92
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->o:Z

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    iput-boolean v6, p0, Lcom/jcraft/jsch/Channel;->n:Z

    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    const-string p0, "channel is not opened."

    .line 100
    .line 101
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_5
    const-string p0, "channel is not opened."

    .line 106
    .line 107
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_6
    const-string p0, "session is down"

    .line 112
    .line 113
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    throw v0

    .line 119
    :cond_7
    const-string p0, "session is down"

    .line 120
    .line 121
    invoke-static {p0}, Le6;->h(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x5b

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/jcraft/jsch/Channel;->a:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 29
    .line 30
    .line 31
    iget v2, p0, Lcom/jcraft/jsch/Channel;->e:I

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lcom/jcraft/jsch/Channel;->f:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final isClosed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jcraft/jsch/Channel;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->s:Lcom/jcraft/jsch/Session;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->z:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final isEOF()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jcraft/jsch/Channel;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method public final j()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x5c

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 28
    .line 29
    .line 30
    const-string v2, "open failed"

    .line 31
    .line 32
    sget-object v3, Lcom/jcraft/jsch/Util;->a:[B

    .line 33
    .line 34
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Lcom/jcraft/jsch/Util;->c:[B

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    return-void
.end method

.method public final declared-synchronized k(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 3
    .line 4
    iget p1, p0, Lcom/jcraft/jsch/Channel;->t:I

    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1
.end method

.method public l([BII)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    return-void
.end method

.method public abstract run()V
.end method

.method public final sendSignal(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jcraft/jsch/RequestSignal;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jcraft/jsch/RequestSignal;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/jcraft/jsch/RequestSignal;->d:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1, p0}, Lcom/jcraft/jsch/RequestSignal;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setExtOutputStream(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->f:Z

    .line 5
    .line 6
    iput-object p1, p0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    .line 7
    .line 8
    return-void
.end method

.method public final setExtOutputStream(Ljava/io/OutputStream;Z)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 10
    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->f:Z

    .line 11
    iput-object p1, p0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->d:Z

    .line 5
    .line 6
    iput-object p1, p0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 7
    .line 8
    return-void
.end method

.method public final setInputStream(Ljava/io/InputStream;Z)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 10
    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->d:Z

    .line 11
    iput-object p1, p0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->e:Z

    .line 5
    .line 6
    iput-object p1, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 7
    .line 8
    return-void
.end method

.method public final setOutputStream(Ljava/io/OutputStream;Z)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 10
    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->e:Z

    .line 11
    iput-object p1, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public setXForwarding(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    return-void
.end method
