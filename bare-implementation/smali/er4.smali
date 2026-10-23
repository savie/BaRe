.class public final Ler4;
.super Ljava/util/LinkedHashMap;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final a:Lq27;


# direct methods
.method public constructor <init>(Lq27;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ler4;->a:Lq27;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()Ler4;
    .locals 3

    .line 1
    new-instance v0, Ler4;

    .line 2
    .line 3
    iget-object v1, p0, Ler4;->a:Lq27;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ler4;-><init>(Lq27;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ler4;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Luq4;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Luq4;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-object v0
.end method

.method public final e(Lai5;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Ler4;->a:Lq27;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p1, Lai5;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Li87;

    .line 8
    .line 9
    iget-boolean p0, p0, Li87;->b:Z

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    iget-object p1, p1, Lai5;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Li87;

    .line 15
    .line 16
    iget-boolean p1, p1, Li87;->b:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Lq27;->a()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
