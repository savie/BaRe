.class public final Llb4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgk1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Llb4;->c:I

    .line 6
    .line 7
    sget-object v0, Ll79;->a:[B

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Llb4;->d:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p0, p1, Lgk1;->b:Ljava/lang/Object;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p0, "input"

    .line 17
    .line 18
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    throw p0
.end method


# virtual methods
.method public A(Lo79;)V
    .locals 5

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lgk1;->S()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Lgk1;->J()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Lgk1;->X()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Lb89;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lgk1;->J()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Llb4;->b(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lp79;->a()Lr79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Lgk1;->X()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Lb89;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Lgk1;->R()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Llb4;->a:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Llb4;->c:I

    .line 82
    .line 83
    return-void
.end method

.method public a(I)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvc9;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    if-lez v1, :cond_7

    .line 8
    .line 9
    iget-object v1, v0, Lvc9;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, [Ljava/lang/String;

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge p1, v2, :cond_0

    .line 15
    .line 16
    aget-object v1, v1, p1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-nez v1, :cond_6

    .line 21
    .line 22
    iget v1, p0, Llb4;->b:I

    .line 23
    .line 24
    add-int/lit8 v2, v1, 0x1

    .line 25
    .line 26
    new-array v2, v2, [C

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-lez v1, :cond_2

    .line 30
    .line 31
    const/16 v1, 0xa

    .line 32
    .line 33
    aput-char v1, v2, v3

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    :goto_1
    iget v4, p0, Llb4;->b:I

    .line 37
    .line 38
    if-gt v1, v4, :cond_1

    .line 39
    .line 40
    const/16 v4, 0x20

    .line 41
    .line 42
    aput-char v4, v2, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    .line 50
    .line 51
    .line 52
    :goto_2
    move-object v1, p0

    .line 53
    goto :goto_3

    .line 54
    :cond_2
    const-string p0, "\n"

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :goto_3
    iget-object p0, v0, Lvc9;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, [Ljava/lang/String;

    .line 60
    .line 61
    array-length p0, p0

    .line 62
    if-lt p1, p0, :cond_4

    .line 63
    .line 64
    mul-int/lit8 p0, p1, 0x2

    .line 65
    .line 66
    new-array p0, p0, [Ljava/lang/String;

    .line 67
    .line 68
    :goto_4
    iget-object v2, v0, Lvc9;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v2, [Ljava/lang/String;

    .line 71
    .line 72
    array-length v4, v2

    .line 73
    if-ge v3, v4, :cond_3

    .line 74
    .line 75
    aget-object v2, v2, v3

    .line 76
    .line 77
    aput-object v2, p0, v3

    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_3
    iput-object p0, v0, Lvc9;->c:Ljava/lang/Object;

    .line 83
    .line 84
    :cond_4
    iget p0, v0, Lvc9;->b:I

    .line 85
    .line 86
    if-le p1, p0, :cond_5

    .line 87
    .line 88
    iput p1, v0, Lvc9;->b:I

    .line 89
    .line 90
    :cond_5
    iget-object p0, v0, Lvc9;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p0, [Ljava/lang/String;

    .line 93
    .line 94
    aput-object v1, p0, p1

    .line 95
    .line 96
    :cond_6
    iget p0, v0, Lvc9;->b:I

    .line 97
    .line 98
    if-lez p0, :cond_7

    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_7
    const-string p0, ""

    .line 102
    .line 103
    return-object p0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lgk1;

    .line 4
    .line 5
    invoke-virtual {p0}, Lgk1;->J()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lp79;->g()Lp79;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    throw p0
.end method

.method public c(Lo79;)V
    .locals 4

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lgk1;->S()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Lgk1;->J()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Lgk1;->c0()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Lb89;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lgk1;->J()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Llb4;->b(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lp79;->a()Lr79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Lgk1;->c0()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Lb89;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Lgk1;->R()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Llb4;->a:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Llb4;->c:I

    .line 82
    .line 83
    return-void
.end method

.method public d(Lo79;Le89;Lf79;)V
    .locals 4

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v2, v1, 0x7

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-ne v2, v3, :cond_3

    .line 11
    .line 12
    :cond_0
    invoke-interface {p2}, Le89;->zza()Lk79;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v2, p2, p3}, Llb4;->j(Ljava/lang/Object;Le89;Lf79;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, v2}, Le89;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object v3, p1

    .line 23
    check-cast v3, Lb89;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Lb89;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    iget v2, p0, Llb4;->c:I

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0}, Lgk1;->R()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eq v2, v1, :cond_0

    .line 44
    .line 45
    iput v2, p0, Llb4;->c:I

    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void

    .line 48
    :cond_3
    invoke-static {}, Lp79;->a()Lr79;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    throw p0
.end method

.method public e(Lo79;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-ne v1, v2, :cond_3

    .line 11
    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Llb4;->f(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lgk1;->a0()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0, v2}, Llb4;->f(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lgk1;->Z()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    move-object v3, p1

    .line 30
    check-cast v3, Lb89;

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {v0}, Lgk1;->R()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget v3, p0, Llb4;->a:I

    .line 47
    .line 48
    if-eq v1, v3, :cond_0

    .line 49
    .line 50
    iput v1, p0, Llb4;->c:I

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    invoke-static {}, Lp79;->a()Lr79;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    throw p0
.end method

.method public f(I)V
    .locals 0

    .line 1
    iget p0, p0, Llb4;->a:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x7

    .line 4
    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lp79;->a()Lr79;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method

.method public g(Lo79;)V
    .locals 3

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-ne v1, v2, :cond_2

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Llb4;->y()Lt69;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    move-object v2, p1

    .line 17
    check-cast v2, Lb89;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {v0}, Lgk1;->R()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget v2, p0, Llb4;->a:I

    .line 34
    .line 35
    if-eq v1, v2, :cond_0

    .line 36
    .line 37
    iput v1, p0, Llb4;->c:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-static {}, Lp79;->a()Lr79;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    throw p0
.end method

.method public h(Lo79;Le89;Lf79;)V
    .locals 4

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v2, v1, 0x7

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v2, v3, :cond_3

    .line 11
    .line 12
    :cond_0
    invoke-interface {p2}, Le89;->zza()Lk79;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v2, p2, p3}, Llb4;->l(Ljava/lang/Object;Le89;Lf79;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, v2}, Le89;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object v3, p1

    .line 23
    check-cast v3, Lb89;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Lb89;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    iget v2, p0, Llb4;->c:I

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0}, Lgk1;->R()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eq v2, v1, :cond_0

    .line 44
    .line 45
    iput v2, p0, Llb4;->c:I

    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void

    .line 48
    :cond_3
    invoke-static {}, Lp79;->a()Lr79;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    throw p0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Llb4;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput v0, p0, Llb4;->a:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Llb4;->c:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lgk1;

    .line 14
    .line 15
    invoke-virtual {v0}, Lgk1;->R()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Llb4;->a:I

    .line 20
    .line 21
    :goto_0
    iget v0, p0, Llb4;->a:I

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget p0, p0, Llb4;->b:I

    .line 26
    .line 27
    if-ne v0, p0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    ushr-int/lit8 p0, v0, 0x3

    .line 31
    .line 32
    return p0

    .line 33
    :cond_2
    :goto_1
    const p0, 0x7fffffff

    .line 34
    .line 35
    .line 36
    return p0
.end method

.method public j(Ljava/lang/Object;Le89;Lf79;)V
    .locals 2

    .line 1
    iget v0, p0, Llb4;->b:I

    .line 2
    .line 3
    iget v1, p0, Llb4;->a:I

    .line 4
    .line 5
    ushr-int/lit8 v1, v1, 0x3

    .line 6
    .line 7
    shl-int/lit8 v1, v1, 0x3

    .line 8
    .line 9
    or-int/lit8 v1, v1, 0x4

    .line 10
    .line 11
    iput v1, p0, Llb4;->b:I

    .line 12
    .line 13
    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Le89;->h(Ljava/lang/Object;Llb4;Lf79;)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Llb4;->a:I

    .line 17
    .line 18
    iget p2, p0, Llb4;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    iput v0, p0, Llb4;->b:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    :try_start_1
    invoke-static {}, Lp79;->f()Lp79;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    iput v0, p0, Llb4;->b:I

    .line 32
    .line 33
    throw p1
.end method

.method public k(Lo79;)V
    .locals 4

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    const/4 p0, 0x2

    .line 13
    if-ne v1, p0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lgk1;->S()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    and-int/lit8 v1, p0, 0x7

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lgk1;->J()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v1, p0

    .line 28
    :cond_0
    invoke-virtual {v0}, Lgk1;->A()D

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    move-object v2, p1

    .line 37
    check-cast v2, Lb89;

    .line 38
    .line 39
    invoke-virtual {v2, p0}, Lb89;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lgk1;->J()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-lt p0, v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lp79;->f()Lp79;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {}, Lp79;->a()Lr79;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    throw p0

    .line 59
    :cond_3
    invoke-virtual {v0}, Lgk1;->A()D

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v2, p1

    .line 68
    check-cast v2, Lb89;

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    :goto_0
    return-void

    .line 80
    :cond_4
    invoke-virtual {v0}, Lgk1;->R()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    iget v2, p0, Llb4;->a:I

    .line 85
    .line 86
    if-eq v1, v2, :cond_3

    .line 87
    .line 88
    iput v1, p0, Llb4;->c:I

    .line 89
    .line 90
    return-void
.end method

.method public l(Ljava/lang/Object;Le89;Lf79;)V
    .locals 5

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lgk1;->S()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, v0, Lgk1;->a:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    add-int/2addr v2, v3

    .line 13
    const/16 v4, 0x64

    .line 14
    .line 15
    if-ge v2, v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lgk1;->I(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget v2, v0, Lgk1;->a:I

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    iput v2, v0, Lgk1;->a:I

    .line 26
    .line 27
    invoke-interface {p2, p1, p0, p3}, Le89;->h(Ljava/lang/Object;Llb4;Lf79;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lgk1;->K(I)V

    .line 31
    .line 32
    .line 33
    iget p0, v0, Lgk1;->a:I

    .line 34
    .line 35
    add-int/lit8 p0, p0, -0x1

    .line 36
    .line 37
    iput p0, v0, Lgk1;->a:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lgk1;->M(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance p0, Lp79;

    .line 44
    .line 45
    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    .line 46
    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public m(Lo79;)V
    .locals 4

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lgk1;->S()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Lgk1;->J()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Lgk1;->L()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Lb89;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lgk1;->J()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Llb4;->b(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lp79;->a()Lr79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Lgk1;->L()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Lb89;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Lgk1;->R()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Llb4;->a:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Llb4;->c:I

    .line 82
    .line 83
    return-void
.end method

.method public n(Lo79;)V
    .locals 3

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    if-ne v1, v2, :cond_2

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Lgk1;->N()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v2, p1

    .line 24
    check-cast v2, Lb89;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Lgk1;->R()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget v2, p0, Llb4;->a:I

    .line 41
    .line 42
    if-eq v1, v2, :cond_0

    .line 43
    .line 44
    iput v1, p0, Llb4;->c:I

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-static {}, Lp79;->a()Lr79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_3
    invoke-virtual {v0}, Lgk1;->S()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    and-int/lit8 v1, p0, 0x3

    .line 57
    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0}, Lgk1;->J()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v1, p0

    .line 65
    :cond_4
    invoke-virtual {v0}, Lgk1;->N()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    move-object v2, p1

    .line 74
    check-cast v2, Lb89;

    .line 75
    .line 76
    invoke-virtual {v2, p0}, Lb89;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lgk1;->J()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-lt p0, v1, :cond_4

    .line 84
    .line 85
    :goto_0
    return-void

    .line 86
    :cond_5
    invoke-static {}, Lp79;->f()Lp79;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    throw p0
.end method

.method public o(Lo79;)V
    .locals 4

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    const/4 p0, 0x2

    .line 13
    if-ne v1, p0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lgk1;->S()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    and-int/lit8 v1, p0, 0x7

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lgk1;->J()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v1, p0

    .line 28
    :cond_0
    invoke-virtual {v0}, Lgk1;->T()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    move-object v2, p1

    .line 37
    check-cast v2, Lb89;

    .line 38
    .line 39
    invoke-virtual {v2, p0}, Lb89;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lgk1;->J()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-lt p0, v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lp79;->f()Lp79;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {}, Lp79;->a()Lr79;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    throw p0

    .line 59
    :cond_3
    invoke-virtual {v0}, Lgk1;->T()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v2, p1

    .line 68
    check-cast v2, Lb89;

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    :goto_0
    return-void

    .line 80
    :cond_4
    invoke-virtual {v0}, Lgk1;->R()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    iget v2, p0, Llb4;->a:I

    .line 85
    .line 86
    if-eq v1, v2, :cond_3

    .line 87
    .line 88
    iput v1, p0, Llb4;->c:I

    .line 89
    .line 90
    return-void
.end method

.method public p(Lo79;)V
    .locals 3

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    if-ne v1, v2, :cond_2

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Lgk1;->H()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v2, p1

    .line 24
    check-cast v2, Lb89;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Lgk1;->R()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget v2, p0, Llb4;->a:I

    .line 41
    .line 42
    if-eq v1, v2, :cond_0

    .line 43
    .line 44
    iput v1, p0, Llb4;->c:I

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-static {}, Lp79;->a()Lr79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_3
    invoke-virtual {v0}, Lgk1;->S()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    and-int/lit8 v1, p0, 0x3

    .line 57
    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0}, Lgk1;->J()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v1, p0

    .line 65
    :cond_4
    invoke-virtual {v0}, Lgk1;->H()F

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    move-object v2, p1

    .line 74
    check-cast v2, Lb89;

    .line 75
    .line 76
    invoke-virtual {v2, p0}, Lb89;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lgk1;->J()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-lt p0, v1, :cond_4

    .line 84
    .line 85
    :goto_0
    return-void

    .line 86
    :cond_5
    invoke-static {}, Lp79;->f()Lp79;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    throw p0
.end method

.method public q(Lo79;)V
    .locals 4

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lgk1;->S()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Lgk1;->J()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Lgk1;->O()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Lb89;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lgk1;->J()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Llb4;->b(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lp79;->a()Lr79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Lgk1;->O()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Lb89;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Lgk1;->R()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Llb4;->a:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Llb4;->c:I

    .line 82
    .line 83
    return-void
.end method

.method public r(Lo79;)V
    .locals 5

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lgk1;->S()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Lgk1;->J()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Lgk1;->U()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Lb89;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lgk1;->J()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Llb4;->b(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lp79;->a()Lr79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Lgk1;->U()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Lb89;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Lgk1;->R()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Llb4;->a:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Llb4;->c:I

    .line 82
    .line 83
    return-void
.end method

.method public s(Lo79;)V
    .locals 3

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    if-ne v1, v2, :cond_2

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Lgk1;->P()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v2, p1

    .line 24
    check-cast v2, Lb89;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Lgk1;->R()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget v2, p0, Llb4;->a:I

    .line 41
    .line 42
    if-eq v1, v2, :cond_0

    .line 43
    .line 44
    iput v1, p0, Llb4;->c:I

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-static {}, Lp79;->a()Lr79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_3
    invoke-virtual {v0}, Lgk1;->S()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    and-int/lit8 v1, p0, 0x3

    .line 57
    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0}, Lgk1;->J()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v1, p0

    .line 65
    :cond_4
    invoke-virtual {v0}, Lgk1;->P()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    move-object v2, p1

    .line 74
    check-cast v2, Lb89;

    .line 75
    .line 76
    invoke-virtual {v2, p0}, Lb89;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lgk1;->J()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-lt p0, v1, :cond_4

    .line 84
    .line 85
    :goto_0
    return-void

    .line 86
    :cond_5
    invoke-static {}, Lp79;->f()Lp79;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    throw p0
.end method

.method public t(Lo79;)V
    .locals 4

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    const/4 p0, 0x2

    .line 13
    if-ne v1, p0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lgk1;->S()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    and-int/lit8 v1, p0, 0x7

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lgk1;->J()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v1, p0

    .line 28
    :cond_0
    invoke-virtual {v0}, Lgk1;->V()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    move-object v2, p1

    .line 37
    check-cast v2, Lb89;

    .line 38
    .line 39
    invoke-virtual {v2, p0}, Lb89;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lgk1;->J()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-lt p0, v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lp79;->f()Lp79;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {}, Lp79;->a()Lr79;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    throw p0

    .line 59
    :cond_3
    invoke-virtual {v0}, Lgk1;->V()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v2, p1

    .line 68
    check-cast v2, Lb89;

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    :goto_0
    return-void

    .line 80
    :cond_4
    invoke-virtual {v0}, Lgk1;->R()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    iget v2, p0, Llb4;->a:I

    .line 85
    .line 86
    if-eq v1, v2, :cond_3

    .line 87
    .line 88
    iput v1, p0, Llb4;->c:I

    .line 89
    .line 90
    return-void
.end method

.method public u(Lo79;)V
    .locals 4

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lgk1;->S()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Lgk1;->J()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Lgk1;->Q()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Lb89;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lgk1;->J()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Llb4;->b(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lp79;->a()Lr79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Lgk1;->Q()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Lb89;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Lgk1;->R()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Llb4;->a:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Llb4;->c:I

    .line 82
    .line 83
    return-void
.end method

.method public v(Lo79;)V
    .locals 5

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lgk1;->S()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Lgk1;->J()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Lgk1;->W()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Lb89;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lgk1;->J()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Llb4;->b(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lp79;->a()Lr79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Lgk1;->W()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Lb89;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Lgk1;->R()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Llb4;->a:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Llb4;->c:I

    .line 82
    .line 83
    return-void
.end method

.method public w(Lo79;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Llb4;->e(Lo79;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public x(Lo79;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Llb4;->e(Lo79;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public y()Lt69;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Llb4;->f(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Llb4;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lgk1;

    .line 8
    .line 9
    invoke-virtual {p0}, Lgk1;->Y()Lx69;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public z(Lo79;)V
    .locals 4

    .line 1
    iget-object v0, p0, Llb4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgk1;

    .line 4
    .line 5
    iget v1, p0, Llb4;->a:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lgk1;->S()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Lgk1;->J()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Lgk1;->S()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Lb89;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lgk1;->J()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Llb4;->b(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lp79;->a()Lr79;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Lgk1;->S()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Lb89;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lb89;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lgk1;->b0()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Lgk1;->R()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Llb4;->a:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Llb4;->c:I

    .line 82
    .line 83
    return-void
.end method
