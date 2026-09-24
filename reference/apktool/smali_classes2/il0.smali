.class public abstract Lil0;
.super Lk28;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public G:Lfl0;

.field public final H:Lgv7;

.field public final I:Lgv7;

.field public final J:Ldl0;

.field public final n:Z

.field public final p:Ll90;

.field public final q:Lgv7;

.field public r:Z

.field public t:Lel0;

.field public final x:I

.field public y:Lmt3;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk28;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lil0;->n:Z

    .line 6
    .line 7
    new-instance v1, Lq30;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0}, Lq30;-><init>(Lil0;I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ll90;

    .line 13
    .line 14
    const-class v3, Lqo0;

    .line 15
    .line 16
    invoke-static {v3}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Lgl0;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-direct {v4, p0, v5}, Lgl0;-><init>(Lil0;I)V

    .line 24
    .line 25
    .line 26
    new-instance v5, Luf;

    .line 27
    .line 28
    invoke-direct {v5, p0, v0}, Luf;-><init>(Lil0;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3, v4, v1, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lil0;->p:Ll90;

    .line 35
    .line 36
    new-instance v0, Llf;

    .line 37
    .line 38
    const/16 v1, 0x9

    .line 39
    .line 40
    invoke-direct {v0, p0, v1}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lgv7;

    .line 44
    .line 45
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lil0;->q:Lgv7;

    .line 49
    .line 50
    const/16 v0, 0x3874

    .line 51
    .line 52
    iput v0, p0, Lil0;->x:I

    .line 53
    .line 54
    new-instance v0, Lej;

    .line 55
    .line 56
    invoke-direct {v0, p0, v1}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lgv7;

    .line 60
    .line 61
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lil0;->H:Lgv7;

    .line 65
    .line 66
    new-instance v0, Lfj;

    .line 67
    .line 68
    const/16 v1, 0xc

    .line 69
    .line 70
    invoke-direct {v0, p0, v1}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lgv7;

    .line 74
    .line 75
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lil0;->I:Lgv7;

    .line 79
    .line 80
    new-instance v0, Ldl0;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Ldl0;-><init>(Lil0;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lil0;->J:Ldl0;

    .line 86
    .line 87
    return-void
.end method

.method public static varargs w(Landroid/view/ViewGroup;Landroid/transition/Transition;[Ljava/lang/Class;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    array-length v0, p2

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    aget-object v2, p2, v1

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {p1, v2, v3}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 15
    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lil0;->G:Lfl0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lss5;->setEnabled(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final B()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lkf;

    .line 6
    .line 7
    const/16 v2, 0xb

    .line 8
    .line 9
    invoke-direct {v1, p0, v2}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    const/16 p0, 0xe

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v2, v3, v1, p0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public C()Landroidx/fragment/app/o;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public D()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lil0;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method public final E(Landroid/os/Bundle;)Landroidx/fragment/app/o;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "saved_fragment"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Landroidx/fragment/app/e0;->b(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v2, "Fragment no longer exists for key saved_fragment: unique id "

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/fragment/app/z;->f0(Ljava/lang/IllegalStateException;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_2
    :goto_0
    return-object v0
.end method

.method public abstract F()Lqo0;
.end method

.method public final G()Lqo0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lil0;->F()Lqo0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lil0;->p:Ll90;

    .line 8
    .line 9
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lqo0;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    return-object v0
.end method

.method public final H()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lqo0;->f()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final I(Lmt3;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lil0;->y:Lmt3;

    .line 2
    .line 3
    iget-object p1, p0, Lil0;->J:Ldl0;

    .line 4
    .line 5
    invoke-static {p1}, Lle7;->g(Ldl0;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lil0;->J:Ldl0;

    .line 9
    .line 10
    sget-object p1, Lle7;->i:Ljava/util/ArrayList;

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    sget-object v0, Lle7;->k:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v1, Lje7;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lje7;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    monitor-exit p1

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final J(Lmt3;)V
    .locals 2

    .line 1
    sget-object v0, Lqe7;->a:Lgv7;

    .line 2
    .line 3
    invoke-static {}, Lle7;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-interface {p1, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lil0;->I(Lmt3;)V

    .line 16
    .line 17
    .line 18
    sget-boolean p1, Lle7;->f:Z

    .line 19
    .line 20
    iget v0, p0, Lil0;->x:I

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    invoke-static {}, Lqe7;->a()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/16 v1, 0xb

    .line 29
    .line 30
    if-ge p1, v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :try_start_0
    invoke-static {}, Lle7;->h()Lh94;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lf94;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lf94;->k(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception p0

    .line 44
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    :goto_0
    const-string p1, "moe.shizuku.manager.permission.API_V23"

    .line 49
    .line 50
    filled-new-array {p1}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final K(Landroid/view/View;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lk28;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    move-object p1, v0

    .line 11
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 12
    .line 13
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v4, 0x4

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "InflateException"

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/16 v1, 0xf

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object v0, Lzn4;->a:Lzn4;

    .line 50
    .line 51
    new-instance v0, Ll30;

    .line 52
    .line 53
    const-string v3, "Theme/Overlay caused a crash"

    .line 54
    .line 55
    invoke-direct {v0, v1, p1, v3}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget-object v3, Lzn4;->a:Lzn4;

    .line 74
    .line 75
    new-instance v3, Ll30;

    .line 76
    .line 77
    invoke-direct {v3, v1, v0, p1}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v3}, Lzn4;->e(Lbt3;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 84
    .line 85
    .line 86
    return v2
.end method

.method public final L(ZLbt3;)V
    .locals 1

    .line 1
    new-instance v0, Lfl0;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lfl0;-><init>(ZLbt3;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lil0;->G:Lfl0;

    .line 7
    .line 8
    invoke-virtual {p0}, Lio1;->getOnBackPressedDispatcher()Lzs5;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance p1, Lts5;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p2, v0}, Lts5;-><init>(Lfu4;Lss5;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lss5;->createNavigationEventHandler$activity(Lts5;)Lrs5;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0}, Lzs5;->b()Lws5;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object p0, p0, Lws5;->c:Lf41;

    .line 30
    .line 31
    invoke-static {p0, p1}, Lf41;->a(Lf41;Lrs5;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final M(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lqo0;->h(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lk28;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 9
    .line 10
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v5, 0x4

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v3, "Opened"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lil0;->D()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    sget-object v0, Ldz5;->a:Ldz5;

    .line 29
    .line 30
    invoke-static {}, Ldz5;->n()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 37
    .line 38
    invoke-static {v0}, Ldz5;->h(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-static {}, Ldz5;->k()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    sget-object v0, Ld45;->b:Ld45;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v0, "Permissions/Sign-in requirement check failed for "

    .line 71
    .line 72
    const-string v1, ", Restarting app"

    .line 73
    .line 74
    invoke-static {v0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 79
    .line 80
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const/4 v6, 0x4

    .line 85
    const/4 v7, 0x0

    .line 86
    const/4 v5, 0x0

    .line 87
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p0, ": "

    .line 103
    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->E(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 119
    if-eqz p1, :cond_4

    .line 120
    .line 121
    instance-of p1, p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 122
    .line 123
    if-nez p1, :cond_4

    .line 124
    .line 125
    instance-of p1, p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 126
    .line 127
    if-nez p1, :cond_4

    .line 128
    .line 129
    sget-boolean p1, Lmp6;->g:Z

    .line 130
    .line 131
    if-nez p1, :cond_4

    .line 132
    .line 133
    const-string p1, "was_root_available"

    .line 134
    .line 135
    const/4 v1, 0x0

    .line 136
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 137
    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    goto :goto_1

    .line 145
    :cond_3
    const-string p1, "prefs"

    .line 146
    .line 147
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/4 p1, 0x0

    .line 151
    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    move p1, v1

    .line 153
    :goto_1
    if-eqz p1, :cond_4

    .line 154
    .line 155
    sget-object p1, Lmp6;->a:Lmp6;

    .line 156
    .line 157
    invoke-static {p1, v1, v0, v0}, Lmp6;->d(Lmp6;ZZI)Z

    .line 158
    .line 159
    .line 160
    sget-boolean p1, Lhp0;->a:Z

    .line 161
    .line 162
    :cond_4
    sget-object p1, Lhx0;->b:Lhx0;

    .line 163
    .line 164
    invoke-virtual {p1, p0}, Lhx0;->i(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lil0;->D()Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_5

    .line 172
    .line 173
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 174
    .line 175
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->a()Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/SwiftApp;->b:Lgv7;

    .line 180
    .line 181
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lix6;

    .line 186
    .line 187
    new-instance v1, Lk3;

    .line 188
    .line 189
    const/4 v2, 0x5

    .line 190
    invoke-direct {v1, p0, v2}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 191
    .line 192
    .line 193
    new-instance v2, Lez;

    .line 194
    .line 195
    invoke-direct {v2, v0, v1}, Lez;-><init>(ILmt3;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p0, v2}, Lix6;->e(Lfu4;Les5;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iget-object p1, p1, Lqo0;->c:Lgv7;

    .line 206
    .line 207
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Lex6;

    .line 212
    .line 213
    new-instance v1, Lhj;

    .line 214
    .line 215
    const/4 v2, 0x3

    .line 216
    invoke-direct {v1, p0, v2}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 217
    .line 218
    .line 219
    new-instance v2, Lez;

    .line 220
    .line 221
    invoke-direct {v2, v0, v1}, Lez;-><init>(ILmt3;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, p0, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p1}, Lqo0;->e()Lix6;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    new-instance v1, Lox;

    .line 236
    .line 237
    const/4 v2, 0x2

    .line 238
    invoke-direct {v1, p0, v2}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 239
    .line 240
    .line 241
    new-instance v2, Lez;

    .line 242
    .line 243
    invoke-direct {v2, v0, v1}, Lez;-><init>(ILmt3;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, p0, v2}, Lix6;->e(Lfu4;Les5;)V

    .line 247
    .line 248
    .line 249
    sget-object p1, Lg00;->c:Lex6;

    .line 250
    .line 251
    new-instance v1, Lhl0;

    .line 252
    .line 253
    const/4 v7, 0x0

    .line 254
    const/4 v8, 0x0

    .line 255
    const/4 v2, 0x1

    .line 256
    const-class v4, Lil0;

    .line 257
    .line 258
    const-string v5, "showV5MigrationProgress"

    .line 259
    .line 260
    const-string v6, "showV5MigrationProgress(Lorg/swiftapps/swiftbackup/common/AppUtil$V5MigrationProgress;)V"

    .line 261
    .line 262
    move-object v3, p0

    .line 263
    invoke-direct/range {v1 .. v8}, Lhl0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 264
    .line 265
    .line 266
    new-instance p0, Lez;

    .line 267
    .line 268
    invoke-direct {p0, v0, v1}, Lez;-><init>(ILmt3;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v3, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 272
    .line 273
    .line 274
    sget-boolean p0, Lj36;->a:Z

    .line 275
    .line 276
    if-eqz p0, :cond_6

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_6
    sput-boolean v0, Lj36;->a:Z

    .line 280
    .line 281
    const-string p0, "PostDataRestoreActions"

    .line 282
    .line 283
    const-string p1, "Init started"

    .line 284
    .line 285
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    sget-object p0, Lj36;->b:Lgv7;

    .line 289
    .line 290
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    check-cast p0, Lzc2;

    .line 295
    .line 296
    new-instance p1, Li36;

    .line 297
    .line 298
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, p1}, Lzc2;->c(Laj8;)V

    .line 302
    .line 303
    .line 304
    :goto_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    instance-of v0, p1, Lfc5;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Lfc5;

    .line 10
    .line 11
    const/high16 v1, 0x41000000    # 8.0f

    .line 12
    .line 13
    invoke-static {p0, v0, v1}, Lsz8;->n(Landroid/content/Context;Lfc5;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lhx0;->b:Lhx0;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lhx0;->l(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lil0;->J:Ldl0;

    .line 7
    .line 8
    invoke-static {v0}, Lle7;->g(Ldl0;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lil0;->t:Lel0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lil0;->I:Lgv7;

    .line 16
    .line 17
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/transition/ChangeBounds;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0}, Lzm;->onDestroy()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onForcedConfigChange(Ltq3;)V
    .locals 3
    .annotation runtime Lqr7;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "onForcedConfigChange called, Recreating activity (change="

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, ")"

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x102002c

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lio1;->getOnBackPressedDispatcher()Lzs5;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lzs5;->b()Lws5;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lrl5;->a()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    array-length v0, p2

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    aget-object v2, p2, v1

    .line 12
    .line 13
    const-string v3, "moe.shizuku.manager.permission.API_V23"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lil0;->J:Ldl0;

    .line 22
    .line 23
    aget p1, p3, v1

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ldl0;->a(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/u;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lio1;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lil0;->C()Landroidx/fragment/app/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/z;->U(Landroid/os/Bundle;Landroidx/fragment/app/o;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    .line 1
    instance-of v0, p0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lhy7;->a:Lhy7;

    .line 6
    .line 7
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 8
    .line 9
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 10
    .line 11
    invoke-virtual {v0}, Lgz7;->isRunning()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 18
    .line 19
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v5, 0x4

    .line 24
    const/4 v6, 0x0

    .line 25
    const-string v3, "Task is already running, showing TaskActivity now"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const-class v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 32
    .line 33
    invoke-static {p0, v0}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-super {p0}, Lzm;->onStart()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final varargs x(Landroid/view/ViewGroup;[Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lil0;->r:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Lil0;->I:Lgv7;

    .line 10
    .line 11
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/transition/ChangeBounds;

    .line 16
    .line 17
    array-length v0, p2

    .line 18
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, [Ljava/lang/Class;

    .line 23
    .line 24
    invoke-static {p1, p0, p2}, Lil0;->w(Landroid/view/ViewGroup;Landroid/transition/Transition;[Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final varargs y([Ljava/lang/Class;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcv;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/16 p0, 0xe

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v0, p1, v2, v1, p0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final z()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio1;->getOnBackPressedDispatcher()Lzs5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lzs5;->b()Lws5;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lrl5;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
