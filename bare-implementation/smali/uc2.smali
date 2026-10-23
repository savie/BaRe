.class public final Luc2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lub;

.field public b:Lzq8;

.field public c:Lwc9;

.field public d:Lib;

.field public e:Lny1;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Lcom/google/firebase/FirebaseApp;

.field public j:Z

.field public k:Lro;


# virtual methods
.method public final a(Ljava/lang/String;)Lu00;
    .locals 3

    .line 1
    new-instance v0, Lu00;

    .line 2
    .line 3
    iget-object p0, p0, Luc2;->a:Lub;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-direct {v0, v2, p0, p1, v1}, Lu00;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final b()Lro;
    .locals 3

    .line 1
    iget-object v0, p0, Luc2;->k:Lro;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    new-instance v0, Lro;

    .line 7
    .line 8
    iget-object v1, p0, Luc2;->i:Lcom/google/firebase/FirebaseApp;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v0, v1, v2}, Lro;-><init>(Lcom/google/firebase/FirebaseApp;I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Luc2;->k:Lro;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0

    .line 21
    :cond_0
    :goto_0
    iget-object p0, p0, Luc2;->k:Lro;

    .line 22
    .line 23
    return-object p0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Luc2;->a:Lub;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Luc2;->b()Lro;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Luc2;->h:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v0, Lub;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lub;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Luc2;->a:Lub;

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Luc2;->b()Lro;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Luc2;->g:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Luc2;->b()Lro;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "/Android"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "Firebase/5/22.0.1/"

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Luc2;->g:Ljava/lang/String;

    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Luc2;->b:Lzq8;

    .line 63
    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Luc2;->b()Lro;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v0, Lzq8;

    .line 74
    .line 75
    const/4 v1, 0x2

    .line 76
    invoke-direct {v0, v1}, Lzq8;-><init>(I)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Luc2;->b:Lzq8;

    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Luc2;->e:Lny1;

    .line 82
    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    iget-object v0, p0, Luc2;->k:Lro;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    const-string v1, "RunLoop"

    .line 91
    .line 92
    invoke-virtual {p0, v1}, Luc2;->a(Ljava/lang/String;)Lu00;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    new-instance v2, Lny1;

    .line 97
    .line 98
    invoke-direct {v2, v0, v1}, Lny1;-><init>(Lro;Lu00;)V

    .line 99
    .line 100
    .line 101
    iput-object v2, p0, Luc2;->e:Lny1;

    .line 102
    .line 103
    :cond_3
    iget-object v0, p0, Luc2;->f:Ljava/lang/String;

    .line 104
    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    const-string v0, "default"

    .line 108
    .line 109
    iput-object v0, p0, Luc2;->f:Ljava/lang/String;

    .line 110
    .line 111
    :cond_4
    iget-object v0, p0, Luc2;->c:Lwc9;

    .line 112
    .line 113
    const-string v1, "You must register an authTokenProvider before initializing Context."

    .line 114
    .line 115
    invoke-static {v0, v1}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Luc2;->d:Lib;

    .line 119
    .line 120
    const-string v0, "You must register an appCheckTokenProvider before initializing Context."

    .line 121
    .line 122
    invoke-static {p0, v0}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Luc2;->j:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Luc2;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "Session identifier is not allowed to be empty or null!"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    new-instance p1, Lxc2;

    .line 29
    .line 30
    const-string v0, "Modifications to DatabaseConfig objects must occur before they are in use"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
.end method
