.class public final Lcom/microsoft/identity/common/java/util/ported/PropertyBag;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mMap:Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->mMap:Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->mMap:Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    :try_start_0
    check-cast p0, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :catch_0
    return-object v0

    .line 17
    :cond_1
    const-string p0, "name is marked non-null but is null"

    .line 18
    .line 19
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final getOrDefault(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->mMap:Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-object p2

    .line 10
    :cond_0
    :try_start_0
    check-cast p0, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :catch_0
    return-object p2
.end method

.method public final keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->mMap:Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final put(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->mMap:Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/microsoft/identity/common/java/util/ported/InMemoryStorage;->put(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "name is marked non-null but is null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
