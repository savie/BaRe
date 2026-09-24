.class public final Lokhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;
.implements Lokhttp3/internal/concurrent/Lockable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Connection$Builder;,
        Lokhttp3/internal/http2/Http2Connection$Companion;,
        Lokhttp3/internal/http2/Http2Connection$Listener;,
        Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
    }
.end annotation


# static fields
.field public static final S:Lokhttp3/internal/http2/Settings;


# instance fields
.field public G:J

.field public H:J

.field public final I:Lokhttp3/internal/http2/FlowControlListener;

.field public final J:Lokhttp3/internal/http2/Settings;

.field public K:Lokhttp3/internal/http2/Settings;

.field public final L:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

.field public M:J

.field public N:J

.field public final O:Lokhttp3/internal/connection/BufferedSocket;

.field public final P:Lokhttp3/internal/http2/Http2Writer;

.field public final Q:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field public final R:Ljava/util/LinkedHashSet;

.field public final a:Lokhttp3/internal/http2/Http2Connection$Listener;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Z

.field public final k:Lokhttp3/internal/concurrent/TaskRunner;

.field public final n:Lokhttp3/internal/concurrent/TaskQueue;

.field public final p:Lokhttp3/internal/concurrent/TaskQueue;

.field public final q:Lokhttp3/internal/concurrent/TaskQueue;

.field public final r:Lokhttp3/internal/http2/PushObserver;

.field public t:J

.field public x:J

.field public y:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/internal/http2/Settings;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/internal/http2/Settings;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    const v2, 0xffff

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/Settings;->b(II)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    const/16 v2, 0x4000

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/Settings;->b(II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lokhttp3/internal/http2/Http2Connection;->S:Lokhttp3/internal/http2/Settings;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->d:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 5
    .line 6
    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->a:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->b:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    iget-object v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->c:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    iput v2, p0, Lokhttp3/internal/http2/Http2Connection;->e:I

    .line 24
    .line 25
    iget-object v2, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 26
    .line 27
    iput-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->k:Lokhttp3/internal/concurrent/TaskRunner;

    .line 28
    .line 29
    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskRunner;->d()Lokhttp3/internal/concurrent/TaskQueue;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iput-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->n:Lokhttp3/internal/concurrent/TaskQueue;

    .line 34
    .line 35
    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskRunner;->d()Lokhttp3/internal/concurrent/TaskQueue;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iput-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->p:Lokhttp3/internal/concurrent/TaskQueue;

    .line 40
    .line 41
    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskRunner;->d()Lokhttp3/internal/concurrent/TaskQueue;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iput-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->q:Lokhttp3/internal/concurrent/TaskQueue;

    .line 46
    .line 47
    sget-object v2, Lokhttp3/internal/http2/PushObserver;->a:Lokhttp3/internal/http2/PushObserver;

    .line 48
    .line 49
    iput-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->r:Lokhttp3/internal/http2/PushObserver;

    .line 50
    .line 51
    iget-object v2, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->g:Lokhttp3/internal/http2/FlowControlListener;

    .line 52
    .line 53
    iput-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->I:Lokhttp3/internal/http2/FlowControlListener;

    .line 54
    .line 55
    new-instance v2, Lokhttp3/internal/http2/Settings;

    .line 56
    .line 57
    invoke-direct {v2}, Lokhttp3/internal/http2/Settings;-><init>()V

    .line 58
    .line 59
    .line 60
    const/4 v4, 0x4

    .line 61
    const/high16 v5, 0x1000000

    .line 62
    .line 63
    invoke-virtual {v2, v4, v5}, Lokhttp3/internal/http2/Settings;->b(II)V

    .line 64
    .line 65
    .line 66
    iput-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->J:Lokhttp3/internal/http2/Settings;

    .line 67
    .line 68
    sget-object v2, Lokhttp3/internal/http2/Http2Connection;->S:Lokhttp3/internal/http2/Settings;

    .line 69
    .line 70
    iput-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->K:Lokhttp3/internal/http2/Settings;

    .line 71
    .line 72
    new-instance v4, Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-direct {v4, v5}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;-><init>(I)V

    .line 76
    .line 77
    .line 78
    iput-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->L:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    .line 79
    .line 80
    invoke-virtual {v2}, Lokhttp3/internal/http2/Settings;->a()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    int-to-long v4, v2

    .line 85
    iput-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->N:J

    .line 86
    .line 87
    iget-object v2, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->b:Lokhttp3/internal/connection/BufferedSocket;

    .line 88
    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    iput-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->O:Lokhttp3/internal/connection/BufferedSocket;

    .line 92
    .line 93
    new-instance v1, Lokhttp3/internal/http2/Http2Writer;

    .line 94
    .line 95
    invoke-interface {v2}, Lokhttp3/internal/connection/BufferedSocket;->a()Lyw0;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-direct {v1, v4}, Lokhttp3/internal/http2/Http2Writer;-><init>(Lyw0;)V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 103
    .line 104
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 105
    .line 106
    new-instance v4, Lokhttp3/internal/http2/Http2Reader;

    .line 107
    .line 108
    invoke-interface {v2}, Lokhttp3/internal/connection/BufferedSocket;->getSource()Lzw0;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-direct {v4, v2}, Lokhttp3/internal/http2/Http2Reader;-><init>(Lzw0;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, p0, v4}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V

    .line 116
    .line 117
    .line 118
    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->Q:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 119
    .line 120
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->R:Ljava/util/LinkedHashSet;

    .line 126
    .line 127
    iget p1, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->f:I

    .line 128
    .line 129
    if-eqz p1, :cond_0

    .line 130
    .line 131
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 132
    .line 133
    int-to-long v4, p1

    .line 134
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    const-string p1, " ping"

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    new-instance v0, Lz64;

    .line 145
    .line 146
    invoke-direct {v0, p0, v1, v2}, Lz64;-><init>(Lokhttp3/internal/http2/Http2Connection;J)V

    .line 147
    .line 148
    .line 149
    new-instance p0, Lokhttp3/internal/concurrent/TaskQueue$schedule$2;

    .line 150
    .line 151
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/concurrent/TaskQueue$schedule$2;-><init>(Ljava/lang/String;Lz64;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, p0, v1, v2}, Lokhttp3/internal/concurrent/TaskQueue;->d(Lokhttp3/internal/concurrent/Task;J)V

    .line 155
    .line 156
    .line 157
    :cond_0
    return-void

    .line 158
    :cond_1
    const-string p0, "socket"

    .line 159
    .line 160
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v1

    .line 164
    :cond_2
    const-string p0, "connectionName"

    .line 165
    .line 166
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v1
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .locals 3

    .line 1
    sget-object v0, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->h(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    monitor-enter p0

    .line 7
    :try_start_1
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->b:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->b:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-array v1, v0, [Lokhttp3/internal/http2/Http2Stream;

    .line 23
    .line 24
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->b:Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    monitor-exit p0

    .line 38
    check-cast p1, [Lokhttp3/internal/http2/Http2Stream;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    array-length v1, p1

    .line 43
    :goto_1
    if-ge v0, v1, :cond_1

    .line 44
    .line 45
    aget-object v2, p1, v0

    .line 46
    .line 47
    :try_start_2
    invoke-virtual {v2, p2, p3}, Lokhttp3/internal/http2/Http2Stream;->d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 48
    .line 49
    .line 50
    :catch_1
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :try_start_3
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 54
    .line 55
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 56
    .line 57
    .line 58
    :catch_2
    :try_start_4
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->O:Lokhttp3/internal/connection/BufferedSocket;

    .line 59
    .line 60
    invoke-interface {p1}, Lwi7;->cancel()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 61
    .line 62
    .line 63
    :catch_3
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->n:Lokhttp3/internal/concurrent/TaskQueue;

    .line 64
    .line 65
    invoke-virtual {p1}, Lokhttp3/internal/concurrent/TaskQueue;->f()V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->p:Lokhttp3/internal/concurrent/TaskQueue;

    .line 69
    .line 70
    invoke-virtual {p1}, Lokhttp3/internal/concurrent/TaskQueue;->f()V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->q:Lokhttp3/internal/concurrent/TaskQueue;

    .line 74
    .line 75
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->f()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :goto_2
    monitor-exit p0

    .line 80
    throw p1
.end method

.method public final b(I)Lokhttp3/internal/http2/Http2Stream;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->b:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lokhttp3/internal/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public final close()V
    .locals 3

    .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->n:Lokhttp3/internal/http2/ErrorCode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->c:Lokhttp3/internal/http2/ErrorCode;

    .line 5
    .line 6
    invoke-virtual {p0, v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(I)Lokhttp3/internal/http2/Http2Stream;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->b:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lokhttp3/internal/http2/Http2Stream;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public final h(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    :try_start_3
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->f:Z

    .line 16
    .line 17
    iget v1, p0, Lokhttp3/internal/http2/Http2Connection;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    .line 19
    :try_start_4
    monitor-exit p0

    .line 20
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 21
    .line 22
    sget-object v2, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 23
    .line 24
    invoke-virtual {p0, v1, p1, v2}, Lokhttp3/internal/http2/Http2Writer;->h(ILokhttp3/internal/http2/ErrorCode;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_1
    move-exception p1

    .line 30
    :try_start_5
    monitor-exit p0

    .line 31
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 32
    :goto_0
    monitor-exit v0

    .line 33
    throw p0
.end method

.method public final j(J)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->L:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    .line 3
    .line 4
    const-wide/16 v3, 0x0

    .line 5
    .line 6
    const/4 v5, 0x2

    .line 7
    move-wide v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->b(Lokhttp3/internal/http2/flowcontrol/WindowCounter;JJI)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->L:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    .line 12
    .line 13
    invoke-virtual {p1}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->a()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->J:Lokhttp3/internal/http2/Settings;

    .line 18
    .line 19
    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->a()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    div-int/lit8 p1, p1, 0x2

    .line 24
    .line 25
    int-to-long p1, p1

    .line 26
    cmp-long p1, v3, p1

    .line 27
    .line 28
    if-ltz p1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1, v3, v4}, Lokhttp3/internal/http2/Http2Connection;->q(IJ)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->L:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    .line 35
    .line 36
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    invoke-static/range {v0 .. v5}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->b(Lokhttp3/internal/http2/flowcontrol/WindowCounter;JJI)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    move-object p1, v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->I:Lokhttp3/internal/http2/FlowControlListener;

    .line 47
    .line 48
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection;->L:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    .line 49
    .line 50
    invoke-interface {p1, p2}, Lokhttp3/internal/http2/FlowControlListener;->b(Lokhttp3/internal/http2/flowcontrol/WindowCounter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit p0

    .line 56
    throw p1
.end method

.method public final m(IZLnw0;J)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p4, v0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, p3, v3}, Lokhttp3/internal/http2/Http2Writer;->b(ZILnw0;I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    .line 15
    .line 16
    if-lez v2, :cond_4

    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :goto_1
    :try_start_0
    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->M:J

    .line 20
    .line 21
    iget-wide v6, p0, Lokhttp3/internal/http2/Http2Connection;->N:J

    .line 22
    .line 23
    cmp-long v2, v4, v6

    .line 24
    .line 25
    if-ltz v2, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->b:Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_3

    .line 45
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 46
    .line 47
    const-string p2, "stream closed"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_2
    sub-long/2addr v6, v4

    .line 54
    :try_start_1
    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    long-to-int v2, v4

    .line 59
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 60
    .line 61
    iget v4, v4, Lokhttp3/internal/http2/Http2Writer;->c:I

    .line 62
    .line 63
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->M:J

    .line 68
    .line 69
    int-to-long v6, v2

    .line 70
    add-long/2addr v4, v6

    .line 71
    iput-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->M:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    monitor-exit p0

    .line 74
    sub-long/2addr p4, v6

    .line 75
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->P:Lokhttp3/internal/http2/Http2Writer;

    .line 76
    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    cmp-long v5, p4, v0

    .line 80
    .line 81
    if-nez v5, :cond_3

    .line 82
    .line 83
    const/4 v5, 0x1

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move v5, v3

    .line 86
    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Lokhttp3/internal/http2/Http2Writer;->b(ZILnw0;I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 95
    .line 96
    .line 97
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :goto_3
    monitor-exit p0

    .line 104
    throw p1

    .line 105
    :cond_4
    return-void
.end method

.method public final n(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x5b

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "] writeSynReset"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lb74;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1, p2}, Lb74;-><init>(Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x6

    .line 34
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->n:Lokhttp3/internal/concurrent/TaskQueue;

    .line 35
    .line 36
    invoke-static {p0, v0, v1, p1}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lbt3;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final q(IJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x5b

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "] windowUpdate"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, La74;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1, p2, p3}, La74;-><init>(Lokhttp3/internal/http2/Http2Connection;IJ)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x6

    .line 34
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->n:Lokhttp3/internal/concurrent/TaskQueue;

    .line 35
    .line 36
    invoke-static {p0, v0, v1, p1}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lbt3;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
