.class public final Lwz5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static G:J


# instance fields
.field public A:Ljava/lang/String;

.field public B:J

.field public C:I

.field public D:I

.field public E:Ljava/util/concurrent/ScheduledFuture;

.field public F:J

.field public final a:Lwj6;

.field public final b:Lf64;

.field public c:Ljava/lang/String;

.field public final d:Ljava/util/HashSet;

.field public e:Z

.field public f:J

.field public g:Lvr1;

.field public h:Lrz5;

.field public i:J

.field public j:J

.field public k:J

.field public final l:Ljava/util/HashMap;

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/HashMap;

.field public final o:Ljava/util/concurrent/ConcurrentHashMap;

.field public final p:Ljava/util/HashMap;

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Z

.field public final u:Lyr1;

.field public final v:Lyu1;

.field public final w:Lyu1;

.field public final x:Ljava/util/concurrent/ScheduledExecutorService;

.field public final y:Lu00;

.field public final z:Lln6;


# direct methods
.method public constructor <init>(Lyr1;Lf64;Lwj6;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lwz5;->d:Ljava/util/HashSet;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lwz5;->e:Z

    .line 13
    .line 14
    sget-object v0, Lrz5;->a:Lrz5;

    .line 15
    .line 16
    iput-object v0, p0, Lwz5;->h:Lrz5;

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lwz5;->i:J

    .line 21
    .line 22
    iput-wide v0, p0, Lwz5;->j:J

    .line 23
    .line 24
    iput-wide v0, p0, Lwz5;->k:J

    .line 25
    .line 26
    iput-wide v0, p0, Lwz5;->B:J

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lwz5;->C:I

    .line 30
    .line 31
    iput v0, p0, Lwz5;->D:I

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lwz5;->E:Ljava/util/concurrent/ScheduledFuture;

    .line 35
    .line 36
    iput-object p3, p0, Lwz5;->a:Lwj6;

    .line 37
    .line 38
    iput-object p1, p0, Lwz5;->u:Lyr1;

    .line 39
    .line 40
    iget-object p3, p1, Lyr1;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p3, Ljava/util/concurrent/ScheduledExecutorService;

    .line 43
    .line 44
    iput-object p3, p0, Lwz5;->x:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    .line 46
    iget-object v1, p1, Lyr1;->d:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lyu1;

    .line 49
    .line 50
    iput-object v1, p0, Lwz5;->v:Lyu1;

    .line 51
    .line 52
    iget-object v1, p1, Lyr1;->e:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Lyu1;

    .line 55
    .line 56
    iput-object v1, p0, Lwz5;->w:Lyu1;

    .line 57
    .line 58
    iput-object p2, p0, Lwz5;->b:Lf64;

    .line 59
    .line 60
    new-instance p2, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p2, p0, Lwz5;->p:Ljava/util/HashMap;

    .line 66
    .line 67
    new-instance p2, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p2, p0, Lwz5;->l:Ljava/util/HashMap;

    .line 73
    .line 74
    new-instance p2, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p2, p0, Lwz5;->n:Ljava/util/HashMap;

    .line 80
    .line 81
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    .line 83
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p2, p0, Lwz5;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    .line 88
    new-instance p2, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p2, p0, Lwz5;->m:Ljava/util/ArrayList;

    .line 94
    .line 95
    iget-object p1, p1, Lyr1;->f:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Lub;

    .line 98
    .line 99
    new-instance p2, Lu00;

    .line 100
    .line 101
    const/4 v1, 0x4

    .line 102
    const-string v2, "ConnectionRetryHelper"

    .line 103
    .line 104
    invoke-direct {p2, v1, p1, v2, v0}, Lu00;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    new-instance v2, Lln6;

    .line 108
    .line 109
    invoke-direct {v2, p3, p2}, Lln6;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lu00;)V

    .line 110
    .line 111
    .line 112
    iput-object v2, p0, Lwz5;->z:Lln6;

    .line 113
    .line 114
    sget-wide p2, Lwz5;->G:J

    .line 115
    .line 116
    const-wide/16 v2, 0x1

    .line 117
    .line 118
    add-long/2addr v2, p2

    .line 119
    sput-wide v2, Lwz5;->G:J

    .line 120
    .line 121
    new-instance v2, Lu00;

    .line 122
    .line 123
    const-string v3, "pc_"

    .line 124
    .line 125
    invoke-static {p2, p3, v3}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    const-string p3, "PersistentConnection"

    .line 130
    .line 131
    invoke-direct {v2, v1, p1, p3, p2}, Lu00;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iput-object v2, p0, Lwz5;->y:Lu00;

    .line 135
    .line 136
    iput-object v0, p0, Lwz5;->A:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p0}, Lwz5;->b()V

    .line 139
    .line 140
    .line 141
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lwz5;->h:Lrz5;

    .line 2
    .line 3
    sget-object v0, Lrz5;->d:Lrz5;

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lrz5;->e:Lrz5;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final b()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lwz5;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lwz5;->E:Ljava/util/concurrent/ScheduledFuture;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v0, Lx7;

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-direct {v0, p0, v1}, Lx7;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    const-wide/32 v1, 0xea60

    .line 22
    .line 23
    .line 24
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    iget-object v4, p0, Lwz5;->x:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    invoke-interface {v4, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lwz5;->E:Ljava/util/concurrent/ScheduledFuture;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lwz5;->d:Ljava/util/HashSet;

    .line 36
    .line 37
    const-string v2, "connection_idle"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Lwz5;->d()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    xor-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    const-string v3, ""

    .line 52
    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {v0, v3, v1}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lwz5;->h(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lwz5;->y:Lu00;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu00;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, "Connection interrupted for: "

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-array v4, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v3, v4}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lwz5;->d:Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lwz5;->g:Lvr1;

    .line 28
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    iget-object v4, p0, Lwz5;->z:Lln6;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-virtual {p1, v2}, Lvr1;->c(I)V

    .line 37
    .line 38
    .line 39
    iput-object v3, p0, Lwz5;->g:Lvr1;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object p1, v4, Lln6;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 43
    .line 44
    iget-object v5, v4, Lln6;->b:Lu00;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    const-string p1, "Cancelling existing retry attempt"

    .line 49
    .line 50
    new-array v6, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {v5, p1, v3, v6}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, v4, Lln6;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 56
    .line 57
    invoke-interface {p1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 58
    .line 59
    .line 60
    iput-object v3, v4, Lln6;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const-string p1, "No existing retry attempt to cancel"

    .line 64
    .line 65
    new-array v2, v2, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v5, p1, v3, v2}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iput-wide v0, v4, Lln6;->i:J

    .line 71
    .line 72
    sget-object p1, Lrz5;->a:Lrz5;

    .line 73
    .line 74
    iput-object p1, p0, Lwz5;->h:Lrz5;

    .line 75
    .line 76
    :goto_1
    const/4 p0, 0x1

    .line 77
    iput-boolean p0, v4, Lln6;->j:Z

    .line 78
    .line 79
    iput-wide v0, v4, Lln6;->i:J

    .line 80
    .line 81
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lwz5;->p:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lwz5;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lwz5;->l:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lwz5;->n:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final e(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/String;Lcl6;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "p"

    .line 7
    .line 8
    invoke-static {p2}, Lyc9;->M(Ljava/util/List;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string p2, "d"

    .line 16
    .line 17
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    if-eqz p4, :cond_0

    .line 21
    .line 22
    const-string p2, "h"

    .line 23
    .line 24
    invoke-virtual {v0, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-wide p2, p0, Lwz5;->i:J

    .line 28
    .line 29
    const-wide/16 v1, 0x1

    .line 30
    .line 31
    add-long/2addr v1, p2

    .line 32
    iput-wide v1, p0, Lwz5;->i:J

    .line 33
    .line 34
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    new-instance v1, Luz5;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, v1, Luz5;->a:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v0, v1, Luz5;->b:Ljava/util/HashMap;

    .line 46
    .line 47
    iput-object p5, v1, Luz5;->c:Lcl6;

    .line 48
    .line 49
    iget-object p1, p0, Lwz5;->n:Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {p1, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lwz5;->h:Lrz5;

    .line 55
    .line 56
    sget-object p4, Lrz5;->e:Lrz5;

    .line 57
    .line 58
    if-ne p1, p4, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0, p2, p3}, Lwz5;->m(J)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide p1

    .line 67
    iput-wide p1, p0, Lwz5;->F:J

    .line 68
    .line 69
    invoke-virtual {p0}, Lwz5;->b()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final f(Lvz5;)Ltz5;
    .locals 5

    .line 1
    iget-object v0, p0, Lwz5;->y:Lu00;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu00;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v4, "removing query "

    .line 14
    .line 15
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-array v4, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v3, v4}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v1, p0, Lwz5;->p:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Lu00;->e()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "Trying to remove listener for QuerySpec "

    .line 47
    .line 48
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, " but no listener exists."

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-array p1, v2, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {v0, p0, v3, p1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-object v3

    .line 69
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ltz5;

    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lwz5;->b()V

    .line 79
    .line 80
    .line 81
    return-object v0
.end method

.method public final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lwz5;->h:Lrz5;

    .line 2
    .line 3
    sget-object v1, Lrz5;->e:Lrz5;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v2

    .line 11
    :goto_0
    const-string v3, "Should be connected if we\'re restoring state, but we are: %s"

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v3, v0}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lwz5;->y:Lu00;

    .line 21
    .line 22
    invoke-virtual {v0}, Lu00;->e()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const-string v1, "Restoring outstanding listens"

    .line 30
    .line 31
    new-array v4, v2, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v3, v4}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Lwz5;->p:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ltz5;

    .line 57
    .line 58
    invoke-virtual {v0}, Lu00;->e()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v6, "Restoring listen "

    .line 67
    .line 68
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v6, v4, Ltz5;->b:Lvz5;

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    new-array v6, v2, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {v0, v5, v3, v6}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-virtual {p0, v4}, Lwz5;->l(Ltz5;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v0}, Lu00;->e()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    const-string v1, "Restoring writes."

    .line 96
    .line 97
    new-array v4, v2, [Ljava/lang/Object;

    .line 98
    .line 99
    invoke-virtual {v0, v1, v3, v4}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .line 103
    .line 104
    iget-object v4, p0, Lwz5;->n:Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_5

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Ljava/lang/Long;

    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 133
    .line 134
    .line 135
    move-result-wide v4

    .line 136
    invoke-virtual {p0, v4, v5}, Lwz5;->m(J)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    iget-object v1, p0, Lwz5;->m:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-nez v5, :cond_8

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lu00;->e()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_6

    .line 160
    .line 161
    const-string v1, "Restoring reads."

    .line 162
    .line 163
    new-array v2, v2, [Ljava/lang/Object;

    .line 164
    .line 165
    invoke-virtual {v0, v1, v3, v2}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 169
    .line 170
    iget-object v1, p0, Lwz5;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_7

    .line 191
    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Ljava/lang/Long;

    .line 197
    .line 198
    invoke-virtual {p0, v1}, Lwz5;->k(Ljava/lang/Long;)V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_7
    return-void

    .line 203
    :cond_8
    invoke-static {v4}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    throw p0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwz5;->y:Lu00;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu00;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "Connection no longer interrupted for: "

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v0, v1, v3, v2}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lwz5;->d:Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lwz5;->h:Lrz5;

    .line 34
    .line 35
    sget-object v0, Lrz5;->a:Lrz5;

    .line 36
    .line 37
    if-ne p1, v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lwz5;->o()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final i(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lwz5;->s:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lwz5;->g()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lwz5;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lwz5;->h:Lrz5;

    .line 14
    .line 15
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "Must be connected to send auth, but was: %s"

    .line 20
    .line 21
    invoke-static {v0, v2, v1}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lwz5;->y:Lu00;

    .line 25
    .line 26
    invoke-virtual {v0}, Lu00;->e()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    new-array v1, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    const-string v4, "Sending app check."

    .line 37
    .line 38
    invoke-virtual {v0, v4, v3, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    new-instance v0, Ljz5;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Ljz5;-><init>(Lwz5;Z)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lwz5;->s:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    move v1, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move v1, v2

    .line 59
    :goto_0
    const-string v4, "App check token must be set!"

    .line 60
    .line 61
    new-array v2, v2, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {v1, v4, v2}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "token"

    .line 67
    .line 68
    iget-object v2, p0, Lwz5;->s:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string v1, "appcheck"

    .line 74
    .line 75
    invoke-virtual {p0, v1, v3, p1, v0}, Lwz5;->n(Ljava/lang/String;ZLjava/util/Map;Lqz5;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final j(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lwz5;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lwz5;->h:Lrz5;

    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "Must be connected to send auth, but was: %s"

    .line 12
    .line 13
    invoke-static {v0, v2, v1}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lwz5;->y:Lu00;

    .line 17
    .line 18
    invoke-virtual {v0}, Lu00;->e()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    const-string v3, "Sending auth."

    .line 29
    .line 30
    invoke-virtual {v0, v3, v2, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance v0, Llz5;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1}, Llz5;-><init>(Lwz5;Z)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lwz5;->q:Ljava/lang/String;

    .line 44
    .line 45
    const-string v3, "gauth|"

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const-string v4, "auth"

    .line 52
    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v2, 0x6

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :try_start_0
    invoke-static {v1}, Ljb9;->L(Ljava/lang/String;)Ljava/util/HashMap;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "token"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/util/Map;

    .line 78
    .line 79
    new-instance v3, Lib;

    .line 80
    .line 81
    const/4 v5, 0x4

    .line 82
    invoke-direct {v3, v5, v2, v1}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    move-object v2, v3

    .line 86
    :goto_0
    const/4 v1, 0x1

    .line 87
    const-string v3, "cred"

    .line 88
    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    iget-object v4, v2, Lib;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v4, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    iget-object v2, v2, Lib;->c:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v2, Ljava/util/Map;

    .line 101
    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    const-string v3, "authvar"

    .line 105
    .line 106
    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_2
    const-string v2, "gauth"

    .line 110
    .line 111
    invoke-virtual {p0, v2, v1, p1, v0}, Lwz5;->n(Ljava/lang/String;ZLjava/util/Map;Lqz5;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_3
    iget-object v2, p0, Lwz5;->q:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v4, v1, p1, v0}, Lwz5;->n(Ljava/lang/String;ZLjava/util/Map;Lqz5;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catch_0
    move-exception p0

    .line 125
    const-string p1, "Failed to parse gauth token"

    .line 126
    .line 127
    invoke-static {p1, p0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final k(Ljava/lang/Long;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lwz5;->h:Lrz5;

    .line 2
    .line 3
    sget-object v1, Lrz5;->e:Lrz5;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    move v0, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    const-string v1, "sendGet called when we can\'t send gets"

    .line 13
    .line 14
    new-array v4, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v0, v1, v4}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lwz5;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lsz5;

    .line 26
    .line 27
    iget-boolean v1, v0, Lsz5;->c:Z

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lwz5;->y:Lu00;

    .line 32
    .line 33
    invoke-virtual {v1}, Lu00;->e()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v0, "get"

    .line 42
    .line 43
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, " cancelled, ignoring."

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-array p1, v2, [Ljava/lang/Object;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-virtual {v1, p0, v0, p1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    iput-boolean v3, v0, Lsz5;->c:Z

    .line 66
    .line 67
    :cond_2
    iget-object v1, v0, Lsz5;->a:Ljava/util/HashMap;

    .line 68
    .line 69
    new-instance v3, Lnz5;

    .line 70
    .line 71
    invoke-direct {v3, p0, p1, v0}, Lnz5;-><init>(Lwz5;Ljava/lang/Long;Lsz5;)V

    .line 72
    .line 73
    .line 74
    const-string p1, "g"

    .line 75
    .line 76
    invoke-virtual {p0, p1, v2, v1, v3}, Lwz5;->n(Ljava/lang/String;ZLjava/util/Map;Lqz5;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final l(Ltz5;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Ltz5;->b:Lvz5;

    .line 7
    .line 8
    iget-object v1, v1, Lvz5;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-static {v1}, Lyc9;->M(Ljava/util/List;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "p"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v1, p1, Ltz5;->d:Ljava/lang/Long;

    .line 20
    .line 21
    const-string v2, "q"

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v3, p1, Ltz5;->b:Lvz5;

    .line 26
    .line 27
    iget-object v3, v3, Lvz5;->b:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v3, "t"

    .line 33
    .line 34
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v1, p1, Ltz5;->c:Lgd;

    .line 38
    .line 39
    iget-object v1, v1, Lgd;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lik8;

    .line 42
    .line 43
    iget-object v3, v1, Lik8;->c:Lib;

    .line 44
    .line 45
    iget-object v3, v3, Lib;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, Lgz0;

    .line 48
    .line 49
    iget-object v3, v3, Lgz0;->a:Lsb4;

    .line 50
    .line 51
    iget-object v3, v3, Lsb4;->a:Lqn5;

    .line 52
    .line 53
    invoke-interface {v3}, Lqn5;->r0()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const-string v4, "h"

    .line 58
    .line 59
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object v3, v1, Lik8;->c:Lib;

    .line 63
    .line 64
    iget-object v3, v3, Lib;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v3, Lgz0;

    .line 67
    .line 68
    iget-object v3, v3, Lgz0;->a:Lsb4;

    .line 69
    .line 70
    iget-object v3, v3, Lsb4;->a:Lqn5;

    .line 71
    .line 72
    invoke-static {v3}, Lk55;->g(Lqn5;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    const-wide/16 v5, 0x400

    .line 77
    .line 78
    cmp-long v3, v3, v5

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    if-lez v3, :cond_7

    .line 82
    .line 83
    iget-object v1, v1, Lik8;->c:Lib;

    .line 84
    .line 85
    iget-object v1, v1, Lib;->c:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Lgz0;

    .line 88
    .line 89
    iget-object v1, v1, Lgz0;->a:Lsb4;

    .line 90
    .line 91
    iget-object v1, v1, Lsb4;->a:Lqn5;

    .line 92
    .line 93
    new-instance v3, Lkp1;

    .line 94
    .line 95
    invoke-direct {v3, v1}, Lkp1;-><init>(Lqn5;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v1}, Lqn5;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    const/4 v6, 0x1

    .line 103
    const-string v7, ""

    .line 104
    .line 105
    if-eqz v5, :cond_1

    .line 106
    .line 107
    new-instance v1, Lc00;

    .line 108
    .line 109
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 110
    .line 111
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-direct {v1, v3, v5}, Lc00;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    new-instance v5, Ljp1;

    .line 120
    .line 121
    invoke-direct {v5, v3}, Ljp1;-><init>(Lkp1;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v1, v5}, Lc00;->o(Lqn5;Ljp1;)V

    .line 125
    .line 126
    .line 127
    iget v1, v5, Ljp1;->d:I

    .line 128
    .line 129
    if-nez v1, :cond_2

    .line 130
    .line 131
    move v1, v6

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    move v1, v4

    .line 134
    :goto_0
    const-string v3, "Can\'t finish hashing in the middle processing a child"

    .line 135
    .line 136
    invoke-static {v3, v1}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v5, Ljp1;->a:Ljava/lang/StringBuilder;

    .line 140
    .line 141
    if-eqz v1, :cond_3

    .line 142
    .line 143
    invoke-virtual {v5}, Ljp1;->b()V

    .line 144
    .line 145
    .line 146
    :cond_3
    iget-object v1, v5, Ljp1;->g:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    new-instance v3, Lc00;

    .line 152
    .line 153
    iget-object v5, v5, Ljp1;->f:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v3, v5, v1}, Lc00;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 156
    .line 157
    .line 158
    move-object v1, v3

    .line 159
    :goto_1
    iget-object v3, v1, Lc00;->b:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v3, Ljava/util/List;

    .line 162
    .line 163
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    new-instance v5, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-eqz v7, :cond_4

    .line 185
    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    check-cast v7, Lgy5;

    .line 191
    .line 192
    invoke-virtual {v7}, Lgy5;->c()Ljava/util/ArrayList;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_4
    iget-object v1, v1, Lc00;->c:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v1, Ljava/util/List;

    .line 203
    .line 204
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    sub-int/2addr v7, v6

    .line 217
    if-ne v3, v7, :cond_6

    .line 218
    .line 219
    new-instance v3, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    if-eqz v6, :cond_5

    .line 237
    .line 238
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    check-cast v6, Ljava/util/List;

    .line 243
    .line 244
    invoke-static {v6}, Lyc9;->M(Ljava/util/List;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_5
    new-instance v5, Ljava/util/HashMap;

    .line 253
    .line 254
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string v6, "hs"

    .line 258
    .line 259
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    const-string v1, "ps"

    .line 267
    .line 268
    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    const-string v1, "ch"

    .line 272
    .line 273
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_6
    const-string p0, "Number of posts need to be n-1 for n hashes in CompoundHash"

    .line 278
    .line 279
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :cond_7
    :goto_4
    new-instance v1, Loz5;

    .line 284
    .line 285
    invoke-direct {v1, p0, p1}, Loz5;-><init>(Lwz5;Ltz5;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v2, v4, v0, v1}, Lwz5;->n(Ljava/lang/String;ZLjava/util/Map;Lqz5;)V

    .line 289
    .line 290
    .line 291
    return-void
.end method

.method public final m(J)V
    .locals 11

    .line 1
    iget-object v0, p0, Lwz5;->h:Lrz5;

    .line 2
    .line 3
    sget-object v1, Lrz5;->e:Lrz5;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    move v0, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    const-string v1, "sendPut called when we can\'t send writes (we\'re disconnected or writes are paused)."

    .line 13
    .line 14
    new-array v4, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v0, v1, v4}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lwz5;->n:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v9, v0

    .line 30
    check-cast v9, Luz5;

    .line 31
    .line 32
    iget-object v10, v9, Luz5;->c:Lcl6;

    .line 33
    .line 34
    iget-object v6, v9, Luz5;->a:Ljava/lang/String;

    .line 35
    .line 36
    iput-boolean v3, v9, Luz5;->d:Z

    .line 37
    .line 38
    iget-object v0, v9, Luz5;->b:Ljava/util/HashMap;

    .line 39
    .line 40
    new-instance v4, Lmz5;

    .line 41
    .line 42
    move-object v5, p0

    .line 43
    move-wide v7, p1

    .line 44
    invoke-direct/range {v4 .. v10}, Lmz5;-><init>(Lwz5;Ljava/lang/String;JLuz5;Lcl6;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v6, v2, v0, v4}, Lwz5;->n(Ljava/lang/String;ZLjava/util/Map;Lqz5;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final n(Ljava/lang/String;ZLjava/util/Map;Lqz5;)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lwz5;->k:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v2, v0

    .line 6
    iput-wide v2, p0, Lwz5;->k:J

    .line 7
    .line 8
    new-instance v2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "r"

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v3, "a"

    .line 23
    .line 24
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p1, "b"

    .line 28
    .line 29
    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lwz5;->g:Lvr1;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance p3, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "t"

    .line 43
    .line 44
    const-string v4, "d"

    .line 45
    .line 46
    invoke-virtual {p3, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-object v2, p1, Lvr1;->f:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lu00;

    .line 55
    .line 56
    iget v3, p1, Lvr1;->b:I

    .line 57
    .line 58
    const/4 v4, 0x2

    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    if-eq v3, v4, :cond_0

    .line 62
    .line 63
    const-string p1, "Tried to send on an unconnected connection"

    .line 64
    .line 65
    new-array p2, v6, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v2, p1, v5, p2}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_0
    if-eqz p2, :cond_1

    .line 73
    .line 74
    const-string p2, "Sending data (contents hidden)"

    .line 75
    .line 76
    new-array v3, v6, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual {v2, p2, v5, v3}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const-string p2, "Sending data: %s"

    .line 83
    .line 84
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, p2, v5, v3}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    iget-object p1, p1, Lvr1;->d:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Lnr8;

    .line 94
    .line 95
    invoke-virtual {p1}, Lnr8;->e()V

    .line 96
    .line 97
    .line 98
    :try_start_0
    invoke-static {p3}, Ljb9;->c0(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    const/16 v3, 0x4000

    .line 107
    .line 108
    if-gt v2, v3, :cond_2

    .line 109
    .line 110
    filled-new-array {p2}, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    goto :goto_2

    .line 115
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    move v3, v6

    .line 121
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-ge v3, v4, :cond_3

    .line 126
    .line 127
    add-int/lit16 v4, v3, 0x4000

    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move v3, v4

    .line 145
    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    new-array p2, p2, [Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, [Ljava/lang/String;

    .line 157
    .line 158
    :goto_2
    array-length v2, p2

    .line 159
    const/4 v3, 0x1

    .line 160
    if-le v2, v3, :cond_4

    .line 161
    .line 162
    iget-object v2, p1, Lnr8;->a:Lc00;

    .line 163
    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v4, ""

    .line 170
    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    array-length v4, p2

    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v2, v3}, Lc00;->p(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :catch_0
    move-exception p2

    .line 187
    goto :goto_4

    .line 188
    :cond_4
    :goto_3
    array-length v2, p2

    .line 189
    if-ge v6, v2, :cond_5

    .line 190
    .line 191
    iget-object v2, p1, Lnr8;->a:Lc00;

    .line 192
    .line 193
    aget-object v3, p2, v6

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Lc00;->p(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    .line 198
    add-int/lit8 v6, v6, 0x1

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :goto_4
    iget-object v2, p1, Lnr8;->j:Lu00;

    .line 202
    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v4, "Failed to serialize message: "

    .line 206
    .line 207
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p3

    .line 221
    invoke-virtual {v2, p3, p2}, Lu00;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lnr8;->f()V

    .line 225
    .line 226
    .line 227
    :cond_5
    :goto_5
    iget-object p0, p0, Lwz5;->l:Ljava/util/HashMap;

    .line 228
    .line 229
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    return-void
.end method

.method public final o()V
    .locals 11

    .line 1
    iget-object v0, p0, Lwz5;->d:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lwz5;->h:Lrz5;

    .line 10
    .line 11
    sget-object v1, Lrz5;->a:Lrz5;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :goto_0
    const-string v3, "Not in disconnected state: %s"

    .line 20
    .line 21
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v1, v3, v0}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v0, p0, Lwz5;->r:Z

    .line 29
    .line 30
    iget-boolean v1, p0, Lwz5;->t:Z

    .line 31
    .line 32
    const-string v3, "Scheduling connection attempt"

    .line 33
    .line 34
    new-array v4, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    iget-object v5, p0, Lwz5;->y:Lu00;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-virtual {v5, v3, v6, v4}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-boolean v2, p0, Lwz5;->r:Z

    .line 43
    .line 44
    iput-boolean v2, p0, Lwz5;->t:Z

    .line 45
    .line 46
    new-instance v3, Lgz5;

    .line 47
    .line 48
    invoke-direct {v3, p0, v0, v1}, Lgz5;-><init>(Lwz5;ZZ)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lwz5;->z:Lln6;

    .line 52
    .line 53
    iget-object v0, p0, Lln6;->b:Lu00;

    .line 54
    .line 55
    new-instance v1, Li8;

    .line 56
    .line 57
    const/4 v4, 0x5

    .line 58
    invoke-direct {v1, v4, p0, v3}, Li8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lln6;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 62
    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    const-string v3, "Cancelling previous scheduled retry"

    .line 66
    .line 67
    new-array v4, v2, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {v0, v3, v6, v4}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Lln6;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 73
    .line 74
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 75
    .line 76
    .line 77
    iput-object v6, p0, Lln6;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 78
    .line 79
    :cond_1
    iget-boolean v3, p0, Lln6;->j:Z

    .line 80
    .line 81
    const-wide/16 v4, 0x0

    .line 82
    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    iget-wide v7, p0, Lln6;->i:J

    .line 87
    .line 88
    cmp-long v3, v7, v4

    .line 89
    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    iget-wide v3, p0, Lln6;->c:J

    .line 93
    .line 94
    iput-wide v3, p0, Lln6;->i:J

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    long-to-double v3, v7

    .line 98
    iget-wide v7, p0, Lln6;->f:D

    .line 99
    .line 100
    mul-double/2addr v3, v7

    .line 101
    double-to-long v3, v3

    .line 102
    iget-wide v7, p0, Lln6;->d:J

    .line 103
    .line 104
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 105
    .line 106
    .line 107
    move-result-wide v3

    .line 108
    iput-wide v3, p0, Lln6;->i:J

    .line 109
    .line 110
    :goto_1
    iget-wide v3, p0, Lln6;->e:D

    .line 111
    .line 112
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 113
    .line 114
    sub-double/2addr v7, v3

    .line 115
    iget-wide v9, p0, Lln6;->i:J

    .line 116
    .line 117
    long-to-double v9, v9

    .line 118
    mul-double/2addr v7, v9

    .line 119
    mul-double/2addr v3, v9

    .line 120
    iget-object v5, p0, Lln6;->g:Ljava/util/Random;

    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    .line 123
    .line 124
    .line 125
    move-result-wide v9

    .line 126
    mul-double/2addr v9, v3

    .line 127
    add-double/2addr v9, v7

    .line 128
    double-to-long v4, v9

    .line 129
    :goto_2
    iput-boolean v2, p0, Lln6;->j:Z

    .line 130
    .line 131
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const-string v3, "Scheduling retry in %dms"

    .line 140
    .line 141
    invoke-virtual {v0, v3, v6, v2}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lln6;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 145
    .line 146
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 147
    .line 148
    invoke-interface {v0, v1, v4, v5, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, p0, Lln6;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 153
    .line 154
    :cond_4
    return-void
.end method
