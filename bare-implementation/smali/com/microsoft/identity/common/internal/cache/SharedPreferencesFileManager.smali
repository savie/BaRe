.class public final Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic a:I

.field private static final objectCache:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private final mEncryptionManager:Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/high16 v1, 0x3f400000    # 0.75f

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/16 v3, 0x10

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->objectCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SharedPreferencesFileManager"

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 9
    .line 10
    const-string v1, "Init: "

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 17
    .line 18
    const-string v1, "Init with storage helper:  SharedPreferencesFileManager"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    new-instance p1, Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;

    .line 33
    .line 34
    invoke-direct {p1, p3}, Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;-><init>(Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->mEncryptionManager:Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->mEncryptionManager:Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;)Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->mEncryptionManager:Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;)Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;
    .locals 3

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "/0/"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    const-string v1, "clear"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->objectCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    new-instance v2, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 50
    .line 51
    invoke-direct {v2, p0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 59
    .line 60
    if-nez p0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 67
    .line 68
    :cond_1
    return-object p0

    .line 69
    :cond_2
    return-object v2
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final getAll()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->mEncryptionManager:Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;

    .line 8
    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v3}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    invoke-static {v3}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_0

    .line 53
    .line 54
    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 59
    .line 60
    const-string v2, "SharedPreferencesFileManager:getAll"

    .line 61
    .line 62
    const-string v3, "Failed to decrypt value"

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static {v2, v3, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-object v0
.end method

.method public final getAllFilteredByKey(Lcom/microsoft/identity/common/java/util/ported/Predicate;)Ljava/util/Iterator;
    .locals 2
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
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0, p1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager$1;-><init>(Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;Ljava/util/Map;Lcom/microsoft/identity/common/java/util/ported/Predicate;)V

    .line 10
    .line 11
    .line 12
    return-object v1
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v2, "SharedPreferencesFileManager:getString"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 17
    .line 18
    const-string p0, "Data associated to the given key is null or empty"

    .line 19
    .line 20
    invoke-static {v2, p0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->mEncryptionManager:Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;

    .line 25
    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object p0

    .line 34
    :catch_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 35
    .line 36
    const-string p0, "Failed to decrypt value"

    .line 37
    .line 38
    invoke-static {v2, p0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    return-object v1
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->mEncryptionManager:Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 24
    .line 25
    const-string p0, "SharedPreferencesFileManager:putString"

    .line 26
    .line 27
    const-string p2, "Failed to store encrypted value"

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {p0, p2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    move-object p0, v1

    .line 34
    :goto_0
    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    :goto_1
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "SharedPreferencesFileManager:remove"

    .line 4
    .line 5
    const-string v1, "Removing cache key"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    .line 22
    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Removed cache key ["

    .line 26
    .line 27
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, "]"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
