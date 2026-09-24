.class public final Lbp1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Llj6;


# instance fields
.field public final a:Lj65;

.field public final b:Lbw1;

.field public final c:Lbw1;

.field public final d:Lcz4;

.field public final e:Lix2;


# direct methods
.method public constructor <init>(Lai5;Lix2;Lln5;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj65;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, p3, v1}, Ly23;-><init>(Lai5;Lvb8;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lbp1;->a:Lj65;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lix2;->d(Lai5;)Lbw1;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iput-object p3, p0, Lbp1;->b:Lbw1;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lix2;->b(Lai5;)Lbw1;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    iput-object p3, p0, Lbp1;->c:Lbw1;

    .line 23
    .line 24
    invoke-virtual {p1}, Lai5;->n()Lcz4;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lbp1;->d:Lcz4;

    .line 29
    .line 30
    iput-object p2, p0, Lbp1;->e:Lix2;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lev5;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lev5;->getParent()Lev5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lev5;->a()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    check-cast p2, Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {p1}, Lev5;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Lev5;->remove()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lbp1;->e:Lix2;

    .line 21
    .line 22
    invoke-virtual {p1}, Lix2;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v2, p0, Lbp1;->d:Lcz4;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v0, p1}, Lev5;->i(Ljava/lang/String;)Lev5;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    move-object v6, v4

    .line 58
    check-cast v6, Lcv5;

    .line 59
    .line 60
    iput v1, v6, Lcv5;->h:I

    .line 61
    .line 62
    iget-object v6, p0, Lbp1;->c:Lbw1;

    .line 63
    .line 64
    invoke-interface {v6, v4, v3}, Lbw1;->a(Lev5;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lbp1;->b:Lbw1;

    .line 68
    .line 69
    invoke-interface {v3, v4, v5}, Lbw1;->a(Lev5;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method public final b(Lmc4;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lbp1;->a:Lj65;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj65;->h()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lbp1;->e(Lmc4;Ljava/util/Map;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final c(Lmc4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lbp1;->e(Lmc4;Ljava/util/Map;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    return-object p2

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lbp1;->b(Lmc4;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final d(Lmc4;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Lmc4;->getParent()Lmc4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lpn5;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :goto_0
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lbp1;->c:Lbw1;

    .line 12
    .line 13
    invoke-interface {v2, p1}, Lbw1;->d(Lmc4;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v2, p0, Lbp1;->b:Lbw1;

    .line 21
    .line 22
    invoke-interface {v2, p1}, Lbw1;->d(Lmc4;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    :goto_1
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_1
    invoke-interface {v0, v1}, Lmc4;->f(Ljava/lang/String;)Lmc4;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p0, 0x1

    .line 36
    return p0
.end method

.method public final e(Lmc4;Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    .line 1
    invoke-interface {p1}, Lmc4;->getParent()Lmc4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lpn5;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :goto_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lbp1;->c:Lbw1;

    .line 12
    .line 13
    invoke-interface {v2, p1}, Lbw1;->b(Lmc4;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lbp1;->b:Lbw1;

    .line 18
    .line 19
    invoke-interface {v3, p1}, Lbw1;->b(Lmc4;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {v0, v1}, Lmc4;->f(Ljava/lang/String;)Lmc4;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    check-cast p2, Ljava/util/Map;

    .line 34
    .line 35
    return-object p2
.end method
