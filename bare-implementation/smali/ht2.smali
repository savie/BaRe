.class public Lht2;
.super Lvz7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lfu;

.field public final c:Lbs2;

.field public final d:Lgt2;

.field public e:Ls03;

.field public final f:Lvq3;

.field public final g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public final k:Ljava/lang/Class;

.field public l:Ljava/lang/Class;

.field public final m:Z

.field public final n:Z

.field public final o:Z


# direct methods
.method public constructor <init>(Lau1;Lgt2;Lvq3;)V
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
    iput-object v0, p0, Lht2;->c:Lbs2;

    .line 10
    .line 11
    new-instance v0, Lfu;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lfu;-><init>(Lau1;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lht2;->b:Lfu;

    .line 17
    .line 18
    invoke-interface {p2}, Lgt2;->required()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lht2;->m:Z

    .line 23
    .line 24
    invoke-interface {p1}, Lvb8;->getType()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lht2;->k:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-interface {p2}, Lgt2;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lht2;->g:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {p2}, Lgt2;->inline()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput-boolean p1, p0, Lht2;->n:Z

    .line 41
    .line 42
    invoke-interface {p2}, Lgt2;->entry()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lht2;->h:Ljava/lang/String;

    .line 47
    .line 48
    invoke-interface {p2}, Lgt2;->data()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput-boolean p1, p0, Lht2;->o:Z

    .line 53
    .line 54
    invoke-interface {p2}, Lgt2;->type()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lht2;->l:Ljava/lang/Class;

    .line 59
    .line 60
    iput-object p3, p0, Lht2;->f:Lvq3;

    .line 61
    .line 62
    iput-object p2, p0, Lht2;->d:Lgt2;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lht2;->j:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lht2;->f()Ls03;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lht2;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ls03;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lht2;->j:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lht2;->j:Ljava/lang/String;

    .line 20
    .line 21
    return-object p0
.end method

.method public final b()Lvb8;
    .locals 3

    .line 1
    iget-object v0, p0, Lht2;->c:Lbs2;

    .line 2
    .line 3
    iget-object v0, v0, Lbs2;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lau1;

    .line 6
    .line 7
    iget-object v1, p0, Lht2;->l:Ljava/lang/Class;

    .line 8
    .line 9
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lau1;->b()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lht2;->l:Ljava/lang/Class;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lht2;->l:Ljava/lang/Class;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    new-instance v0, Lln5;

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    invoke-direct {v0, p0, v1}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    new-instance p0, Lwt1;

    .line 31
    .line 32
    const-string v1, "Unable to determine generic type for %s"

    .line 33
    .line 34
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0, v1, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 1
    iget-object p0, p0, Lht2;->d:Lgt2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lht2;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Lxd2;
    .locals 0

    .line 1
    iget-object p0, p0, Lht2;->b:Lfu;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Ls03;
    .locals 1

    .line 1
    iget-object v0, p0, Lht2;->e:Ls03;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lht2;->c:Lbs2;

    .line 6
    .line 7
    invoke-virtual {v0}, Lbs2;->d()Ls03;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lht2;->e:Ls03;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lht2;->e:Ls03;

    .line 14
    .line 15
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lht2;->i:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lht2;->f:Lvq3;

    .line 6
    .line 7
    iget-object v0, v0, Lvq3;->a:Lcz4;

    .line 8
    .line 9
    iget-object v0, p0, Lht2;->c:Lbs2;

    .line 10
    .line 11
    invoke-virtual {v0}, Lbs2;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lht2;->i:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lht2;->i:Ljava/lang/String;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lht2;->k:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isInline()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lht2;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isRequired()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lht2;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method public final k()Lau1;
    .locals 0

    .line 1
    iget-object p0, p0, Lht2;->c:Lbs2;

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
    iget-object v1, p0, Lht2;->k:Ljava/lang/Class;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v0, v1, v2}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lxk1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p1, v0, v2}, Ly23;-><init>(Lai5;Lvb8;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lht2;->d:Lgt2;

    .line 16
    .line 17
    invoke-interface {p0}, Lgt2;->empty()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Lxk1;->h()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    return-object v2
.end method

.method public final q(Lai5;)Lbw1;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lht2;->r()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lht2;->d:Lgt2;

    .line 6
    .line 7
    invoke-interface {v1}, Lgt2;->inline()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lht2;->c:Lbs2;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lht2;->b()Lvb8;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object v1, v2, Lbs2;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lau1;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    check-cast p0, Lln5;

    .line 27
    .line 28
    iget-object v2, p0, Lln5;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Ljava/lang/Class;

    .line 31
    .line 32
    iget-object v3, p1, Lai5;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Lx44;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Lx44;->e(Ljava/lang/Class;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    new-instance v2, Lcp1;

    .line 43
    .line 44
    invoke-direct {v2, p1, v1, p0, v0}, Lcp1;-><init>(Lai5;Lvb8;Lln5;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_0
    new-instance v2, Lju7;

    .line 49
    .line 50
    invoke-direct {v2, p1, v1, p0, v0}, Lju7;-><init>(Lai5;Lvb8;Lln5;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_1
    invoke-virtual {p0}, Lht2;->b()Lvb8;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    iget-object v1, v2, Lbs2;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Lau1;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    check-cast p0, Lln5;

    .line 66
    .line 67
    iget-object v2, p0, Lln5;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, Ljava/lang/Class;

    .line 70
    .line 71
    iget-object v3, p1, Lai5;->d:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v3, Lx44;

    .line 74
    .line 75
    invoke-virtual {v3, v2}, Lx44;->e(Ljava/lang/Class;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    new-instance v2, Lap1;

    .line 82
    .line 83
    invoke-direct {v2, p1, v1, p0, v0}, Lap1;-><init>(Lai5;Lvb8;Lln5;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v2

    .line 87
    :cond_2
    new-instance v2, Ls56;

    .line 88
    .line 89
    invoke-direct {v2, p1, v1, p0, v0}, Ls56;-><init>(Lai5;Lvb8;Lln5;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v2
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lht2;->f:Lvq3;

    .line 2
    .line 3
    iget-object v0, v0, Lvq3;->a:Lcz4;

    .line 4
    .line 5
    iget-object v0, p0, Lht2;->h:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lht2;->c:Lbs2;

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
    iput-object v0, p0, Lht2;->h:Ljava/lang/String;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lht2;->h:Ljava/lang/String;

    .line 25
    .line 26
    return-object p0
.end method

.method public final t()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lht2;->o:Z

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lht2;->c:Lbs2;

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
