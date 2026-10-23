.class public Lx70;
.super Lvz7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lfu;

.field public final c:Lbs2;

.field public d:Ls03;

.field public final e:Lu70;

.field public final f:Lvq3;

.field public final g:Ljava/lang/Class;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Z


# direct methods
.method public constructor <init>(Lau1;Lu70;Lvq3;)V
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
    iput-object v0, p0, Lx70;->c:Lbs2;

    .line 10
    .line 11
    new-instance v0, Lfu;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lfu;-><init>(Lau1;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lx70;->b:Lfu;

    .line 17
    .line 18
    invoke-interface {p2}, Lu70;->required()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lx70;->j:Z

    .line 23
    .line 24
    invoke-interface {p1}, Lvb8;->getType()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lx70;->g:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-interface {p2}, Lu70;->empty()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lx70;->i:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {p2}, Lu70;->name()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lx70;->h:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p3, p0, Lx70;->f:Lvq3;

    .line 43
    .line 44
    iput-object p2, p0, Lx70;->e:Lu70;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx70;->f()Ls03;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lx70;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {v0, p0}, Ls03;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final c()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 1
    iget-object p0, p0, Lx70;->e:Lu70;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lx70;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Lxd2;
    .locals 0

    .line 1
    iget-object p0, p0, Lx70;->b:Lfu;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Ls03;
    .locals 1

    .line 1
    iget-object v0, p0, Lx70;->d:Ls03;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lx70;->c:Lbs2;

    .line 6
    .line 7
    invoke-virtual {v0}, Lbs2;->d()Ls03;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lx70;->d:Ls03;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lx70;->d:Ls03;

    .line 14
    .line 15
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lx70;->f:Lvq3;

    .line 2
    .line 3
    iget-object v0, v0, Lvq3;->a:Lcz4;

    .line 4
    .line 5
    iget-object p0, p0, Lx70;->c:Lbs2;

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
    iget-object p0, p0, Lx70;->g:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isRequired()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lx70;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method public final k()Lau1;
    .locals 0

    .line 1
    iget-object p0, p0, Lx70;->c:Lbs2;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lx70;->c:Lbs2;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lx70;->i:Ljava/lang/String;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lx70;->c:Lbs2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lx70;->i:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0}, Lbs2;->f(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    :cond_0
    iget-object v0, v0, Lbs2;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lau1;

    .line 18
    .line 19
    new-instance v1, Lcy6;

    .line 20
    .line 21
    invoke-direct {v1, p1, v0, p0}, Lcy6;-><init>(Lai5;Lvb8;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public final t()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lx70;->c:Lbs2;

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
