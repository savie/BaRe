.class public final Ldp1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Llj6;


# instance fields
.field public final a:Ler4;

.field public final b:Ls03;

.field public final c:Lai5;

.field public final d:Lny1;

.field public final e:Lcz4;

.field public final f:Lvb8;


# direct methods
.method public constructor <init>(Lai5;Lny1;Ls03;Lvb8;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Lny1;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ler4;

    .line 7
    .line 8
    invoke-virtual {v0}, Ler4;->d()Ler4;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Ldp1;->a:Ler4;

    .line 13
    .line 14
    invoke-virtual {p1}, Lai5;->n()Lcz4;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Ldp1;->e:Lcz4;

    .line 19
    .line 20
    iput-object p1, p0, Ldp1;->c:Lai5;

    .line 21
    .line 22
    iput-object p2, p0, Ldp1;->d:Lny1;

    .line 23
    .line 24
    iput-object p4, p0, Ldp1;->f:Lvb8;

    .line 25
    .line 26
    iput-object p3, p0, Ldp1;->b:Ls03;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lev5;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ljava/util/Collection;

    .line 2
    .line 3
    iget-object v0, p0, Ldp1;->d:Lny1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lny1;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Ldp1;->e(Lev5;Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-interface {p1}, Lev5;->j()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Lev5;->remove()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :cond_2
    invoke-virtual {p0, p1, p2}, Ldp1;->e(Lev5;Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final b(Lmc4;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ldp1;->d:Lny1;

    .line 2
    .line 3
    iget-object v0, v0, Lny1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lq14;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lpn5;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Ldp1;->b:Ls03;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Ls03;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Ldp1;->a:Ler4;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Luq4;

    .line 27
    .line 28
    iget-object p0, p0, Ldp1;->c:Lai5;

    .line 29
    .line 30
    invoke-interface {v0, p0}, Luq4;->q(Lai5;)Lbw1;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0, p1}, Lbw1;->b(Lmc4;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final c(Lmc4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-interface {p1}, Lpn5;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ldp1;->b:Ls03;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ls03;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Ldp1;->a:Ler4;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Luq4;

    .line 18
    .line 19
    iget-object v1, p0, Ldp1;->c:Lai5;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Luq4;->q(Lai5;)Lbw1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p1, p2}, Lbw1;->c(Lmc4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p0, p0, Ldp1;->d:Lny1;

    .line 30
    .line 31
    iget-object p0, p0, Lny1;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lq14;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method public final d(Lmc4;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Lpn5;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ldp1;->b:Ls03;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ls03;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Ldp1;->a:Ler4;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Luq4;

    .line 18
    .line 19
    iget-object p0, p0, Ldp1;->c:Lai5;

    .line 20
    .line 21
    invoke-interface {v0, p0}, Luq4;->q(Lai5;)Lbw1;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0, p1}, Lbw1;->d(Lmc4;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final e(Lev5;Ljava/util/Collection;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Ldp1;->d:Lny1;

    .line 22
    .line 23
    iget-object v3, v2, Lny1;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Lq14;

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Lq14;->d(Ljava/lang/Class;)Luq4;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Ldp1;->c:Lai5;

    .line 34
    .line 35
    invoke-interface {v3, v1}, Luq4;->q(Lai5;)Lbw1;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v3}, Luq4;->isInline()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    invoke-interface {v3}, Luq4;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Ldp1;->e:Lcz4;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Lev5;->j()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_1

    .line 63
    .line 64
    invoke-interface {p1, v2}, Lev5;->setName(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-interface {v1, p1, v0}, Lbw1;->a(Lev5;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    new-instance p1, Lwt1;

    .line 72
    .line 73
    iget-object p0, p0, Ldp1;->f:Lvb8;

    .line 74
    .line 75
    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string p2, "Entry of %s not declared in %s with annotation %s"

    .line 80
    .line 81
    invoke-direct {p1, p2, p0}, Lwt1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_3
    return-void
.end method
