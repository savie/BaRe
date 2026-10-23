.class public Lj18;
.super Lvz7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lbs2;

.field public c:Ls03;

.field public final d:Lau1;

.field public final e:Lq08;

.field public final f:Ljava/lang/Class;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Lau1;Lq08;Lvq3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvz7;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lbs2;

    .line 5
    .line 6
    invoke-direct {v0, p1, p0, p3}, Lbs2;-><init>(Lau1;Lvz7;Lvq3;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lj18;->b:Lbs2;

    .line 10
    .line 11
    invoke-interface {p2}, Lq08;->required()Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    iput-boolean p3, p0, Lj18;->h:Z

    .line 16
    .line 17
    invoke-interface {p1}, Lvb8;->getType()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    iput-object p3, p0, Lj18;->f:Ljava/lang/Class;

    .line 22
    .line 23
    invoke-interface {p2}, Lq08;->empty()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    iput-object p3, p0, Lj18;->g:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {p2}, Lq08;->data()Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    iput-boolean p3, p0, Lj18;->i:Z

    .line 34
    .line 35
    iput-object p1, p0, Lj18;->d:Lau1;

    .line 36
    .line 37
    iput-object p2, p0, Lj18;->e:Lq08;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj18;->f()Ls03;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ls03;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 1
    iget-object p0, p0, Lj18;->e:Lq08;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj18;->d:Lau1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final e()Lxd2;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final f()Ls03;
    .locals 1

    .line 1
    iget-object v0, p0, Lj18;->c:Ls03;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lj18;->b:Lbs2;

    .line 6
    .line 7
    invoke-virtual {v0}, Lbs2;->d()Ls03;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lj18;->c:Ls03;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lj18;->c:Ls03;

    .line 14
    .line 15
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lj18;->f:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isRequired()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lj18;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method public final k()Lau1;
    .locals 0

    .line 1
    iget-object p0, p0, Lj18;->d:Lau1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final o(Lai5;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lj18;->b:Lbs2;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lj18;->g:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0}, Lbs2;->f(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    :cond_0
    return-object p0
.end method

.method public final q(Lai5;)Lbw1;
    .locals 4

    .line 1
    iget-object v0, p0, Lj18;->b:Lbs2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj18;->g:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lbs2;->f(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lj18;->d:Lau1;

    .line 19
    .line 20
    invoke-interface {v1}, Lvb8;->getType()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p1, Lai5;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lx44;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Lx44;->e(Ljava/lang/Class;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    new-instance p0, Lcy6;

    .line 35
    .line 36
    invoke-direct {p0, p1, v1, v0}, Lcy6;-><init>(Lai5;Lvb8;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    new-instance p1, Lsf5;

    .line 41
    .line 42
    iget-object p0, p0, Lj18;->e:Lq08;

    .line 43
    .line 44
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v0, "Cannot use %s to represent %s"

    .line 49
    .line 50
    invoke-direct {p1, v0, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public final t()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lj18;->i:Z

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj18;->b:Lbs2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbs2;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
