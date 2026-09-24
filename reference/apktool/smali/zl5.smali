.class public Lzl5;
.super Ls51;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public e:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "NegTokenInit"

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Ls51;-><init>(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lzl5;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(Lr2;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lr2;->d()Lz0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Lz0;->a:Lm2;

    .line 6
    .line 7
    invoke-virtual {v0}, Lz0;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "not_defined_in_RFC4178@please_ignore"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v0, v1, Lm2;->b:I

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq v0, v2, :cond_3

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq v0, v2, :cond_2

    .line 29
    .line 30
    const/4 p0, 0x3

    .line 31
    if-ne v0, p0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p0, Lfk7;

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, "Unknown Object Tag "

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v0, v1, Lm2;->b:I

    .line 44
    .line 45
    const-string v1, " encountered."

    .line 46
    .line 47
    invoke-static {p1, v0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_2
    invoke-virtual {p1}, Lr2;->d()Lz0;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lzl5;->g(Lz0;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_0
    return-void

    .line 63
    :cond_4
    invoke-virtual {p1}, Lr2;->d()Lz0;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lzl5;->h(Lz0;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final e(Ljw0;)V
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lzl5;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const/4 v3, 0x1

    .line 13
    sget-object v4, Ld0;->c:Ld0;

    .line 14
    .line 15
    sget-object v5, Ln2;->d:Ln2;

    .line 16
    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lr2;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-static {v5, v6}, Lm2;->b(Ln2;I)Lm2;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v6, v4}, Lm2;->a(Ld0;)Lm2;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    new-instance v7, Lw1;

    .line 36
    .line 37
    invoke-direct {v7, v2}, Lw1;-><init>(Ljava/util/ArrayList;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v6, v7, v3}, Lr2;-><init>(Lm2;Lz0;Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v1, p0, Lzl5;->e:[B

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    array-length v1, v1

    .line 51
    if-lez v1, :cond_1

    .line 52
    .line 53
    new-instance v1, Lr2;

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    invoke-static {v5, v2}, Lm2;->b(Ln2;I)Lm2;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2, v4}, Lm2;->a(Ld0;)Lm2;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-instance v4, Lk1;

    .line 65
    .line 66
    iget-object v5, p0, Lzl5;->e:[B

    .line 67
    .line 68
    invoke-direct {v4, v5}, Lk1;-><init>([B)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2, v4, v3}, Lr2;-><init>(Lm2;Lz0;Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_1
    new-instance v1, Lw1;

    .line 78
    .line 79
    invoke-direct {v1, v0}, Lw1;-><init>(Ljava/util/ArrayList;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1, v1}, Ls51;->f(Ljw0;Lw1;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catch_0
    move-exception p0

    .line 87
    new-instance p1, Lfk7;

    .line 88
    .line 89
    const-string v0, "Unable to write NegTokenInit"

    .line 90
    .line 91
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method public final g(Lz0;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lk1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lk1;

    .line 6
    .line 7
    iget-object p1, p1, La2;->b:[B

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lzl5;->e:[B

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "Expected the MechToken (OCTET_STRING) contents, not: "

    .line 18
    .line 19
    invoke-static {p1, p0}, Lg84;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final h(Lz0;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lw1;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Lw1;

    .line 6
    .line 7
    invoke-virtual {p1}, Lw1;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lz0;

    .line 22
    .line 23
    instance-of v1, v0, Lg1;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lzl5;->d:Ljava/util/ArrayList;

    .line 28
    .line 29
    check-cast v0, Lg1;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p0, "Expected a MechType (OBJECT IDENTIFIER) as contents of the MechTypeList, not: "

    .line 36
    .line 37
    invoke-static {v0, p0}, Lg84;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void

    .line 41
    :cond_2
    const-string p0, "Expected the MechTypeList (SEQUENCE) contents, not: "

    .line 42
    .line 43
    invoke-static {p1, p0}, Lg84;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
