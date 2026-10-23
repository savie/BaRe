.class public final Lzn4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lzn4;

.field public static final b:Lr24;

.field public static final c:Lse2;

.field public static final d:Lgv7;

.field public static final e:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lzn4;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lzn4;->a:Lzn4;

    .line 7
    .line 8
    sget-object v0, Lcn2;->a:Lrf2;

    .line 9
    .line 10
    sget-object v0, Li55;->a:Lr24;

    .line 11
    .line 12
    sput-object v0, Lzn4;->b:Lr24;

    .line 13
    .line 14
    sget-object v0, Lse2;->c:Lse2;

    .line 15
    .line 16
    sput-object v0, Lzn4;->c:Lse2;

    .line 17
    .line 18
    new-instance v0, Lfl;

    .line 19
    .line 20
    const/16 v1, 0x9

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lfl;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lgv7;

    .line 26
    .line 27
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lzn4;->d:Lgv7;

    .line 31
    .line 32
    new-instance v0, Lq9;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lq9;-><init>(I)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lgv7;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 40
    .line 41
    .line 42
    sput-object v1, Lzn4;->e:Lgv7;

    .line 43
    .line 44
    return-void
.end method

.method public static a(ILjava/util/ArrayList;Z)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Lxn4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p2, p0, p1, v1}, Lxn4;-><init>(ZILjava/util/ArrayList;Ljv1;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Llv2;->a:Llv2;

    .line 8
    .line 9
    invoke-static {p0, v0}, Ll73;->B(Lox1;Lqt3;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/util/List;

    .line 14
    .line 15
    return-object p0
.end method

.method public static b(Lqh4;Lqt3;)Lbl7;
    .locals 2

    .line 1
    sget-object v0, Lzn4;->c:Lse2;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0}, Liz1;->s(Lox1;Lox1;)Lox1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x2

    .line 17
    sget-object v1, Lzy3;->a:Lzy3;

    .line 18
    .line 19
    invoke-static {v1, v0, p1, p0}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static c(Lbt3;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Lvs;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, p0, v2, v1}, Lvs;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static d(Lbt3;)V
    .locals 3

    .line 1
    sget-object v0, Lzn4;->e:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    new-instance v1, La9;

    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    invoke-direct {v1, p0, v2}, La9;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static e(Lbt3;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lzn4;->d:Lgv7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lun4;

    .line 11
    .line 12
    new-instance v1, Lin0;

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    invoke-direct {v1, p0, v2}, Lin0;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object p0, v0, Lun4;->a:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static f(JLbt3;)V
    .locals 2

    .line 1
    new-instance v0, Lyn4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lyn4;-><init>(JLbt3;Ljv1;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static g(Lbt3;Ljv1;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lmj;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, p0, v1, v2}, Lmj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lzn4;->b:Lr24;

    .line 9
    .line 10
    invoke-static {p0, v0, p1}, Ll73;->G(Lox1;Lqt3;Ljv1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object p1, Lyx1;->a:Lyx1;

    .line 15
    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 20
    .line 21
    return-object p0
.end method
