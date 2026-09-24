.class public abstract Lq4;
.super Lv4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient d:Ljava/util/AbstractMap;

.field public transient e:I


# direct methods
.method public constructor <init>(Ljava/util/AbstractMap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lq4;->d:Ljava/util/AbstractMap;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lc6;->b()V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lv4;->a:Lt4;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p0, Ly24;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lu4;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lt4;-><init>(Lq4;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lt4;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lt4;-><init>(Lq4;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iput-object v0, p0, Lv4;->a:Lt4;

    .line 21
    .line 22
    :cond_1
    return-object v0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq4;->d:Ljava/util/AbstractMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/util/Collection;

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lq4;->e:I

    .line 32
    .line 33
    return-void
.end method

.method public d()Ld4;
    .locals 2

    .line 1
    new-instance v0, Ld4;

    .line 2
    .line 3
    iget-object v1, p0, Lq4;->d:Ljava/util/AbstractMap;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ld4;-><init>(Lq4;Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public abstract e()Ljava/util/Collection;
.end method

.method public f()Lf4;
    .locals 2

    .line 1
    new-instance v0, Lf4;

    .line 2
    .line 3
    iget-object v1, p0, Lq4;->d:Ljava/util/AbstractMap;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lf4;-><init>(Lq4;Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lq4;->d:Ljava/util/AbstractMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/Collection;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lq4;->e()Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget p2, p0, Lq4;->e:I

    .line 24
    .line 25
    add-int/2addr p2, v3

    .line 26
    iput p2, p0, Lq4;->e:I

    .line 27
    .line 28
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return v3

    .line 32
    :cond_0
    const-string p0, "New Collection violated the Collection spec"

    .line 33
    .line 34
    invoke-static {p0}, Le6;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget p1, p0, Lq4;->e:I

    .line 45
    .line 46
    add-int/2addr p1, v3

    .line 47
    iput p1, p0, Lq4;->e:I

    .line 48
    .line 49
    return v3

    .line 50
    :cond_2
    return v2
.end method

.method public abstract h(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
.end method
