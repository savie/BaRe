.class public final Lua4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final c:Lr50;

.field public static final d:Lua4;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Loa4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lr50;

    .line 2
    .line 3
    sget-object v1, Lcl7;->b:Lcl7;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lr50;-><init>(Ljava/util/Comparator;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lua4;->c:Lr50;

    .line 9
    .line 10
    new-instance v1, Lua4;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v2, v0}, Lua4;-><init>(Ljava/lang/Object;Loa4;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lua4;->d:Lua4;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Comparable;)V
    .locals 1

    .line 9
    sget-object v0, Lua4;->c:Lr50;

    invoke-direct {p0, p1, v0}, Lua4;-><init>(Ljava/lang/Object;Loa4;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Loa4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lua4;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lua4;->b:Loa4;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Lgy5;Lq36;)Lgy5;
    .locals 1

    .line 1
    iget-object v0, p0, Lua4;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p2, v0}, Lq36;->a(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lgy5;->d:Lgy5;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lgy5;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p1}, Lgy5;->k()Lm61;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object p0, p0, Lua4;->b:Loa4;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Loa4;->d(Lm61;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lua4;

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lgy5;->p()Lgy5;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1, p2}, Lua4;->c(Lgy5;Lq36;)Lgy5;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    new-instance p1, Lgy5;

    .line 46
    .line 47
    filled-new-array {v0}, [Lm61;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {p1, p2}, Lgy5;-><init>([Lm61;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p0}, Lgy5;->e(Lgy5;)Lgy5;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 60
    return-object p0
.end method

.method public final d(Lgy5;Lta4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lua4;->b:Loa4;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/util/Map$Entry;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lua4;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lm61;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lgy5;->d(Lm61;)Lgy5;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v2, v1, p2, p3}, Lua4;->d(Lgy5;Lta4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Lua4;->a:Ljava/lang/Object;

    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    invoke-interface {p2, p1, p0, p3}, Lta4;->g(Lgy5;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    return-object p3
.end method

.method public final e(Lgy5;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lgy5;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lua4;->a:Ljava/lang/Object;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lgy5;->k()Lm61;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lua4;->b:Loa4;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Loa4;->d(Lm61;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lua4;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lgy5;->p()Lgy5;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lua4;->e(Lgy5;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    const-class v2, Lua4;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    check-cast p1, Lua4;

    .line 18
    .line 19
    iget-object v2, p1, Lua4;->b:Loa4;

    .line 20
    .line 21
    iget-object v3, p0, Lua4;->b:Loa4;

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Loa4;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    if-eqz v2, :cond_3

    .line 33
    .line 34
    :goto_0
    return v1

    .line 35
    :cond_3
    iget-object p1, p1, Lua4;->a:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object p0, p0, Lua4;->a:Ljava/lang/Object;

    .line 38
    .line 39
    if-eqz p0, :cond_4

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_5

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    if-eqz p1, :cond_5

    .line 49
    .line 50
    :goto_1
    return v1

    .line 51
    :cond_5
    return v0

    .line 52
    :cond_6
    :goto_2
    return v1
.end method

.method public final f(Lm61;)Lua4;
    .locals 0

    .line 1
    iget-object p0, p0, Lua4;->b:Loa4;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Loa4;->d(Lm61;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lua4;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lua4;->d:Lua4;

    .line 13
    .line 14
    return-object p0
.end method

.method public final g(Lgy5;)Lua4;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lgy5;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lua4;->b:Loa4;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1}, Loa4;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance p0, Lua4;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-direct {p0, p1, v1}, Lua4;-><init>(Ljava/lang/Object;Loa4;)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lgy5;->k()Lm61;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Loa4;->d(Lm61;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lua4;

    .line 32
    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    invoke-virtual {p1}, Lgy5;->p()Lgy5;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v2, p1}, Lua4;->g(Lgy5;)Lua4;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lua4;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Loa4;->o(Ljava/lang/Object;)Loa4;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v1, p1, v0}, Loa4;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Loa4;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :goto_0
    iget-object p0, p0, Lua4;->a:Ljava/lang/Object;

    .line 59
    .line 60
    if-nez p0, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1}, Loa4;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    :goto_1
    sget-object p0, Lua4;->d:Lua4;

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_3
    new-instance v0, Lua4;

    .line 72
    .line 73
    invoke-direct {v0, p0, p1}, Lua4;-><init>(Ljava/lang/Object;Loa4;)V

    .line 74
    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_4
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lua4;->a:Ljava/lang/Object;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object p0, p0, Lua4;->b:Loa4;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Loa4;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :cond_1
    add-int/2addr v1, v0

    .line 23
    return v1
.end method

.method public final i(Lgy5;Ljava/lang/Object;)Lua4;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lgy5;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lua4;->b:Loa4;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Lua4;

    .line 10
    .line 11
    invoke-direct {p0, p2, v1}, Lua4;-><init>(Ljava/lang/Object;Loa4;)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lgy5;->k()Lm61;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Loa4;->d(Lm61;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lua4;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    sget-object v2, Lua4;->d:Lua4;

    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Lgy5;->p()Lgy5;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v2, p1, p2}, Lua4;->i(Lgy5;Ljava/lang/Object;)Lua4;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1, p1, v0}, Loa4;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Loa4;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance p2, Lua4;

    .line 42
    .line 43
    iget-object p0, p0, Lua4;->a:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-direct {p2, p0, p1}, Lua4;-><init>(Ljava/lang/Object;Loa4;)V

    .line 46
    .line 47
    .line 48
    return-object p2
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lua4;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lua4;->b:Loa4;

    .line 6
    .line 7
    invoke-virtual {p0}, Loa4;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcw2;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcw2;-><init>(Ljava/util/ArrayList;)V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lgy5;->d:Lgy5;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v2, v1, v3}, Lua4;->d(Lgy5;Lta4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final k(Lgy5;Lua4;)Lua4;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lgy5;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    invoke-virtual {p1}, Lgy5;->k()Lm61;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lua4;->b:Loa4;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Loa4;->d(Lm61;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lua4;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    sget-object v2, Lua4;->d:Lua4;

    .line 23
    .line 24
    :cond_1
    invoke-virtual {p1}, Lgy5;->p()Lgy5;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v2, p1, p2}, Lua4;->k(Lgy5;Lua4;)Lua4;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lua4;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Loa4;->o(Ljava/lang/Object;)Loa4;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v1, p1, v0}, Loa4;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Loa4;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    new-instance p2, Lua4;

    .line 48
    .line 49
    iget-object p0, p0, Lua4;->a:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-direct {p2, p0, p1}, Lua4;-><init>(Ljava/lang/Object;Loa4;)V

    .line 52
    .line 53
    .line 54
    return-object p2
.end method

.method public final l(Lgy5;)Lua4;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lgy5;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lgy5;->k()Lm61;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p0, p0, Lua4;->b:Loa4;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Loa4;->d(Lm61;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lua4;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lgy5;->p()Lgy5;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lua4;->l(Lgy5;)Lua4;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    sget-object p0, Lua4;->d:Lua4;

    .line 32
    .line 33
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ImmutableTree { value="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lua4;->a:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", children={"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lua4;->b:Loa4;

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Map$Entry;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lm61;

    .line 41
    .line 42
    iget-object v2, v2, Lm61;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "="

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-string p0, "} }"

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method
