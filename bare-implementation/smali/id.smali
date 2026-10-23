.class public final Lid;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Las5;

.field public final b:Lh81;

.field public final c:Ljc8;

.field public final d:Ljava/lang/Class;

.field public final e:Ljava/lang/Class;

.field public final f:Z


# direct methods
.method public constructor <init>(Ls65;Lgc8;Ls65;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object v0, p2, Lgc8;->f:Ljava/lang/Class;

    .line 64
    iput-object v0, p0, Lid;->d:Ljava/lang/Class;

    .line 65
    iput-object p3, p0, Lid;->b:Lh81;

    .line 66
    invoke-virtual {p2}, Lgc8;->n0()Ljc8;

    move-result-object p2

    iput-object p2, p0, Lid;->c:Ljc8;

    .line 67
    sget-object p2, Lu65;->c:Lu65;

    invoke-virtual {p1, p2}, Ls65;->i(Lu65;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p1}, Ls65;->d()Las5;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lid;->a:Las5;

    .line 69
    check-cast p3, Lt65;

    invoke-virtual {p3, v0}, Lt65;->a(Ljava/lang/Class;)Ljava/lang/Class;

    iput-object v1, p0, Lid;->e:Ljava/lang/Class;

    if-eqz p1, :cond_1

    .line 70
    invoke-static {v0}, Lu81;->p(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lid;->f:Z

    return-void
.end method

.method public constructor <init>(Ls65;Ljava/lang/Class;Ls65;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lid;->d:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p3, p0, Lid;->b:Lh81;

    .line 7
    .line 8
    sget-object v0, Ljc8;->k:Ljc8;

    .line 9
    .line 10
    iput-object v0, p0, Lid;->c:Ljc8;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iput-object v0, p0, Lid;->a:Las5;

    .line 16
    .line 17
    iput-object v0, p0, Lid;->e:Ljava/lang/Class;

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    sget-object v1, Lu65;->c:Lu65;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ls65;->i(Lu65;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Ls65;->d()Las5;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object p1, v0

    .line 34
    :goto_0
    iput-object p1, p0, Lid;->a:Las5;

    .line 35
    .line 36
    if-nez p3, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    check-cast p3, Lt65;

    .line 40
    .line 41
    invoke-virtual {p3, p2}, Lt65;->a(Ljava/lang/Class;)Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    :goto_1
    iput-object v0, p0, Lid;->e:Ljava/lang/Class;

    .line 45
    .line 46
    :goto_2
    iget-object p1, p0, Lid;->a:Las5;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-static {p2}, Lu81;->p(Ljava/lang/Class;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    const/4 p1, 0x0

    .line 59
    :goto_3
    iput-boolean p1, p0, Lid;->f:Z

    .line 60
    .line 61
    return-void
.end method

.method public static d(Lgc8;Ljava/util/ArrayList;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lgc8;->f:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lgc8;

    .line 18
    .line 19
    iget-object v3, v3, Lgc8;->f:Ljava/lang/Class;

    .line 20
    .line 21
    if-ne v3, v0, :cond_0

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    const-class p2, Ljava/util/List;

    .line 31
    .line 32
    if-eq v0, p2, :cond_6

    .line 33
    .line 34
    const-class p2, Ljava/util/Map;

    .line 35
    .line 36
    if-ne v0, p2, :cond_2

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_2
    iget-object p0, p0, Lgc8;->t:[Lgc8;

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    if-nez p0, :cond_3

    .line 43
    .line 44
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    array-length v0, p0

    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    if-eq v0, p2, :cond_4

    .line 51
    .line 52
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    aget-object p0, p0, v1

    .line 58
    .line 59
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    goto :goto_1

    .line 64
    :cond_5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 65
    .line 66
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lgc8;

    .line 81
    .line 82
    invoke-static {v0, p1, p2}, Lid;->d(Lgc8;Ljava/util/ArrayList;Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    :goto_3
    return-void
.end method

.method public static e(Lgc8;Ljava/util/ArrayList;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lgc8;->f:Ljava/lang/Class;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Object;

    .line 4
    .line 5
    if-eq v0, v1, :cond_8

    .line 6
    .line 7
    const-class v1, Ljava/lang/Enum;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    if-eqz p2, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, p2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lgc8;

    .line 27
    .line 28
    iget-object v3, v3, Lgc8;->f:Ljava/lang/Class;

    .line 29
    .line 30
    if-ne v3, v0, :cond_1

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_3
    iget-object p2, p0, Lgc8;->t:[Lgc8;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    if-nez p2, :cond_4

    .line 43
    .line 44
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    array-length v2, p2

    .line 48
    if-eqz v2, :cond_6

    .line 49
    .line 50
    if-eq v2, v0, :cond_5

    .line 51
    .line 52
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_1

    .line 57
    :cond_5
    aget-object p2, p2, v1

    .line 58
    .line 59
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    goto :goto_1

    .line 64
    :cond_6
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 65
    .line 66
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_7

    .line 75
    .line 76
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lgc8;

    .line 81
    .line 82
    invoke-static {v1, p1, v0}, Lid;->d(Lgc8;Ljava/util/ArrayList;Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_7
    invoke-virtual {p0}, Lgc8;->t0()Lgc8;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-eqz p0, :cond_8

    .line 91
    .line 92
    invoke-static {p0, p1, v0}, Lid;->e(Lgc8;Ljava/util/ArrayList;Z)V

    .line 93
    .line 94
    .line 95
    :cond_8
    :goto_3
    return-void
.end method

.method public static g(Ls65;Ljava/lang/Class;)Lhd;
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lt65;

    .line 10
    .line 11
    iget-object p0, p0, Lt65;->c:Ljg7;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance p0, Lhd;

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lhd;-><init>(Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    new-instance v0, Lid;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1, p0}, Lid;-><init>(Ls65;Ljava/lang/Class;Ls65;)V

    .line 25
    .line 26
    .line 27
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 28
    .line 29
    new-instance v1, Lhd;

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Lid;->f(Ljava/util/List;)Lee;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-object v2, p0, Ls65;->b:Len0;

    .line 36
    .line 37
    iget-object v10, v2, Len0;->a:Llc8;

    .line 38
    .line 39
    iget-boolean v11, v0, Lid;->f:Z

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    iget-object v5, v0, Lid;->e:Ljava/lang/Class;

    .line 43
    .line 44
    iget-object v7, v0, Lid;->c:Ljc8;

    .line 45
    .line 46
    iget-object v8, v0, Lid;->a:Las5;

    .line 47
    .line 48
    move-object v9, p0

    .line 49
    move-object v3, p1

    .line 50
    invoke-direct/range {v1 .. v11}, Lhd;-><init>(Lgc8;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lee;Ljc8;Las5;Lh81;Llc8;Z)V

    .line 51
    .line 52
    .line 53
    return-object v1
.end method


# virtual methods
.method public final a(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;
    .locals 4

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    array-length v0, p2

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    aget-object v2, p2, v1

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Lcy0;->y(Ljava/lang/annotation/Annotation;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lcy0;->b(Ljava/lang/annotation/Annotation;)Lcy0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v3, p0, Lid;->a:Las5;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Las5;->Z(Ljava/lang/annotation/Annotation;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, p1, v2}, Lid;->c(Lcy0;Ljava/lang/annotation/Annotation;)Lcy0;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-object p1
.end method

.method public final b(Lcy0;Ljava/lang/Class;Ljava/lang/Class;)Lcy0;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-static {p3}, Lu81;->h(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lid;->a(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p3, p2, v0}, Lu81;->i(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    check-cast p3, Ljava/lang/Class;

    .line 31
    .line 32
    invoke-static {p3}, Lu81;->h(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {p0, p1, p3}, Lid;->a(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-object p1
.end method

.method public final c(Lcy0;Ljava/lang/annotation/Annotation;)Lcy0;
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Lu81;->h(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    array-length v0, p2

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_2

    .line 12
    .line 13
    aget-object v2, p2, v1

    .line 14
    .line 15
    instance-of v3, v2, Ljava/lang/annotation/Target;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    instance-of v3, v2, Ljava/lang/annotation/Retention;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p1, v2}, Lcy0;->y(Ljava/lang/annotation/Annotation;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lcy0;->b(Ljava/lang/annotation/Annotation;)Lcy0;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v3, p0, Lid;->a:Las5;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Las5;->Z(Ljava/lang/annotation/Annotation;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, p1, v2}, Lid;->c(Lcy0;Ljava/lang/annotation/Annotation;)Lcy0;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-object p1
.end method

.method public final f(Ljava/util/List;)Lee;
    .locals 7

    .line 1
    sget-object v0, Lcy0;->a:Lxd;

    .line 2
    .line 3
    iget-object v1, p0, Lid;->a:Las5;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v1, p0, Lid;->b:Lh81;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    instance-of v2, v1, Ljg7;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    move-object v2, v1

    .line 17
    check-cast v2, Ljg7;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v2, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 23
    :goto_1
    iget-boolean v3, p0, Lid;->f:Z

    .line 24
    .line 25
    if-nez v2, :cond_3

    .line 26
    .line 27
    if-nez v3, :cond_3

    .line 28
    .line 29
    :goto_2
    return-object v0

    .line 30
    :cond_3
    sget-object v0, Lvd;->j:Lvd;

    .line 31
    .line 32
    iget-object v4, p0, Lid;->d:Ljava/lang/Class;

    .line 33
    .line 34
    iget-object v5, p0, Lid;->e:Ljava/lang/Class;

    .line 35
    .line 36
    if-eqz v5, :cond_4

    .line 37
    .line 38
    invoke-virtual {p0, v0, v4, v5}, Lid;->b(Lcy0;Ljava/lang/Class;Ljava/lang/Class;)Lcy0;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_4
    if-eqz v3, :cond_5

    .line 43
    .line 44
    invoke-static {v4}, Lu81;->h(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {p0, v0, v4}, Lid;->a(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_8

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lgc8;

    .line 67
    .line 68
    if-eqz v2, :cond_7

    .line 69
    .line 70
    iget-object v5, v4, Lgc8;->f:Ljava/lang/Class;

    .line 71
    .line 72
    invoke-interface {v1, v5}, Lh81;->a(Ljava/lang/Class;)Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {p0, v0, v5, v6}, Lid;->b(Lcy0;Ljava/lang/Class;Ljava/lang/Class;)Lcy0;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_7
    if-eqz v3, :cond_6

    .line 81
    .line 82
    iget-object v4, v4, Lgc8;->f:Ljava/lang/Class;

    .line 83
    .line 84
    invoke-static {v4}, Lu81;->h(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {p0, v0, v4}, Lid;->a(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto :goto_3

    .line 93
    :cond_8
    if-eqz v2, :cond_9

    .line 94
    .line 95
    const-class p1, Ljava/lang/Object;

    .line 96
    .line 97
    invoke-interface {v1, p1}, Lh81;->a(Ljava/lang/Class;)Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p0, v0, p1, v1}, Lid;->b(Lcy0;Ljava/lang/Class;Ljava/lang/Class;)Lcy0;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :cond_9
    invoke-virtual {v0}, Lcy0;->d()Lee;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method
