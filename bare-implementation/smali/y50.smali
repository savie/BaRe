.class public abstract Ly50;
.super Lfu1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Liv1;


# instance fields
.field public final c:Lgc8;

.field public final d:Lkp0;

.field public final e:Z

.field public final f:Ljava/lang/Boolean;

.field public final k:Lrc8;

.field public final n:Lem4;

.field public p:Lod2;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lgc8;ZLrc8;Lem4;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Ltn7;-><init>(ILjava/lang/Class;)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Ly50;->c:Lgc8;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object p1, p2, Lgc8;->f:Ljava/lang/Class;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    :cond_1
    iput-boolean v0, p0, Ly50;->e:Z

    .line 25
    .line 26
    iput-object p4, p0, Ly50;->k:Lrc8;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Ly50;->d:Lkp0;

    .line 30
    .line 31
    iput-object p5, p0, Ly50;->n:Lem4;

    .line 32
    .line 33
    sget-object p2, Lf96;->i:Lf96;

    .line 34
    .line 35
    iput-object p2, p0, Ly50;->p:Lod2;

    .line 36
    .line 37
    iput-object p1, p0, Ly50;->f:Ljava/lang/Boolean;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Ly50;Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;)V
    .locals 2

    .line 40
    iget-object v0, p1, Ltn7;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ltn7;-><init>(ILjava/lang/Class;)V

    .line 41
    iget-object v0, p1, Ly50;->c:Lgc8;

    iput-object v0, p0, Ly50;->c:Lgc8;

    .line 42
    iget-boolean p1, p1, Ly50;->e:Z

    iput-boolean p1, p0, Ly50;->e:Z

    .line 43
    iput-object p3, p0, Ly50;->k:Lrc8;

    .line 44
    iput-object p2, p0, Ly50;->d:Lkp0;

    .line 45
    iput-object p4, p0, Ly50;->n:Lem4;

    .line 46
    sget-object p1, Lf96;->i:Lf96;

    iput-object p1, p0, Ly50;->p:Lod2;

    .line 47
    iput-object p5, p0, Ly50;->f:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a(Lc87;Lkp0;)Lem4;
    .locals 7

    .line 1
    iget-object v0, p0, Ly50;->k:Lrc8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lrc8;->a(Lkp0;)Lrc8;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v1, v0

    .line 11
    :goto_0
    const/4 v2, 0x0

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object v3, p1, Lc87;->a:Lv77;

    .line 15
    .line 16
    invoke-virtual {v3}, Ls65;->d()Las5;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {p2}, Lkp0;->a()Lod;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Las5;->c(Ljb9;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1, v4, v3}, Lc87;->E(Ljb9;Ljava/lang/Object;)Lem4;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v3, v2

    .line 38
    :goto_1
    iget-object v4, p0, Ltn7;->a:Ljava/lang/Class;

    .line 39
    .line 40
    invoke-static {p1, p2, v4}, Ltn7;->k(Lc87;Lkp0;Ljava/lang/Class;)Lbk4;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    sget-object v2, Lyj4;->a:Lyj4;

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Lbk4;->a(Lyj4;)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_2
    iget-object v4, p0, Ly50;->n:Lem4;

    .line 53
    .line 54
    if-nez v3, :cond_3

    .line 55
    .line 56
    move-object v3, v4

    .line 57
    :cond_3
    invoke-static {p1, p2, v3}, Ltn7;->j(Lc87;Lkp0;Lem4;)Lem4;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    iget-object v5, p0, Ly50;->c:Lgc8;

    .line 64
    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    iget-boolean v6, p0, Ly50;->e:Z

    .line 68
    .line 69
    if-eqz v6, :cond_4

    .line 70
    .line 71
    invoke-virtual {v5}, Lgc8;->z0()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_4

    .line 76
    .line 77
    invoke-virtual {p1, v5, p2}, Lc87;->i(Lgc8;Lkp0;)Lem4;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    :cond_4
    if-ne v3, v4, :cond_6

    .line 82
    .line 83
    iget-object p1, p0, Ly50;->d:Lkp0;

    .line 84
    .line 85
    if-ne p2, p1, :cond_6

    .line 86
    .line 87
    if-ne v0, v1, :cond_6

    .line 88
    .line 89
    iget-object p1, p0, Ly50;->f:Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_5

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    return-object p0

    .line 99
    :cond_6
    :goto_2
    invoke-virtual {p0, p2, v1, v3, v2}, Ly50;->r(Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;)Ly50;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 1

    .line 1
    sget-object v0, Lmm4;->e:Lmm4;

    .line 2
    .line 3
    invoke-virtual {p4, p1, v0}, Lrc8;->d(Ljava/lang/Object;Lmm4;)Lnw8;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p4, p2, v0}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2, p1}, Lfk4;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Ly50;->q(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4, p2, v0}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final p(Lod2;Lgc8;Lc87;)Lem4;
    .locals 1

    .line 1
    iget-object v0, p0, Ly50;->d:Lkp0;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, v0}, Lod2;->g(Lgc8;Lc87;Lkp0;)Lib;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p3, p2, Lib;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p3, Lod2;

    .line 10
    .line 11
    if-eq p1, p3, :cond_0

    .line 12
    .line 13
    iput-object p3, p0, Ly50;->p:Lod2;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p2, Lib;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lem4;

    .line 18
    .line 19
    return-object p0
.end method

.method public abstract q(Ljava/lang/Object;Lfk4;Lc87;)V
.end method

.method public abstract r(Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;)Ly50;
.end method
