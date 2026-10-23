.class public Lcom/jcraft/jsch/ChannelForwardedTCPIP;
.super Lcom/jcraft/jsch/Channel;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;,
        Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;,
        Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;
    }
.end annotation


# static fields
.field public static final y:Ljava/util/Vector;


# instance fields
.field public v:Ljava/net/Socket;

.field public w:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

.field public x:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/util/Vector;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->v:Ljava/net/Socket;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->x:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 10
    .line 11
    const/high16 v0, 0x20000

    .line 12
    .line 13
    iput v0, p0, Lcom/jcraft/jsch/Channel;->d:I

    .line 14
    .line 15
    iput v0, p0, Lcom/jcraft/jsch/Channel;->e:I

    .line 16
    .line 17
    const/16 v0, 0x4000

    .line 18
    .line 19
    iput v0, p0, Lcom/jcraft/jsch/Channel;->f:I

    .line 20
    .line 21
    new-instance v0, Lcom/jcraft/jsch/IO;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    .line 30
    .line 31
    return-void
.end method

.method public static m(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V
    .locals 3

    .line 1
    const-string v0, "PortForwardingR: remote port "

    .line 2
    .line 3
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/util/Vector;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->o(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p0, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->a:Lcom/jcraft/jsch/Session;

    .line 22
    .line 23
    iput p2, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->b:I

    .line 24
    .line 25
    iput p3, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->c:I

    .line 26
    .line 27
    iput-object p4, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->e:Ljava/lang/String;

    .line 28
    .line 29
    iput p5, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->f:I

    .line 30
    .line 31
    iput-object p1, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->d:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p6, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->g:Lcom/jcraft/jsch/SocketFactory;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v1

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p2, " is already registered."

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public static n(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {p0, v1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->o(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p0, v1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->o(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    iget-object p1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->d:Ljava/lang/String;

    .line 32
    .line 33
    :cond_2
    if-nez p1, :cond_3

    .line 34
    .line 35
    const-string p1, "0.0.0.0"

    .line 36
    .line 37
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 39
    .line 40
    const/16 v1, 0xc8

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 51
    .line 52
    .line 53
    const/16 v2, 0x50

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 56
    .line 57
    .line 58
    const-string v2, "cancel-tcpip-forward"

    .line 59
    .line 60
    sget-object v3, Lcom/jcraft/jsch/Util;->a:[B

    .line 61
    .line 62
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 69
    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->z(Lcom/jcraft/jsch/Packet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .line 87
    .line 88
    :catch_0
    return-void

    .line 89
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    throw p0
.end method

.method public static o(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;
    .locals 4

    .line 1
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    sget-object v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/util/Vector;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v1, v3, :cond_4

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 18
    .line 19
    iget-object v3, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->a:Lcom/jcraft/jsch/Session;

    .line 20
    .line 21
    if-eq v3, p0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget v3, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->b:I

    .line 25
    .line 26
    if-eq v3, p2, :cond_1

    .line 27
    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    iget v3, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->c:I

    .line 31
    .line 32
    if-eq v3, p2, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object v3, v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    monitor-exit v0

    .line 51
    return-object v2

    .line 52
    :cond_4
    const/4 p0, 0x0

    .line 53
    monitor-exit v0

    .line 54
    return-object p0

    .line 55
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "localhost"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const-string v0, "*"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-object p0

    .line 22
    :cond_2
    :goto_0
    const-string p0, ""

    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method public final f(Lcom/jcraft/jsch/Buffer;)V
    .locals 7

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
    move-result v0

    .line 20
    iput v0, p0, Lcom/jcraft/jsch/Channel;->h:I

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 38
    .line 39
    .line 40
    move-result-object v2
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-object v2, p1

    .line 43
    :goto_0
    sget-object v3, Lcom/jcraft/jsch/Util;->a:[B

    .line 44
    .line 45
    array-length v3, v0

    .line 46
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    new-instance v5, Ljava/lang/String;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-direct {v5, v0, v6, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v5, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->o(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iput-object v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->x:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 59
    .line 60
    if-nez v3, :cond_0

    .line 61
    .line 62
    invoke-static {v2, p1, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->o(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->x:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 67
    .line 68
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->x:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 69
    .line 70
    if-nez p0, :cond_1

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const/4 p1, 0x3

    .line 77
    invoke-interface {p0, p1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_1

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v3, "ChannelForwardedTCPIP: "

    .line 90
    .line 91
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    array-length v3, v0

    .line 95
    new-instance v5, Ljava/lang/String;

    .line 96
    .line 97
    invoke-direct {v5, v0, v6, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, ":"

    .line 104
    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v0, " is not registered."

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {p0, p1, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    return-void

    .line 124
    :catchall_0
    move-exception p1

    .line 125
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    throw p1
.end method

.method public final getRemotePort()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->x:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->b:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final run()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->x:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 3
    .line 4
    instance-of v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    check-cast v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-class v3, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    .line 32
    .line 33
    iput-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    .line 34
    .line 35
    new-instance v2, Ljava/io/PipedOutputStream;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/io/PipedOutputStream;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 41
    .line 42
    new-instance v4, Lcom/jcraft/jsch/Channel$PassiveInputStream;

    .line 43
    .line 44
    const v5, 0x8000

    .line 45
    .line 46
    .line 47
    invoke-direct {v4, v2, v5}, Lcom/jcraft/jsch/Channel$PassiveInputStream;-><init>(Ljava/io/PipedOutputStream;I)V

    .line 48
    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    iput-boolean v5, v3, Lcom/jcraft/jsch/IO;->d:Z

    .line 52
    .line 53
    iput-object v4, v3, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getInputStream()Ljava/io/InputStream;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-interface {v3, p0, v4, v2}, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;->setChannel(Lcom/jcraft/jsch/ChannelForwardedTCPIP;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;->f:[Ljava/lang/Object;

    .line 67
    .line 68
    invoke-interface {v2, v1}, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;->setArg([Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v1, v1, Lcom/jcraft/jsch/Session;->m0:Ljava/util/concurrent/ThreadFactory;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    .line 78
    .line 79
    invoke-interface {v1, v2}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    check-cast v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    .line 88
    .line 89
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->g:Lcom/jcraft/jsch/SocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    .line 91
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->e:Ljava/lang/String;

    .line 92
    .line 93
    if-nez v2, :cond_1

    .line 94
    .line 95
    :try_start_1
    iget v1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->f:I

    .line 96
    .line 97
    const/16 v2, 0x2710

    .line 98
    .line 99
    invoke-static {v1, v2, v3}, Lcom/jcraft/jsch/Util;->g(IILjava/lang/String;)Ljava/net/Socket;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    iget v1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->f:I

    .line 105
    .line 106
    invoke-interface {v2, v3, v1}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    :goto_0
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->v:Ljava/net/Socket;

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 116
    .line 117
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->v:Ljava/net/Socket;

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    iput-object v2, v1, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 126
    .line 127
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->v:Ljava/net/Socket;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iput-object v2, v1, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 134
    .line 135
    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->i()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .line 137
    .line 138
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 143
    .line 144
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 145
    .line 146
    iget v1, p0, Lcom/jcraft/jsch/Channel;->h:I

    .line 147
    .line 148
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 149
    .line 150
    .line 151
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 152
    .line 153
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 154
    .line 155
    .line 156
    :try_start_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    :goto_2
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 161
    .line 162
    if-eqz v3, :cond_4

    .line 163
    .line 164
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 165
    .line 166
    if-eqz v3, :cond_4

    .line 167
    .line 168
    iget-object v3, v3, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 169
    .line 170
    if-eqz v3, :cond_4

    .line 171
    .line 172
    iget-object v4, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 173
    .line 174
    array-length v5, v4

    .line 175
    const/16 v6, 0xe

    .line 176
    .line 177
    sub-int/2addr v5, v6

    .line 178
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->k()I

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    sub-int/2addr v5, v7

    .line 183
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-gtz v3, :cond_2

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->c()V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_2
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 194
    .line 195
    .line 196
    const/16 v4, 0x5e

    .line 197
    .line 198
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 199
    .line 200
    .line 201
    iget v4, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 202
    .line 203
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 210
    .line 211
    .line 212
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    :try_start_3
    iget-boolean v4, p0, Lcom/jcraft/jsch/Channel;->m:Z

    .line 214
    .line 215
    if-eqz v4, :cond_3

    .line 216
    .line 217
    monitor-exit p0

    .line 218
    goto :goto_4

    .line 219
    :catchall_0
    move-exception v0

    .line 220
    goto :goto_3

    .line 221
    :cond_3
    invoke-virtual {v2, v1, p0, v3}, Lcom/jcraft/jsch/Session;->A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 222
    .line 223
    .line 224
    monitor-exit p0

    .line 225
    goto :goto_2

    .line 226
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 228
    :catch_0
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :catch_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->j()V

    .line 233
    .line 234
    .line 235
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->m:Z

    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 238
    .line 239
    .line 240
    return-void
.end method
