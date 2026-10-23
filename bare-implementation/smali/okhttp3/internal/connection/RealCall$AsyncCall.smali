.class public final Lokhttp3/internal/connection/RealCall$AsyncCall;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AsyncCall"
.end annotation


# instance fields
.field public final a:Lbn0;

.field public volatile b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic c:Lokhttp3/internal/connection/RealCall;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Lbn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/connection/RealCall$AsyncCall;->c:Lokhttp3/internal/connection/RealCall;

    .line 5
    .line 6
    iput-object p2, p0, Lokhttp3/internal/connection/RealCall$AsyncCall;->a:Lbn0;

    .line 7
    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lokhttp3/internal/connection/RealCall$AsyncCall;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const-string v0, "Callback failure for "

    .line 2
    .line 3
    const-string v1, "canceled due to "

    .line 4
    .line 5
    iget-object v2, p0, Lokhttp3/internal/connection/RealCall$AsyncCall;->c:Lokhttp3/internal/connection/RealCall;

    .line 6
    .line 7
    iget-object v2, v2, Lokhttp3/internal/connection/RealCall;->b:Lokhttp3/Request;

    .line 8
    .line 9
    iget-object v2, v2, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 10
    .line 11
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->h()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "OkHttp "

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lokhttp3/internal/connection/RealCall$AsyncCall;->c:Lokhttp3/internal/connection/RealCall;

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v4, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    iget-object v2, v3, Lokhttp3/internal/connection/RealCall;->e:Lokhttp3/internal/connection/RealCall$timeout$1;

    .line 35
    .line 36
    invoke-virtual {v2}, Lc70;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    :try_start_1
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealCall;->d()Lokhttp3/Response;

    .line 43
    .line 44
    .line 45
    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 46
    const/4 v8, 0x1

    .line 47
    :try_start_2
    iget-object v9, p0, Lokhttp3/internal/connection/RealCall$AsyncCall;->a:Lbn0;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    .line 49
    :try_start_3
    invoke-virtual {v9, v7}, Lbn0;->b(Lokhttp3/Response;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v7

    .line 54
    :try_start_4
    iget-object v9, v9, Lbn0;->a:Ljava/util/concurrent/CompletableFuture;

    .line 55
    .line 56
    invoke-virtual {v9, v7}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 57
    .line 58
    .line 59
    :goto_0
    :try_start_5
    iget-object v0, v3, Lokhttp3/internal/connection/RealCall;->a:Lokhttp3/OkHttpClient;

    .line 60
    .line 61
    iget-object v0, v0, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    .line 62
    .line 63
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v6, v6, p0, v2}, Lokhttp3/Dispatcher;->c(Lokhttp3/Dispatcher;Lokhttp3/internal/connection/RealCall$AsyncCall;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealCall$AsyncCall;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_8

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto/16 :goto_a

    .line 72
    .line 73
    :goto_2
    move v7, v8

    .line 74
    goto :goto_4

    .line 75
    :goto_3
    move v7, v8

    .line 76
    goto :goto_6

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    goto :goto_2

    .line 79
    :catch_1
    move-exception v1

    .line 80
    goto :goto_3

    .line 81
    :catchall_2
    move-exception v0

    .line 82
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealCall;->cancel()V

    .line 83
    .line 84
    .line 85
    if-nez v7, :cond_0

    .line 86
    .line 87
    new-instance v7, Ljava/io/IOException;

    .line 88
    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {v7, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lokhttp3/internal/connection/RealCall$AsyncCall;->a:Lbn0;

    .line 108
    .line 109
    invoke-virtual {v1, v3, v7}, Lbn0;->a(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 110
    .line 111
    .line 112
    goto :goto_5

    .line 113
    :catchall_3
    move-exception v0

    .line 114
    goto :goto_9

    .line 115
    :cond_0
    :goto_5
    instance-of v1, v0, Ljava/lang/InterruptedException;

    .line 116
    .line 117
    if-eqz v1, :cond_1

    .line 118
    .line 119
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 124
    .line 125
    .line 126
    :try_start_7
    iget-object v0, v3, Lokhttp3/internal/connection/RealCall;->a:Lokhttp3/OkHttpClient;

    .line 127
    .line 128
    iget-object v0, v0, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    :try_start_8
    throw v0

    .line 132
    :catch_2
    move-exception v1

    .line 133
    :goto_6
    if-eqz v7, :cond_2

    .line 134
    .line 135
    sget-object v7, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 136
    .line 137
    sget-object v7, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 138
    .line 139
    invoke-static {v3}, Lokhttp3/internal/connection/RealCall;->a(Lokhttp3/internal/connection/RealCall;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const/4 v8, 0x4

    .line 148
    invoke-virtual {v7, v8, v0, v1}, Lokhttp3/internal/platform/Platform;->j(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    goto :goto_7

    .line 152
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall$AsyncCall;->a:Lbn0;

    .line 153
    .line 154
    invoke-virtual {v0, v3, v1}, Lbn0;->a(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 155
    .line 156
    .line 157
    :goto_7
    :try_start_9
    iget-object v0, v3, Lokhttp3/internal/connection/RealCall;->a:Lokhttp3/OkHttpClient;

    .line 158
    .line 159
    iget-object v0, v0, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :goto_8
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :goto_9
    :try_start_a
    iget-object v1, v3, Lokhttp3/internal/connection/RealCall;->a:Lokhttp3/OkHttpClient;

    .line 167
    .line 168
    iget-object v1, v1, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v6, v6, p0, v2}, Lokhttp3/Dispatcher;->c(Lokhttp3/Dispatcher;Lokhttp3/internal/connection/RealCall$AsyncCall;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealCall$AsyncCall;I)V

    .line 174
    .line 175
    .line 176
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 177
    :goto_a
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0
.end method
