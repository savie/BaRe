.class public final Lnf8;
.super Lmp0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final J:Lfk5;


# direct methods
.method public constructor <init>(Lmp0;Lfk5;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lmp0;->b:Lz77;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lmp0;-><init>(Lmp0;Lz77;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lnf8;->J:Lfk5;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lnf8;Ldk5;Lz77;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p3}, Lmp0;-><init>(Lmp0;Lz77;)V

    .line 10
    iput-object p2, p0, Lnf8;->J:Lfk5;

    return-void
.end method


# virtual methods
.method public final d(Lod2;Ljava/lang/Class;Lc87;)Lem4;
    .locals 2

    .line 1
    iget-object p1, p0, Lmp0;->f:Lgc8;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3, p1, p2}, Lc87;->e(Lgc8;Ljava/lang/Class;)Lgc8;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p3, p1, p0}, Lc87;->p(Lgc8;Lkp0;)Lem4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p3, p2, p0}, Lc87;->q(Ljava/lang/Class;Lkp0;)Lem4;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-virtual {p1}, Lem4;->d()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    iget-object v0, p0, Lnf8;->J:Lfk5;

    .line 23
    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    instance-of p3, p1, Lof8;

    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    move-object p3, p1

    .line 31
    check-cast p3, Lof8;

    .line 32
    .line 33
    iget-object p3, p3, Lof8;->r:Lfk5;

    .line 34
    .line 35
    new-instance v1, Ldk5;

    .line 36
    .line 37
    invoke-direct {v1, v0, p3}, Ldk5;-><init>(Lfk5;Lfk5;)V

    .line 38
    .line 39
    .line 40
    move-object v0, v1

    .line 41
    :cond_1
    invoke-virtual {p1, v0}, Lem4;->g(Lfk5;)Lem4;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p3, p0, Lmp0;->x:Lod2;

    .line 46
    .line 47
    invoke-virtual {p3, p2, p1}, Lod2;->s(Ljava/lang/Class;Lem4;)Lod2;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iput-object p2, p0, Lmp0;->x:Lod2;

    .line 52
    .line 53
    return-object p1
.end method

.method public final g(Lem4;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lem4;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lnf8;->J:Lfk5;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    instance-of v0, p1, Lof8;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Lof8;

    .line 17
    .line 18
    iget-object v0, v0, Lof8;->r:Lfk5;

    .line 19
    .line 20
    new-instance v2, Ldk5;

    .line 21
    .line 22
    invoke-direct {v2, v1, v0}, Ldk5;-><init>(Lfk5;Lfk5;)V

    .line 23
    .line 24
    .line 25
    move-object v1, v2

    .line 26
    :cond_0
    invoke-virtual {p1, v1}, Lem4;->g(Lfk5;)Lem4;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :cond_1
    invoke-super {p0, p1}, Lmp0;->g(Lem4;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final i(Lfk5;)Lmp0;
    .locals 3

    .line 1
    iget-object v0, p0, Lmp0;->b:Lz77;

    .line 2
    .line 3
    iget-object v0, v0, Lz77;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lfk5;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ldk5;

    .line 10
    .line 11
    iget-object v2, p0, Lnf8;->J:Lfk5;

    .line 12
    .line 13
    invoke-direct {v1, p1, v2}, Ldk5;-><init>(Lfk5;Lfk5;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lz77;

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lz77;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lnf8;

    .line 22
    .line 23
    invoke-direct {v0, p0, v1, p1}, Lnf8;-><init>(Lnf8;Ldk5;Lz77;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final k(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmp0;->n:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lmp0;->p:Ljava/lang/reflect/Field;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    iget-object v1, p0, Lmp0;->q:Lem4;

    .line 21
    .line 22
    if-nez v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lmp0;->x:Lod2;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lod2;->x(Ljava/lang/Class;)Lem4;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, v2, v1, p3}, Lnf8;->d(Lod2;Ljava/lang/Class;Lc87;)Lem4;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object v1, v3

    .line 42
    :cond_3
    :goto_1
    iget-object v2, p0, Lmp0;->G:Ljava/lang/Object;

    .line 43
    .line 44
    if-eqz v2, :cond_5

    .line 45
    .line 46
    sget-object v3, Lpk4;->c:Lpk4;

    .line 47
    .line 48
    if-ne v3, v2, :cond_4

    .line 49
    .line 50
    invoke-virtual {v1, p3, v0}, Lem4;->c(Lc87;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_5

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    if-ne v0, p1, :cond_6

    .line 65
    .line 66
    invoke-virtual {p0, p1, p2, p3, v1}, Lmp0;->e(Ljava/lang/Object;Lfk4;Lc87;Lem4;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_6

    .line 71
    .line 72
    :goto_2
    return-void

    .line 73
    :cond_6
    invoke-virtual {v1}, Lem4;->d()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_7

    .line 78
    .line 79
    iget-object p1, p0, Lmp0;->b:Lz77;

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Lfk4;->r(Lz77;)V

    .line 82
    .line 83
    .line 84
    :cond_7
    iget-object p0, p0, Lmp0;->t:Lrc8;

    .line 85
    .line 86
    if-nez p0, :cond_8

    .line 87
    .line 88
    invoke-virtual {v1, v0, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_8
    invoke-virtual {v1, v0, p2, p3, p0}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
