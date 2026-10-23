.class public final Ln65;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpi4;


# virtual methods
.method public final a(Ljava/lang/reflect/Type;Ljava/util/Set;Lnh5;)Lqi4;
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Lwx3;->l(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-class v0, Ljava/util/Map;

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    :goto_0
    return-object p2

    .line 18
    :cond_1
    const-class v1, Ljava/util/Properties;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-ne p1, v1, :cond_2

    .line 24
    .line 25
    new-array p0, v2, [Ljava/lang/reflect/Type;

    .line 26
    .line 27
    const-class p1, Ljava/lang/String;

    .line 28
    .line 29
    aput-object p1, p0, v4

    .line 30
    .line 31
    aput-object p1, p0, v3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    invoke-static {p1, p0, v0}, Lyh8;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p0, p2, v0}, Lyh8;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/LinkedHashSet;)Ljava/lang/reflect/Type;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    new-array p0, v2, [Ljava/lang/reflect/Type;

    .line 65
    .line 66
    const-class p1, Ljava/lang/Object;

    .line 67
    .line 68
    aput-object p1, p0, v4

    .line 69
    .line 70
    aput-object p1, p0, v3

    .line 71
    .line 72
    :goto_1
    new-instance p1, Lo65;

    .line 73
    .line 74
    aget-object p2, p0, v4

    .line 75
    .line 76
    aget-object p0, p0, v3

    .line 77
    .line 78
    invoke-direct {p1, p3, p2, p0}, Lo65;-><init>(Lnh5;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lqi4;->c()Lpp5;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_4
    invoke-static {}, Lc6;->b()V

    .line 87
    .line 88
    .line 89
    return-object p2
.end method
