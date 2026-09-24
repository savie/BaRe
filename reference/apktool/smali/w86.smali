.class public final Lw86;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsl0;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lpz3;Lne;Ldf;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw86;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lw86;->d:Ljava/lang/Object;

    iput-object p1, p0, Lw86;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lw86;->a:Z

    iput-object p2, p0, Lw86;->b:Ljava/lang/Object;

    iput-object p3, p0, Lw86;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv77;Lwo0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw86;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lw86;->c:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object v0, Lqk4;->e:Lqk4;

    .line 9
    .line 10
    iget-object v1, p2, Lwo0;->d:Las5;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v2, p2, Lwo0;->e:Lhd;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Las5;->z(Ljb9;)Lqk4;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lqk4;->a(Lqk4;)Lqk4;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, v0

    .line 26
    :goto_0
    iget-object p2, p2, Lwo0;->a:Lgc8;

    .line 27
    .line 28
    iget-object p2, p2, Lgc8;->f:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lt65;->e(Ljava/lang/Class;)Lcz4;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lqk4;->a(Lqk4;)Lqk4;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-object v1, p1, Lt65;->k:Lmp7;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Lqk4;->a(Lqk4;)Lqk4;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lw86;->f:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object p2, p2, Lqk4;->a:Lpk4;

    .line 49
    .line 50
    sget-object v0, Lpk4;->d:Lpk4;

    .line 51
    .line 52
    if-ne p2, v0, :cond_1

    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 p2, 0x0

    .line 57
    :goto_1
    iput-boolean p2, p0, Lw86;->a:Z

    .line 58
    .line 59
    invoke-virtual {p1}, Ls65;->d()Las5;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lw86;->d:Ljava/lang/Object;

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public a(Lod;ZLgc8;)Lgc8;
    .locals 10

    .line 1
    iget-object v0, p0, Lw86;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Las5;

    .line 4
    .line 5
    iget-object p0, p0, Lw86;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lv77;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1, p3}, Las5;->d0(Ls65;Ljb9;Lgc8;)Lgc8;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq p0, p3, :cond_2

    .line 16
    .line 17
    iget-object p2, p0, Lgc8;->f:Ljava/lang/Class;

    .line 18
    .line 19
    iget-object p3, p3, Lgc8;->f:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    :goto_0
    move-object p3, p0

    .line 35
    move p2, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p1}, Ljb9;->B()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const-string v8, " not a super-type of (declared) class "

    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    const-string v4, "Illegal concrete-type annotation for method \'"

    .line 52
    .line 53
    const-string v6, "\': class "

    .line 54
    .line 55
    invoke-static/range {v4 .. v9}, Lq;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Las5;->J(Ljb9;)Lam4;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_4

    .line 64
    .line 65
    sget-object p1, Lam4;->c:Lam4;

    .line 66
    .line 67
    if-eq p0, p1, :cond_4

    .line 68
    .line 69
    sget-object p1, Lam4;->b:Lam4;

    .line 70
    .line 71
    if-ne p0, p1, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const/4 v2, 0x0

    .line 75
    :goto_2
    move p2, v2

    .line 76
    :cond_4
    if-eqz p2, :cond_5

    .line 77
    .line 78
    invoke-virtual {p3}, Lgc8;->G0()Lgc8;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_5
    return-object v1
.end method

.method public b(Lhs1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw86;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lpz3;

    .line 4
    .line 5
    iget-object v0, v0, Lpz3;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    iget-object p0, p0, Lw86;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ldf;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lg19;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lg19;->p(Lhs1;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public i(Lhs1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lw86;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lpz3;

    .line 4
    .line 5
    iget-object v0, v0, Lpz3;->n:Ln29;

    .line 6
    .line 7
    new-instance v1, Lj29;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2, p0, p1}, Lj29;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
