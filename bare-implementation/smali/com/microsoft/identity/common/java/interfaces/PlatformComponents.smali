.class public final Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/interfaces/IPopManagerSupplier;


# instance fields
.field private final mAuthorizationStrategyFactory:Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;

.field private final mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

.field private final mPlatformUtil:Lcom/microsoft/identity/common/java/util/IPlatformUtil;

.field private final mPopManagerLoader:Lcom/microsoft/identity/common/java/interfaces/IPopManagerSupplier;

.field private final mStateGenerator:Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;

.field private final mStorageSupplier:Lcom/microsoft/identity/common/components/AndroidStorageSupplier;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->access$000(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    invoke-static {p1}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->access$100(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/internal/platform/AndroidBroadcaster;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    invoke-static {p1}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->access$200(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/java/interfaces/IPopManagerSupplier;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->mPopManagerLoader:Lcom/microsoft/identity/common/java/interfaces/IPopManagerSupplier;

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-static {p1}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->access$300(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/components/AndroidStorageSupplier;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->mStorageSupplier:Lcom/microsoft/identity/common/components/AndroidStorageSupplier;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-static {p1}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->access$400(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->mAuthorizationStrategyFactory:Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->access$500(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->mStateGenerator:Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->access$600(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/java/util/IPlatformUtil;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->mPlatformUtil:Lcom/microsoft/identity/common/java/util/IPlatformUtil;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-static {p1}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->access$700(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/java/net/DefaultHttpClientWrapper;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    invoke-static {p1}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->access$800(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;)Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    const-string p0, "mBrowserSelector is marked non-null but is null"

    .line 69
    .line 70
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :cond_1
    const-string p0, "mHttpClientWrapper is marked non-null but is null"

    .line 75
    .line 76
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_2
    const-string p0, "mPlatformUtil is marked non-null but is null"

    .line 81
    .line 82
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v1

    .line 86
    :cond_3
    const-string p0, "mStorageSupplier is marked non-null but is null"

    .line 87
    .line 88
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1

    .line 92
    :cond_4
    const-string p0, "mPopManagerLoader is marked non-null but is null"

    .line 93
    .line 94
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v1

    .line 98
    :cond_5
    const-string p0, "mBroadcaster is marked non-null but is null"

    .line 99
    .line 100
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v1

    .line 104
    :cond_6
    const-string p0, "mClockSkewManager is marked non-null but is null"

    .line 105
    .line 106
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v1
.end method

.method public static builder()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilderImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final getAuthorizationStrategyFactory()Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->mAuthorizationStrategyFactory:Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClockSkewManager()Lcom/microsoft/identity/common/java/util/IClockSkewManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDefaultDevicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->mPopManagerLoader:Lcom/microsoft/identity/common/java/interfaces/IPopManagerSupplier;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/microsoft/identity/common/java/interfaces/IPopManagerSupplier;->getDefaultDevicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getDevicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->mPopManagerLoader:Lcom/microsoft/identity/common/java/interfaces/IPopManagerSupplier;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/microsoft/identity/common/java/interfaces/IPopManagerSupplier;->getDevicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getPlatformUtil()Lcom/microsoft/identity/common/java/util/IPlatformUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->mPlatformUtil:Lcom/microsoft/identity/common/java/util/IPlatformUtil;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStateGenerator()Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->mStateGenerator:Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStorageSupplier()Lcom/microsoft/identity/common/components/AndroidStorageSupplier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->mStorageSupplier:Lcom/microsoft/identity/common/components/AndroidStorageSupplier;

    .line 2
    .line 3
    return-object p0
.end method
