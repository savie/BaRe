.class public final Lnz4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbw1;
.implements Lw23;


# static fields
.field public static final k:Ljava/lang/Object;

.field public static n:Lnz4;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnz4;->k:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lai5;Lix2;Lln5;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lnz4;->a:I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lro;

    invoke-direct {v0, p1}, Lro;-><init>(Lai5;)V

    iput-object v0, p0, Lnz4;->c:Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Lai5;->n()Lcz4;

    move-result-object v0

    iput-object v0, p0, Lnz4;->d:Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lnz4;->b:Ljava/lang/Object;

    .line 54
    iput-object p2, p0, Lnz4;->e:Ljava/lang/Object;

    .line 55
    iput-object p3, p0, Lnz4;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnz4;->a:I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz4;->c:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnz4;->d:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz4;->e:Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lnz4;->b:Ljava/lang/Object;

    .line 62
    new-instance v0, Llz4;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Llz4;-><init>(Lnz4;Landroid/os/Looper;)V

    iput-object v0, p0, Lnz4;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 56
    iput p6, p0, Lnz4;->a:I

    iput-object p1, p0, Lnz4;->b:Ljava/lang/Object;

    iput-object p2, p0, Lnz4;->c:Ljava/lang/Object;

    iput-object p3, p0, Lnz4;->d:Ljava/lang/Object;

    iput-object p4, p0, Lnz4;->e:Ljava/lang/Object;

    iput-object p5, p0, Lnz4;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lq27;Lai5;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lnz4;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p2}, Lq27;->b(Lai5;)Lyz0;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lnz4;->d:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-interface {p1}, Lq27;->d()Lny1;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iput-object p2, p0, Lnz4;->b:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-interface {p1}, Lq27;->g()Lvj8;

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lq27;->e()Lxd2;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lq27;->isPrimitive()Z

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lq27;->getVersion()Luq4;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lnz4;->e:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-interface {p1}, Lq27;->j()Ld67;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lnz4;->c:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-interface {p1}, Lq27;->getText()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Lq27;->getType()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lnz4;->f:Ljava/lang/Object;

    .line 48
    .line 49
    return-void
.end method

.method public static e(Landroid/app/Activity;)Lnz4;
    .locals 2

    .line 1
    sget-object v0, Lnz4;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lnz4;->n:Lnz4;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lnz4;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, Lnz4;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lnz4;->n:Lnz4;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    sget-object p0, Lnz4;->n:Lnz4;

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p0

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method


# virtual methods
.method public a(Lev5;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lnz4;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lln5;

    .line 4
    .line 5
    iget-object v0, v0, Lln5;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/lang/Class;

    .line 8
    .line 9
    iget-object v1, p0, Lnz4;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lix2;

    .line 12
    .line 13
    invoke-virtual {v1}, Lix2;->c()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-boolean v3, v1, Lix2;->h:Z

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lnz4;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lai5;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lai5;->m(Ljava/lang/Class;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :cond_0
    iget-object v1, p0, Lnz4;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lcz4;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lnz4;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lro;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2, v0, v2}, Lro;->w(Lev5;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    new-instance p0, Lwt1;

    .line 47
    .line 48
    const-string p1, "Can not have %s as an attribute for %s"

    .line 49
    .line 50
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-direct {p0, p1, p2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public b(Lmc4;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-interface {p1}, Lmc4;->getPosition()Ltr9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lnz4;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lln5;

    .line 8
    .line 9
    iget-object v2, v1, Lln5;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/Class;

    .line 12
    .line 13
    iget-object v3, p0, Lnz4;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Lix2;

    .line 16
    .line 17
    invoke-virtual {v3}, Lix2;->c()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Lnz4;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v4, Lai5;

    .line 26
    .line 27
    invoke-virtual {v4, v2}, Lai5;->m(Ljava/lang/Class;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    :cond_0
    iget-boolean v5, v3, Lix2;->h:Z

    .line 32
    .line 33
    if-nez v5, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lnz4;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lcz4;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v0, v1, Lln5;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Ljava/lang/Class;

    .line 45
    .line 46
    invoke-interface {p1, v4}, Lmc4;->f(Ljava/lang/String;)Lmc4;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move-object v1, p1

    .line 54
    check-cast v1, Llc4;

    .line 55
    .line 56
    invoke-virtual {v1}, Llc4;->k()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    :goto_0
    const/4 p0, 0x0

    .line 63
    return-object p0

    .line 64
    :cond_2
    iget-object p0, p0, Lnz4;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lro;

    .line 67
    .line 68
    invoke-virtual {p0, p1, v0}, Lro;->r(Lmc4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_3
    new-instance p0, Lw70;

    .line 74
    .line 75
    const-string p1, "Can not have %s as an attribute for %s at %s"

    .line 76
    .line 77
    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p0, p1, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public c(Lmc4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-interface {p1}, Lmc4;->getPosition()Ltr9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lnz4;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lln5;

    .line 8
    .line 9
    iget-object v1, v1, Lln5;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/lang/Class;

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lnz4;->b(Lmc4;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p1, Lkd5;

    .line 21
    .line 22
    iget-object p0, p0, Lnz4;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lix2;

    .line 25
    .line 26
    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p2, "Can not read key of %s for %s at %s"

    .line 31
    .line 32
    invoke-direct {p1, p2, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public d(Lmc4;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Lmc4;->getPosition()Ltr9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lnz4;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lln5;

    .line 8
    .line 9
    iget-object v2, v1, Lln5;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/Class;

    .line 12
    .line 13
    iget-object v3, p0, Lnz4;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Lix2;

    .line 16
    .line 17
    invoke-virtual {v3}, Lix2;->c()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Lnz4;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v4, Lai5;

    .line 26
    .line 27
    invoke-virtual {v4, v2}, Lai5;->m(Ljava/lang/Class;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    :cond_0
    iget-boolean v5, v3, Lix2;->h:Z

    .line 32
    .line 33
    if-nez v5, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lnz4;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lcz4;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v4}, Lmc4;->f(Ljava/lang/String;)Lmc4;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v0, v1, Lln5;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ljava/lang/Class;

    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move-object v1, p1

    .line 54
    check-cast v1, Llc4;

    .line 55
    .line 56
    invoke-virtual {v1}, Llc4;->k()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    :goto_0
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    :cond_2
    iget-object p0, p0, Lnz4;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lro;

    .line 67
    .line 68
    invoke-virtual {p0, p1, v0}, Lro;->v(Lmc4;Ljava/lang/Class;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0

    .line 73
    :cond_3
    new-instance p0, Lwt1;

    .line 74
    .line 75
    const-string p1, "Can not have %s as an attribute for %s at %s"

    .line 76
    .line 77
    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p0, p1, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public f(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lnz4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Lmz4;

    .line 7
    .line 8
    invoke-direct {v1, p1, p2}, Lmz4;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lnz4;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lnz4;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    :goto_1
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ge p1, v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v4, p0, Lnz4;->d:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v4, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/util/ArrayList;

    .line 62
    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    new-instance v4, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .line 69
    .line 70
    iget-object v5, p0, Lnz4;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v5, Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    add-int/lit8 p1, p1, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method

.method public g(Landroid/content/Intent;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Action list: "

    .line 6
    .line 7
    const-string v3, "Resolving type "

    .line 8
    .line 9
    iget-object v4, v0, Lnz4;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Ljava/util/HashMap;

    .line 12
    .line 13
    monitor-enter v4

    .line 14
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    iget-object v5, v0, Lnz4;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v5, Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v1, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    and-int/lit8 v5, v5, 0x8

    .line 47
    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    const/4 v14, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v14, 0x0

    .line 53
    :goto_0
    if-eqz v14, :cond_1

    .line 54
    .line 55
    const-string v5, "LocalBroadcastManager"

    .line 56
    .line 57
    new-instance v11, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v3, " scheme "

    .line 66
    .line 67
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v3, " of intent "

    .line 74
    .line 75
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto/16 :goto_7

    .line 91
    .line 92
    :cond_1
    :goto_1
    iget-object v3, v0, Lnz4;->d:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v3, Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/util/ArrayList;

    .line 105
    .line 106
    if-eqz v3, :cond_11

    .line 107
    .line 108
    if-eqz v14, :cond_2

    .line 109
    .line 110
    const-string v5, "LocalBroadcastManager"

    .line 111
    .line 112
    new-instance v11, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :cond_2
    const/4 v2, 0x0

    .line 128
    const/4 v15, 0x0

    .line 129
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-ge v15, v5, :cond_e

    .line 134
    .line 135
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    check-cast v5, Lmz4;

    .line 140
    .line 141
    if-eqz v14, :cond_3

    .line 142
    .line 143
    const-string v11, "LocalBroadcastManager"

    .line 144
    .line 145
    new-instance v12, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v13, "Matching against filter "

    .line 151
    .line 152
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v13, v5, Lmz4;->a:Landroid/content/IntentFilter;

    .line 156
    .line 157
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    :cond_3
    iget-boolean v11, v5, Lmz4;->c:Z

    .line 168
    .line 169
    if-eqz v11, :cond_5

    .line 170
    .line 171
    if-eqz v14, :cond_4

    .line 172
    .line 173
    const-string v5, "LocalBroadcastManager"

    .line 174
    .line 175
    const-string v11, "  Filter\'s target already added"

    .line 176
    .line 177
    invoke-static {v5, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    :cond_4
    move-object/from16 v18, v3

    .line 181
    .line 182
    goto/16 :goto_5

    .line 183
    .line 184
    :cond_5
    move-object v11, v5

    .line 185
    iget-object v5, v11, Lmz4;->a:Landroid/content/IntentFilter;

    .line 186
    .line 187
    move-object v12, v11

    .line 188
    const-string v11, "LocalBroadcastManager"

    .line 189
    .line 190
    invoke-virtual/range {v5 .. v11}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-ltz v5, :cond_8

    .line 195
    .line 196
    if-eqz v14, :cond_6

    .line 197
    .line 198
    const-string v11, "LocalBroadcastManager"

    .line 199
    .line 200
    new-instance v13, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    move-object/from16 v18, v3

    .line 206
    .line 207
    const-string v3, "  Filter matched!  match=0x"

    .line 208
    .line 209
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_6
    move-object/from16 v18, v3

    .line 228
    .line 229
    :goto_3
    if-nez v2, :cond_7

    .line 230
    .line 231
    new-instance v2, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .line 235
    .line 236
    :cond_7
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    const/4 v3, 0x1

    .line 240
    iput-boolean v3, v12, Lmz4;->c:Z

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_8
    move-object/from16 v18, v3

    .line 244
    .line 245
    if-eqz v14, :cond_d

    .line 246
    .line 247
    const/4 v3, -0x4

    .line 248
    if-eq v5, v3, :cond_c

    .line 249
    .line 250
    const/4 v3, -0x3

    .line 251
    if-eq v5, v3, :cond_b

    .line 252
    .line 253
    const/4 v3, -0x2

    .line 254
    if-eq v5, v3, :cond_a

    .line 255
    .line 256
    const/4 v3, -0x1

    .line 257
    if-eq v5, v3, :cond_9

    .line 258
    .line 259
    const-string v3, "unknown reason"

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_9
    const-string v3, "type"

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_a
    const-string v3, "data"

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_b
    const-string v3, "action"

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_c
    const-string v3, "category"

    .line 272
    .line 273
    :goto_4
    const-string v5, "LocalBroadcastManager"

    .line 274
    .line 275
    new-instance v11, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string v12, "  Filter did not match: "

    .line 281
    .line 282
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    :cond_d
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 296
    .line 297
    move-object/from16 v3, v18

    .line 298
    .line 299
    goto/16 :goto_2

    .line 300
    .line 301
    :cond_e
    if-eqz v2, :cond_11

    .line 302
    .line 303
    const/4 v3, 0x0

    .line 304
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-ge v3, v5, :cond_f

    .line 309
    .line 310
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    check-cast v5, Lmz4;

    .line 315
    .line 316
    const/4 v6, 0x0

    .line 317
    iput-boolean v6, v5, Lmz4;->c:Z

    .line 318
    .line 319
    add-int/lit8 v3, v3, 0x1

    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_f
    iget-object v3, v0, Lnz4;->e:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v3, Ljava/util/ArrayList;

    .line 325
    .line 326
    new-instance v5, Lwc9;

    .line 327
    .line 328
    const/4 v6, 0x4

    .line 329
    invoke-direct {v5, v6, v1, v2}, Lwc9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    iget-object v1, v0, Lnz4;->f:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v1, Llz4;

    .line 338
    .line 339
    const/4 v3, 0x1

    .line 340
    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-nez v1, :cond_10

    .line 345
    .line 346
    iget-object v0, v0, Lnz4;->f:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast v0, Llz4;

    .line 349
    .line 350
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 351
    .line 352
    .line 353
    :cond_10
    monitor-exit v4

    .line 354
    const/16 v17, 0x1

    .line 355
    .line 356
    return v17

    .line 357
    :cond_11
    monitor-exit v4

    .line 358
    const/16 v16, 0x0

    .line 359
    .line 360
    return v16

    .line 361
    :goto_7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lnz4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lca6;

    .line 4
    .line 5
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, La48;

    .line 11
    .line 12
    iget-object v0, p0, Lnz4;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lca6;

    .line 15
    .line 16
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v3, v0

    .line 21
    check-cast v3, Lqg3;

    .line 22
    .line 23
    iget-object v0, p0, Lnz4;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lca6;

    .line 26
    .line 27
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v4, v0

    .line 32
    check-cast v4, Lf10;

    .line 33
    .line 34
    iget-object v0, p0, Lnz4;->e:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lca6;

    .line 37
    .line 38
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v5, v0

    .line 43
    check-cast v5, Lfj6;

    .line 44
    .line 45
    iget-object p0, p0, Lnz4;->f:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lca6;

    .line 48
    .line 49
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    move-object v6, p0

    .line 54
    check-cast v6, Lka7;

    .line 55
    .line 56
    new-instance v1, Ldj6;

    .line 57
    .line 58
    invoke-direct/range {v1 .. v6}, Ldj6;-><init>(La48;Lqg3;Lf10;Lfj6;Lka7;)V

    .line 59
    .line 60
    .line 61
    return-object v1
.end method

.method public h(Landroid/content/BroadcastReceiver;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lnz4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lnz4;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_3

    .line 22
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    sub-int/2addr v2, v3

    .line 28
    :goto_0
    if-ltz v2, :cond_5

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lmz4;

    .line 35
    .line 36
    iput-boolean v3, v4, Lmz4;->d:Z

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    :goto_1
    iget-object v6, v4, Lmz4;->a:Landroid/content/IntentFilter;

    .line 40
    .line 41
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-ge v5, v6, :cond_4

    .line 46
    .line 47
    iget-object v6, v4, Lmz4;->a:Landroid/content/IntentFilter;

    .line 48
    .line 49
    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    iget-object v7, p0, Lnz4;->d:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v7, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    check-cast v7, Ljava/util/ArrayList;

    .line 62
    .line 63
    if-eqz v7, :cond_3

    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    sub-int/2addr v8, v3

    .line 70
    :goto_2
    if-ltz v8, :cond_2

    .line 71
    .line 72
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    check-cast v9, Lmz4;

    .line 77
    .line 78
    iget-object v10, v9, Lmz4;->b:Landroid/content/BroadcastReceiver;

    .line 79
    .line 80
    if-ne v10, p1, :cond_1

    .line 81
    .line 82
    iput-boolean v3, v9, Lmz4;->d:Z

    .line 83
    .line 84
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_1
    add-int/lit8 v8, v8, -0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-gtz v7, :cond_3

    .line 95
    .line 96
    iget-object v7, p0, Lnz4;->d:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v7, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    monitor-exit v0

    .line 110
    return-void

    .line 111
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lnz4;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lnz4;->f:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/lang/Class;

    .line 14
    .line 15
    const-string v0, "schema for "

    .line 16
    .line 17
    invoke-static {p0, v0}, Lfz5;->k(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
