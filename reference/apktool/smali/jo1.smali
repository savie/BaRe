.class public interface abstract Ljo1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public a(Lnc6;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljo1;->d(Lnc6;)Lga6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lga6;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/util/Set;

    .line 10
    .line 11
    return-object p0
.end method

.method public b(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lnc6;->a(Ljava/lang/Class;)Lnc6;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public c(Ljava/lang/Class;)Lga6;
    .locals 0

    .line 1
    invoke-static {p1}, Lnc6;->a(Ljava/lang/Class;)Lnc6;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Ljo1;->f(Lnc6;)Lga6;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public abstract d(Lnc6;)Lga6;
.end method

.method public abstract e(Lnc6;)Llu5;
.end method

.method public abstract f(Lnc6;)Lga6;
.end method

.method public g(Lnc6;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljo1;->f(Lnc6;)Lga6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Lga6;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public h(Ljava/lang/Class;)Llu5;
    .locals 0

    .line 1
    invoke-static {p1}, Lnc6;->a(Ljava/lang/Class;)Lnc6;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Ljo1;->e(Lnc6;)Llu5;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
