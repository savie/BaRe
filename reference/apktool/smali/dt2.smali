.class public Ldt2;
.super Lvz7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lfu;

.field public final c:Lct2;

.field public final d:Lbs2;

.field public e:Ls03;

.field public final f:Lvq3;

.field public final g:Ljava/lang/Class;

.field public h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:Z


# direct methods
.method public constructor <init>(Lau1;Lct2;Lvq3;)V
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
    iput-object v0, p0, Ldt2;->d:Lbs2;

    .line 10
    .line 11
    new-instance v0, Lfu;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lfu;-><init>(Lau1;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ldt2;->b:Lfu;

    .line 17
    .line 18
    invoke-interface {p2}, Lct2;->required()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Ldt2;->j:Z

    .line 23
    .line 24
    invoke-interface {p1}, Lvb8;->getType()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Ldt2;->g:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-interface {p2}, Lct2;->entry()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Ldt2;->h:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {p2}, Lct2;->data()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput-boolean p1, p0, Ldt2;->k:Z

    .line 41
    .line 42
    invoke-interface {p2}, Lct2;->name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Ldt2;->i:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p3, p0, Ldt2;->f:Lvq3;

    .line 49
    .line 50
    iput-object p2, p0, Ldt2;->c:Lct2;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldt2;->f()Ls03;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ldt2;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {v0, p0}, Ls03;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final b()Lvb8;
    .locals 2

    .line 1
    iget-object p0, p0, Ldt2;->g:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lln5;

    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance p0, Lln5;

    .line 17
    .line 18
    invoke-direct {p0, v0, v1}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 1
    iget-object p0, p0, Ldt2;->c:Lct2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ldt2;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Lxd2;
    .locals 0

    .line 1
    iget-object p0, p0, Ldt2;->b:Lfu;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Ls03;
    .locals 1

    .line 1
    iget-object v0, p0, Ldt2;->e:Ls03;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ldt2;->d:Lbs2;

    .line 6
    .line 7
    invoke-virtual {v0}, Lbs2;->d()Ls03;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Ldt2;->e:Ls03;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Ldt2;->e:Ls03;

    .line 14
    .line 15
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ldt2;->f:Lvq3;

    .line 2
    .line 3
    iget-object v0, v0, Lvq3;->a:Lcz4;

    .line 4
    .line 5
    iget-object p0, p0, Ldt2;->d:Lbs2;

    .line 6
    .line 7
    invoke-virtual {p0}, Lbs2;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Ldt2;->g:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isRequired()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldt2;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method public final k()Lau1;
    .locals 0

    .line 1
    iget-object p0, p0, Ldt2;->d:Lbs2;

    .line 2
    .line 3
    iget-object p0, p0, Lbs2;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lau1;

    .line 6
    .line 7
    return-object p0
.end method

.method public final o(Lai5;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lln5;

    .line 2
    .line 3
    iget-object v1, p0, Ldt2;->g:Ljava/lang/Class;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v0, v1, v2}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lai5;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p0, p0, Ldt2;->c:Lct2;

    .line 12
    .line 13
    invoke-interface {p0}, Lct2;->empty()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 p1, 0x0

    .line 18
    if-nez p0, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Lvb8;->getType()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_0
    return-object p1

    .line 43
    :cond_1
    new-instance p1, Lw70;

    .line 44
    .line 45
    const-string v1, "The %s not an array for %s"

    .line 46
    .line 47
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {p1, v1, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    return-object p1
.end method

.method public final q(Lai5;)Lbw1;
    .locals 5

    .line 1
    iget-object v0, p0, Ldt2;->d:Lbs2;

    .line 2
    .line 3
    iget-object v1, v0, Lbs2;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lau1;

    .line 6
    .line 7
    invoke-virtual {p0}, Ldt2;->r()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Ldt2;->g:Ljava/lang/Class;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Ldt2;->b()Lvb8;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object v0, v0, Lbs2;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lau1;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    check-cast p0, Lln5;

    .line 31
    .line 32
    iget-object v1, p0, Lln5;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Ljava/lang/Class;

    .line 35
    .line 36
    iget-object v3, p1, Lai5;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v3, Lx44;

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Lx44;->e(Ljava/lang/Class;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    new-instance v1, Lcy6;

    .line 47
    .line 48
    invoke-direct {v1, p1, v0, p0, v2}, Lcy6;-><init>(Lai5;Lvb8;Lln5;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    :cond_0
    new-instance v1, Las2;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v3, Lx40;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-direct {v3, p1, v0, v4}, Ly23;-><init>(Lai5;Lvb8;Ljava/lang/Class;)V

    .line 61
    .line 62
    .line 63
    iput-object v3, v1, Las2;->a:Ljava/lang/Object;

    .line 64
    .line 65
    new-instance v3, Lcy6;

    .line 66
    .line 67
    invoke-direct {v3, p1, p0, v4}, Lcy6;-><init>(Lai5;Lvb8;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iput-object v3, v1, Las2;->b:Ljava/lang/Object;

    .line 71
    .line 72
    iput-object v2, v1, Las2;->c:Ljava/io/Serializable;

    .line 73
    .line 74
    iput-object p0, v1, Las2;->d:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object v0, v1, Las2;->e:Ljava/lang/Object;

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_1
    new-instance p0, Lw70;

    .line 80
    .line 81
    const-string p1, "Type is not an array %s for %s"

    .line 82
    .line 83
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p0, p1, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ldt2;->f:Lvq3;

    .line 2
    .line 3
    iget-object v0, v0, Lvq3;->a:Lcz4;

    .line 4
    .line 5
    iget-object v0, p0, Ldt2;->h:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Ldt2;->d:Lbs2;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lbs2;->f(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lbs2;->c()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Ldt2;->h:Ljava/lang/String;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Ldt2;->h:Ljava/lang/String;

    .line 25
    .line 26
    return-object p0
.end method

.method public final t()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldt2;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ldt2;->d:Lbs2;

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
