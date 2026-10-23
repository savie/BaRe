.class public final Lb50;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpi4;


# virtual methods
.method public final a(Ljava/lang/reflect/Type;Ljava/util/Set;Lnh5;)Lqi4;
    .locals 1

    .line 1
    instance-of p0, p1, Ljava/lang/reflect/GenericArrayType;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    instance-of p0, p1, Ljava/lang/Class;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    check-cast p1, Ljava/lang/Class;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object p0, v0

    .line 25
    :goto_0
    if-nez p0, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    :goto_1
    return-object v0

    .line 35
    :cond_3
    invoke-static {p0}, Lwx3;->l(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object p2, Lyh8;->a:Ljava/util/Set;

    .line 40
    .line 41
    invoke-virtual {p3, p0, p2, v0}, Lnh5;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lqi4;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-instance p2, Lc50;

    .line 46
    .line 47
    invoke-direct {p2, p1, p0}, Lc50;-><init>(Ljava/lang/Class;Lqi4;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lqi4;->c()Lpp5;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
