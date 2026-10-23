.class public final Lmv4;
.super Lxg7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final b()Ljava/util/Collection;
    .locals 0

    .line 1
    const-string p0, "a"

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final d(Lj75;Ldi4;Lq64;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p3}, Lq64;->a()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p3, "href"

    .line 6
    .line 7
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    iget-object p3, p1, Lj75;->k:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p3, Lky3;

    .line 22
    .line 23
    const-class v0, Llv4;

    .line 24
    .line 25
    invoke-virtual {p3, v0}, Lky3;->a(Ljava/lang/Class;)Lsj7;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    sget-object v0, Llg7;->e:Lq86;

    .line 32
    .line 33
    invoke-virtual {v0, p2, p0}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p3, p1, p2}, Lsj7;->a(Lj75;Ldi4;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method
