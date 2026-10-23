.class Lcom/jcraft/jsch/ChannelSession;
.super Lcom/jcraft/jsch/Channel;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final F:[B


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:[B

.field public v:Z

.field public w:Z

.field public x:Ljava/util/Hashtable;

.field public y:Z

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    const-string v1, "session"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/jcraft/jsch/ChannelSession;->F:[B

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->v:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->w:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->x:Ljava/util/Hashtable;

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->y:Z

    .line 13
    .line 14
    const-string v0, "vt100"

    .line 15
    .line 16
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->z:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v0, 0x50

    .line 19
    .line 20
    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->A:I

    .line 21
    .line 22
    const/16 v0, 0x18

    .line 23
    .line 24
    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->B:I

    .line 25
    .line 26
    const/16 v0, 0x280

    .line 27
    .line 28
    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->C:I

    .line 29
    .line 30
    const/16 v0, 0x1e0

    .line 31
    .line 32
    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->D:I

    .line 33
    .line 34
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->E:[B

    .line 35
    .line 36
    sget-object v0, Lcom/jcraft/jsch/ChannelSession;->F:[B

    .line 37
    .line 38
    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->c:[B

    .line 39
    .line 40
    new-instance v0, Lcom/jcraft/jsch/IO;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final m()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSession;->v:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/jcraft/jsch/RequestAgentForwarding;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/jcraft/jsch/Request;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/RequestAgentForwarding;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSession;->w:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Lcom/jcraft/jsch/RequestX11;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/jcraft/jsch/Request;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/RequestX11;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSession;->y:Z

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    new-instance v1, Lcom/jcraft/jsch/RequestPtyReq;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/jcraft/jsch/RequestPtyReq;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSession;->z:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v2, v1, Lcom/jcraft/jsch/RequestPtyReq;->d:Ljava/lang/String;

    .line 41
    .line 42
    iget v2, p0, Lcom/jcraft/jsch/ChannelSession;->A:I

    .line 43
    .line 44
    iget v3, p0, Lcom/jcraft/jsch/ChannelSession;->B:I

    .line 45
    .line 46
    iget v4, p0, Lcom/jcraft/jsch/ChannelSession;->C:I

    .line 47
    .line 48
    iget v5, p0, Lcom/jcraft/jsch/ChannelSession;->D:I

    .line 49
    .line 50
    iput v2, v1, Lcom/jcraft/jsch/RequestPtyReq;->e:I

    .line 51
    .line 52
    iput v3, v1, Lcom/jcraft/jsch/RequestPtyReq;->f:I

    .line 53
    .line 54
    iput v4, v1, Lcom/jcraft/jsch/RequestPtyReq;->g:I

    .line 55
    .line 56
    iput v5, v1, Lcom/jcraft/jsch/RequestPtyReq;->h:I

    .line 57
    .line 58
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSession;->E:[B

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iput-object v2, v1, Lcom/jcraft/jsch/RequestPtyReq;->i:[B

    .line 63
    .line 64
    :cond_2
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/RequestPtyReq;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->x:Ljava/util/Hashtable;

    .line 68
    .line 69
    if-eqz v1, :cond_6

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_6

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, [B

    .line 86
    .line 87
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSession;->x:Ljava/util/Hashtable;

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, [B

    .line 94
    .line 95
    new-instance v4, Lcom/jcraft/jsch/RequestEnv;

    .line 96
    .line 97
    invoke-direct {v4}, Lcom/jcraft/jsch/RequestEnv;-><init>()V

    .line 98
    .line 99
    .line 100
    instance-of v5, v2, Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v5, :cond_4

    .line 103
    .line 104
    check-cast v2, Ljava/lang/String;

    .line 105
    .line 106
    sget-object v5, Lcom/jcraft/jsch/Util;->a:[B

    .line 107
    .line 108
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 109
    .line 110
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    :cond_4
    instance-of v5, v3, Ljava/lang/String;

    .line 115
    .line 116
    if-eqz v5, :cond_5

    .line 117
    .line 118
    check-cast v3, Ljava/lang/String;

    .line 119
    .line 120
    sget-object v5, Lcom/jcraft/jsch/Util;->a:[B

    .line 121
    .line 122
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 123
    .line 124
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    :cond_5
    iput-object v2, v4, Lcom/jcraft/jsch/RequestEnv;->d:[B

    .line 129
    .line 130
    iput-object v3, v4, Lcom/jcraft/jsch/RequestEnv;->e:[B

    .line 131
    .line 132
    invoke-virtual {v4, v0, p0}, Lcom/jcraft/jsch/RequestEnv;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    return-void
.end method

.method public final run()V
    .locals 8

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/Channel;->h:I

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
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 24
    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 28
    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    iget-object v3, v3, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 32
    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    iget-object v4, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 36
    .line 37
    array-length v5, v4

    .line 38
    const/16 v6, 0xe

    .line 39
    .line 40
    sub-int/2addr v5, v6

    .line 41
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->k()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    sub-int/2addr v5, v7

    .line 46
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v4, -0x1

    .line 54
    if-ne v3, v4, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->c()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-boolean v4, p0, Lcom/jcraft/jsch/Channel;->m:Z

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 66
    .line 67
    .line 68
    const/16 v4, 0x5e

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 71
    .line 72
    .line 73
    iget v4, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 74
    .line 75
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v1, p0, v3}, Lcom/jcraft/jsch/Session;->A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    monitor-enter v0

    .line 93
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 94
    .line 95
    .line 96
    monitor-exit v0

    .line 97
    goto :goto_2

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw p0

    .line 101
    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 103
    .line 104
    return-void
.end method

.method public setAgentForwarding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 24
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p2, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSession;->setEnv([B[B)V

    return-void
.end method

.method public setEnv(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "[B[B>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSession;->x:Ljava/util/Hashtable;

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setEnv([B[B)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->x:Ljava/util/Hashtable;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/Hashtable;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->x:Ljava/util/Hashtable;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->x:Ljava/util/Hashtable;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public setPty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->y:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPtySize(IIII)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->z:Ljava/lang/String;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v2, p1

    .line 5
    move v3, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSession;->setPtyType(Ljava/lang/String;IIII)V

    .line 9
    .line 10
    .line 11
    iget-boolean p0, v0, Lcom/jcraft/jsch/ChannelSession;->y:Z

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_0
    new-instance p0, Lcom/jcraft/jsch/RequestWindowChange;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/jcraft/jsch/RequestWindowChange;-><init>()V

    .line 25
    .line 26
    .line 27
    iput v2, p0, Lcom/jcraft/jsch/RequestWindowChange;->d:I

    .line 28
    .line 29
    iput v3, p0, Lcom/jcraft/jsch/RequestWindowChange;->e:I

    .line 30
    .line 31
    iput v4, p0, Lcom/jcraft/jsch/RequestWindowChange;->f:I

    .line 32
    .line 33
    iput v5, p0, Lcom/jcraft/jsch/RequestWindowChange;->g:I

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/RequestWindowChange;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public setPtyType(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/16 v4, 0x280

    .line 2
    .line 3
    const/16 v5, 0x1e0

    .line 4
    .line 5
    const/16 v2, 0x50

    .line 6
    .line 7
    const/16 v3, 0x18

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSession;->setPtyType(Ljava/lang/String;IIII)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setPtyType(Ljava/lang/String;IIII)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSession;->z:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/jcraft/jsch/ChannelSession;->A:I

    .line 17
    iput p3, p0, Lcom/jcraft/jsch/ChannelSession;->B:I

    .line 18
    iput p4, p0, Lcom/jcraft/jsch/ChannelSession;->C:I

    .line 19
    iput p5, p0, Lcom/jcraft/jsch/ChannelSession;->D:I

    return-void
.end method

.method public setTerminalMode([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSession;->E:[B

    .line 2
    .line 3
    return-void
.end method

.method public setXForwarding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->w:Z

    .line 2
    .line 3
    return-void
.end method
