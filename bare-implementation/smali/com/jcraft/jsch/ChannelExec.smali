.class public Lcom/jcraft/jsch/ChannelExec;
.super Lcom/jcraft/jsch/ChannelSession;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public G:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelExec;->G:[B

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/jcraft/jsch/Session;->M:Ljava/io/InputStream;

    .line 8
    .line 9
    iput-object v1, v0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/io/OutputStream;

    .line 18
    .line 19
    iput-object p0, v0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 20
    .line 21
    return-void
.end method

.method public final getErrStream()Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getExtInputStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final setAgentForwarding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCommand(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelExec;->G:[B

    .line 10
    .line 11
    return-void
.end method

.method public final setCommand([B)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelExec;->G:[B

    return-void
.end method

.method public final bridge synthetic setEnv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSession;->setEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic setEnv(Ljava/util/Hashtable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setEnv(Ljava/util/Hashtable;)V

    return-void
.end method

.method public final bridge synthetic setEnv([B[B)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSession;->setEnv([B[B)V

    return-void
.end method

.method public final setErrStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Channel;->setExtOutputStream(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setErrStream(Ljava/io/OutputStream;Z)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/Channel;->setExtOutputStream(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public final setPty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->y:Z

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic setPtySize(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/jcraft/jsch/ChannelSession;->setPtySize(IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic setPtyType(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setPtyType(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic setPtyType(Ljava/lang/String;IIII)V
    .locals 0

    .line 5
    invoke-super/range {p0 .. p5}, Lcom/jcraft/jsch/ChannelSession;->setPtyType(Ljava/lang/String;IIII)V

    return-void
.end method

.method public final setTerminalMode([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSession;->E:[B

    .line 2
    .line 3
    return-void
.end method

.method public final setXForwarding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->w:Z

    .line 2
    .line 3
    return-void
.end method

.method public final start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->m()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/jcraft/jsch/RequestExec;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelExec;->G:[B

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/jcraft/jsch/RequestExec;-><init>([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/RequestExec;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, v0, Lcom/jcraft/jsch/Session;->m0:Ljava/util/concurrent/ThreadFactory;

    .line 25
    .line 26
    new-instance v2, Lcom/jcraft/jsch/a;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/jcraft/jsch/a;-><init>(Lcom/jcraft/jsch/ChannelExec;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v2}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "Exec thread "

    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->b0:Z

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void

    .line 71
    :catch_0
    move-exception p0

    .line 72
    instance-of v0, p0, Lcom/jcraft/jsch/JSchException;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    check-cast p0, Lcom/jcraft/jsch/JSchException;

    .line 77
    .line 78
    throw p0

    .line 79
    :cond_2
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 80
    .line 81
    const-string v1, "ChannelExec"

    .line 82
    .line 83
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method
