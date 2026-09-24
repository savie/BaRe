.class Lcom/jcraft/jsch/AgentProxy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lcom/jcraft/jsch/Buffer;

.field public final b:Lcom/jcraft/jsch/AgentConnector;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/AgentConnector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x400

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->b:Lcom/jcraft/jsch/AgentConnector;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;[B[B)[B
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x4

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    :try_start_0
    const-string v2, "rsa-sha2-256"

    .line 7
    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v2, "rsa-sha2-512"

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    move p1, v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    move p1, v1

    .line 29
    :goto_0
    array-length v2, p2

    .line 30
    add-int/lit8 v2, v2, 0x11

    .line 31
    .line 32
    array-length v3, p3

    .line 33
    add-int/2addr v2, v3

    .line 34
    iget-object v3, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 45
    .line 46
    sub-int/2addr v2, v0

    .line 47
    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 51
    .line 52
    const/16 v2, 0xd

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 58
    .line 59
    array-length v2, p2

    .line 60
    invoke-virtual {v0, p2, v1, v2}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 64
    .line 65
    array-length v0, p3

    .line 66
    invoke-virtual {p2, p3, v1, v0}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    :try_start_1
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->b:Lcom/jcraft/jsch/AgentConnector;

    .line 75
    .line 76
    iget-object p2, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 77
    .line 78
    invoke-interface {p1, p2}, Lcom/jcraft/jsch/AgentConnector;->query(Lcom/jcraft/jsch/Buffer;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/AgentProxyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 83
    .line 84
    iput v1, p1, Lcom/jcraft/jsch/Buffer;->d:I

    .line 85
    .line 86
    const/4 p2, 0x5

    .line 87
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 88
    .line 89
    .line 90
    :goto_1
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 93
    .line 94
    .line 95
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    const/16 p2, 0xe

    .line 97
    .line 98
    if-eq p1, p2, :cond_2

    .line 99
    .line 100
    monitor-exit p0

    .line 101
    const/4 p0, 0x0

    .line 102
    return-object p0

    .line 103
    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 106
    .line 107
    .line 108
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    monitor-exit p0

    .line 110
    return-object p1

    .line 111
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    throw p1
.end method
