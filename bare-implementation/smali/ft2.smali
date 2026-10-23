.class public Lft2;
.super Lvz7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lfu;

.field public final c:Lbs2;

.field public d:Ls03;

.field public final e:Lat2;

.field public final f:Lvq3;

.field public final g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public final j:Ljava/lang/Class;

.field public final k:Ljava/lang/Class;

.field public final l:Z

.field public final m:Z


# direct methods
.method public constructor <init>(Lau1;Lat2;Lvq3;)V
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
    iput-object v0, p0, Lft2;->c:Lbs2;

    .line 10
    .line 11
    new-instance v0, Lfu;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lfu;-><init>(Lau1;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lft2;->b:Lfu;

    .line 17
    .line 18
    invoke-interface {p2}, Lat2;->required()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lft2;->l:Z

    .line 23
    .line 24
    invoke-interface {p1}, Lvb8;->getType()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lft2;->k:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-interface {p2}, Lat2;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lft2;->g:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {p2}, Lat2;->type()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lft2;->j:Ljava/lang/Class;

    .line 41
    .line 42
    invoke-interface {p2}, Lat2;->data()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput-boolean p1, p0, Lft2;->m:Z

    .line 47
    .line 48
    iput-object p3, p0, Lft2;->f:Lvq3;

    .line 49
    .line 50
    iput-object p2, p0, Lft2;->e:Lat2;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lft2;->h:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lft2;->f()Ls03;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lft2;->getName()Ljava/lang/String;

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
    iput-object v0, p0, Lft2;->h:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lft2;->h:Ljava/lang/String;

    .line 20
    .line 21
    return-object p0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 1
    iget-object p0, p0, Lft2;->e:Lat2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lft2;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Lxd2;
    .locals 0

    .line 1
    iget-object p0, p0, Lft2;->b:Lfu;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Ls03;
    .locals 1

    .line 1
    iget-object v0, p0, Lft2;->d:Ls03;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lft2;->c:Lbs2;

    .line 6
    .line 7
    invoke-virtual {v0}, Lbs2;->d()Ls03;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lft2;->d:Ls03;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lft2;->d:Ls03;

    .line 14
    .line 15
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lft2;->i:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lft2;->f:Lvq3;

    .line 6
    .line 7
    iget-object v0, v0, Lvq3;->a:Lcz4;

    .line 8
    .line 9
    iget-object v0, p0, Lft2;->c:Lbs2;

    .line 10
    .line 11
    invoke-virtual {v0}, Lbs2;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lft2;->i:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lft2;->i:Ljava/lang/String;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object v1, p0, Lft2;->j:Ljava/lang/Class;

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lft2;->k:Ljava/lang/Class;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    return-object v1
.end method

.method public final isRequired()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lft2;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method public final k()Lau1;
    .locals 0

    .line 1
    iget-object p0, p0, Lft2;->c:Lbs2;

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

.method public final l(Ljava/lang/Class;)Lvb8;
    .locals 3

    .line 1
    iget-object p1, p0, Lft2;->c:Lbs2;

    .line 2
    .line 3
    iget-object p1, p1, Lbs2;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lau1;

    .line 6
    .line 7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    iget-object p0, p0, Lft2;->j:Ljava/lang/Class;

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v0, Lc00;

    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, p1, p0, v1, v2}, Lc00;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final o(Lai5;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final q(Lai5;)Lbw1;
    .locals 3

    .line 1
    iget-object v0, p0, Lft2;->c:Lbs2;

    .line 2
    .line 3
    iget-object v0, v0, Lbs2;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lau1;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lvb8;->getType()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p1, Lai5;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lx44;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lx44;->e(Ljava/lang/Class;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    new-instance p0, Lcy6;

    .line 26
    .line 27
    invoke-direct {p0, p1, v0, v2}, Lcy6;-><init>(Lai5;Lvb8;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    iget-object p0, p0, Lft2;->j:Ljava/lang/Class;

    .line 34
    .line 35
    if-ne p0, v1, :cond_1

    .line 36
    .line 37
    new-instance p0, Lyo1;

    .line 38
    .line 39
    invoke-direct {p0, p1, v0, v2}, Lyo1;-><init>(Lai5;Lvb8;Ljava/lang/Class;)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    new-instance v1, Lyo1;

    .line 44
    .line 45
    invoke-direct {v1, p1, v0, p0}, Lyo1;-><init>(Lai5;Lvb8;Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    return-object v1
.end method

.method public final t()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lft2;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lft2;->c:Lbs2;

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
