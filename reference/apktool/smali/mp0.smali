.class public Lmp0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lkp0;
.implements Ljava/io/Serializable;


# instance fields
.field public final G:Ljava/lang/Object;

.field public final H:[Ljava/lang/Class;

.field public final transient I:Ljava/util/HashMap;

.field public final a:Lx86;

.field public final b:Lz77;

.field public final c:Lz86;

.field public final d:Lgc8;

.field public final e:Lgc8;

.field public f:Lgc8;

.field public final k:Lod;

.field public final transient n:Ljava/lang/reflect/Method;

.field public final transient p:Ljava/lang/reflect/Field;

.field public q:Lem4;

.field public r:Lem4;

.field public t:Lrc8;

.field public transient x:Lod2;

.field public final y:Z


# direct methods
.method public constructor <init>(Llp0;Lod;Lee;Lgc8;Lem4;Lsc8;Lgc8;ZLjava/lang/Object;[Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Llp0;->i()Lx86;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    sget-object p3, Lx86;->q:Lx86;

    .line 11
    .line 12
    :cond_0
    iput-object p3, p0, Lmp0;->a:Lx86;

    .line 13
    .line 14
    iput-object p2, p0, Lmp0;->k:Lod;

    .line 15
    .line 16
    new-instance p3, Lz77;

    .line 17
    .line 18
    invoke-virtual {p1}, Llp0;->j()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p3, v0}, Lz77;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object p3, p0, Lmp0;->b:Lz77;

    .line 26
    .line 27
    invoke-virtual {p1}, Llp0;->p()V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lmp0;->c:Lz86;

    .line 32
    .line 33
    iput-object p4, p0, Lmp0;->d:Lgc8;

    .line 34
    .line 35
    iput-object p5, p0, Lmp0;->q:Lem4;

    .line 36
    .line 37
    if-nez p5, :cond_1

    .line 38
    .line 39
    sget-object p3, Lf96;->i:Lf96;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object p3, p1

    .line 43
    :goto_0
    iput-object p3, p0, Lmp0;->x:Lod2;

    .line 44
    .line 45
    iput-object p6, p0, Lmp0;->t:Lrc8;

    .line 46
    .line 47
    iput-object p7, p0, Lmp0;->e:Lgc8;

    .line 48
    .line 49
    instance-of p3, p2, Lld;

    .line 50
    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    iput-object p1, p0, Lmp0;->n:Ljava/lang/reflect/Method;

    .line 54
    .line 55
    check-cast p2, Lld;

    .line 56
    .line 57
    iget-object p2, p2, Lld;->O:Ljava/lang/reflect/Field;

    .line 58
    .line 59
    iput-object p2, p0, Lmp0;->p:Ljava/lang/reflect/Field;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    instance-of p3, p2, Lpd;

    .line 63
    .line 64
    if-eqz p3, :cond_3

    .line 65
    .line 66
    check-cast p2, Lpd;

    .line 67
    .line 68
    iget-object p2, p2, Lpd;->P:Ljava/lang/reflect/Method;

    .line 69
    .line 70
    iput-object p2, p0, Lmp0;->n:Ljava/lang/reflect/Method;

    .line 71
    .line 72
    iput-object p1, p0, Lmp0;->p:Ljava/lang/reflect/Field;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iput-object p1, p0, Lmp0;->n:Ljava/lang/reflect/Method;

    .line 76
    .line 77
    iput-object p1, p0, Lmp0;->p:Ljava/lang/reflect/Field;

    .line 78
    .line 79
    :goto_1
    iput-boolean p8, p0, Lmp0;->y:Z

    .line 80
    .line 81
    iput-object p9, p0, Lmp0;->G:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object p1, p0, Lmp0;->r:Lem4;

    .line 84
    .line 85
    iput-object p10, p0, Lmp0;->H:[Ljava/lang/Class;

    .line 86
    .line 87
    return-void
.end method

.method public constructor <init>(Lmp0;)V
    .locals 1

    .line 90
    iget-object v0, p1, Lmp0;->b:Lz77;

    invoke-direct {p0, p1, v0}, Lmp0;-><init>(Lmp0;Lz77;)V

    return-void
.end method

.method public constructor <init>(Lmp0;Lz77;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0}, Lmp0;-><init>(Lmp0;Z)V

    .line 112
    iput-object p2, p0, Lmp0;->b:Lz77;

    .line 113
    iget-object p2, p1, Lmp0;->c:Lz86;

    iput-object p2, p0, Lmp0;->c:Lz86;

    .line 114
    iget-object p2, p1, Lmp0;->k:Lod;

    iput-object p2, p0, Lmp0;->k:Lod;

    .line 115
    iget-object p2, p1, Lmp0;->d:Lgc8;

    iput-object p2, p0, Lmp0;->d:Lgc8;

    .line 116
    iget-object p2, p1, Lmp0;->n:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lmp0;->n:Ljava/lang/reflect/Method;

    .line 117
    iget-object p2, p1, Lmp0;->p:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lmp0;->p:Ljava/lang/reflect/Field;

    .line 118
    iget-object p2, p1, Lmp0;->q:Lem4;

    iput-object p2, p0, Lmp0;->q:Lem4;

    .line 119
    iget-object p2, p1, Lmp0;->r:Lem4;

    iput-object p2, p0, Lmp0;->r:Lem4;

    .line 120
    iget-object p2, p1, Lmp0;->I:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 121
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p1, Lmp0;->I:Ljava/util/HashMap;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lmp0;->I:Ljava/util/HashMap;

    .line 122
    :cond_0
    iget-object p2, p1, Lmp0;->e:Lgc8;

    iput-object p2, p0, Lmp0;->e:Lgc8;

    .line 123
    sget-object p2, Lf96;->i:Lf96;

    iput-object p2, p0, Lmp0;->x:Lod2;

    .line 124
    iget-boolean p2, p1, Lmp0;->y:Z

    iput-boolean p2, p0, Lmp0;->y:Z

    .line 125
    iget-object p2, p1, Lmp0;->G:Ljava/lang/Object;

    iput-object p2, p0, Lmp0;->G:Ljava/lang/Object;

    .line 126
    iget-object p2, p1, Lmp0;->H:[Ljava/lang/Class;

    iput-object p2, p0, Lmp0;->H:[Ljava/lang/Class;

    .line 127
    iget-object p2, p1, Lmp0;->t:Lrc8;

    iput-object p2, p0, Lmp0;->t:Lrc8;

    .line 128
    iget-object p1, p1, Lmp0;->f:Lgc8;

    iput-object p1, p0, Lmp0;->f:Lgc8;

    return-void
.end method

.method public constructor <init>(Lmp0;Lz86;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lmp0;-><init>(Lmp0;Z)V

    .line 92
    new-instance v0, Lz77;

    .line 93
    iget-object p2, p2, Lz86;->a:Ljava/lang/String;

    .line 94
    invoke-direct {v0, p2}, Lz77;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmp0;->b:Lz77;

    .line 95
    iget-object p2, p1, Lmp0;->c:Lz86;

    iput-object p2, p0, Lmp0;->c:Lz86;

    .line 96
    iget-object p2, p1, Lmp0;->d:Lgc8;

    iput-object p2, p0, Lmp0;->d:Lgc8;

    .line 97
    iget-object p2, p1, Lmp0;->k:Lod;

    iput-object p2, p0, Lmp0;->k:Lod;

    .line 98
    iget-object p2, p1, Lmp0;->n:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lmp0;->n:Ljava/lang/reflect/Method;

    .line 99
    iget-object p2, p1, Lmp0;->p:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lmp0;->p:Ljava/lang/reflect/Field;

    .line 100
    iget-object p2, p1, Lmp0;->q:Lem4;

    iput-object p2, p0, Lmp0;->q:Lem4;

    .line 101
    iget-object p2, p1, Lmp0;->r:Lem4;

    iput-object p2, p0, Lmp0;->r:Lem4;

    .line 102
    iget-object p2, p1, Lmp0;->I:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 103
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p1, Lmp0;->I:Ljava/util/HashMap;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lmp0;->I:Ljava/util/HashMap;

    .line 104
    :cond_0
    iget-object p2, p1, Lmp0;->e:Lgc8;

    iput-object p2, p0, Lmp0;->e:Lgc8;

    .line 105
    sget-object p2, Lf96;->i:Lf96;

    iput-object p2, p0, Lmp0;->x:Lod2;

    .line 106
    iget-boolean p2, p1, Lmp0;->y:Z

    iput-boolean p2, p0, Lmp0;->y:Z

    .line 107
    iget-object p2, p1, Lmp0;->G:Ljava/lang/Object;

    iput-object p2, p0, Lmp0;->G:Ljava/lang/Object;

    .line 108
    iget-object p2, p1, Lmp0;->H:[Ljava/lang/Class;

    iput-object p2, p0, Lmp0;->H:[Ljava/lang/Class;

    .line 109
    iget-object p2, p1, Lmp0;->t:Lrc8;

    iput-object p2, p0, Lmp0;->t:Lrc8;

    .line 110
    iget-object p1, p1, Lmp0;->f:Lgc8;

    iput-object p1, p0, Lmp0;->f:Lgc8;

    return-void
.end method

.method public constructor <init>(Lmp0;Z)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iget-object p1, p1, Lmp0;->a:Lx86;

    iput-object p1, p0, Lmp0;->a:Lx86;

    return-void
.end method


# virtual methods
.method public final a()Lod;
    .locals 0

    .line 1
    iget-object p0, p0, Lmp0;->k:Lod;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Ls65;Ljava/lang/Class;)Lbk4;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ls65;->f(Ljava/lang/Class;)Lbk4;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1}, Ls65;->d()Las5;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0}, Lkp0;->a()Lod;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Las5;->h(Ljb9;)Lbk4;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    if-nez p2, :cond_2

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    sget-object p0, Lkp0;->h:Lbk4;

    .line 26
    .line 27
    :cond_1
    return-object p0

    .line 28
    :cond_2
    if-nez p0, :cond_3

    .line 29
    .line 30
    return-object p2

    .line 31
    :cond_3
    invoke-virtual {p2, p0}, Lbk4;->c(Lbk4;)Lbk4;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final c(Ls65;Ljava/lang/Class;)Lqk4;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ls65;->d()Las5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lkp0;->a()Lod;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lt65;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lt65;->e(Ljava/lang/Class;)Lcz4;

    .line 14
    .line 15
    .line 16
    iget-object p0, p1, Lt65;->k:Lmp7;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object p0, Lqk4;->e:Lqk4;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-virtual {p0}, Ljb9;->C()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast p1, Lt65;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lt65;->e(Ljava/lang/Class;)Lcz4;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lt65;->e(Ljava/lang/Class;)Lcz4;

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, Lt65;->k:Lmp7;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    sget-object p1, Lqk4;->e:Lqk4;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Las5;->z(Ljb9;)Lqk4;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p1, p0}, Lqk4;->a(Lqk4;)Lqk4;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public d(Lod2;Ljava/lang/Class;Lc87;)Lem4;
    .locals 2

    .line 1
    iget-object v0, p0, Lmp0;->f:Lgc8;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3, v0, p2}, Lc87;->e(Lgc8;Ljava/lang/Class;)Lgc8;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p2, p0}, Lc87;->m(Lgc8;Lkp0;)Lem4;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    new-instance v0, Lib;

    .line 19
    .line 20
    iget-object p2, p2, Lgc8;->f:Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {p1, p2, p3}, Lod2;->s(Ljava/lang/Class;Lem4;)Lod2;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {v0, v1, p3, p2}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p2, p0}, Lc87;->n(Ljava/lang/Class;Lkp0;)Lem4;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    new-instance v0, Lib;

    .line 38
    .line 39
    invoke-virtual {p1, p2, p3}, Lod2;->s(Ljava/lang/Class;Lem4;)Lod2;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-direct {v0, v1, p3, p2}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object p2, v0, Lib;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p2, Lod2;

    .line 49
    .line 50
    if-eq p1, p2, :cond_1

    .line 51
    .line 52
    iput-object p2, p0, Lmp0;->x:Lod2;

    .line 53
    .line 54
    :cond_1
    iget-object p0, v0, Lib;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Lem4;

    .line 57
    .line 58
    return-object p0
.end method

.method public final e(Ljava/lang/Object;Lfk4;Lc87;Lem4;)Z
    .locals 5

    .line 1
    invoke-virtual {p4}, Lem4;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    sget-object v0, Lx77;->f:Lx77;

    .line 9
    .line 10
    iget-object v2, p3, Lc87;->a:Lv77;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Lv77;->l(Lx77;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    iget-object v4, p0, Lmp0;->b:Lz77;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    instance-of p4, p4, Lop0;

    .line 23
    .line 24
    if-eqz p4, :cond_1

    .line 25
    .line 26
    instance-of p1, p1, Ljava/lang/Throwable;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lmp0;->k:Lod;

    .line 31
    .line 32
    instance-of p1, p1, Lld;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const-string p1, "cause"

    .line 37
    .line 38
    iget-object p4, v4, Lz77;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    move p1, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string p0, "Direct self-reference leading to cycle"

    .line 49
    .line 50
    invoke-virtual {p3, p0}, Lc87;->B(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    throw v2

    .line 54
    :cond_1
    move p1, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    sget-object p1, Lx77;->p:Lx77;

    .line 57
    .line 58
    iget-object p4, p3, Lc87;->a:Lv77;

    .line 59
    .line 60
    invoke-virtual {p4, p1}, Lv77;->l(Lx77;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    :goto_0
    if-eqz p1, :cond_5

    .line 65
    .line 66
    iget-object p1, p0, Lmp0;->r:Lem4;

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    move-object p1, p2

    .line 71
    check-cast p1, Lcv3;

    .line 72
    .line 73
    iget-object p1, p1, Lcv3;->e:Lv08;

    .line 74
    .line 75
    iget p1, p1, Lv08;->b:I

    .line 76
    .line 77
    if-ne p1, v3, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p2, v4}, Lfk4;->r(Lz77;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    iget-object p0, p0, Lmp0;->r:Lem4;

    .line 84
    .line 85
    invoke-virtual {p0, v2, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    return v3

    .line 89
    :cond_5
    return v1
.end method

.method public f(Lem4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmp0;->r:Lem4;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Lu81;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p1}, Lu81;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "Cannot override _nullSerializer: had a "

    .line 17
    .line 18
    const-string v1, ", trying to set to "

    .line 19
    .line 20
    invoke-static {v0, p0, v1, p1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    iput-object p1, p0, Lmp0;->r:Lem4;

    .line 29
    .line 30
    return-void
.end method

.method public g(Lem4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmp0;->q:Lem4;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Lu81;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p1}, Lu81;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "Cannot override _serializer: had a "

    .line 17
    .line 18
    const-string v1, ", trying to set to "

    .line 19
    .line 20
    invoke-static {v0, p0, v1, p1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    iput-object p1, p0, Lmp0;->q:Lem4;

    .line 29
    .line 30
    return-void
.end method

.method public h(Lv77;)V
    .locals 1

    .line 1
    sget-object v0, Lu65;->H:Lu65;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ls65;->i(Lu65;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p0, p0, Lmp0;->k:Lod;

    .line 8
    .line 9
    invoke-virtual {p0}, Lod;->r0()Ljava/lang/reflect/Member;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {p0, p1}, Lu81;->d(Ljava/lang/reflect/Member;Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public i(Lfk5;)Lmp0;
    .locals 2

    .line 1
    iget-object v0, p0, Lmp0;->b:Lz77;

    .line 2
    .line 3
    iget-object v1, v0, Lz77;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Lfk5;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, v0, Lz77;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-static {p1}, Lz86;->a(Ljava/lang/String;)Lz86;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lmp0;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lmp0;-><init>(Lmp0;Lz86;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public j(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lmp0;->n:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lmp0;->p:Ljava/lang/reflect/Field;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    if-nez v1, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lmp0;->r:Lem4;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p2}, Lfk4;->v()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-object v0, p0, Lmp0;->q:Lem4;

    .line 32
    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v2, p0, Lmp0;->x:Lod2;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Lod2;->x(Ljava/lang/Class;)Lem4;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0, v2, v0, p3}, Lmp0;->d(Lod2;Ljava/lang/Class;Lc87;)Lem4;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move-object v0, v3

    .line 53
    :cond_4
    :goto_1
    iget-object v2, p0, Lmp0;->G:Ljava/lang/Object;

    .line 54
    .line 55
    if-eqz v2, :cond_6

    .line 56
    .line 57
    sget-object v3, Lpk4;->c:Lpk4;

    .line 58
    .line 59
    if-ne v3, v2, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0, p3, v1}, Lem4;->c(Lc87;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_6

    .line 66
    .line 67
    invoke-virtual {p0, p2, p3}, Lmp0;->l(Lfk4;Lc87;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    invoke-virtual {p0, p2, p3}, Lmp0;->l(Lfk4;Lc87;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_6
    if-ne v1, p1, :cond_7

    .line 82
    .line 83
    invoke-virtual {p0, p1, p2, p3, v0}, Lmp0;->e(Ljava/lang/Object;Lfk4;Lc87;Lem4;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_7

    .line 88
    .line 89
    return-void

    .line 90
    :cond_7
    iget-object p0, p0, Lmp0;->t:Lrc8;

    .line 91
    .line 92
    if-nez p0, :cond_8

    .line 93
    .line 94
    invoke-virtual {v0, v1, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_8
    invoke-virtual {v0, v1, p2, p3, p0}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public k(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lmp0;->n:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lmp0;->p:Ljava/lang/reflect/Field;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    iget-object v2, p0, Lmp0;->b:Lz77;

    .line 18
    .line 19
    iget-object v3, p0, Lmp0;->G:Ljava/lang/Object;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {p3, v3}, Lc87;->y(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    iget-object p1, p0, Lmp0;->r:Lem4;

    .line 33
    .line 34
    if-eqz p1, :cond_7

    .line 35
    .line 36
    invoke-virtual {p2, v2}, Lfk4;->r(Lz77;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lmp0;->r:Lem4;

    .line 40
    .line 41
    invoke-virtual {p0, v0, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-object v0, p0, Lmp0;->q:Lem4;

    .line 46
    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v4, p0, Lmp0;->x:Lod2;

    .line 54
    .line 55
    invoke-virtual {v4, v0}, Lod2;->x(Ljava/lang/Class;)Lem4;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-nez v5, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0, v4, v0, p3}, Lmp0;->d(Lod2;Ljava/lang/Class;Lc87;)Lem4;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object v0, v5

    .line 67
    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    .line 68
    .line 69
    sget-object v4, Lpk4;->c:Lpk4;

    .line 70
    .line 71
    if-ne v4, v3, :cond_5

    .line 72
    .line 73
    invoke-virtual {v0, p3, v1}, Lem4;->c(Lc87;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_6

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_6

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_6
    if-ne v1, p1, :cond_8

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2, p3, v0}, Lmp0;->e(Ljava/lang/Object;Lfk4;Lc87;Lem4;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_8

    .line 94
    .line 95
    :cond_7
    :goto_2
    return-void

    .line 96
    :cond_8
    invoke-virtual {p2, v2}, Lfk4;->r(Lz77;)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lmp0;->t:Lrc8;

    .line 100
    .line 101
    if-nez p0, :cond_9

    .line 102
    .line 103
    invoke-virtual {v0, v1, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_9
    invoke-virtual {v0, v1, p2, p3, p0}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final l(Lfk4;Lc87;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmp0;->r:Lem4;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lfk4;->v()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x28

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "property \'"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lmp0;->b:Lz77;

    .line 14
    .line 15
    iget-object v1, v1, Lz77;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "\' ("

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "#"

    .line 26
    .line 27
    iget-object v2, p0, Lmp0;->n:Ljava/lang/reflect/Method;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const-string v3, "via method "

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v2, p0, Lmp0;->p:Ljava/lang/reflect/Field;

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    const-string v3, "field \""

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const-string v1, "virtual"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :goto_0
    iget-object p0, p0, Lmp0;->q:Lem4;

    .line 95
    .line 96
    if-nez p0, :cond_2

    .line 97
    .line 98
    const-string p0, ", no static serializer"

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string v1, ", static serializer of type "

    .line 113
    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :goto_1
    const/16 p0, 0x29

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0
.end method
