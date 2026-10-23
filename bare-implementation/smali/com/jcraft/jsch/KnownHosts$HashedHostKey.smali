.class Lcom/jcraft/jsch/KnownHosts$HashedHostKey;
.super Lcom/jcraft/jsch/HostKey;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/KnownHosts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HashedHostKey"
.end annotation


# instance fields
.field public g:Z

.field public h:[B

.field public i:[B

.field public final synthetic j:Lcom/jcraft/jsch/KnownHosts;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;I[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 124
    const-string v2, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->j:Lcom/jcraft/jsch/KnownHosts;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-object v2, p3

    .line 6
    move v3, p4

    .line 7
    move-object v4, p5

    .line 8
    move-object v5, p6

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    iput-boolean p0, v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->g:Z

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput-object p2, v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->h:[B

    .line 17
    .line 18
    iput-object p2, v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->i:[B

    .line 19
    .line 20
    iget-object p3, v0, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    .line 21
    .line 22
    const-string p4, "|1|"

    .line 23
    .line 24
    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-eqz p3, :cond_2

    .line 29
    .line 30
    iget-object p3, v0, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    .line 31
    .line 32
    const/4 p4, 0x3

    .line 33
    invoke-virtual {p3, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    const-string p5, "|"

    .line 38
    .line 39
    invoke-virtual {p3, p5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-lez p3, :cond_2

    .line 44
    .line 45
    iget-object p3, v0, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p3, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p3, p5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result p4

    .line 55
    invoke-virtual {p3, p0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    invoke-virtual {p3, p5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result p5

    .line 63
    const/4 p6, 0x1

    .line 64
    add-int/2addr p5, p6

    .line 65
    invoke-virtual {p3, p5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    sget-object p5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-virtual {p4, p5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result p4

    .line 79
    invoke-static {v1, p0, p4}, Lcom/jcraft/jsch/Util;->i([BII)[B

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    iput-object p4, v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->h:[B

    .line 84
    .line 85
    invoke-virtual {p3, p5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    invoke-static {p4, p0, p3}, Lcom/jcraft/jsch/Util;->i([BII)[B

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    iput-object p0, v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->i:[B

    .line 98
    .line 99
    iget-object p0, p1, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    .line 100
    .line 101
    invoke-interface {p0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    iget-object p1, v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->h:[B

    .line 106
    .line 107
    array-length p1, p1

    .line 108
    if-ne p1, p0, :cond_1

    .line 109
    .line 110
    iget-object p1, v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->i:[B

    .line 111
    .line 112
    array-length p1, p1

    .line 113
    if-eq p1, p0, :cond_0

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    iput-boolean p6, v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->g:Z

    .line 117
    .line 118
    return-void

    .line 119
    :cond_1
    :goto_0
    iput-object p2, v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->h:[B

    .line 120
    .line 121
    iput-object p2, v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->i:[B

    .line 122
    .line 123
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;I[B)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/jcraft/jsch/HostKey;->a(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->j:Lcom/jcraft/jsch/KnownHosts;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    .line 14
    .line 15
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->j:Lcom/jcraft/jsch/KnownHosts;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->h:[B

    .line 21
    .line 22
    invoke-interface {v2, v3}, Lcom/jcraft/jsch/MAC;->init([B)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    invoke-static {p1, v2}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->j:Lcom/jcraft/jsch/KnownHosts;

    .line 32
    .line 33
    iget-object v3, v3, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    .line 34
    .line 35
    array-length v4, v2

    .line 36
    invoke-interface {v3, v2, v0, v4}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->j:Lcom/jcraft/jsch/KnownHosts;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    .line 42
    .line 43
    invoke-interface {v2}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    new-array v2, v2, [B

    .line 48
    .line 49
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->j:Lcom/jcraft/jsch/KnownHosts;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    .line 52
    .line 53
    invoke-interface {v3, v2, v0}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->i:[B

    .line 57
    .line 58
    invoke-static {v3, v2}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    monitor-exit v1

    .line 63
    return v2

    .line 64
    :catchall_0
    move-exception v2

    .line 65
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    iget-object p0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->j:Lcom/jcraft/jsch/KnownHosts;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/jcraft/jsch/KnownHosts;->a:Lcom/jcraft/jsch/JSch;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->a()Lcom/jcraft/jsch/Logger;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v3, "an error occurred while trying to check hash for host "

    .line 81
    .line 82
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const/4 v2, 0x3

    .line 93
    invoke-interface {p0, v2, p1, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    return v0
.end method
