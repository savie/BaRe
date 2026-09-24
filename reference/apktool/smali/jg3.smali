.class public final Ljg3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lcom/google/firebase/FirebaseApp;

.field public final c:Lwc9;

.field public final d:Lib;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Llu5;Llu5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ljg3;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Ljg3;->b:Lcom/google/firebase/FirebaseApp;

    .line 12
    .line 13
    new-instance p1, Lwc9;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lwc9;-><init>(Llu5;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Ljg3;->c:Lwc9;

    .line 19
    .line 20
    new-instance p1, Lib;

    .line 21
    .line 22
    invoke-direct {p1, p3}, Lib;-><init>(Llu5;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Ljg3;->d:Lib;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lxj6;)Lig3;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ljg3;->a:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lig3;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Luc2;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    iput v1, v0, Luc2;->h:I

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, v0, Luc2;->j:Z

    .line 22
    .line 23
    iget-object v1, p0, Ljg3;->b:Lcom/google/firebase/FirebaseApp;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Ljg3;->b:Lcom/google/firebase/FirebaseApp;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Luc2;->d(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    :goto_0
    iget-object v1, p0, Ljg3;->b:Lcom/google/firebase/FirebaseApp;

    .line 44
    .line 45
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    iput-object v1, v0, Luc2;->i:Lcom/google/firebase/FirebaseApp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    :try_start_2
    monitor-exit v0

    .line 49
    iget-object v1, p0, Ljg3;->c:Lwc9;

    .line 50
    .line 51
    iput-object v1, v0, Luc2;->c:Lwc9;

    .line 52
    .line 53
    iget-object v1, p0, Ljg3;->d:Lib;

    .line 54
    .line 55
    iput-object v1, v0, Luc2;->d:Lib;

    .line 56
    .line 57
    new-instance v1, Lig3;

    .line 58
    .line 59
    invoke-direct {v1, v0, p1}, Lig3;-><init>(Luc2;Lxj6;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Ljg3;->a:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    move-object v0, v1

    .line 68
    goto :goto_1

    .line 69
    :catchall_1
    move-exception p1

    .line 70
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    :cond_1
    :goto_1
    monitor-exit p0

    .line 73
    return-object v0

    .line 74
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 75
    throw p1
.end method
