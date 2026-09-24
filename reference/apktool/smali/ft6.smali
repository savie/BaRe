.class public final Lft6;
.super Ltt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final f:Ll15;


# instance fields
.field public e:Lgd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lft6;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lft6;->f:Ll15;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final H(Lst6;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lev6;->a:Ldv6;

    .line 2
    .line 3
    iget-object v1, p1, Lev6;->a:Ldv6;

    .line 4
    .line 5
    check-cast v0, Lut6;

    .line 6
    .line 7
    iget-wide v2, v0, Lut6;->f:J

    .line 8
    .line 9
    iget-object v0, p0, Lft6;->e:Lgd;

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-object v5, v0, Lgd;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v5, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object v0, v0, Lgd;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 39
    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    move-object v0, v1

    .line 44
    check-cast v0, Lut6;

    .line 45
    .line 46
    iget-wide v4, v0, Lut6;->f:J

    .line 47
    .line 48
    const-wide/16 v6, -0x1

    .line 49
    .line 50
    cmp-long v4, v4, v6

    .line 51
    .line 52
    if-nez v4, :cond_0

    .line 53
    .line 54
    iget-object v0, v0, Lut6;->e:Lit6;

    .line 55
    .line 56
    sget-object v4, Lit6;->G:Lit6;

    .line 57
    .line 58
    if-ne v0, v4, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string p1, "Received response with unknown sequence number << {} >>"

    .line 62
    .line 63
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v2, Lft6;->f:Ll15;

    .line 68
    .line 69
    invoke-interface {v2, v0, p1}, Ll15;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Lol1;

    .line 75
    .line 76
    new-instance p1, Lkd2;

    .line 77
    .line 78
    invoke-direct {p1, v1}, Lkd2;-><init>(Ldv6;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    :goto_0
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Lol1;

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 99
    .line 100
    .line 101
    throw p0
.end method
