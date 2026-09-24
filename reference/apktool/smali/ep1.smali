.class public final Lep1;
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
    iput-object v0, p0, Lep1;->a:Ler4;

    .line 13
    .line 14
    invoke-virtual {p1}, Lai5;->n()Lcz4;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lep1;->e:Lcz4;

    .line 19
    .line 20
    iput-object p1, p0, Lep1;->c:Lai5;

    .line 21
    .line 22
    iput-object p2, p0, Lep1;->d:Lny1;

    .line 23
    .line 24
    iput-object p4, p0, Lep1;->f:Lvb8;

    .line 25
    .line 26
    iput-object p3, p0, Lep1;->b:Ls03;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lev5;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    .line 3
    iget-object v0, p0, Lep1;->d:Lny1;

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
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lep1;->e(Lev5;Ljava/util/Map;)V

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
    invoke-virtual {p0, p1, p2}, Lep1;->e(Lev5;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final b(Lmc4;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-interface {p1}, Lpn5;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lep1;->b:Ls03;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ls03;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lep1;->a:Ler4;

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
    iget-object p0, p0, Lep1;->c:Lai5;

    .line 20
    .line 21
    invoke-interface {v0, p0}, Luq4;->q(Lai5;)Lbw1;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0, p1}, Lbw1;->b(Lmc4;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
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
    iget-object v1, p0, Lep1;->b:Ls03;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ls03;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lep1;->a:Ler4;

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
    iget-object p0, p0, Lep1;->c:Lai5;

    .line 20
    .line 21
    invoke-interface {v0, p0}, Luq4;->q(Lai5;)Lbw1;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0, p1, p2}, Lbw1;->c(Lmc4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
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
    iget-object v1, p0, Lep1;->b:Ls03;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ls03;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lep1;->a:Ler4;

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
    iget-object p0, p0, Lep1;->c:Lai5;

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

.method public final e(Lev5;Ljava/util/Map;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v4, p0, Lep1;->d:Lny1;

    .line 30
    .line 31
    iget-object v5, v4, Lny1;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v5, Lq14;

    .line 34
    .line 35
    invoke-virtual {v5, v3}, Lq14;->d(Ljava/lang/Class;)Luq4;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    iget-object v3, p0, Lep1;->c:Lai5;

    .line 42
    .line 43
    invoke-interface {v5, v3}, Luq4;->q(Lai5;)Lbw1;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v5}, Luq4;->isInline()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    invoke-interface {v5}, Luq4;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v4, p0, Lep1;->e:Lcz4;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-interface {p1}, Lev5;->j()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    invoke-interface {p1, v2}, Lev5;->setName(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-interface {v3, p1, v1}, Lbw1;->a(Lev5;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    new-instance p1, Lwt1;

    .line 80
    .line 81
    iget-object p0, p0, Lep1;->f:Lvb8;

    .line 82
    .line 83
    filled-new-array {v3, p0, v4}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const-string p2, "Value of %s not declared in %s with annotation %s"

    .line 88
    .line 89
    invoke-direct {p1, p2, p0}, Lwt1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_3
    return-void
.end method
