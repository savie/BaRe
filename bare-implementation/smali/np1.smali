.class public final Lnp1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final b:Lnp1;


# instance fields
.field public final a:Lua4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnp1;

    .line 2
    .line 3
    new-instance v1, Lua4;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lua4;-><init>(Ljava/lang/Comparable;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lnp1;-><init>(Lua4;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lnp1;->b:Lnp1;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lua4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnp1;->a:Lua4;

    .line 5
    .line 6
    return-void
.end method

.method public static f(Lgy5;Lua4;Lqn5;)Lqn5;
    .locals 4

    .line 1
    iget-object v0, p1, Lua4;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lqn5;

    .line 6
    .line 7
    invoke-interface {p2, p0, v0}, Lqn5;->h0(Lgy5;Lqn5;)Lqn5;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p1, p1, Lua4;->b:Loa4;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sget-object v2, Lm61;->d:Lm61;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lua4;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lm61;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget-object v0, v3, Lua4;->a:Ljava/lang/Object;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    :goto_1
    const-string v1, "Priority writes must always be leaf nodes"

    .line 59
    .line 60
    invoke-static {v1, v0}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    iget-object v0, v3, Lua4;->a:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lqn5;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, v1}, Lgy5;->d(Lm61;)Lgy5;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1, v3, p2}, Lnp1;->f(Lgy5;Lua4;Lqn5;)Lqn5;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-interface {p2, p0}, Lqn5;->U(Lgy5;)Lqn5;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1}, Lqn5;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    invoke-virtual {p0, v2}, Lgy5;->d(Lm61;)Lgy5;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-interface {p2, p0, v0}, Lqn5;->h0(Lgy5;Lqn5;)Lqn5;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :cond_4
    return-object p2
.end method

.method public static i(Ljava/util/HashMap;)Lnp1;
    .locals 4

    .line 1
    sget-object v0, Lua4;->d:Lua4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    new-instance v2, Lua4;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lqn5;

    .line 30
    .line 31
    invoke-direct {v2, v3}, Lua4;-><init>(Ljava/lang/Comparable;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lgy5;

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lua4;->k(Lgy5;Lua4;)Lua4;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Lnp1;

    .line 46
    .line 47
    invoke-direct {p0, v0}, Lnp1;-><init>(Lua4;)V

    .line 48
    .line 49
    .line 50
    return-object p0
.end method


# virtual methods
.method public final c(Lgy5;Lqn5;)Lnp1;
    .locals 5

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
    new-instance p0, Lnp1;

    .line 8
    .line 9
    new-instance p1, Lua4;

    .line 10
    .line 11
    invoke-direct {p1, p2}, Lua4;-><init>(Ljava/lang/Comparable;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lnp1;-><init>(Lua4;)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object v0, Lq36;->u:Lhx0;

    .line 19
    .line 20
    iget-object v1, p0, Lnp1;->a:Lua4;

    .line 21
    .line 22
    invoke-virtual {v1, p1, v0}, Lua4;->c(Lgy5;Lq36;)Lgy5;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-static {v0, p1}, Lgy5;->o(Lgy5;Lgy5;)Lgy5;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, v0}, Lua4;->e(Lgy5;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lqn5;

    .line 37
    .line 38
    invoke-virtual {p1}, Lgy5;->i()Lm61;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    sget-object v4, Lm61;->d:Lm61;

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Lgy5;->l()Lgy5;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v2, v3}, Lqn5;->U(Lgy5;)Lqn5;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-interface {v3}, Lqn5;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_1
    invoke-interface {v2, p1, p2}, Lqn5;->h0(Lgy5;Lqn5;)Lqn5;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    new-instance p1, Lnp1;

    .line 72
    .line 73
    invoke-virtual {v1, v0, p0}, Lua4;->i(Lgy5;Ljava/lang/Object;)Lua4;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-direct {p1, p0}, Lnp1;-><init>(Lua4;)V

    .line 78
    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_2
    new-instance p0, Lua4;

    .line 82
    .line 83
    invoke-direct {p0, p2}, Lua4;-><init>(Ljava/lang/Comparable;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p1, p0}, Lua4;->k(Lgy5;Lua4;)Lua4;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    new-instance p1, Lnp1;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Lnp1;-><init>(Lua4;)V

    .line 93
    .line 94
    .line 95
    return-object p1
.end method

.method public final d(Lgy5;Lnp1;)Lnp1;
    .locals 2

    .line 1
    iget-object p2, p2, Lnp1;->a:Lua4;

    .line 2
    .line 3
    new-instance v0, Lrb;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-direct {v0, p1, v1}, Lrb;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object p1, Lgy5;->d:Lgy5;

    .line 14
    .line 15
    invoke-virtual {p2, p1, v0, p0}, Lua4;->d(Lgy5;Lta4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lnp1;

    .line 20
    .line 21
    return-object p0
.end method

.method public final e(Lqn5;)Lqn5;
    .locals 1

    .line 1
    sget-object v0, Lgy5;->d:Lgy5;

    .line 2
    .line 3
    iget-object p0, p0, Lnp1;->a:Lua4;

    .line 4
    .line 5
    invoke-static {v0, p0, p1}, Lnp1;->f(Lgy5;Lua4;Lqn5;)Lqn5;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lnp1;

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    check-cast p1, Lnp1;

    .line 17
    .line 18
    invoke-virtual {p1}, Lnp1;->l()Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lnp1;->l()Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p1, p0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final g(Lgy5;)Lnp1;
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
    invoke-virtual {p0, p1}, Lnp1;->k(Lgy5;)Lqn5;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance p0, Lnp1;

    .line 15
    .line 16
    new-instance p1, Lua4;

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lua4;-><init>(Ljava/lang/Comparable;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lnp1;-><init>(Lua4;)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance v0, Lnp1;

    .line 26
    .line 27
    iget-object p0, p0, Lnp1;->a:Lua4;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lua4;->l(Lgy5;)Lua4;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Lnp1;-><init>(Lua4;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnp1;->l()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lnp1;->a:Lua4;

    .line 2
    .line 3
    invoke-virtual {p0}, Lua4;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final k(Lgy5;)Lqn5;
    .locals 1

    .line 1
    sget-object v0, Lq36;->u:Lhx0;

    .line 2
    .line 3
    iget-object p0, p0, Lnp1;->a:Lua4;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lua4;->c(Lgy5;Lq36;)Lgy5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lua4;->e(Lgy5;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lqn5;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lgy5;->o(Lgy5;Lgy5;)Lgy5;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p0, p1}, Lqn5;->U(Lgy5;)Lqn5;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public final l()Ljava/util/HashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lmp1;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lmp1;-><init>(Ljava/util/HashMap;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lnp1;->a:Lua4;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v2, Lgy5;->d:Lgy5;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p0, v2, v1, v3}, Lua4;->d(Lgy5;Lta4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CompoundWrite{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lnp1;->l()Ljava/util/HashMap;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, "}"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
