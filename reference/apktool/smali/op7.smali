.class public final Lop7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lwo1;

.field public final b:Lni4;

.field public final c:Low8;

.field public final d:[Lop7;

.field public final e:Ldj4;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lwo1;Lni4;Low8;[Lop7;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lop7;->a:Lwo1;

    .line 8
    .line 9
    iput-object p2, p0, Lop7;->b:Lni4;

    .line 10
    .line 11
    iput-object p3, p0, Lop7;->c:Low8;

    .line 12
    .line 13
    iput-object p4, p0, Lop7;->d:[Lop7;

    .line 14
    .line 15
    iget-object p1, p2, Lni4;->a:Ldj4;

    .line 16
    .line 17
    iput-object p1, p0, Lop7;->e:Ldj4;

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p4, :cond_1

    .line 24
    .line 25
    aget-object p2, p4, p1

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    if-eq p2, p0, :cond_1

    .line 30
    .line 31
    :cond_0
    aput-object p0, p4, p1

    .line 32
    .line 33
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lp77;)Lop7;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lop7;->b:Lni4;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lwx3;->B(Lni4;Lp77;)Low8;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-char v2, v1, Low8;->a:C

    .line 11
    .line 12
    iget-object v3, p0, Lop7;->a:Lwo1;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Lwo1;->c(C)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    iput-boolean v2, v3, Lwo1;->a:Z

    .line 19
    .line 20
    iget-object v2, p0, Lop7;->g:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v4, p0, Lop7;->h:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Lp77;->a()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :cond_0
    invoke-virtual {v3}, Lwo1;->b()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Lwo1;->d(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 p1, 0x3a

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Lwo1;->c(C)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v4}, Lop7;->j(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lop7;->g:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p1, p0, Lop7;->h:Ljava/lang/String;

    .line 50
    .line 51
    :cond_1
    iget-object p1, p0, Lop7;->c:Low8;

    .line 52
    .line 53
    if-ne p1, v1, :cond_2

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_2
    iget-object p0, p0, Lop7;->d:[Lop7;

    .line 57
    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    aget-object p1, p0, p1

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_3
    new-instance p1, Lop7;

    .line 70
    .line 71
    invoke-direct {p1, v3, v0, v1, p0}, Lop7;-><init>(Lwo1;Lni4;Low8;[Lop7;)V

    .line 72
    .line 73
    .line 74
    return-object p1
.end method

.method public final b(Lp77;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lop7;->c:Low8;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x2c

    .line 11
    .line 12
    iget-object v2, p0, Lop7;->a:Lwo1;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v0, v3, :cond_7

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/16 v5, 0x3a

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    if-eq v0, v6, :cond_4

    .line 22
    .line 23
    const/4 v6, 0x3

    .line 24
    if-eq v0, v6, :cond_1

    .line 25
    .line 26
    iget-boolean v0, v2, Lwo1;->a:Z

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lwo1;->c(C)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v2}, Lwo1;->b()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lop7;->b:Lni4;

    .line 37
    .line 38
    invoke-static {v0, p1}, Lvm4;->y(Lni4;Lp77;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, p2}, Lp77;->g(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lop7;->j(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v5}, Lwo1;->c(C)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lwo1;->e()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    if-nez p2, :cond_2

    .line 56
    .line 57
    iput-boolean v3, p0, Lop7;->f:Z

    .line 58
    .line 59
    :cond_2
    if-ne p2, v3, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Lwo1;->c(C)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lwo1;->e()V

    .line 65
    .line 66
    .line 67
    iput-boolean v4, p0, Lop7;->f:Z

    .line 68
    .line 69
    :cond_3
    return-void

    .line 70
    :cond_4
    iget-boolean p1, v2, Lwo1;->a:Z

    .line 71
    .line 72
    if-nez p1, :cond_6

    .line 73
    .line 74
    rem-int/2addr p2, v6

    .line 75
    if-nez p2, :cond_5

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Lwo1;->c(C)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lwo1;->b()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {v2, v5}, Lwo1;->c(C)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lwo1;->e()V

    .line 88
    .line 89
    .line 90
    move v3, v4

    .line 91
    :goto_0
    iput-boolean v3, p0, Lop7;->f:Z

    .line 92
    .line 93
    return-void

    .line 94
    :cond_6
    iput-boolean v3, p0, Lop7;->f:Z

    .line 95
    .line 96
    invoke-virtual {v2}, Lwo1;->b()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_7
    iget-boolean p0, v2, Lwo1;->a:Z

    .line 101
    .line 102
    if-nez p0, :cond_8

    .line 103
    .line 104
    invoke-virtual {v2, v1}, Lwo1;->c(C)V

    .line 105
    .line 106
    .line 107
    :cond_8
    invoke-virtual {v2}, Lwo1;->b()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lop7;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lop7;->j(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lop7;->a:Lwo1;

    .line 14
    .line 15
    iget-object p0, p0, Lwo1;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Llm4;

    .line 18
    .line 19
    int-to-long v0, p1

    .line 20
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Llm4;->c(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final d(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lop7;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lop7;->j(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lop7;->a:Lwo1;

    .line 14
    .line 15
    iget-object p0, p0, Lwo1;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Llm4;

    .line 18
    .line 19
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Llm4;->c(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final e(Lp77;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lop7;->b(Lp77;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p3, p4}, Lop7;->d(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object p0, p0, Lop7;->a:Lwo1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lwo1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Llm4;

    .line 9
    .line 10
    const-string v0, "null"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Llm4;->c(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final g(Lp77;ILdo4;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    if-nez p4, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lop7;->e:Ldj4;

    .line 10
    .line 11
    iget-boolean v0, v0, Ldj4;->a:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lop7;->b(Lp77;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p3}, Ldo4;->d()Lp77;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Lp77;->c()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, p3, p4}, Lop7;->i(Ldo4;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    if-nez p4, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lop7;->f()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-virtual {p0, p3, p4}, Lop7;->i(Ldo4;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void
.end method

.method public final h(Lp77;ILdo4;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lop7;->b(Lp77;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p3, p4}, Lop7;->i(Ldo4;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final i(Ldo4;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lop7;->b:Lni4;

    .line 5
    .line 6
    iget-object v0, v0, Lni4;->a:Ldj4;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Ldj4;->e:Ly71;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_5

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    if-ne v1, v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-interface {p1}, Ldo4;->d()Lp77;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Lp77;->e()Lzh8;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Ldr7;->g:Ldr7;

    .line 39
    .line 40
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    sget-object v2, Lgr7;->g:Lgr7;

    .line 47
    .line 48
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    :cond_2
    invoke-interface {p1}, Ldo4;->d()Lp77;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Lp77;->getAnnotations()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/annotation/Annotation;

    .line 80
    .line 81
    instance-of v3, v2, Lcj4;

    .line 82
    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    check-cast v2, Lcj4;

    .line 86
    .line 87
    invoke-interface {v2}, Lcj4;->discriminator()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    iget-object v0, v0, Ldj4;->c:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    :goto_0
    const/4 v0, 0x0

    .line 96
    :goto_1
    if-eqz v0, :cond_6

    .line 97
    .line 98
    invoke-interface {p1}, Ldo4;->d()Lp77;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v1}, Lp77;->a()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iput-object v0, p0, Lop7;->g:Ljava/lang/String;

    .line 107
    .line 108
    iput-object v1, p0, Lop7;->h:Ljava/lang/String;

    .line 109
    .line 110
    :cond_6
    invoke-interface {p1, p0, p2}, Ldo4;->b(Lop7;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lop7;->a:Lwo1;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lwo1;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final k(Lp77;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lop7;->a:Lwo1;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p1, Lwo1;->a:Z

    .line 11
    .line 12
    iget-object p0, p0, Lop7;->c:Low8;

    .line 13
    .line 14
    iget-char p0, p0, Low8;->b:C

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lwo1;->c(C)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final l(Lp77;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lop7;->e:Ldj4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method
