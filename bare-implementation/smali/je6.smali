.class public final Lje6;
.super Loa4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lhp4;

.field public final b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lhp4;Ljava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lje6;->a:Lhp4;

    .line 5
    .line 6
    iput-object p2, p0, Lje6;->b:Ljava/util/Comparator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lje6;->p(Ljava/lang/Object;)Lhp4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final d(Lm61;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lje6;->p(Ljava/lang/Object;)Lhp4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lhp4;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final e()Ljava/util/Comparator;
    .locals 0

    .line 1
    iget-object p0, p0, Lje6;->b:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lje6;->a:Lhp4;

    .line 2
    .line 3
    invoke-interface {p0}, Lhp4;->t()Lhp4;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lhp4;->getKey()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lje6;->a:Lhp4;

    .line 2
    .line 3
    invoke-interface {p0}, Lhp4;->s()Lhp4;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lhp4;->getKey()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lje6;->a:Lhp4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object v2, v1

    .line 5
    :goto_0
    invoke-interface {v0}, Lhp4;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-nez v3, :cond_5

    .line 10
    .line 11
    iget-object v3, p0, Lje6;->b:Ljava/util/Comparator;

    .line 12
    .line 13
    invoke-interface {v0}, Lhp4;->getKey()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-interface {v3, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Lhp4;->b()Lhp4;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Lhp4;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Lhp4;->b()Lhp4;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_1
    invoke-interface {p0}, Lhp4;->r()Lhp4;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Lhp4;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    invoke-interface {p0}, Lhp4;->r()Lhp4;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-interface {p0}, Lhp4;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_1
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-interface {v2}, Lhp4;->getKey()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_2
    return-object v1

    .line 65
    :cond_3
    if-gez v3, :cond_4

    .line 66
    .line 67
    invoke-interface {v0}, Lhp4;->b()Lhp4;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    invoke-interface {v0}, Lhp4;->r()Lhp4;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    move-object v5, v2

    .line 77
    move-object v2, v0

    .line 78
    move-object v0, v5

    .line 79
    goto :goto_0

    .line 80
    :cond_5
    const-string p0, "Couldn\'t find predecessor key of non-present key: "

    .line 81
    .line 82
    invoke-static {p1, p0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object v1
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lje6;->a:Lhp4;

    .line 2
    .line 3
    invoke-interface {p0}, Lhp4;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    new-instance v0, Lpa4;

    .line 2
    .line 3
    iget-object v1, p0, Lje6;->b:Ljava/util/Comparator;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lje6;->a:Lhp4;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1, v2}, Lpa4;-><init>(Lhp4;Ljava/util/Comparator;Z)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final k(Liz1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lje6;->a:Lhp4;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lhp4;->a(Liz1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k0()Ljava/util/Iterator;
    .locals 3

    .line 1
    new-instance v0, Lpa4;

    .line 2
    .line 3
    iget-object v1, p0, Lje6;->b:Ljava/util/Comparator;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object p0, p0, Lje6;->a:Lhp4;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1, v2}, Lpa4;-><init>(Lhp4;Ljava/util/Comparator;Z)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final l(Ljava/lang/Iterable;Ljava/lang/Object;)Loa4;
    .locals 1

    .line 1
    iget-object v0, p0, Lje6;->a:Lhp4;

    .line 2
    .line 3
    iget-object p0, p0, Lje6;->b:Ljava/util/Comparator;

    .line 4
    .line 5
    invoke-interface {v0, p2, p1, p0}, Lhp4;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lhp4;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x0

    .line 10
    check-cast p1, Ljp4;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-virtual {p1, v0, p2, p2}, Ljp4;->e(ILhp4;Lhp4;)Ljp4;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lje6;

    .line 18
    .line 19
    invoke-direct {p2, p1, p0}, Lje6;-><init>(Lhp4;Ljava/util/Comparator;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method

.method public final o(Ljava/lang/Object;)Loa4;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lje6;->c(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lje6;->a:Lhp4;

    .line 9
    .line 10
    iget-object p0, p0, Lje6;->b:Ljava/util/Comparator;

    .line 11
    .line 12
    invoke-interface {v0, p1, p0}, Lhp4;->f(Ljava/lang/Object;Ljava/util/Comparator;)Lhp4;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x2

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {p1, v0, v1, v1}, Lhp4;->m(ILjp4;Ljp4;)Lhp4;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lje6;

    .line 23
    .line 24
    invoke-direct {v0, p1, p0}, Lje6;-><init>(Lhp4;Ljava/util/Comparator;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final p(Ljava/lang/Object;)Lhp4;
    .locals 3

    .line 1
    iget-object v0, p0, Lje6;->a:Lhp4;

    .line 2
    .line 3
    :goto_0
    invoke-interface {v0}, Lhp4;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lje6;->b:Ljava/util/Comparator;

    .line 10
    .line 11
    invoke-interface {v0}, Lhp4;->getKey()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-gez v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Lhp4;->b()Lhp4;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-nez v1, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    invoke-interface {v0}, Lhp4;->r()Lhp4;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lje6;->a:Lhp4;

    .line 2
    .line 3
    invoke-interface {p0}, Lhp4;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
