.class public final Lfl4;
.super Lqj4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Liw4;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Liw4;

    .line 5
    .line 6
    sget-object v1, Liw4;->p:Lxg;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Liw4;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lfl4;->a:Liw4;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final bridge synthetic c()Lqj4;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfl4;->w()Lfl4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eq p1, p0, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Lfl4;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lfl4;

    .line 8
    .line 9
    iget-object p1, p1, Lfl4;->a:Liw4;

    .line 10
    .line 11
    iget-object p0, p0, Lfl4;->a:Liw4;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lfl4;->a:Liw4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final p(Ljava/lang/String;Lqj4;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Lel4;->a:Lel4;

    .line 4
    .line 5
    :cond_0
    iget-object p0, p0, Lfl4;->a:Liw4;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Liw4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Lel4;->a:Lel4;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lkl4;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lkl4;-><init>(Ljava/lang/Boolean;)V

    .line 9
    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p2}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .line 1
    new-instance v0, Lkl4;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lkl4;-><init>(Ljava/lang/Number;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Lel4;->a:Lel4;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lkl4;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lkl4;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p2}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final w()Lfl4;
    .locals 3

    .line 1
    new-instance v0, Lfl4;

    .line 2
    .line 3
    invoke-direct {v0}, Lfl4;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lfl4;->a:Liw4;

    .line 7
    .line 8
    invoke-virtual {p0}, Liw4;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lew4;

    .line 13
    .line 14
    invoke-virtual {p0}, Lew4;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lqj4;

    .line 41
    .line 42
    invoke-virtual {v1}, Lqj4;->c()Lqj4;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v2, v1}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-object v0
.end method

.method public final x(Ljava/lang/String;)Lqj4;
    .locals 0

    .line 1
    iget-object p0, p0, Lfl4;->a:Liw4;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Liw4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lqj4;

    .line 8
    .line 9
    return-object p0
.end method
