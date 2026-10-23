.class public final Lav6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final e:Ll15;


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentHashMap;

.field public b:Lyf1;

.field public c:Ldi7;

.field public d:Lcv6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lav6;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lav6;->e:Ll15;

    .line 8
    .line 9
    return-void
.end method

.method private a(Lwr1;)V
    .locals 3
    .annotation runtime Lo24;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p1, Lwr1;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ":"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v1, p1, Lwr1;->b:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lav6;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lav6;->b:Lyf1;

    .line 32
    .line 33
    iget-object p1, p1, Lwr1;->a:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v2, v1, Lyf1;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_1
    iget-object v1, v1, Lyf1;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    :try_start_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lav6;->e:Ll15;

    .line 53
    .line 54
    const-string v1, "Connection to << {} >> closed"

    .line 55
    .line 56
    invoke-interface {p1, v0, v1}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_0

    .line 63
    :catchall_1
    move-exception p1

    .line 64
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    throw p1
.end method


# virtual methods
.method public final b(ILjava/lang/String;)Lur1;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    const-string v1, ":"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lav6;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lur1;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v2, v1, Lur1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-lez v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget-object v2, v1, Lur1;->y:Lyl2;

    .line 45
    .line 46
    invoke-virtual {v2}, Lyl2;->e()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    monitor-exit p0

    .line 54
    return-object v1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    :goto_1
    new-instance v1, Lur1;

    .line 58
    .line 59
    iget-object v2, p0, Lav6;->c:Ldi7;

    .line 60
    .line 61
    iget-object v3, p0, Lav6;->d:Lcv6;

    .line 62
    .line 63
    iget-object v4, p0, Lav6;->b:Lyf1;

    .line 64
    .line 65
    invoke-direct {v1, v2, p0, v3, v4}, Lur1;-><init>(Ldi7;Lav6;Lcv6;Lyf1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lur1;->g(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    :try_start_2
    iget-object p1, p0, Lav6;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    monitor-exit p0

    .line 77
    return-object v1

    .line 78
    :catch_0
    move-exception p1

    .line 79
    const/4 p2, 0x1

    .line 80
    new-array p2, p2, [Ljava/lang/AutoCloseable;

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    aput-object v1, p2, v0

    .line 84
    .line 85
    sget v1, Lo84;->a:I

    .line 86
    .line 87
    aget-object p2, p2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    if-eqz p2, :cond_4

    .line 90
    .line 91
    :try_start_3
    invoke-static {p2}, Leq3;->r(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    .line 93
    .line 94
    :catch_1
    :cond_4
    :try_start_4
    throw p1

    .line 95
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    throw p1
.end method

.method public final close()V
    .locals 4

    .line 1
    const-string v0, "Going to close all remaining connections"

    .line 2
    .line 3
    sget-object v1, Lav6;->e:Ll15;

    .line 4
    .line 5
    invoke-interface {v1, v0}, Ll15;->w(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lav6;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lur1;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    :try_start_0
    invoke-virtual {v0, v2}, Lur1;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v2

    .line 36
    const-string v3, "Error closing connection to host {}"

    .line 37
    .line 38
    invoke-virtual {v0}, Lur1;->h()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v1, v0, v3}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "Exception was: "

    .line 46
    .line 47
    invoke-interface {v1, v0, v2}, Ll15;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method
