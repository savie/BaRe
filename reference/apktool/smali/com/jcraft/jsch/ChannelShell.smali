.class public Lcom/jcraft/jsch/ChannelShell;
.super Lcom/jcraft/jsch/ChannelSession;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->y:Z

    .line 6
    .line 7
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

.method public final setAgentForwarding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->v:Z

    .line 2
    .line 3
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
    new-instance v1, Lcom/jcraft/jsch/RequestShell;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/jcraft/jsch/Request;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/RequestShell;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, v0, Lcom/jcraft/jsch/Session;->m0:Ljava/util/concurrent/ThreadFactory;

    .line 23
    .line 24
    new-instance v2, Lcom/jcraft/jsch/b;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/jcraft/jsch/b;-><init>(Lcom/jcraft/jsch/ChannelShell;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "Shell for "

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, v0, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->b0:Z

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void

    .line 69
    :catch_0
    move-exception p0

    .line 70
    instance-of v0, p0, Lcom/jcraft/jsch/JSchException;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    check-cast p0, Lcom/jcraft/jsch/JSchException;

    .line 75
    .line 76
    throw p0

    .line 77
    :cond_2
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 78
    .line 79
    const-string v1, "ChannelShell"

    .line 80
    .line 81
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw v0
.end method
