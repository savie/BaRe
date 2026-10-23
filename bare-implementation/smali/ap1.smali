.class public final Lap1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Llj6;


# instance fields
.field public final a:Lxk1;

.field public final b:Lro;

.field public final c:Ljava/lang/String;

.field public final d:Lln5;

.field public final e:Lvb8;


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
    iput-object v0, p0, Lap1;->a:Lxk1;

    .line 11
    .line 12
    new-instance v0, Lro;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lro;-><init>(Lai5;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lap1;->b:Lro;

    .line 18
    .line 19
    iput-object p3, p0, Lap1;->d:Lln5;

    .line 20
    .line 21
    iput-object p2, p0, Lap1;->e:Lvb8;

    .line 22
    .line 23
    iput-object p4, p0, Lap1;->c:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lev5;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Ljava/util/Collection;

    .line 2
    .line 3
    invoke-interface {p1}, Lev5;->getParent()Lev5;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1}, Lev5;->j()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lev5;->remove()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lap1;->d:Lln5;

    .line 33
    .line 34
    iget-object v1, v1, Lln5;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Ljava/lang/Class;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    iget-object v2, p0, Lap1;->b:Lro;

    .line 49
    .line 50
    iget-object v3, p0, Lap1;->c:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2, v0, p2, v1, v3}, Lro;->w(Lev5;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance p1, Lkd5;

    .line 57
    .line 58
    iget-object p0, p0, Lap1;->e:Lvb8;

    .line 59
    .line 60
    filled-new-array {v2, v1, p0}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p2, "Entry %s does not match %s for %s"

    .line 65
    .line 66
    invoke-direct {p1, p2, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_3
    return-void
.end method

.method public final b(Lmc4;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lap1;->a:Lxk1;

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
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lap1;->e(Lmc4;Ljava/util/Collection;)V

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
    check-cast p2, Ljava/util/Collection;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lap1;->e(Lmc4;Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object p2

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lap1;->b(Lmc4;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final d(Lmc4;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lmc4;->getParent()Lmc4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lap1;->d:Lln5;

    .line 6
    .line 7
    iget-object v1, v1, Lln5;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Class;

    .line 10
    .line 11
    invoke-interface {p1}, Lpn5;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v3, p0, Lap1;->b:Lro;

    .line 18
    .line 19
    invoke-virtual {v3, p1, v1}, Lro;->v(Lmc4;Ljava/lang/Class;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_0
    invoke-interface {v0, v2}, Lmc4;->f(Ljava/lang/String;)Lmc4;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method public final e(Lmc4;Ljava/util/Collection;)V
    .locals 5

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
    iget-object v2, p0, Lap1;->d:Lln5;

    .line 12
    .line 13
    iget-object v3, v2, Lln5;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Ljava/lang/Class;

    .line 16
    .line 17
    iget-object v4, p0, Lap1;->b:Lro;

    .line 18
    .line 19
    invoke-virtual {v4, p1, v3}, Lro;->r(Lmc4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, v2, Lln5;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v4, Ljava/lang/Class;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Lmc4;->f(Ljava/lang/String;)Lmc4;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Lkd5;

    .line 46
    .line 47
    iget-object p0, p0, Lap1;->e:Lvb8;

    .line 48
    .line 49
    filled-new-array {v3, v2, p0}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p2, "Entry %s does not match %s for %s"

    .line 54
    .line 55
    invoke-direct {p1, p2, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    return-void
.end method
