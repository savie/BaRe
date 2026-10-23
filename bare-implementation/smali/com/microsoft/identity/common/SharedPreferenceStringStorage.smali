.class public final Lcom/microsoft/identity/common/SharedPreferenceStringStorage;
.super Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->mManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "name is marked non-null but is null"

    .line 11
    .line 12
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final getAllFilteredByKey(Lcom/microsoft/identity/common/java/util/ported/Predicate;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/util/ported/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->mManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->getAllFilteredByKey(Lcom/microsoft/identity/common/java/util/ported/Predicate;)Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->mManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
