.class public final Lbv7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lua4;

.field public final b:Lvq;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashSet;

.field public final f:Lav7;

.field public final g:Leo5;

.field public final h:Lu00;

.field public i:J


# direct methods
.method public constructor <init>(Luc2;Leo5;Lav7;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lbv7;->i:J

    .line 7
    .line 8
    sget-object v0, Lua4;->d:Lua4;

    .line 9
    .line 10
    iput-object v0, p0, Lbv7;->a:Lua4;

    .line 11
    .line 12
    new-instance v0, Lvq;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, v1}, Lvq;-><init>(I)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lnp1;->b:Lnp1;

    .line 19
    .line 20
    iput-object v1, v0, Lvq;->b:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lvq;->c:Ljava/lang/Object;

    .line 28
    .line 29
    const-wide/16 v1, -0x1

    .line 30
    .line 31
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, v0, Lvq;->d:Ljava/lang/Object;

    .line 36
    .line 37
    iput-object v0, p0, Lbv7;->b:Lvq;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lbv7;->c:Ljava/util/HashMap;

    .line 45
    .line 46
    new-instance v0, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lbv7;->d:Ljava/util/HashMap;

    .line 52
    .line 53
    new-instance v0, Ljava/util/HashSet;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lbv7;->e:Ljava/util/HashSet;

    .line 59
    .line 60
    iput-object p3, p0, Lbv7;->f:Lav7;

    .line 61
    .line 62
    iput-object p2, p0, Lbv7;->g:Leo5;

    .line 63
    .line 64
    const-string p2, "SyncTree"

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Luc2;->a(Ljava/lang/String;)Lu00;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lbv7;->h:Lu00;

    .line 71
    .line 72
    return-void
.end method

.method public static a(Lbv7;Lgu2;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    iget-object v0, p0, Lbv7;->a:Lua4;

    .line 2
    .line 3
    iget-object v1, p0, Lbv7;->b:Lvq;

    .line 4
    .line 5
    sget-object v2, Lgy5;->d:Lgy5;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v3, Lyf1;

    .line 11
    .line 12
    const/16 v4, 0xd

    .line 13
    .line 14
    invoke-direct {v3, v4, v2, v1}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, p1, v0, v1, v3}, Lbv7;->f(Lgu2;Lua4;Lqn5;Lyf1;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static b(Lbv7;Lqc6;Lgu2;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lqc6;->a:Lgy5;

    .line 5
    .line 6
    iget-object v0, p0, Lbv7;->a:Lua4;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lua4;->e(Lgy5;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Llu7;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    const-string v2, "Missing sync point for query tag that we\'re tracking"

    .line 20
    .line 21
    invoke-static {v2, v1}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lbv7;->b:Lvq;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lyf1;

    .line 30
    .line 31
    const/16 v2, 0xd

    .line 32
    .line 33
    invoke-direct {v1, v2, p1, p0}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    invoke-virtual {v0, p2, v1, p0}, Llu7;->a(Lgu2;Lyf1;Lqn5;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static j(Lua4;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua4;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Llu7;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Llu7;->g()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Llu7;->d()Lik8;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Llu7;->e()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p0, p0, Lua4;->b:Loa4;

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lua4;

    .line 53
    .line 54
    invoke-static {v0, p1}, Lbv7;->j(Lua4;Ljava/util/ArrayList;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return-void
.end method

.method public static k(Lqc6;)Lqc6;
    .locals 1

    .line 1
    iget-object v0, p0, Lqc6;->b:Loc6;

    .line 2
    .line 3
    invoke-virtual {v0}, Loc6;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lqc6;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lqc6;->a:Lgy5;

    .line 16
    .line 17
    invoke-static {p0}, Lqc6;->a(Lgy5;)Lqc6;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final c(JZZLaa1;)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Luu7;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-wide v3, p1

    .line 5
    move v5, p3

    .line 6
    move v2, p4

    .line 7
    move-object v6, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Luu7;-><init>(Lbv7;ZJZLaa1;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, v1, Lbv7;->g:Leo5;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Leo5;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/util/List;

    .line 18
    .line 19
    return-object p0
.end method

.method public final d(Lez2;Z)Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Lpu7;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lpu7;-><init>(Lbv7;Lez2;Z)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lbv7;->g:Leo5;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Leo5;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/util/List;

    .line 13
    .line 14
    return-object p0
.end method

.method public final e(Lgu2;Lua4;Lqn5;Lyf1;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    iget-object v0, p2, Lua4;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Llu7;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p3, Lgy5;->d:Lgy5;

    .line 10
    .line 11
    invoke-virtual {v0, p3}, Llu7;->c(Lgy5;)Lqn5;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    :cond_0
    move-object v3, p3

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object p2, p2, Lua4;->b:Loa4;

    .line 22
    .line 23
    new-instance v1, Lru7;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    move-object v5, p1

    .line 27
    move-object v4, p4

    .line 28
    invoke-direct/range {v1 .. v6}, Lru7;-><init>(Lbv7;Lqn5;Lyf1;Lgu2;Ljava/util/ArrayList;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v1}, Loa4;->k(Liz1;)V

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v5, v4, v3}, Llu7;->a(Lgu2;Lyf1;Lqn5;)Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object v6
.end method

.method public final f(Lgu2;Lua4;Lqn5;Lyf1;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    iget-object v0, p1, Lgu2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgy5;

    .line 4
    .line 5
    invoke-virtual {v0}, Lgy5;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lbv7;->e(Lgu2;Lua4;Lqn5;Lyf1;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object v1, p2, Lua4;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Llu7;

    .line 19
    .line 20
    if-nez p3, :cond_1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    sget-object p3, Lgy5;->d:Lgy5;

    .line 25
    .line 26
    invoke-virtual {v1, p3}, Llu7;->c(Lgy5;)Lqn5;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lgy5;->k()Lm61;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lgu2;->x(Lm61;)Lgu2;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object p2, p2, Lua4;->b:Loa4;

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Loa4;->d(Lm61;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Lua4;

    .line 50
    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    if-eqz p3, :cond_2

    .line 56
    .line 57
    invoke-interface {p3, v0}, Lqn5;->m(Lm61;)Lqn5;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v4, 0x0

    .line 63
    :goto_0
    new-instance v5, Lyf1;

    .line 64
    .line 65
    iget-object v6, p4, Lyf1;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v6, Lgy5;

    .line 68
    .line 69
    invoke-virtual {v6, v0}, Lgy5;->d(Lm61;)Lgy5;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v6, p4, Lyf1;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v6, Lvq;

    .line 76
    .line 77
    const/16 v7, 0xd

    .line 78
    .line 79
    invoke-direct {v5, v7, v0, v6}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v3, p2, v4, v5}, Lbv7;->f(Lgu2;Lua4;Lqn5;Lyf1;)Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    .line 88
    .line 89
    :cond_3
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1, p1, p4, p3}, Llu7;->a(Lgu2;Lyf1;Lqn5;)Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    .line 97
    .line 98
    :cond_4
    return-object v2
.end method

.method public final g(Lgy5;Lqn5;)Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Lvu7;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lvu7;-><init>(Lbv7;Lgy5;Lqn5;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lbv7;->g:Leo5;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Leo5;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/util/List;

    .line 13
    .line 14
    return-object p0
.end method

.method public final h(Lgy5;Lqn5;Lqn5;JZZ)Ljava/util/List;
    .locals 11

    .line 1
    if-nez p6, :cond_1

    .line 2
    .line 3
    if-nez p7, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 9
    :goto_1
    const-string v1, "We shouldn\'t be persisting non-visible writes."

    .line 10
    .line 11
    invoke-static {v1, v0}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lsu7;

    .line 15
    .line 16
    move-object v3, p0

    .line 17
    move-object v5, p1

    .line 18
    move-object v6, p2

    .line 19
    move-object v9, p3

    .line 20
    move-wide v7, p4

    .line 21
    move/from16 v10, p6

    .line 22
    .line 23
    move/from16 v4, p7

    .line 24
    .line 25
    invoke-direct/range {v2 .. v10}, Lsu7;-><init>(Lbv7;ZLgy5;Lqn5;JLqn5;Z)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lbv7;->g:Leo5;

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Leo5;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/util/List;

    .line 35
    .line 36
    return-object p0
.end method

.method public final i(Lgy5;Ljava/util/ArrayList;)Lqn5;
    .locals 6

    .line 1
    iget-object v0, p0, Lbv7;->a:Lua4;

    .line 2
    .line 3
    iget-object v1, v0, Lua4;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Llu7;

    .line 6
    .line 7
    sget-object v1, Lgy5;->d:Lgy5;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-object v3, p1

    .line 11
    :cond_0
    invoke-virtual {v3}, Lgy5;->k()Lm61;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v3}, Lgy5;->p()Lgy5;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v4}, Lgy5;->d(Lm61;)Lgy5;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1, p1}, Lgy5;->o(Lgy5;Lgy5;)Lgy5;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Lua4;->f(Lm61;)Lua4;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lua4;->d:Lua4;

    .line 35
    .line 36
    :goto_0
    iget-object v4, v0, Lua4;->a:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v4, Llu7;

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Llu7;->c(Lgy5;)Lqn5;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :cond_2
    invoke-virtual {v3}, Lgy5;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_3

    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    :cond_3
    iget-object p0, p0, Lbv7;->b:Lvq;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, p1, v2, p2, v0}, Lvq;->j(Lgy5;Lqn5;Ljava/util/List;Z)Lqn5;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public final l(Lqc6;Lez2;Lwc2;Z)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Lqu7;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lqu7;-><init>(Lbv7;Lqc6;Lez2;Lwc2;Z)V

    .line 9
    .line 10
    .line 11
    iget-object p0, v1, Lbv7;->g:Leo5;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Leo5;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/util/List;

    .line 18
    .line 19
    return-object p0
.end method

.method public final m(Lqc6;)Lhx7;
    .locals 0

    .line 1
    iget-object p0, p0, Lbv7;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lhx7;

    .line 8
    .line 9
    return-object p0
.end method
