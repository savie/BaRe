.class public final Lr20;
.super Let;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static r:Ljava/util/ArrayList;


# instance fields
.field public g:Z

.field public h:Z

.field public i:Lzc6;

.field public j:Ljava/util/ArrayList;

.field public final k:Lex6;

.field public final l:Lex6;

.field public final m:Lix6;

.field public n:Ljava/util/List;

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Lfm7;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Let;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "show_system_apps"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "prefs"

    .line 17
    .line 18
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    :goto_0
    iput-boolean v1, p0, Lr20;->h:Z

    .line 24
    .line 25
    new-instance v0, Lex6;

    .line 26
    .line 27
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lr20;->k:Lex6;

    .line 31
    .line 32
    new-instance v0, Lex6;

    .line 33
    .line 34
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lr20;->l:Lex6;

    .line 38
    .line 39
    new-instance v0, Lix6;

    .line 40
    .line 41
    invoke-direct {v0}, Lix6;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lr20;->m:Lix6;

    .line 45
    .line 46
    const-string v0, ""

    .line 47
    .line 48
    iput-object v0, p0, Lr20;->p:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v1, Lfm7;

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    const/16 v6, 0x1f

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-direct/range {v1 .. v6}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lr20;->q:Lfm7;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .line 1
    invoke-super {p0}, La55;->b()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    sput-object p0, Lr20;->r:Ljava/util/ArrayList;

    .line 6
    .line 7
    return-void
.end method

.method public final k(Ljava/util/ArrayList;Lty7;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    new-instance v0, Lrw6;

    .line 8
    .line 9
    new-instance v1, Lo20;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2, p1, p2}, Lo20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const-class p1, Lc40;

    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Lrw6;-><init>(Ljava/lang/Class;Lbt3;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lr20;->i:Lzc6;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    sget-object p2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 25
    .line 26
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    new-instance v1, Lvq;

    .line 31
    .line 32
    const v2, 0x7f130079

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget p1, p1, Lzc6;->c:I

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 p2, 0x0

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object p1, p2

    .line 59
    :goto_0
    invoke-direct {v1, v2, p1, p2}, Lvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, v0, Lrw6;->d:Lvq;

    .line 63
    .line 64
    :cond_1
    iget-object p0, p0, Lr20;->m:Lix6;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 71
    .line 72
    iget-object v2, p0, La55;->b:Ljava/lang/String;

    .line 73
    .line 74
    const/4 v5, 0x4

    .line 75
    const/4 v6, 0x0

    .line 76
    const-string v3, "Empty propsList!"

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final declared-synchronized l(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_4

    .line 15
    :cond_0
    move-object v0, p1

    .line 16
    :goto_0
    iput-object v0, p0, Lr20;->p:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz p1, :cond_4

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_1
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Lns0;

    .line 36
    .line 37
    const/4 v1, 0x5

    .line 38
    invoke-direct {v0, v1}, Lns0;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, p2}, Lns0;->k(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0, p1, p3}, Lr20;->m(Ljava/util/List;Ljava/util/Set;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    :goto_1
    sget-object p1, Lov2;->a:Lov2;

    .line 59
    .line 60
    invoke-virtual {p0, p1, p3}, Lr20;->m(Ljava/util/List;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    :goto_2
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :cond_4
    :goto_3
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p1
.end method

.method public final m(Ljava/util/List;Ljava/util/Set;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lym7;->DATA_RECEIVED:Lym7;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lym7;->DATA_EMPTY:Lym7;

    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, Lr20;->k:Lex6;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lfm7;

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    const/16 v7, 0x14

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    move-object v3, p1

    .line 24
    move-object v4, p2

    .line 25
    invoke-direct/range {v2 .. v7}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lr20;->l:Lex6;

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-boolean p1, p0, Lr20;->o:Z

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iput-object v3, p0, Lr20;->n:Ljava/util/List;

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final onAppTaskComplete(Ld40;)V
    .locals 0
    .annotation runtime Lqr7;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lqo0;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
