.class Lcom/jcraft/jsch/RequestX11;
.super Lcom/jcraft/jsch/Request;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 15
    .line 16
    .line 17
    const/16 v2, 0x62

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 20
    .line 21
    .line 22
    iget p2, p2, Lcom/jcraft/jsch/Channel;->b:I

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 25
    .line 26
    .line 27
    const-string p2, "x11-req"

    .line 28
    .line 29
    sget-object v2, Lcom/jcraft/jsch/Util;->a:[B

    .line 30
    .line 31
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 38
    .line 39
    .line 40
    iget-boolean p2, p0, Lcom/jcraft/jsch/Request;->a:Z

    .line 41
    .line 42
    int-to-byte p2, p2

    .line 43
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 44
    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 48
    .line 49
    .line 50
    const-string v3, "MIT-MAGIC-COOKIE-1"

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 57
    .line 58
    .line 59
    sget-object v2, Lcom/jcraft/jsch/ChannelX11;->D:Ljava/util/Hashtable;

    .line 60
    .line 61
    monitor-enter v2

    .line 62
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, [B

    .line 67
    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    sget-object v3, Lcom/jcraft/jsch/Session;->A0:Lcom/jcraft/jsch/Random;

    .line 71
    .line 72
    const/16 v4, 0x10

    .line 73
    .line 74
    new-array v5, v4, [B

    .line 75
    .line 76
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    invoke-interface {v3, v5, p2, v4}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 78
    .line 79
    .line 80
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    :try_start_2
    sget-object v3, Lcom/jcraft/jsch/ChannelX11;->C:Ljava/util/Hashtable;

    .line 82
    .line 83
    invoke-virtual {v3, p1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const/16 v3, 0x20

    .line 87
    .line 88
    new-array v3, v3, [B

    .line 89
    .line 90
    move v6, p2

    .line 91
    :goto_0
    if-ge v6, v4, :cond_0

    .line 92
    .line 93
    mul-int/lit8 v7, v6, 0x2

    .line 94
    .line 95
    sget-object v8, Lcom/jcraft/jsch/ChannelX11;->E:[B

    .line 96
    .line 97
    aget-byte v9, v5, v6

    .line 98
    .line 99
    ushr-int/lit8 v9, v9, 0x4

    .line 100
    .line 101
    and-int/lit8 v9, v9, 0xf

    .line 102
    .line 103
    aget-byte v9, v8, v9

    .line 104
    .line 105
    aput-byte v9, v3, v7

    .line 106
    .line 107
    add-int/lit8 v7, v7, 0x1

    .line 108
    .line 109
    aget-byte v9, v5, v6

    .line 110
    .line 111
    and-int/lit8 v9, v9, 0xf

    .line 112
    .line 113
    aget-byte v8, v8, v9

    .line 114
    .line 115
    aput-byte v8, v3, v7

    .line 116
    .line 117
    add-int/lit8 v6, v6, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    goto :goto_2

    .line 122
    :cond_0
    sget-object v4, Lcom/jcraft/jsch/ChannelX11;->D:Ljava/util/Hashtable;

    .line 123
    .line 124
    invoke-virtual {v4, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catchall_1
    move-exception p0

    .line 129
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    :try_start_4
    throw p0

    .line 131
    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    array-length v2, v3

    .line 133
    invoke-virtual {v0, v3, p2, v2}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Packet;)V

    .line 140
    .line 141
    .line 142
    const/4 p0, 0x1

    .line 143
    iput-boolean p0, p1, Lcom/jcraft/jsch/Session;->K:Z

    .line 144
    .line 145
    return-void

    .line 146
    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 147
    throw p0
.end method

.method public final setCookie(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/jcraft/jsch/Util;->a:[B

    .line 2
    .line 3
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-static {p1, p0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sput-object p0, Lcom/jcraft/jsch/ChannelX11;->A:[B

    .line 10
    .line 11
    return-void
.end method
