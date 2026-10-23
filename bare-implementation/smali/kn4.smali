.class public final Lkn4;
.super Ltn7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Liv1;


# instance fields
.field public final c:Lod;

.field public final d:Lrc8;

.field public final e:Lem4;

.field public final f:Lkp0;

.field public final k:Lgc8;

.field public final n:Z

.field public final p:Ljava/util/Set;

.field public transient q:Lod2;


# direct methods
.method public constructor <init>(Lkn4;Lkp0;Lrc8;Lem4;Z)V
    .locals 1

    .line 1
    iget-object v0, p1, Ltn7;->a:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Ljava/lang/Object;

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, v0}, Ltn7;-><init>(Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lkn4;->c:Lod;

    .line 11
    .line 12
    iput-object v0, p0, Lkn4;->c:Lod;

    .line 13
    .line 14
    iget-object v0, p1, Lkn4;->k:Lgc8;

    .line 15
    .line 16
    iput-object v0, p0, Lkn4;->k:Lgc8;

    .line 17
    .line 18
    iput-object p3, p0, Lkn4;->d:Lrc8;

    .line 19
    .line 20
    iput-object p4, p0, Lkn4;->e:Lem4;

    .line 21
    .line 22
    iput-object p2, p0, Lkn4;->f:Lkp0;

    .line 23
    .line 24
    iput-boolean p5, p0, Lkn4;->n:Z

    .line 25
    .line 26
    iget-object p1, p1, Lkn4;->p:Ljava/util/Set;

    .line 27
    .line 28
    iput-object p1, p0, Lkn4;->p:Ljava/util/Set;

    .line 29
    .line 30
    sget-object p1, Lf96;->i:Lf96;

    .line 31
    .line 32
    iput-object p1, p0, Lkn4;->q:Lod2;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lod;Lrc8;Lem4;Ljava/util/Set;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Ljb9;->D()Lgc8;

    move-result-object v0

    invoke-direct {p0, v0}, Ltn7;-><init>(Lgc8;)V

    .line 36
    iput-object p1, p0, Lkn4;->c:Lod;

    .line 37
    invoke-virtual {p1}, Ljb9;->D()Lgc8;

    move-result-object p1

    iput-object p1, p0, Lkn4;->k:Lgc8;

    .line 38
    iput-object p2, p0, Lkn4;->d:Lrc8;

    .line 39
    iput-object p3, p0, Lkn4;->e:Lem4;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lkn4;->f:Lkp0;

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lkn4;->n:Z

    .line 42
    iput-object p4, p0, Lkn4;->p:Ljava/util/Set;

    .line 43
    sget-object p1, Lf96;->i:Lf96;

    iput-object p1, p0, Lkn4;->q:Lod2;

    return-void
.end method


# virtual methods
.method public final a(Lc87;Lkp0;)Lem4;
    .locals 5

    .line 1
    iget-object v0, p0, Lkn4;->d:Lrc8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lrc8;->a(Lkp0;)Lrc8;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    iget-boolean v1, p0, Lkn4;->n:Z

    .line 10
    .line 11
    iget-object v2, p0, Lkn4;->e:Lem4;

    .line 12
    .line 13
    if-nez v2, :cond_7

    .line 14
    .line 15
    sget-object v3, Lu65;->J:Lu65;

    .line 16
    .line 17
    iget-object v4, p1, Lc87;->a:Lv77;

    .line 18
    .line 19
    invoke-virtual {v4, v3}, Ls65;->i(Lu65;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Lkn4;->k:Lgc8;

    .line 24
    .line 25
    if-nez v3, :cond_3

    .line 26
    .line 27
    iget-object v3, v4, Lgc8;->f:Ljava/lang/Class;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lkn4;->f:Lkp0;

    .line 41
    .line 42
    if-eq p2, p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0, p2, v0, v2, v1}, Lkn4;->p(Lkp0;Lrc8;Lem4;Z)Lkn4;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :cond_2
    return-object p0

    .line 49
    :cond_3
    :goto_0
    invoke-virtual {p1, v4, p2}, Lc87;->m(Lgc8;Lkp0;)Lem4;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iget-object v1, p0, Lkn4;->p:Ljava/util/Set;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lem4;->i(Ljava/util/Set;)Lem4;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :cond_4
    iget-object v1, v4, Lgc8;->f:Ljava/lang/Class;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const/4 v3, 0x0

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 77
    .line 78
    if-eq v1, v2, :cond_6

    .line 79
    .line 80
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 81
    .line 82
    if-eq v1, v2, :cond_6

    .line 83
    .line 84
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 85
    .line 86
    if-eq v1, v2, :cond_6

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    const-class v2, Ljava/lang/String;

    .line 90
    .line 91
    if-eq v1, v2, :cond_6

    .line 92
    .line 93
    const-class v2, Ljava/lang/Integer;

    .line 94
    .line 95
    if-eq v1, v2, :cond_6

    .line 96
    .line 97
    const-class v2, Ljava/lang/Boolean;

    .line 98
    .line 99
    if-eq v1, v2, :cond_6

    .line 100
    .line 101
    const-class v2, Ljava/lang/Double;

    .line 102
    .line 103
    if-eq v1, v2, :cond_6

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    invoke-static {p1}, Lu81;->q(Lem4;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    :goto_1
    invoke-virtual {p0, p2, v0, p1, v3}, Lkn4;->p(Lkp0;Lrc8;Lem4;Z)Lkn4;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :cond_7
    invoke-virtual {p1, v2, p2}, Lc87;->v(Lem4;Lkp0;)Lem4;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, p2, v0, p1, v1}, Lkn4;->p(Lkp0;Lrc8;Lem4;Z)Lkn4;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0
.end method

.method public final c(Lc87;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkn4;->c:Lod;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lod;->s0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    iget-object v0, p0, Lkn4;->e:Lem4;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, p1, v0}, Lkn4;->o(Lc87;Ljava/lang/Class;)Lem4;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Lyk4; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Ler3;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lem4;->c(Lc87;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkn4;->c:Lod;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Lod;->s0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3, p2}, Lc87;->h(Lfk4;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lkn4;->e:Lem4;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, p3, v0}, Lkn4;->o(Lc87;Ljava/lang/Class;)Lem4;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    iget-object p0, p0, Lkn4;->d:Lrc8;

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2, p3, p0}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljb9;->B()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, "()"

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p3, p0, p1, p2}, Ltn7;->n(Lc87;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    throw p0
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkn4;->c:Lod;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Lod;->s0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3, p2}, Lc87;->h(Lfk4;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Lkn4;->e:Lem4;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, p3, v1}, Lkn4;->o(Lc87;Ljava/lang/Class;)Lem4;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-boolean p0, p0, Lkn4;->n:Z

    .line 27
    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    sget-object p0, Lmm4;->k:Lmm4;

    .line 31
    .line 32
    invoke-virtual {p4, p1, p0}, Lrc8;->d(Ljava/lang/Object;Lmm4;)Lnw8;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p4, p2, p0}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1, v0, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4, p2, p0}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    :goto_0
    new-instance p0, Ljn4;

    .line 48
    .line 49
    invoke-direct {p0, p4, p1}, Ljn4;-><init>(Lrc8;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0, p2, p3, p0}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catch_0
    move-exception p0

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljb9;->B()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p4, "()"

    .line 70
    .line 71
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {p3, p0, p1, p2}, Ltn7;->n(Lc87;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    throw p0
.end method

.method public final o(Lc87;Ljava/lang/Class;)Lem4;
    .locals 4

    .line 1
    iget-object v0, p0, Lkn4;->q:Lod2;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lod2;->x(Ljava/lang/Class;)Lem4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lkn4;->k:Lgc8;

    .line 10
    .line 11
    invoke-virtual {v0}, Lgc8;->u0()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lkn4;->p:Ljava/util/Set;

    .line 16
    .line 17
    iget-object v3, p0, Lkn4;->f:Lkp0;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v0, p2}, Lc87;->e(Lgc8;Ljava/lang/Class;)Lgc8;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2, v3}, Lc87;->m(Lgc8;Lkp0;)Lem4;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lem4;->i(Ljava/util/Set;)Lem4;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :cond_0
    iget-object v0, p0, Lkn4;->q:Lod2;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object p2, p2, Lgc8;->f:Ljava/lang/Class;

    .line 47
    .line 48
    invoke-virtual {v0, p2, p1}, Lod2;->s(Ljava/lang/Class;Lem4;)Lod2;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iput-object p2, p0, Lkn4;->q:Lod2;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_1
    invoke-virtual {p1, p2, v3}, Lc87;->n(Ljava/lang/Class;Lkp0;)Lem4;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Lem4;->i(Ljava/util/Set;)Lem4;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :cond_2
    iget-object v0, p0, Lkn4;->q:Lod2;

    .line 72
    .line 73
    invoke-virtual {v0, p2, p1}, Lod2;->s(Ljava/lang/Class;Lem4;)Lod2;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iput-object p2, p0, Lkn4;->q:Lod2;

    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_3
    return-object v0
.end method

.method public final p(Lkp0;Lrc8;Lem4;Z)Lkn4;
    .locals 7

    .line 1
    iget-object v0, p0, Lkn4;->f:Lkp0;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lkn4;->d:Lrc8;

    .line 6
    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lkn4;->e:Lem4;

    .line 10
    .line 11
    if-ne v0, p3, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lkn4;->n:Z

    .line 14
    .line 15
    if-ne p4, v0, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v1, Lkn4;

    .line 19
    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    move-object v4, p2

    .line 23
    move-object v5, p3

    .line 24
    move v6, p4

    .line 25
    invoke-direct/range {v1 .. v6}, Lkn4;-><init>(Lkn4;Lkp0;Lrc8;Lem4;Z)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "(@JsonValue serializer for method "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lkn4;->c:Lod;

    .line 9
    .line 10
    invoke-virtual {p0}, Lod;->p0()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "#"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljb9;->B()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, ")"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
