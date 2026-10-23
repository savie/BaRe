.class public final Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;
.super Lokhttp3/internal/publicsuffix/BasePublicSuffixList;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/publicsuffix/AssetPublicSuffixList$Companion;
    }
.end annotation


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "PublicSuffixDatabase.list"

    .line 5
    .line 6
    iput-object v0, p0, Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;->f:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()Lij7;
    .locals 2

    .line 1
    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 2
    .line 3
    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast v0, Lokhttp3/internal/platform/ContextAwarePlatform;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lokhttp3/internal/platform/ContextAwarePlatform;->b()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v0, v1

    .line 20
    :goto_1
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object v0, v1

    .line 28
    :goto_2
    if-nez v0, :cond_4

    .line 29
    .line 30
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 31
    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    const-string p0, "Platform applicationContext not initialized. Possibly running Android unit test without Robolectric. Android tests should run with Robolectric and call OkHttp.initialize before test"

    .line 35
    .line 36
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_3
    const-string p0, "Platform applicationContext not initialized. Startup Initializer possibly disabled, call OkHttp.initialize before test."

    .line 41
    .line 42
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_4
    iget-object p0, p0, Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;->f:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Ly13;->G(Ljava/io/InputStream;)Lrc4;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method
