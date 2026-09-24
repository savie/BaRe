.class public final Ls56;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Llj6;


# instance fields
.field public final a:Lxk1;

.field public final b:Lcy6;

.field public final c:Ljava/lang/String;

.field public final d:Lln5;


# direct methods
.method public constructor <init>(Lai5;Lvb8;Lln5;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lxk1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, p2, v1}, Ly23;-><init>(Lai5;Lvb8;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ls56;->a:Lxk1;

    .line 11
    .line 12
    new-instance p2, Lcy6;

    .line 13
    .line 14
    invoke-direct {p2, p1, p3, v1}, Lcy6;-><init>(Lai5;Lvb8;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Ls56;->b:Lcy6;

    .line 18
    .line 19
    iput-object p4, p0, Ls56;->c:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p3, p0, Ls56;->d:Lln5;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lev5;Ljava/lang/Object;)V
    .locals 5

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
    invoke-interface {p1}, Lev5;->j()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lev5;->remove()V

    .line 16
    .line 17
    .line 18
    :cond_0
    check-cast p2, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, Ls56;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v0, v2}, Lev5;->i(Ljava/lang/String;)Lev5;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Ls56;->a:Lxk1;

    .line 43
    .line 44
    iget-object v4, p0, Ls56;->d:Lln5;

    .line 45
    .line 46
    invoke-virtual {v3, v4, p2, v2}, Ly23;->e(Lvb8;Ljava/lang/Object;Lev5;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    move-object v3, v2

    .line 53
    check-cast v3, Lcv5;

    .line 54
    .line 55
    iput v1, v3, Lcv5;->h:I

    .line 56
    .line 57
    iget-object v3, p0, Ls56;->b:Lcy6;

    .line 58
    .line 59
    invoke-virtual {v3, v2, p2}, Lcy6;->a(Lev5;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    return-void
.end method

.method public final b(Lmc4;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls56;->a:Lxk1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lxk1;->h()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Lmc4;->getParent()Lmc4;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {p1}, Lpn5;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object v3, p0, Ls56;->b:Lcy6;

    .line 22
    .line 23
    invoke-virtual {v3, p1}, Lcy6;->b(Lmc4;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-interface {v1, v2}, Lmc4;->f(Ljava/lang/String;)Lmc4;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public final c(Lmc4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Ljava/util/Collection;

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    invoke-interface {p1}, Lmc4;->getParent()Lmc4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1}, Lpn5;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Ls56;->b:Lcy6;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lcy6;->b(Lmc4;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-interface {v0, v1}, Lmc4;->f(Ljava/lang/String;)Lmc4;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-object p2

    .line 32
    :cond_2
    invoke-virtual {p0, p1}, Ls56;->b(Lmc4;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
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
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Ls56;->b:Lcy6;

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Lcy6;->d(Lmc4;)Z

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Lmc4;->f(Ljava/lang/String;)Lmc4;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x1

    .line 22
    return p0
.end method
