.class public abstract Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;",
        "B:",
        "Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder<",
        "TC;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private authorizationStrategyFactory:Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;

.field private broadcaster:Lcom/microsoft/identity/common/internal/platform/AndroidBroadcaster;

.field private browserSelector:Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

.field private clockSkewManager:Lcom/microsoft/identity/common/components/AndroidClockSkewManager;

.field private httpClientWrapper:Lcom/microsoft/identity/common/java/net/DefaultHttpClientWrapper;

.field private platformUtil:Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;

.field private popManagerLoader:Lcom/microsoft/identity/common/components/AndroidPopManagerSupplier;

.field private stateGenerator:Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;

.field private storageSupplier:Lcom/microsoft/identity/common/components/AndroidStorageSupplier;


# direct methods
.method public static synthetic access$000(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/java/util/IClockSkewManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->clockSkewManager:Lcom/microsoft/identity/common/components/AndroidClockSkewManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/internal/platform/AndroidBroadcaster;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->broadcaster:Lcom/microsoft/identity/common/internal/platform/AndroidBroadcaster;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/java/interfaces/IPopManagerSupplier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->popManagerLoader:Lcom/microsoft/identity/common/components/AndroidPopManagerSupplier;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/components/AndroidStorageSupplier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->storageSupplier:Lcom/microsoft/identity/common/components/AndroidStorageSupplier;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->authorizationStrategyFactory:Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->stateGenerator:Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/java/util/IPlatformUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->platformUtil:Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/java/net/DefaultHttpClientWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->httpClientWrapper:Lcom/microsoft/identity/common/java/net/DefaultHttpClientWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->browserSelector:Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final authorizationStrategyFactory(Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->authorizationStrategyFactory:Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final broadcaster(Lcom/microsoft/identity/common/internal/platform/AndroidBroadcaster;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/platform/AndroidBroadcaster;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->broadcaster:Lcom/microsoft/identity/common/internal/platform/AndroidBroadcaster;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final browserSelector(Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->browserSelector:Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

    .line 2
    .line 3
    return-void
.end method

.method public abstract build()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public final clockSkewManager(Lcom/microsoft/identity/common/components/AndroidClockSkewManager;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->clockSkewManager:Lcom/microsoft/identity/common/components/AndroidClockSkewManager;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final httpClientWrapper(Lcom/microsoft/identity/common/java/net/DefaultHttpClientWrapper;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/net/DefaultHttpClientWrapper;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->httpClientWrapper:Lcom/microsoft/identity/common/java/net/DefaultHttpClientWrapper;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final platformUtil(Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->platformUtil:Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final popManagerLoader(Lcom/microsoft/identity/common/components/AndroidPopManagerSupplier;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->popManagerLoader:Lcom/microsoft/identity/common/components/AndroidPopManagerSupplier;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final stateGenerator(Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->stateGenerator:Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;

    .line 2
    .line 3
    return-void
.end method

.method public final storageSupplier(Lcom/microsoft/identity/common/components/AndroidStorageSupplier;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/components/AndroidStorageSupplier;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->storageSupplier:Lcom/microsoft/identity/common/components/AndroidStorageSupplier;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PlatformComponents.PlatformComponentsBuilder(clockSkewManager="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->clockSkewManager:Lcom/microsoft/identity/common/components/AndroidClockSkewManager;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", broadcaster="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->broadcaster:Lcom/microsoft/identity/common/internal/platform/AndroidBroadcaster;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", popManagerLoader="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->popManagerLoader:Lcom/microsoft/identity/common/components/AndroidPopManagerSupplier;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", storageSupplier="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->storageSupplier:Lcom/microsoft/identity/common/components/AndroidStorageSupplier;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", authorizationStrategyFactory="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->authorizationStrategyFactory:Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", stateGenerator="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->stateGenerator:Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", platformUtil="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->platformUtil:Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", httpClientWrapper="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->httpClientWrapper:Lcom/microsoft/identity/common/java/net/DefaultHttpClientWrapper;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", browserSelector="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->browserSelector:Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p0, ")"

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method
