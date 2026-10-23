.class public final Lwt6;
.super Ltt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final k:Ll15;


# instance fields
.field public final e:Ljt6;

.field public final f:Lgd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lwt6;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lwt6;->k:Ll15;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljt6;Lgd;)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lol1;-><init>(IZ)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lwt6;->e:Ljt6;

    .line 7
    .line 8
    iput-object p2, p0, Lwt6;->f:Lgd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final H(Lst6;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lev6;->a:Ldv6;

    .line 2
    .line 3
    check-cast v0, Lut6;

    .line 4
    .line 5
    iget-wide v0, v0, Lut6;->f:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lwt6;->f:Lgd;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lgd;->j(Ljava/lang/Long;)Ljk6;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :try_start_0
    iget-object p0, p0, Lwt6;->e:Ljt6;

    .line 18
    .line 19
    iget-object v0, v0, Ljk6;->b:Lev6;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1}, Ljt6;->a(Lev6;Lst6;)Lrt6;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catch Liw0; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    invoke-virtual {p0}, Lev6;->c()Ldv6;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lut6;

    .line 33
    .line 34
    iget-wide v2, p1, Lut6;->f:J

    .line 35
    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "Unable to find outstanding request for messageId "

    .line 41
    .line 42
    iget-object v2, v1, Lgd;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 51
    .line 52
    .line 53
    :try_start_1
    iget-object v3, v1, Lgd;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljk6;

    .line 62
    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    iget-object p1, v1, Lgd;->d:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Ljava/util/HashMap;

    .line 68
    .line 69
    iget-object v0, v3, Ljk6;->d:Ljava/util/UUID;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 79
    .line 80
    .line 81
    iget-object p1, v3, Ljk6;->a:Lm86;

    .line 82
    .line 83
    iget-object v0, p1, Lm86;->e:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 88
    .line 89
    .line 90
    :try_start_2
    iget-object v1, p1, Lm86;->b:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Ll15;

    .line 93
    .line 94
    const-string v2, "Setting << {} >> to `{}`"

    .line 95
    .line 96
    iget-object v3, p1, Lm86;->c:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v3, Ljava/lang/String;

    .line 99
    .line 100
    invoke-interface {v1, v3, p0, v2}, Ll15;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iput-object p0, p1, Lm86;->k:Ljava/lang/Object;

    .line 104
    .line 105
    iget-object p0, p1, Lm86;->f:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Ljava/util/concurrent/locks/Condition;

    .line 108
    .line 109
    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    :try_start_3
    new-instance p0, Lgv6;

    .line 124
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 141
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :catch_0
    move-exception p0

    .line 150
    sget-object v0, Lwt6;->k:Ll15;

    .line 151
    .line 152
    const-string v1, "Failed to deserialize SMB2 Packet Data of {}"

    .line 153
    .line 154
    invoke-interface {v0, p1, v1}, Ll15;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance p1, Lva8;

    .line 158
    .line 159
    const-string v0, "Unable to deserialize SMB2 Packet Data."

    .line 160
    .line 161
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    throw p1
.end method
