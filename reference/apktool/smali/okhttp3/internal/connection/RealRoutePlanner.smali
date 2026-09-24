.class public final Lokhttp3/internal/connection/RealRoutePlanner;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/connection/RoutePlanner;


# instance fields
.field public final a:Lokhttp3/internal/concurrent/TaskRunner;

.field public final b:Lokhttp3/internal/connection/RealConnectionPool;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:Lokhttp3/Address;

.field public final k:Lokhttp3/internal/connection/RouteDatabase;

.field public final l:Lokhttp3/internal/connection/ConnectionUser;

.field public m:Lokhttp3/internal/connection/RouteSelector$Selection;

.field public n:Lokhttp3/internal/connection/RouteSelector;

.field public o:Lokhttp3/Route;

.field public final p:Lw40;


# direct methods
.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZZLokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/ConnectionUser;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 20
    .line 21
    iput-object p2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->b:Lokhttp3/internal/connection/RealConnectionPool;

    .line 22
    .line 23
    iput p3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->c:I

    .line 24
    .line 25
    iput p4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->d:I

    .line 26
    .line 27
    iput p5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->e:I

    .line 28
    .line 29
    iput p6, p0, Lokhttp3/internal/connection/RealRoutePlanner;->f:I

    .line 30
    .line 31
    iput p7, p0, Lokhttp3/internal/connection/RealRoutePlanner;->g:I

    .line 32
    .line 33
    iput-boolean p8, p0, Lokhttp3/internal/connection/RealRoutePlanner;->h:Z

    .line 34
    .line 35
    iput-boolean p9, p0, Lokhttp3/internal/connection/RealRoutePlanner;->i:Z

    .line 36
    .line 37
    iput-object p10, p0, Lokhttp3/internal/connection/RealRoutePlanner;->j:Lokhttp3/Address;

    .line 38
    .line 39
    iput-object p11, p0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RouteDatabase;

    .line 40
    .line 41
    iput-object p12, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 42
    .line 43
    new-instance p1, Lw40;

    .line 44
    .line 45
    invoke-direct {p1}, Lw40;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->p:Lw40;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 2
    .line 3
    invoke-interface {p0}, Lokhttp3/internal/connection/ConnectionUser;->a()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b(Lokhttp3/internal/connection/RealConnection;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->p:Lw40;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw40;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->o:Lokhttp3/Route;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    if-eqz p1, :cond_5

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    iget v0, p1, Lokhttp3/internal/connection/RealConnection;->G:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-boolean v0, p1, Lokhttp3/internal/connection/RealConnection;->x:Z

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    .line 31
    .line 32
    iget-object v0, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 33
    .line 34
    iget-object v0, v0, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 35
    .line 36
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->j:Lokhttp3/Address;

    .line 37
    .line 38
    iget-object v3, v3, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 39
    .line 40
    invoke-static {v0, v3}, Lokhttp3/internal/_UtilJvmKt;->a(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    iget-object v2, p1, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    :goto_0
    monitor-exit p1

    .line 50
    if-eqz v2, :cond_5

    .line 51
    .line 52
    iput-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->o:Lokhttp3/Route;

    .line 53
    .line 54
    return v1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit p1

    .line 57
    throw p0

    .line 58
    :cond_5
    iget-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->m:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 59
    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    iget v0, p1, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 63
    .line 64
    iget-object p1, p1, Lokhttp3/internal/connection/RouteSelector$Selection;->a:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-ge v0, p1, :cond_6

    .line 71
    .line 72
    return v1

    .line 73
    :cond_6
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->n:Lokhttp3/internal/connection/RouteSelector;

    .line 74
    .line 75
    if-nez p0, :cond_7

    .line 76
    .line 77
    :goto_1
    return v1

    .line 78
    :cond_7
    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteSelector;->a()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    return p0
.end method

.method public final c()Lokhttp3/Address;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->j:Lokhttp3/Address;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Lokhttp3/HttpUrl;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->j:Lokhttp3/Address;

    .line 5
    .line 6
    iget-object p0, p0, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 7
    .line 8
    iget v0, p1, Lokhttp3/HttpUrl;->e:I

    .line 9
    .line 10
    iget v1, p0, Lokhttp3/HttpUrl;->e:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p0, p0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1, p0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final e()Lw40;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->p:Lw40;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .locals 6

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 2
    .line 3
    invoke-interface {v0}, Lokhttp3/internal/connection/ConnectionUser;->r()Lokhttp3/internal/connection/RealConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :cond_0
    :goto_0
    move-object v2, v1

    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 14
    .line 15
    invoke-interface {v2}, Lokhttp3/internal/connection/ConnectionUser;->d()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0, v2}, Lokhttp3/internal/connection/RealConnection;->g(Z)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    monitor-enter v0

    .line 24
    iget-boolean v3, v0, Lokhttp3/internal/connection/RealConnection;->x:Z

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    xor-int/2addr v3, v2

    .line 30
    :try_start_0
    iput-boolean v2, v0, Lokhttp3/internal/connection/RealConnection;->x:Z

    .line 31
    .line 32
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 33
    .line 34
    invoke-interface {v2}, Lokhttp3/internal/connection/ConnectionUser;->n()Ljava/net/Socket;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    goto :goto_2

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_2
    const/4 v2, 0x0

    .line 43
    if-nez v3, :cond_4

    .line 44
    .line 45
    iget-object v3, v0, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    .line 46
    .line 47
    iget-object v3, v3, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 48
    .line 49
    iget-object v3, v3, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 50
    .line 51
    invoke-virtual {p0, v3}, Lokhttp3/internal/connection/RealRoutePlanner;->d(Lokhttp3/HttpUrl;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move v3, v2

    .line 59
    move-object v2, v1

    .line 60
    goto :goto_2

    .line 61
    :cond_4
    :goto_1
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 62
    .line 63
    invoke-interface {v3}, Lokhttp3/internal/connection/ConnectionUser;->n()Ljava/net/Socket;

    .line 64
    .line 65
    .line 66
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    move-object v5, v3

    .line 68
    move v3, v2

    .line 69
    move-object v2, v5

    .line 70
    :goto_2
    monitor-exit v0

    .line 71
    iget-object v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 72
    .line 73
    invoke-interface {v4}, Lokhttp3/internal/connection/ConnectionUser;->r()Lokhttp3/internal/connection/RealConnection;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    if-eqz v4, :cond_6

    .line 78
    .line 79
    if-nez v2, :cond_5

    .line 80
    .line 81
    new-instance v2, Lokhttp3/internal/connection/ReusePlan;

    .line 82
    .line 83
    invoke-direct {v2, v0}, Lokhttp3/internal/connection/ReusePlan;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    const-string p0, "Check failed."

    .line 88
    .line 89
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_6
    if-eqz v2, :cond_7

    .line 94
    .line 95
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 96
    .line 97
    .line 98
    :cond_7
    iget-object v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 99
    .line 100
    invoke-interface {v4, v0}, Lokhttp3/internal/connection/ConnectionUser;->s(Lokhttp3/internal/connection/RealConnection;)V

    .line 101
    .line 102
    .line 103
    iget-object v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 104
    .line 105
    invoke-interface {v4, v0}, Lokhttp3/internal/connection/ConnectionUser;->c(Lokhttp3/internal/connection/RealConnection;)V

    .line 106
    .line 107
    .line 108
    if-eqz v2, :cond_8

    .line 109
    .line 110
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 111
    .line 112
    invoke-interface {v2, v0}, Lokhttp3/internal/connection/ConnectionUser;->p(Lokhttp3/internal/connection/RealConnection;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_8
    if-eqz v3, :cond_0

    .line 117
    .line 118
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 119
    .line 120
    invoke-interface {v2, v0}, Lokhttp3/internal/connection/ConnectionUser;->g(Lokhttp3/internal/connection/RealConnection;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :goto_3
    if-eqz v2, :cond_9

    .line 125
    .line 126
    return-object v2

    .line 127
    :cond_9
    invoke-virtual {p0, v1, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->i(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-eqz v0, :cond_a

    .line 132
    .line 133
    return-object v0

    .line 134
    :cond_a
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->p:Lw40;

    .line 135
    .line 136
    invoke-virtual {v0}, Lw40;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_b

    .line 141
    .line 142
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->p:Lw40;

    .line 143
    .line 144
    invoke-virtual {p0}, Lw40;->removeFirst()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 149
    .line 150
    return-object p0

    .line 151
    :cond_b
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->g()Lokhttp3/internal/connection/ConnectPlan;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object v1, v0, Lokhttp3/internal/connection/ConnectPlan;->t:Ljava/util/List;

    .line 156
    .line 157
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->i(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    if-eqz p0, :cond_c

    .line 162
    .line 163
    return-object p0

    .line 164
    :cond_c
    return-object v0

    .line 165
    :goto_4
    monitor-exit v0

    .line 166
    throw p0
.end method

.method public final g()Lokhttp3/internal/connection/ConnectPlan;
    .locals 12

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->o:Lokhttp3/Route;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->o:Lokhttp3/Route;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->h(Lokhttp3/Route;Ljava/util/ArrayList;)Lokhttp3/internal/connection/ConnectPlan;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->m:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget v2, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 18
    .line 19
    iget-object v3, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge v2, v3, :cond_2

    .line 26
    .line 27
    iget v2, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 28
    .line 29
    iget-object v3, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->a:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ge v2, v4, :cond_1

    .line 36
    .line 37
    iget v2, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 38
    .line 39
    add-int/lit8 v4, v2, 0x1

    .line 40
    .line 41
    iput v4, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lokhttp3/Route;

    .line 48
    .line 49
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->h(Lokhttp3/Route;Ljava/util/ArrayList;)Lokhttp3/internal/connection/ConnectPlan;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_1
    invoke-static {}, Lm0;->d()V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->n:Lokhttp3/internal/connection/RouteSelector;

    .line 59
    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    new-instance v0, Lokhttp3/internal/connection/RouteSelector;

    .line 63
    .line 64
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->j:Lokhttp3/Address;

    .line 65
    .line 66
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RouteDatabase;

    .line 67
    .line 68
    iget-object v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 69
    .line 70
    iget-boolean v5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->i:Z

    .line 71
    .line 72
    invoke-direct {v0, v2, v3, v4, v5}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/ConnectionUser;Z)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->n:Lokhttp3/internal/connection/RouteSelector;

    .line 76
    .line 77
    :cond_3
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->a()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_1f

    .line 82
    .line 83
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->a()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_1e

    .line 88
    .line 89
    new-instance v2, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    :cond_4
    iget v3, v0, Lokhttp3/internal/connection/RouteSelector;->f:I

    .line 95
    .line 96
    iget-object v4, v0, Lokhttp3/internal/connection/RouteSelector;->e:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-ge v3, v4, :cond_1a

    .line 103
    .line 104
    iget-object v3, v0, Lokhttp3/internal/connection/RouteSelector;->a:Lokhttp3/Address;

    .line 105
    .line 106
    const-string v4, "No route to "

    .line 107
    .line 108
    iget v5, v0, Lokhttp3/internal/connection/RouteSelector;->f:I

    .line 109
    .line 110
    iget-object v6, v0, Lokhttp3/internal/connection/RouteSelector;->e:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-ge v5, v6, :cond_19

    .line 117
    .line 118
    iget-object v5, v0, Lokhttp3/internal/connection/RouteSelector;->e:Ljava/util/List;

    .line 119
    .line 120
    iget v6, v0, Lokhttp3/internal/connection/RouteSelector;->f:I

    .line 121
    .line 122
    add-int/lit8 v7, v6, 0x1

    .line 123
    .line 124
    iput v7, v0, Lokhttp3/internal/connection/RouteSelector;->f:I

    .line 125
    .line 126
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, Ljava/net/Proxy;

    .line 131
    .line 132
    iget-object v6, v0, Lokhttp3/internal/connection/RouteSelector;->c:Lokhttp3/internal/connection/ConnectionUser;

    .line 133
    .line 134
    new-instance v7, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v7, v0, Lokhttp3/internal/connection/RouteSelector;->g:Ljava/util/List;

    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    sget-object v9, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 146
    .line 147
    if-eq v8, v9, :cond_8

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 154
    .line 155
    if-ne v8, v9, :cond_5

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    instance-of v9, v8, Ljava/net/InetSocketAddress;

    .line 163
    .line 164
    if-eqz v9, :cond_7

    .line 165
    .line 166
    check-cast v8, Ljava/net/InetSocketAddress;

    .line 167
    .line 168
    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    if-nez v9, :cond_6

    .line 173
    .line 174
    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_6
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    :goto_0
    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getPort()I

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    goto :goto_2

    .line 194
    :cond_7
    const-string p0, "Proxy.address() is not an InetSocketAddress: "

    .line 195
    .line 196
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v0, p0}, Ly5;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-object v1

    .line 204
    :cond_8
    :goto_1
    iget-object v8, v3, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 205
    .line 206
    iget-object v9, v8, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 207
    .line 208
    iget v8, v8, Lokhttp3/HttpUrl;->e:I

    .line 209
    .line 210
    :goto_2
    const/4 v10, 0x1

    .line 211
    if-gt v10, v8, :cond_18

    .line 212
    .line 213
    const/high16 v10, 0x10000

    .line 214
    .line 215
    if-ge v8, v10, :cond_18

    .line 216
    .line 217
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 222
    .line 223
    if-ne v4, v10, :cond_9

    .line 224
    .line 225
    invoke-static {v9, v8}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto/16 :goto_9

    .line 233
    .line 234
    :cond_9
    sget-object v4, Lokhttp3/internal/_HostnamesCommonKt;->a:Lai6;

    .line 235
    .line 236
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    sget-object v4, Lokhttp3/internal/_HostnamesCommonKt;->a:Lai6;

    .line 240
    .line 241
    invoke-virtual {v4, v9}, Lai6;->b(Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_a

    .line 246
    .line 247
    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-static {v3}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    goto :goto_3

    .line 256
    :cond_a
    invoke-interface {v6, v9}, Lokhttp3/internal/connection/ConnectionUser;->f(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object v4, v3, Lokhttp3/Address;->a:Lokhttp3/Dns;

    .line 260
    .line 261
    invoke-interface {v4, v9}, Lokhttp3/Dns;->a(Ljava/lang/String;)Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 266
    .line 267
    .line 268
    move-result v10

    .line 269
    if-nez v10, :cond_17

    .line 270
    .line 271
    invoke-interface {v6, v9, v4}, Lokhttp3/internal/connection/ConnectionUser;->h(Ljava/lang/String;Ljava/util/List;)V

    .line 272
    .line 273
    .line 274
    move-object v3, v4

    .line 275
    :goto_3
    iget-boolean v4, v0, Lokhttp3/internal/connection/RouteSelector;->d:Z

    .line 276
    .line 277
    if-eqz v4, :cond_13

    .line 278
    .line 279
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    const/4 v6, 0x2

    .line 284
    if-ge v4, v6, :cond_b

    .line 285
    .line 286
    goto/16 :goto_7

    .line 287
    .line 288
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .line 292
    .line 293
    new-instance v6, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    .line 304
    .line 305
    move-result v10

    .line 306
    if-eqz v10, :cond_d

    .line 307
    .line 308
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    move-object v11, v10

    .line 313
    check-cast v11, Ljava/net/InetAddress;

    .line 314
    .line 315
    instance-of v11, v11, Ljava/net/Inet6Address;

    .line 316
    .line 317
    if-eqz v11, :cond_c

    .line 318
    .line 319
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_c
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    goto :goto_4

    .line 327
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 328
    .line 329
    .line 330
    move-result v9

    .line 331
    if-nez v9, :cond_13

    .line 332
    .line 333
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 334
    .line 335
    .line 336
    move-result v9

    .line 337
    if-eqz v9, :cond_e

    .line 338
    .line 339
    goto :goto_7

    .line 340
    :cond_e
    sget-object v3, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 341
    .line 342
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    invoke-static {}, Lnc8;->p()Lww4;

    .line 351
    .line 352
    .line 353
    move-result-object v9

    .line 354
    :cond_f
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-nez v3, :cond_11

    .line 359
    .line 360
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    if-eqz v3, :cond_10

    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_10
    invoke-static {v9}, Lnc8;->h(Lww4;)Lww4;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    goto :goto_7

    .line 372
    :cond_11
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    if-eqz v3, :cond_12

    .line 377
    .line 378
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {v9, v3}, Lww4;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    :cond_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-eqz v3, :cond_f

    .line 390
    .line 391
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    invoke-virtual {v9, v3}, Lww4;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    goto :goto_5

    .line 399
    :cond_13
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    if-eqz v4, :cond_14

    .line 408
    .line 409
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    check-cast v4, Ljava/net/InetAddress;

    .line 414
    .line 415
    new-instance v6, Ljava/net/InetSocketAddress;

    .line 416
    .line 417
    invoke-direct {v6, v4, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    goto :goto_8

    .line 424
    :cond_14
    :goto_9
    iget-object v3, v0, Lokhttp3/internal/connection/RouteSelector;->g:Ljava/util/List;

    .line 425
    .line 426
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 431
    .line 432
    .line 433
    move-result v4

    .line 434
    if-eqz v4, :cond_16

    .line 435
    .line 436
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    check-cast v4, Ljava/net/InetSocketAddress;

    .line 441
    .line 442
    new-instance v6, Lokhttp3/Route;

    .line 443
    .line 444
    iget-object v7, v0, Lokhttp3/internal/connection/RouteSelector;->a:Lokhttp3/Address;

    .line 445
    .line 446
    invoke-direct {v6, v7, v5, v4}, Lokhttp3/Route;-><init>(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 447
    .line 448
    .line 449
    iget-object v4, v0, Lokhttp3/internal/connection/RouteSelector;->b:Lokhttp3/internal/connection/RouteDatabase;

    .line 450
    .line 451
    monitor-enter v4

    .line 452
    :try_start_0
    iget-object v7, v4, Lokhttp3/internal/connection/RouteDatabase;->a:Ljava/util/LinkedHashSet;

    .line 453
    .line 454
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit v4

    .line 459
    if-eqz v7, :cond_15

    .line 460
    .line 461
    iget-object v4, v0, Lokhttp3/internal/connection/RouteSelector;->h:Ljava/util/ArrayList;

    .line 462
    .line 463
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    goto :goto_a

    .line 467
    :cond_15
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    goto :goto_a

    .line 471
    :catchall_0
    move-exception p0

    .line 472
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    throw p0

    .line 474
    :cond_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    if-nez v3, :cond_4

    .line 479
    .line 480
    goto :goto_b

    .line 481
    :cond_17
    new-instance p0, Ljava/net/UnknownHostException;

    .line 482
    .line 483
    iget-object v0, v3, Lokhttp3/Address;->a:Lokhttp3/Dns;

    .line 484
    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    const-string v0, " returned no addresses for "

    .line 494
    .line 495
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-direct {p0, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    throw p0

    .line 509
    :cond_18
    new-instance p0, Ljava/net/SocketException;

    .line 510
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const/16 v1, 0x3a

    .line 520
    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    const-string v1, "; port is out of range"

    .line 528
    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    throw p0

    .line 540
    :cond_19
    new-instance p0, Ljava/net/SocketException;

    .line 541
    .line 542
    iget-object v1, v3, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 543
    .line 544
    iget-object v1, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 545
    .line 546
    const-string v2, "; exhausted proxy configurations: "

    .line 547
    .line 548
    iget-object v0, v0, Lokhttp3/internal/connection/RouteSelector;->e:Ljava/util/List;

    .line 549
    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    throw p0

    .line 572
    :cond_1a
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 573
    .line 574
    .line 575
    move-result v3

    .line 576
    if-eqz v3, :cond_1b

    .line 577
    .line 578
    iget-object v3, v0, Lokhttp3/internal/connection/RouteSelector;->h:Ljava/util/ArrayList;

    .line 579
    .line 580
    invoke-static {v3, v2}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 581
    .line 582
    .line 583
    iget-object v0, v0, Lokhttp3/internal/connection/RouteSelector;->h:Ljava/util/ArrayList;

    .line 584
    .line 585
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 586
    .line 587
    .line 588
    :cond_1b
    new-instance v0, Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 589
    .line 590
    invoke-direct {v0, v2}, Lokhttp3/internal/connection/RouteSelector$Selection;-><init>(Ljava/util/ArrayList;)V

    .line 591
    .line 592
    .line 593
    iput-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->m:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 594
    .line 595
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 596
    .line 597
    invoke-interface {v3}, Lokhttp3/internal/connection/ConnectionUser;->a()Z

    .line 598
    .line 599
    .line 600
    move-result v3

    .line 601
    if-nez v3, :cond_1d

    .line 602
    .line 603
    iget v3, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 604
    .line 605
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 606
    .line 607
    .line 608
    move-result v4

    .line 609
    if-ge v3, v4, :cond_1c

    .line 610
    .line 611
    iget v1, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 612
    .line 613
    add-int/lit8 v3, v1, 0x1

    .line 614
    .line 615
    iput v3, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 616
    .line 617
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    check-cast v0, Lokhttp3/Route;

    .line 622
    .line 623
    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/connection/RealRoutePlanner;->h(Lokhttp3/Route;Ljava/util/ArrayList;)Lokhttp3/internal/connection/ConnectPlan;

    .line 624
    .line 625
    .line 626
    move-result-object p0

    .line 627
    return-object p0

    .line 628
    :cond_1c
    invoke-static {}, Lm0;->d()V

    .line 629
    .line 630
    .line 631
    return-object v1

    .line 632
    :cond_1d
    const-string p0, "Canceled"

    .line 633
    .line 634
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    return-object v1

    .line 638
    :cond_1e
    invoke-static {}, Lm0;->d()V

    .line 639
    .line 640
    .line 641
    return-object v1

    .line 642
    :cond_1f
    const-string p0, "exhausted all routes"

    .line 643
    .line 644
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    return-object v1
.end method

.method public final h(Lokhttp3/Route;Ljava/util/ArrayList;)Lokhttp3/internal/connection/ConnectPlan;
    .locals 17

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    sget-object v0, Lokhttp3/Protocol;->k:Lokhttp3/Protocol;

    .line 6
    .line 7
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, v11, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 11
    .line 12
    iget-object v2, v1, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 13
    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    iget-object v1, v1, Lokhttp3/Address;->j:Ljava/util/List;

    .line 17
    .line 18
    sget-object v2, Lokhttp3/ConnectionSpec;->h:Lokhttp3/ConnectionSpec;

    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v11, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 27
    .line 28
    iget-object v1, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 29
    .line 30
    iget-object v1, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 33
    .line 34
    sget-object v2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lokhttp3/internal/platform/Platform;->i(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Ljava/net/UnknownServiceException;

    .line 44
    .line 45
    const-string v2, "CLEARTEXT communication to "

    .line 46
    .line 47
    const-string v3, " not permitted by network security policy"

    .line 48
    .line 49
    invoke-static {v2, v1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_1
    new-instance v0, Ljava/net/UnknownServiceException;

    .line 58
    .line 59
    const-string v1, "CLEARTEXT communication not enabled for client"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    iget-object v1, v1, Lokhttp3/Address;->i:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_7

    .line 72
    .line 73
    :goto_0
    iget-object v1, v11, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    if-eq v1, v2, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iget-object v1, v11, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 86
    .line 87
    iget-object v2, v1, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 88
    .line 89
    if-nez v2, :cond_5

    .line 90
    .line 91
    iget-object v1, v1, Lokhttp3/Address;->i:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    :goto_1
    move-object v14, v3

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    :goto_2
    new-instance v0, Lokhttp3/Request$Builder;

    .line 103
    .line 104
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v1, v11, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 108
    .line 109
    iget-object v1, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 115
    .line 116
    const-string v1, "CONNECT"

    .line 117
    .line 118
    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v11, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 122
    .line 123
    iget-object v2, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 124
    .line 125
    const/4 v3, 0x1

    .line 126
    invoke-static {v2, v3}, Lokhttp3/internal/_UtilJvmKt;->i(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iget-object v3, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 131
    .line 132
    const-string v4, "Host"

    .line 133
    .line 134
    invoke-virtual {v3, v4, v2}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v2, "Keep-Alive"

    .line 138
    .line 139
    iget-object v3, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 140
    .line 141
    const-string v4, "Proxy-Connection"

    .line 142
    .line 143
    invoke-virtual {v3, v4, v2}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v2, "okhttp/5.2.1"

    .line 147
    .line 148
    iget-object v3, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 149
    .line 150
    const-string v4, "User-Agent"

    .line 151
    .line 152
    invoke-static {v3, v4, v2, v0}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v2, Lokhttp3/Response$Builder;

    .line 157
    .line 158
    invoke-direct {v2}, Lokhttp3/Response$Builder;-><init>()V

    .line 159
    .line 160
    .line 161
    iput-object v0, v2, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 162
    .line 163
    sget-object v3, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    .line 164
    .line 165
    iput-object v3, v2, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    .line 166
    .line 167
    const/16 v3, 0x197

    .line 168
    .line 169
    iput v3, v2, Lokhttp3/Response$Builder;->c:I

    .line 170
    .line 171
    const-string v3, "Preemptive Authenticate"

    .line 172
    .line 173
    iput-object v3, v2, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    .line 174
    .line 175
    const-wide/16 v3, -0x1

    .line 176
    .line 177
    iput-wide v3, v2, Lokhttp3/Response$Builder;->l:J

    .line 178
    .line 179
    iput-wide v3, v2, Lokhttp3/Response$Builder;->m:J

    .line 180
    .line 181
    const-string v3, "OkHttp-Preemptive"

    .line 182
    .line 183
    iget-object v4, v2, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 184
    .line 185
    const-string v5, "Proxy-Authenticate"

    .line 186
    .line 187
    invoke-virtual {v4, v5, v3}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    iget-object v1, v1, Lokhttp3/Address;->f:Lokhttp3/Authenticator;

    .line 195
    .line 196
    invoke-interface {v1, v11, v2}, Lokhttp3/Authenticator;->b(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-nez v1, :cond_6

    .line 201
    .line 202
    move-object v3, v0

    .line 203
    goto :goto_1

    .line 204
    :cond_6
    move-object v3, v1

    .line 205
    goto :goto_1

    .line 206
    :goto_3
    new-instance v0, Lokhttp3/internal/connection/ConnectPlan;

    .line 207
    .line 208
    iget-object v1, v10, Lokhttp3/internal/connection/RealRoutePlanner;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 209
    .line 210
    iget-object v2, v10, Lokhttp3/internal/connection/RealRoutePlanner;->b:Lokhttp3/internal/connection/RealConnectionPool;

    .line 211
    .line 212
    iget v3, v10, Lokhttp3/internal/connection/RealRoutePlanner;->c:I

    .line 213
    .line 214
    iget v4, v10, Lokhttp3/internal/connection/RealRoutePlanner;->d:I

    .line 215
    .line 216
    iget v5, v10, Lokhttp3/internal/connection/RealRoutePlanner;->e:I

    .line 217
    .line 218
    iget v6, v10, Lokhttp3/internal/connection/RealRoutePlanner;->f:I

    .line 219
    .line 220
    iget v7, v10, Lokhttp3/internal/connection/RealRoutePlanner;->g:I

    .line 221
    .line 222
    iget-boolean v8, v10, Lokhttp3/internal/connection/RealRoutePlanner;->h:Z

    .line 223
    .line 224
    iget-object v9, v10, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 225
    .line 226
    const/4 v15, -0x1

    .line 227
    const/16 v16, 0x0

    .line 228
    .line 229
    const/4 v13, 0x0

    .line 230
    move-object/from16 v12, p2

    .line 231
    .line 232
    invoke-direct/range {v0 .. v16}, Lokhttp3/internal/connection/ConnectPlan;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZLokhttp3/internal/connection/ConnectionUser;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZ)V

    .line 233
    .line 234
    .line 235
    return-object v0

    .line 236
    :cond_7
    new-instance v0, Ljava/net/UnknownServiceException;

    .line 237
    .line 238
    const-string v1, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    .line 239
    .line 240
    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v0
.end method

.method public final i(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;
    .locals 10

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->b:Lokhttp3/internal/connection/RealConnectionPool;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 4
    .line 5
    invoke-interface {v1}, Lokhttp3/internal/connection/ConnectionUser;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->j:Lokhttp3/Address;

    .line 10
    .line 11
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lokhttp3/internal/connection/ConnectPlan;->d()Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-eqz v6, :cond_0

    .line 22
    .line 23
    move v6, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v6, v4

    .line 26
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    const/4 v8, 0x0

    .line 49
    if-eqz v7, :cond_6

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Lokhttp3/internal/connection/RealConnection;

    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    monitor-enter v7

    .line 61
    if-eqz v6, :cond_3

    .line 62
    .line 63
    :try_start_0
    iget-object v9, v7, Lokhttp3/internal/connection/RealConnection;->t:Lokhttp3/internal/http2/Http2Connection;

    .line 64
    .line 65
    if-eqz v9, :cond_2

    .line 66
    .line 67
    move v9, v5

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move v9, v4

    .line 70
    :goto_2
    if-nez v9, :cond_3

    .line 71
    .line 72
    :goto_3
    move v9, v4

    .line 73
    goto :goto_4

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_5

    .line 76
    :cond_3
    invoke-virtual {v7, v2, p2}, Lokhttp3/internal/connection/RealConnection;->e(Lokhttp3/Address;Ljava/util/List;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-nez v9, :cond_4

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    invoke-interface {v3, v7}, Lokhttp3/internal/connection/ConnectionUser;->b(Lokhttp3/internal/connection/RealConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    move v9, v5

    .line 87
    :goto_4
    monitor-exit v7

    .line 88
    if-eqz v9, :cond_1

    .line 89
    .line 90
    invoke-virtual {v7, v1}, Lokhttp3/internal/connection/RealConnection;->g(Z)Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-eqz v9, :cond_5

    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_5
    monitor-enter v7

    .line 98
    :try_start_1
    iput-boolean v5, v7, Lokhttp3/internal/connection/RealConnection;->x:Z

    .line 99
    .line 100
    invoke-interface {v3}, Lokhttp3/internal/connection/ConnectionUser;->n()Ljava/net/Socket;

    .line 101
    .line 102
    .line 103
    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    monitor-exit v7

    .line 105
    if-eqz v8, :cond_1

    .line 106
    .line 107
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    monitor-exit v7

    .line 113
    throw p0

    .line 114
    :goto_5
    monitor-exit v7

    .line 115
    throw p0

    .line 116
    :cond_6
    move-object v7, v8

    .line 117
    :goto_6
    if-nez v7, :cond_7

    .line 118
    .line 119
    return-object v8

    .line 120
    :cond_7
    if-eqz p1, :cond_8

    .line 121
    .line 122
    iget-object p2, p1, Lokhttp3/internal/connection/ConnectPlan;->r:Lokhttp3/Route;

    .line 123
    .line 124
    iput-object p2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->o:Lokhttp3/Route;

    .line 125
    .line 126
    iget-object p1, p1, Lokhttp3/internal/connection/ConnectPlan;->K:Ljava/net/Socket;

    .line 127
    .line 128
    if-eqz p1, :cond_8

    .line 129
    .line 130
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    .line 131
    .line 132
    .line 133
    :cond_8
    iget-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 134
    .line 135
    invoke-interface {p1, v7}, Lokhttp3/internal/connection/ConnectionUser;->v(Lokhttp3/Connection;)V

    .line 136
    .line 137
    .line 138
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 139
    .line 140
    invoke-interface {p0, v7}, Lokhttp3/internal/connection/ConnectionUser;->e(Lokhttp3/internal/connection/RealConnection;)V

    .line 141
    .line 142
    .line 143
    new-instance p0, Lokhttp3/internal/connection/ReusePlan;

    .line 144
    .line 145
    invoke-direct {p0, v7}, Lokhttp3/internal/connection/ReusePlan;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    .line 146
    .line 147
    .line 148
    return-object p0
.end method
