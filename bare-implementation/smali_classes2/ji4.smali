.class public final synthetic Lji4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lli4;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lc62;

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lmt3;


# direct methods
.method public synthetic constructor <init>(Lli4;Ljava/lang/String;Lc62;JLjava/lang/String;Lmt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lji4;->a:Lli4;

    .line 5
    .line 6
    iput-object p2, p0, Lji4;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lji4;->c:Lc62;

    .line 9
    .line 10
    iput-wide p4, p0, Lji4;->d:J

    .line 11
    .line 12
    iput-object p6, p0, Lji4;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p7, p0, Lji4;->f:Lmt3;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "put: "

    .line 4
    .line 5
    iget-object v3, v0, Lji4;->a:Lli4;

    .line 6
    .line 7
    iget-object v7, v0, Lji4;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, v0, Lji4;->c:Lc62;

    .line 10
    .line 11
    iget-wide v4, v0, Lji4;->d:J

    .line 12
    .line 13
    iget-object v6, v0, Lji4;->e:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, v0, Lji4;->f:Lmt3;

    .line 16
    .line 17
    move-object/from16 v8, p1

    .line 18
    .line 19
    check-cast v8, Lcom/jcraft/jsch/ChannelSftp;

    .line 20
    .line 21
    move-object/from16 v9, p2

    .line 22
    .line 23
    check-cast v9, Lcom/jcraft/jsch/Session;

    .line 24
    .line 25
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/4 v10, 0x1

    .line 32
    :try_start_0
    new-array v10, v10, [C

    .line 33
    .line 34
    const/4 v11, 0x0

    .line 35
    const/16 v12, 0x2f

    .line 36
    .line 37
    aput-char v12, v10, v11

    .line 38
    .line 39
    invoke-static {v7, v10}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    const-string v13, ""

    .line 44
    .line 45
    invoke-static {v12, v10, v13}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    if-lez v12, :cond_0

    .line 54
    .line 55
    invoke-virtual {v3, v10, v8}, Lli4;->v(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {v2}, Lc62;->a()Ljava/io/BufferedInputStream;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    new-instance v10, Lf86;

    .line 63
    .line 64
    invoke-virtual {v3, v7}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    invoke-virtual {v8, v12}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    new-instance v13, Lh20;

    .line 73
    .line 74
    const/4 v14, 0x2

    .line 75
    invoke-direct {v13, v0, v14}, Lh20;-><init>(Ljava/lang/Object;I)V

    .line 76
    .line 77
    .line 78
    invoke-direct {v10, v12, v4, v5, v13}, Lf86;-><init>(Ljava/io/OutputStream;JLqt3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    const/high16 v0, 0x40000

    .line 82
    .line 83
    :try_start_1
    invoke-static {v2, v10, v0}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 84
    .line 85
    .line 86
    :try_start_2
    invoke-virtual {v10}, Lf86;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    .line 88
    .line 89
    :try_start_3
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 90
    .line 91
    .line 92
    invoke-static {v8, v9}, Lli4;->A(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Session;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v7}, Lli4;->B(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v6}, Lli4;->B(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v7}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    move-object v4, v6

    .line 106
    invoke-virtual {v3, v4}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    new-instance v2, Lei4;

    .line 111
    .line 112
    invoke-direct/range {v2 .. v7}, Lei4;-><init>(Lli4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/4 v0, 0x3

    .line 116
    invoke-static {v3, v11, v2, v0}, Lli4;->E(Lli4;ZLqt3;I)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .line 118
    .line 119
    invoke-static {v8, v9}, Lli4;->A(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Session;)V

    .line 120
    .line 121
    .line 122
    sget-object v0, Lbe8;->a:Lbe8;

    .line 123
    .line 124
    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    goto :goto_2

    .line 127
    :catch_0
    move-exception v0

    .line 128
    goto :goto_1

    .line 129
    :catchall_1
    move-exception v0

    .line 130
    move-object v4, v0

    .line 131
    goto :goto_0

    .line 132
    :catchall_2
    move-exception v0

    .line 133
    move-object v4, v0

    .line 134
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 135
    :catchall_3
    move-exception v0

    .line 136
    :try_start_5
    invoke-static {v10, v4}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 140
    :goto_0
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 141
    :catchall_4
    move-exception v0

    .line 142
    :try_start_7
    invoke-static {v2, v4}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 146
    :goto_1
    :try_start_8
    invoke-static {v8, v9}, Lli4;->A(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Session;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v7}, Lli4;->j(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 153
    .line 154
    const-string v11, "JschService"

    .line 155
    .line 156
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    const/4 v14, 0x4

    .line 165
    const/4 v15, 0x0

    .line 166
    const/4 v13, 0x0

    .line 167
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 171
    :goto_2
    invoke-static {v8, v9}, Lli4;->A(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Session;)V

    .line 172
    .line 173
    .line 174
    throw v0
.end method
