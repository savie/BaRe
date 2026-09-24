.class public Lnt2;
.super Lvz7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lfu;

.field public final c:Lbs2;

.field public final d:Lmt2;

.field public e:Ls03;

.field public final f:Lvq3;

.field public final g:Lix2;

.field public final h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:[Ljava/lang/Class;

.field public final m:Ljava/lang/Class;

.field public final n:Z

.field public final o:Z

.field public final p:Z


# direct methods
.method public constructor <init>(Lau1;Lmt2;Lvq3;)V
    .locals 2

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
    iput-object v0, p0, Lnt2;->c:Lbs2;

    .line 10
    .line 11
    new-instance v0, Lfu;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lfu;-><init>(Lau1;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lnt2;->b:Lfu;

    .line 17
    .line 18
    new-instance v0, Lix2;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Lmt2;->attribute()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput-boolean v1, v0, Lix2;->h:Z

    .line 28
    .line 29
    invoke-interface {p2}, Lmt2;->entry()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, v0, Lix2;->e:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {p2}, Lmt2;->value()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lix2;->f:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {p2}, Lmt2;->key()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, v0, Lix2;->g:Ljava/lang/String;

    .line 46
    .line 47
    iput-object p1, v0, Lix2;->b:Lau1;

    .line 48
    .line 49
    iput-object p2, v0, Lix2;->a:Lmt2;

    .line 50
    .line 51
    iput-object v0, p0, Lnt2;->g:Lix2;

    .line 52
    .line 53
    invoke-interface {p2}, Lmt2;->required()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput-boolean v0, p0, Lnt2;->n:Z

    .line 58
    .line 59
    invoke-interface {p1}, Lvb8;->getType()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lnt2;->m:Ljava/lang/Class;

    .line 64
    .line 65
    invoke-interface {p2}, Lmt2;->inline()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput-boolean p1, p0, Lnt2;->o:Z

    .line 70
    .line 71
    invoke-interface {p2}, Lmt2;->name()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lnt2;->h:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {p2}, Lmt2;->data()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput-boolean p1, p0, Lnt2;->p:Z

    .line 82
    .line 83
    iput-object p3, p0, Lnt2;->f:Lvq3;

    .line 84
    .line 85
    iput-object p2, p0, Lnt2;->d:Lmt2;

    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lnt2;->j:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lnt2;->f()Ls03;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lnt2;->getName()Ljava/lang/String;

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
    iput-object v0, p0, Lnt2;->j:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lnt2;->j:Ljava/lang/String;

    .line 20
    .line 21
    return-object p0
.end method

.method public final b()Lvb8;
    .locals 2

    .line 1
    iget-object v0, p0, Lnt2;->c:Lbs2;

    .line 2
    .line 3
    iget-object v0, v0, Lbs2;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lau1;

    .line 6
    .line 7
    iget-object v1, p0, Lnt2;->l:[Ljava/lang/Class;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lau1;->e()[Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lnt2;->l:[Ljava/lang/Class;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lnt2;->l:[Ljava/lang/Class;

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    array-length v0, p0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    new-instance p0, Lln5;

    .line 25
    .line 26
    const-class v0, Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    invoke-direct {p0, v0, v1}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    new-instance v0, Lln5;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    aget-object p0, p0, v1

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    invoke-direct {v0, p0, v1}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    new-instance p0, Lwt1;

    .line 44
    .line 45
    const-string v1, "Unable to determine type for %s"

    .line 46
    .line 47
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p0, v1, v0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 1
    iget-object p0, p0, Lnt2;->d:Lmt2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnt2;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Lxd2;
    .locals 0

    .line 1
    iget-object p0, p0, Lnt2;->b:Lfu;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Ls03;
    .locals 1

    .line 1
    iget-object v0, p0, Lnt2;->e:Ls03;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lnt2;->c:Lbs2;

    .line 6
    .line 7
    invoke-virtual {v0}, Lbs2;->d()Ls03;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lnt2;->e:Ls03;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lnt2;->e:Ls03;

    .line 14
    .line 15
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lnt2;->k:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lnt2;->f:Lvq3;

    .line 6
    .line 7
    iget-object v0, v0, Lvq3;->a:Lcz4;

    .line 8
    .line 9
    iget-object v0, p0, Lnt2;->g:Lix2;

    .line 10
    .line 11
    invoke-virtual {v0}, Lix2;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lnt2;->d:Lmt2;

    .line 16
    .line 17
    invoke-interface {v1}, Lmt2;->inline()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lnt2;->c:Lbs2;

    .line 24
    .line 25
    invoke-virtual {v0}, Lbs2;->e()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    iput-object v0, p0, Lnt2;->k:Ljava/lang/String;

    .line 30
    .line 31
    :cond_1
    iget-object p0, p0, Lnt2;->k:Ljava/lang/String;

    .line 32
    .line 33
    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lnt2;->m:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isInline()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnt2;->o:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isRequired()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnt2;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method public final k()Lau1;
    .locals 0

    .line 1
    iget-object p0, p0, Lnt2;->c:Lbs2;

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
    iget-object v1, p0, Lnt2;->m:Ljava/lang/Class;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v0, v1, v2}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lj65;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p1, v0, v2}, Ly23;-><init>(Lai5;Lvb8;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lnt2;->d:Lmt2;

    .line 16
    .line 17
    invoke-interface {p0}, Lmt2;->empty()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Lj65;->h()Ljava/lang/Object;

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
    .locals 3

    .line 1
    new-instance v0, Lln5;

    .line 2
    .line 3
    iget-object v1, p0, Lnt2;->m:Ljava/lang/Class;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v0, v1, v2}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lnt2;->d:Lmt2;

    .line 10
    .line 11
    invoke-interface {v1}, Lmt2;->inline()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p0, p0, Lnt2;->g:Lix2;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ll90;

    .line 20
    .line 21
    invoke-direct {v1, p1, p0, v0}, Ll90;-><init>(Lai5;Lix2;Lln5;)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    new-instance v1, Lbp1;

    .line 26
    .line 27
    invoke-direct {v1, p1, p0, v0}, Lbp1;-><init>(Lai5;Lix2;Lln5;)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lnt2;->f:Lvq3;

    .line 2
    .line 3
    iget-object v0, v0, Lvq3;->a:Lcz4;

    .line 4
    .line 5
    iget-object v0, p0, Lnt2;->i:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lnt2;->c:Lbs2;

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
    iput-object v0, p0, Lnt2;->i:Ljava/lang/String;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lnt2;->i:Ljava/lang/String;

    .line 25
    .line 26
    return-object p0
.end method

.method public final t()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnt2;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnt2;->c:Lbs2;

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
