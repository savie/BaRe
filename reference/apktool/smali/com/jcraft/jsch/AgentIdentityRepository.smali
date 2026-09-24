.class public Lcom/jcraft/jsch/AgentIdentityRepository;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/IdentityRepository;


# instance fields
.field public final a:Lcom/jcraft/jsch/AgentProxy;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/AgentConnector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/jcraft/jsch/AgentProxy;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/jcraft/jsch/AgentProxy;-><init>(Lcom/jcraft/jsch/AgentConnector;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/jcraft/jsch/AgentIdentityRepository;->a:Lcom/jcraft/jsch/AgentProxy;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final add([B)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/AgentIdentityRepository;->a:Lcom/jcraft/jsch/AgentProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    array-length v0, p1

    .line 5
    add-int/lit8 v1, v0, 0x5

    .line 6
    .line 7
    iget-object v2, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    add-int/2addr v0, v2

    .line 21
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 25
    .line 26
    const/16 v1, 0x11

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 32
    .line 33
    array-length v1, p1

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, p1, v3, v1}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_1
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->b:Lcom/jcraft/jsch/AgentConnector;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 41
    .line 42
    invoke-interface {p1, v0}, Lcom/jcraft/jsch/AgentConnector;->query(Lcom/jcraft/jsch/Buffer;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/AgentProxyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 49
    .line 50
    iput v3, p1, Lcom/jcraft/jsch/Buffer;->d:I

    .line 51
    .line 52
    const/4 v0, 0x5

    .line 53
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 59
    .line 60
    .line 61
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    const/4 v0, 0x6

    .line 63
    if-ne p1, v0, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    move v2, v3

    .line 67
    :goto_1
    monitor-exit p0

    .line 68
    return v2

    .line 69
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    throw p1
.end method

.method public final getIdentities()Ljava/util/Vector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/Identity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/AgentIdentityRepository;->a:Lcom/jcraft/jsch/AgentProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/Vector;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 27
    .line 28
    const/16 v3, 0xb

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    :try_start_1
    iget-object v3, p0, Lcom/jcraft/jsch/AgentProxy;->b:Lcom/jcraft/jsch/AgentConnector;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 37
    .line 38
    invoke-interface {v3, v4}, Lcom/jcraft/jsch/AgentConnector;->query(Lcom/jcraft/jsch/Buffer;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/AgentProxyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    :try_start_2
    iget-object v2, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 44
    .line 45
    .line 46
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    const/16 v3, 0xc

    .line 48
    .line 49
    if-eq v2, v3, :cond_0

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-object v0

    .line 53
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-lez v2, :cond_3

    .line 60
    .line 61
    const/16 v3, 0x800

    .line 62
    .line 63
    if-le v2, v3, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move v3, v1

    .line 67
    :goto_0
    if-ge v3, v2, :cond_2

    .line 68
    .line 69
    iget-object v4, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iget-object v5, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    sget-object v6, Lcom/jcraft/jsch/Util;->a:[B

    .line 82
    .line 83
    array-length v6, v5

    .line 84
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 85
    .line 86
    new-instance v8, Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {v8, v5, v1, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 89
    .line 90
    .line 91
    new-instance v5, Lcom/jcraft/jsch/AgentIdentity;

    .line 92
    .line 93
    invoke-direct {v5, p0, v4, v8}, Lcom/jcraft/jsch/AgentIdentity;-><init>(Lcom/jcraft/jsch/AgentProxy;[BLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    .line 98
    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    monitor-exit p0

    .line 105
    return-object v0

    .line 106
    :cond_3
    :goto_1
    monitor-exit p0

    .line 107
    return-object v0

    .line 108
    :catch_0
    :try_start_4
    iget-object v3, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 109
    .line 110
    iput v1, v3, Lcom/jcraft/jsch/Buffer;->d:I

    .line 111
    .line 112
    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    .line 114
    .line 115
    monitor-exit p0

    .line 116
    return-object v0

    .line 117
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/AgentIdentityRepository;->a:Lcom/jcraft/jsch/AgentProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->b:Lcom/jcraft/jsch/AgentConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    invoke-interface {v0}, Lcom/jcraft/jsch/AgentConnector;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/AgentIdentityRepository;->a:Lcom/jcraft/jsch/AgentProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->b:Lcom/jcraft/jsch/AgentConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    invoke-interface {v0}, Lcom/jcraft/jsch/AgentConnector;->isAvailable()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x2

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method

.method public final remove([B)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/AgentIdentityRepository;->a:Lcom/jcraft/jsch/AgentProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    array-length v0, p1

    .line 5
    add-int/lit8 v1, v0, 0x9

    .line 6
    .line 7
    iget-object v2, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 18
    .line 19
    const/4 v2, 0x5

    .line 20
    add-int/2addr v0, v2

    .line 21
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 25
    .line 26
    const/16 v1, 0x12

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 32
    .line 33
    array-length v1, p1

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, p1, v3, v1}, Lcom/jcraft/jsch/Buffer;->putString([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_1
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->b:Lcom/jcraft/jsch/AgentConnector;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 41
    .line 42
    invoke-interface {p1, v0}, Lcom/jcraft/jsch/AgentConnector;->query(Lcom/jcraft/jsch/Buffer;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/AgentProxyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 49
    .line 50
    iput v3, p1, Lcom/jcraft/jsch/Buffer;->d:I

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 58
    .line 59
    .line 60
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    const/4 v0, 0x6

    .line 62
    if-ne p1, v0, :cond_0

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    :cond_0
    monitor-exit p0

    .line 66
    return v3

    .line 67
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    throw p1
.end method

.method public final removeAll()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/AgentIdentityRepository;->a:Lcom/jcraft/jsch/AgentProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 22
    .line 23
    const/16 v2, 0x13

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->b:Lcom/jcraft/jsch/AgentConnector;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 31
    .line 32
    invoke-interface {v0, v2}, Lcom/jcraft/jsch/AgentConnector;->query(Lcom/jcraft/jsch/Buffer;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/AgentProxyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->a:Lcom/jcraft/jsch/Buffer;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    iput v2, v0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    .line 46
    :goto_0
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    throw v0
.end method
