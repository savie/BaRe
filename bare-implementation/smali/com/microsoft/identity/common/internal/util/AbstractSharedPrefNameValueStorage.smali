.class public abstract Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final mManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->mManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
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
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->mManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->getAll()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->mManager:Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->remove(Ljava/lang/String;)V

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
