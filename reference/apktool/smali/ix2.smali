.class public final Lix2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lmt2;

.field public b:Lau1;

.field public c:Ljava/lang/Class;

.field public d:Ljava/lang/Class;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lix2;->e:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "entry"

    .line 13
    .line 14
    iput-object v0, p0, Lix2;->e:Ljava/lang/String;

    .line 15
    .line 16
    :cond_1
    iget-object p0, p0, Lix2;->e:Ljava/lang/String;

    .line 17
    .line 18
    return-object p0
.end method

.method public final b(Lai5;)Lbw1;
    .locals 3

    .line 1
    iget-object v0, p0, Lix2;->d:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lix2;->a:Lmt2;

    .line 6
    .line 7
    invoke-interface {v0}, Lmt2;->keyType()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lix2;->d:Ljava/lang/Class;

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lix2;->b:Lau1;

    .line 18
    .line 19
    invoke-interface {v0}, Lau1;->e()[Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    array-length v1, v0

    .line 24
    if-gez v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    array-length v1, v0

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    :goto_0
    const-class v0, Ljava/lang/Object;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    aget-object v0, v0, v1

    .line 35
    .line 36
    :goto_1
    iput-object v0, p0, Lix2;->d:Ljava/lang/Class;

    .line 37
    .line 38
    :cond_2
    new-instance v0, Lln5;

    .line 39
    .line 40
    iget-object v1, p0, Lix2;->d:Ljava/lang/Class;

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    invoke-direct {v0, v1, v2}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v2, p1, Lai5;->d:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Lx44;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Lx44;->e(Ljava/lang/Class;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    new-instance v1, Lp51;

    .line 60
    .line 61
    invoke-direct {v1, p1, p0, v0}, Lp51;-><init>(Lai5;Lix2;Lln5;)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_3
    new-instance v1, Lnz4;

    .line 66
    .line 67
    invoke-direct {v1, p1, p0, v0}, Lnz4;-><init>(Lai5;Lix2;Lln5;)V

    .line 68
    .line 69
    .line 70
    return-object v1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lix2;->g:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lix2;->g:Ljava/lang/String;

    .line 14
    .line 15
    :cond_1
    iget-object p0, p0, Lix2;->g:Ljava/lang/String;

    .line 16
    .line 17
    return-object p0
.end method

.method public final d(Lai5;)Lbw1;
    .locals 3

    .line 1
    iget-object v0, p0, Lix2;->c:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lix2;->a:Lmt2;

    .line 6
    .line 7
    invoke-interface {v0}, Lmt2;->valueType()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lix2;->c:Ljava/lang/Class;

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lix2;->b:Lau1;

    .line 18
    .line 19
    invoke-interface {v0}, Lau1;->e()[Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    array-length v1, v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ge v1, v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    array-length v1, v0

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    :goto_0
    const-class v0, Ljava/lang/Object;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    aget-object v0, v0, v2

    .line 35
    .line 36
    :goto_1
    iput-object v0, p0, Lix2;->c:Ljava/lang/Class;

    .line 37
    .line 38
    :cond_2
    new-instance v0, Lln5;

    .line 39
    .line 40
    iget-object v1, p0, Lix2;->c:Ljava/lang/Class;

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    invoke-direct {v0, v1, v2}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v2, p1, Lai5;->d:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Lx44;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Lx44;->e(Ljava/lang/Class;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    new-instance v1, Lb66;

    .line 60
    .line 61
    invoke-direct {v1, p1, p0, v0}, Lb66;-><init>(Lai5;Lix2;Lln5;)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_3
    new-instance v1, Lgp1;

    .line 66
    .line 67
    invoke-direct {v1, p1, p0, v0}, Lgp1;-><init>(Lai5;Lix2;Lln5;)V

    .line 68
    .line 69
    .line 70
    return-object v1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lix2;->f:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lix2;->f:Ljava/lang/String;

    .line 14
    .line 15
    :cond_1
    iget-object p0, p0, Lix2;->f:Ljava/lang/String;

    .line 16
    .line 17
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lix2;->a:Lmt2;

    .line 2
    .line 3
    iget-object p0, p0, Lix2;->b:Lau1;

    .line 4
    .line 5
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "%s on %s"

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
