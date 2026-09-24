.class public final Lb66;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbw1;


# instance fields
.field public final a:Lxk1;

.field public final b:Lai5;

.field public final c:Lcy6;

.field public final d:Lcz4;

.field public final e:Lix2;

.field public final f:Lln5;


# direct methods
.method public constructor <init>(Lai5;Lix2;Lln5;)V
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
    invoke-direct {v0, p1, p3, v1}, Ly23;-><init>(Lai5;Lvb8;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lb66;->a:Lxk1;

    .line 11
    .line 12
    new-instance v0, Lcy6;

    .line 13
    .line 14
    invoke-direct {v0, p1, p3, v1}, Lcy6;-><init>(Lai5;Lvb8;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lb66;->c:Lcy6;

    .line 18
    .line 19
    invoke-virtual {p1}, Lai5;->n()Lcz4;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lb66;->d:Lcz4;

    .line 24
    .line 25
    iput-object p1, p0, Lb66;->b:Lai5;

    .line 26
    .line 27
    iput-object p2, p0, Lb66;->e:Lix2;

    .line 28
    .line 29
    iput-object p3, p0, Lb66;->f:Lln5;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lev5;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lb66;->f:Lln5;

    .line 2
    .line 3
    iget-object v1, v0, Lln5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/Class;

    .line 6
    .line 7
    iget-object v2, p0, Lb66;->e:Lix2;

    .line 8
    .line 9
    invoke-virtual {v2}, Lix2;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-boolean v2, v2, Lix2;->h:Z

    .line 14
    .line 15
    iget-object v4, p0, Lb66;->c:Lcy6;

    .line 16
    .line 17
    iget-object v5, p0, Lb66;->d:Lcz4;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lb66;->b:Lai5;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lai5;->m(Ljava/lang/Class;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v3}, Lev5;->i(Ljava/lang/String;)Lev5;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    iget-object p0, p0, Lb66;->a:Lxk1;

    .line 39
    .line 40
    invoke-virtual {p0, v0, p2, p1}, Ly23;->e(Lvb8;Ljava/lang/Object;Lev5;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v4, p1, p2}, Lcy6;->a(Lev5;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    if-eqz p2, :cond_3

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    invoke-interface {p1, v3, p0}, Lev5;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lev5;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :cond_2
    invoke-virtual {v4, p1, p2}, Lcy6;->a(Lev5;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method public final b(Lmc4;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lb66;->f:Lln5;

    .line 2
    .line 3
    iget-object v0, v0, Lln5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/lang/Class;

    .line 6
    .line 7
    iget-object v1, p0, Lb66;->e:Lix2;

    .line 8
    .line 9
    invoke-virtual {v1}, Lix2;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-boolean v1, v1, Lix2;->h:Z

    .line 14
    .line 15
    iget-object v3, p0, Lb66;->c:Lcy6;

    .line 16
    .line 17
    iget-object v4, p0, Lb66;->d:Lcz4;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lb66;->b:Lai5;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lai5;->m(Ljava/lang/Class;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v2}, Lmc4;->f(Ljava/lang/String;)Lmc4;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v3, p0}, Lcy6;->b(Lmc4;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_2
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v2}, Lmc4;->getAttribute(Ljava/lang/String;)Lmc4;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_3
    if-nez p1, :cond_4

    .line 54
    .line 55
    :goto_0
    const/4 p0, 0x0

    .line 56
    return-object p0

    .line 57
    :cond_4
    invoke-virtual {v3, p1}, Lcy6;->b(Lmc4;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public final c(Lmc4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb66;->f:Lln5;

    .line 2
    .line 3
    iget-object v0, v0, Lln5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/lang/Class;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lb66;->b(Lmc4;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p1, Lkd5;

    .line 15
    .line 16
    iget-object p0, p0, Lb66;->e:Lix2;

    .line 17
    .line 18
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p2, "Can not read value of %s for %s"

    .line 23
    .line 24
    invoke-direct {p1, p2, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public final d(Lmc4;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lb66;->f:Lln5;

    .line 2
    .line 3
    iget-object v0, v0, Lln5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/lang/Class;

    .line 6
    .line 7
    iget-object v1, p0, Lb66;->e:Lix2;

    .line 8
    .line 9
    invoke-virtual {v1}, Lix2;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-boolean v1, v1, Lix2;->h:Z

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    iget-object v4, p0, Lb66;->c:Lcy6;

    .line 17
    .line 18
    iget-object v5, p0, Lb66;->d:Lcz4;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lb66;->b:Lai5;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lai5;->m(Ljava/lang/Class;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v2}, Lmc4;->f(Ljava/lang/String;)Lmc4;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v4, p1}, Lcy6;->d(Lmc4;)Z

    .line 41
    .line 42
    .line 43
    return v3

    .line 44
    :cond_2
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v2}, Lmc4;->f(Ljava/lang/String;)Lmc4;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_3
    if-nez p1, :cond_4

    .line 54
    .line 55
    :goto_0
    return v3

    .line 56
    :cond_4
    invoke-virtual {v4, p1}, Lcy6;->d(Lmc4;)Z

    .line 57
    .line 58
    .line 59
    return v3
.end method
