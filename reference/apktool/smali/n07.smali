.class public final synthetic Ln07;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public final synthetic a:Lv07;

.field public final synthetic b:Lz07;

.field public final synthetic c:Loz6;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lv07;Lz07;Loz6;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln07;->a:Lv07;

    .line 5
    .line 6
    iput-object p2, p0, Ln07;->b:Lz07;

    .line 7
    .line 8
    iput-object p3, p0, Ln07;->c:Loz6;

    .line 9
    .line 10
    iput-object p4, p0, Ln07;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Ln07;->e:I

    .line 13
    .line 14
    iput-object p6, p0, Ln07;->f:[Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ln07;->c:Loz6;

    .line 4
    .line 5
    iget-object v2, v1, Loz6;->a:Ljava/lang/String;

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    check-cast v3, Ljava/lang/String;

    .line 10
    .line 11
    move-object/from16 v4, p2

    .line 12
    .line 13
    check-cast v4, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    move-object/from16 v6, p3

    .line 20
    .line 21
    check-cast v6, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v8

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v6, v0, Ln07;->a:Lv07;

    .line 31
    .line 32
    iget-object v6, v6, Lv07;->a:Ls07;

    .line 33
    .line 34
    iget-object v6, v6, Ls07;->e:Lcy0;

    .line 35
    .line 36
    sget-object v7, Loy6;->j:Loy6;

    .line 37
    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    iget-object v10, v0, Ln07;->b:Lz07;

    .line 43
    .line 44
    iget-object v12, v0, Ln07;->d:Ljava/lang/String;

    .line 45
    .line 46
    iget v13, v0, Ln07;->e:I

    .line 47
    .line 48
    iget-object v14, v0, Ln07;->f:[Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v7, :cond_0

    .line 51
    .line 52
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v6, Ljava/io/FileInputStream;

    .line 56
    .line 57
    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :try_start_0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 68
    .line 69
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    iget-wide v0, v1, Loz6;->f:J

    .line 77
    .line 78
    invoke-virtual {v10, v0, v1, v2}, Lz07;->q(JLjava/lang/String;)Lvq;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    move-object v10, v12

    .line 83
    move v11, v13

    .line 84
    move-object v12, v14

    .line 85
    move-object v13, v0

    .line 86
    invoke-static/range {v7 .. v13}, Lcom/swiftapps/sba/SbaSwiftTarNative;->b(Ljava/io/FileDescriptor;JLjava/lang/String;I[Ljava/lang/String;Lvq;)[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    move-object v1, v0

    .line 96
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    :catchall_1
    move-exception v0

    .line 98
    invoke-static {v6, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_0
    instance-of v0, v6, Lpy6;

    .line 103
    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    new-instance v6, Ljava/io/FileInputStream;

    .line 110
    .line 111
    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 119
    .line 120
    .line 121
    sget-object v0, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 122
    .line 123
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-wide v0, v1, Loz6;->f:J

    .line 131
    .line 132
    invoke-virtual {v10, v0, v1, v2}, Lz07;->q(JLjava/lang/String;)Lvq;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    move-wide v10, v0

    .line 137
    invoke-static/range {v7 .. v15}, Lcom/swiftapps/sba/SbaSwiftTarNative;->c(Ljava/io/FileDescriptor;JJLjava/lang/String;I[Ljava/lang/String;Lvq;)[Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 142
    .line 143
    .line 144
    return-object v0

    .line 145
    :catchall_2
    move-exception v0

    .line 146
    move-object v1, v0

    .line 147
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 148
    :catchall_3
    move-exception v0

    .line 149
    invoke-static {v6, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 154
    .line 155
    .line 156
    const/4 v0, 0x0

    .line 157
    return-object v0
.end method
