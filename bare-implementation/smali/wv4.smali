.class public final Lwv4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldo4;


# instance fields
.field public final a:Ldo4;

.field public final b:Lvv4;


# direct methods
.method public constructor <init>(Ldo4;)V
    .locals 2

    .line 1
    sget-object v0, Lhq7;->a:Lhq7;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lwv4;->a:Ldo4;

    .line 7
    .line 8
    new-instance v0, Lvv4;

    .line 9
    .line 10
    sget-object v1, Lhq7;->b:La66;

    .line 11
    .line 12
    invoke-interface {p1}, Ldo4;->d()Lp77;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, v1, p1}, Lvv4;-><init>(Lp77;Lp77;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lwv4;->b:Lvv4;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public a(Lnp7;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    mul-int/lit8 v1, v1, 0x2

    .line 17
    .line 18
    invoke-interface {p0}, Ldo4;->d()Lp77;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p1, v2}, Lnp7;->a(Lp77;)Lnp7;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p0}, Ldo4;->d()Lp77;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p1, v2}, Lnp7;->b(Lp77;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, -0x1

    .line 35
    if-eq v2, v3, :cond_2

    .line 36
    .line 37
    add-int/2addr v2, v1

    .line 38
    move-object v3, v0

    .line 39
    check-cast v3, Ljava/util/Map;

    .line 40
    .line 41
    sget-object v4, Lhq7;->a:Lhq7;

    .line 42
    .line 43
    iget-object v5, p0, Lwv4;->b:Lvv4;

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-virtual {p1, v5, v2, v4, v6}, Lnp7;->i(Lp77;ILdo4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {p1, v5}, Lnp7;->b(Lp77;)I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    add-int/lit8 v8, v2, 0x1

    .line 55
    .line 56
    if-ne v7, v8, :cond_1

    .line 57
    .line 58
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iget-object v8, p0, Lwv4;->a:Ldo4;

    .line 63
    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    invoke-interface {v8}, Ldo4;->d()Lp77;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v2}, Lp77;->e()Lzh8;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    instance-of v2, v2, Ly56;

    .line 75
    .line 76
    if-nez v2, :cond_0

    .line 77
    .line 78
    invoke-static {v3, v4}, Lx65;->p0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {p1, v5, v7, v8, v2}, Lnp7;->i(Lp77;ILdo4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {p1, v5, v7, v8, v6}, Lnp7;->i(Lp77;ILdo4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    :goto_1
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const-string v3, "Value must follow key in a map, index for key: "

    .line 96
    .line 97
    const-string v4, ", returned index for value: "

    .line 98
    .line 99
    invoke-static {v3, v2, v7, v4}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Lf6;->g(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-interface {p0}, Ldo4;->d()Lp77;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p1, p0}, Lnp7;->m(Lp77;)V

    .line 112
    .line 113
    .line 114
    return-object v0
.end method

.method public final b(Lop7;Ljava/lang/Object;)V
    .locals 6

    .line 1
    move-object v0, p2

    .line 2
    check-cast v0, Ljava/util/Map;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lwv4;->b:Lvv4;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lop7;->a(Lp77;)Lop7;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p2, Ljava/util/Map;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    add-int/lit8 v4, v1, 0x1

    .line 54
    .line 55
    sget-object v5, Lhq7;->a:Lhq7;

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, v5, v3}, Lop7;->h(Lp77;ILdo4;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x2

    .line 61
    .line 62
    iget-object v3, p0, Lwv4;->a:Ldo4;

    .line 63
    .line 64
    invoke-virtual {p1, v0, v4, v3, v2}, Lop7;->h(Lp77;ILdo4;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1, v0}, Lop7;->k(Lp77;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final d()Lp77;
    .locals 0

    .line 1
    iget-object p0, p0, Lwv4;->b:Lvv4;

    .line 2
    .line 3
    return-object p0
.end method
