.class Lcom/jcraft/jsch/Channel$1;
.super Ljava/io/OutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcraft/jsch/Channel;->getOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/jcraft/jsch/Buffer;

.field public c:Lcom/jcraft/jsch/Packet;

.field public d:Z

.field public final e:[B

.field public final synthetic f:Lcom/jcraft/jsch/Channel;

.field public final synthetic k:Lcom/jcraft/jsch/Channel;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/Channel;Lcom/jcraft/jsch/Channel;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/jcraft/jsch/Channel$1;->f:Lcom/jcraft/jsch/Channel;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/jcraft/jsch/Channel$1;->k:Lcom/jcraft/jsch/Channel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/jcraft/jsch/Channel$1;->a:I

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lcom/jcraft/jsch/Channel$1;->b:Lcom/jcraft/jsch/Buffer;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/jcraft/jsch/Channel$1;->c:Lcom/jcraft/jsch/Packet;

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/jcraft/jsch/Channel$1;->d:Z

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    new-array p1, p1, [B

    .line 20
    .line 21
    iput-object p1, p0, Lcom/jcraft/jsch/Channel$1;->e:[B

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->k:Lcom/jcraft/jsch/Channel;

    .line 5
    .line 6
    iget v1, v1, Lcom/jcraft/jsch/Channel;->h:I

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->b:Lcom/jcraft/jsch/Buffer;

    .line 12
    .line 13
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/jcraft/jsch/Channel$1;->c:Lcom/jcraft/jsch/Packet;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    :try_start_1
    array-length v0, v0

    .line 23
    add-int/lit8 v0, v0, -0xe

    .line 24
    .line 25
    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->k:Lcom/jcraft/jsch/Channel;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->k()I

    .line 32
    .line 33
    .line 34
    move-result v1
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    sub-int/2addr v0, v1

    .line 36
    if-lez v0, :cond_0

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :try_start_2
    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->b:Lcom/jcraft/jsch/Buffer;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->c:Lcom/jcraft/jsch/Packet;

    .line 44
    .line 45
    new-instance v0, Ljava/io/IOException;

    .line 46
    .line 47
    const-string v1, "failed to initialize the channel."

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
    :try_end_2
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    .line 57
    .line 58
    const-string v2, "failed to initialize the channel."

    .line 59
    .line 60
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    throw v1

    .line 64
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    throw v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->c:Lcom/jcraft/jsch/Packet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    return-void

    .line 10
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->d:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->a:I

    .line 16
    .line 17
    if-lez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->f:Lcom/jcraft/jsch/Channel;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->c()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->d:Z

    .line 29
    .line 30
    return-void
.end method

.method public final flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->a:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->c:Lcom/jcraft/jsch/Packet;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->b:Lcom/jcraft/jsch/Buffer;

    .line 16
    .line 17
    const/16 v1, 0x5e

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->b:Lcom/jcraft/jsch/Buffer;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->k:Lcom/jcraft/jsch/Channel;

    .line 25
    .line 26
    iget v1, v1, Lcom/jcraft/jsch/Channel;->b:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->b:Lcom/jcraft/jsch/Buffer;

    .line 32
    .line 33
    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->a:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->b:Lcom/jcraft/jsch/Buffer;

    .line 39
    .line 40
    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->a:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->a:I

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/jcraft/jsch/Channel$1;->a:I

    .line 49
    .line 50
    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->f:Lcom/jcraft/jsch/Channel;

    .line 51
    .line 52
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->f:Lcom/jcraft/jsch/Channel;

    .line 54
    .line 55
    iget-boolean v2, v2, Lcom/jcraft/jsch/Channel;->m:Z

    .line 56
    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->k:Lcom/jcraft/jsch/Channel;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/jcraft/jsch/Channel$1;->c:Lcom/jcraft/jsch/Packet;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/jcraft/jsch/Channel$1;->f:Lcom/jcraft/jsch/Channel;

    .line 68
    .line 69
    invoke-virtual {v2, v3, v4, v0}, Lcom/jcraft/jsch/Session;->A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    monitor-exit v1

    .line 76
    return-void

    .line 77
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->close()V

    .line 81
    .line 82
    .line 83
    new-instance p0, Ljava/io/IOException;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {p0, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_2
    const-string p0, "Already closed"

    .line 94
    .line 95
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 75
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->e:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, v0, v1, p1}, Lcom/jcraft/jsch/Channel$1;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->c:Lcom/jcraft/jsch/Packet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->d:Z

    .line 9
    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->b:Lcom/jcraft/jsch/Buffer;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    :goto_0
    if-lez p3, :cond_3

    .line 18
    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->k:Lcom/jcraft/jsch/Channel;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->k()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget v3, p0, Lcom/jcraft/jsch/Channel$1;->a:I

    .line 30
    .line 31
    add-int/lit8 v3, v3, 0xe

    .line 32
    .line 33
    sub-int v4, v1, v3

    .line 34
    .line 35
    sub-int/2addr v4, v2

    .line 36
    if-le p3, v4, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v4, p3

    .line 40
    :goto_1
    if-gtz v4, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {p1, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/jcraft/jsch/Channel$1;->a:I

    .line 50
    .line 51
    add-int/2addr v2, v4

    .line 52
    iput v2, p0, Lcom/jcraft/jsch/Channel$1;->a:I
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    add-int/2addr p2, v4

    .line 55
    sub-int/2addr p3, v4

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    new-instance p1, Ljava/io/IOException;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_3
    return-void

    .line 69
    :cond_4
    const-string p0, "Already closed"

    .line 70
    .line 71
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
