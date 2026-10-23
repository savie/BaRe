.class public final Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;
.super Landroidx/credentials/playservices/controllers/CredentialProviderController;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/credentials/playservices/controllers/CredentialProviderController<",
        "Lq12;",
        "Lh12;",
        "Lj12;",
        "Lk12;",
        "Lc12;",
        ">;"
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController$Companion;

.field private static final TAG:Ljava/lang/String; = "DigitalCredentialClient"


# instance fields
.field public callback:Lt22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt22;"
        }
    .end annotation
.end field

.field private cancellationSignal:Landroid/os/CancellationSignal;

.field private final context:Landroid/content/Context;

.field public executor:Ljava/util/concurrent/Executor;

.field private final resultReceiver:Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController$resultReceiver$1;


# direct methods
.method public static synthetic $r8$lambda$274CEehyqW22xyQS_KeKm1ZXMUE(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lk12;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->handleResponse$lambda$4$0(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lk12;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$6AHM4Ecq_jSoj6uE8tvEtNKfUB4(Lt22;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->invokePlayServices$lambda$2$0$0(Lt22;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$J1htrB2uNdrJnHrX43CVgGEgs7o(Landroid/os/CancellationSignal;Lbt3;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->handleResponse$lambda$0(Landroid/os/CancellationSignal;Lbt3;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$NdEOl-joMLAMc5d7oW9mmtxBZxM(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->handleResponse$lambda$1(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$PPWmakEiZE_x4OzgSZmQ1EKEEZU(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->handleResponse$lambda$3$0(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$RqyeA5QrqFE0W_Iky6IRdlNzPqk(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lk12;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->handleResponse$lambda$4(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lk12;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$YavMLMsRzQU8BMmQVnW8gKLEu38(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->handleResponse$lambda$1$0(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$d65dNeHZ_pvudacsyUobMsQHpDY(Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->invokePlayServices$lambda$2$0(Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$oEITb7BsTfA8aCvvb7LhtES9DOA(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->handleResponse$lambda$2(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$tXDxXNPBCuBi_ksiC9MZKMgirus(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->handleResponse$lambda$3(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$vkKC_qUqVF9-wOBsyy-_S1A6Hoo(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->handleResponse$lambda$2$0(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->Companion:Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController;-><init>(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->context:Landroid/content/Context;

    .line 8
    .line 9
    new-instance p1, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController$resultReceiver$1;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController$resultReceiver$1;-><init>(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Landroid/os/Handler;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->resultReceiver:Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController$resultReceiver$1;

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic access$getCancellationSignal$p(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;)Landroid/os/CancellationSignal;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$maybeReportErrorFromResultReceiver(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Landroid/os/Bundle;Lqt3;Ljava/util/concurrent/Executor;Lt22;Landroid/os/CancellationSignal;)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Landroidx/credentials/playservices/controllers/CredentialProviderController;->maybeReportErrorFromResultReceiver(Landroid/os/Bundle;Lqt3;Ljava/util/concurrent/Executor;Lt22;Landroid/os/CancellationSignal;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic getCallback$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getCancellationSignal$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getExecutor$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getResultReceiver$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static final handleResponse$lambda$0(Landroid/os/CancellationSignal;Lbt3;)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final handleResponse$lambda$1(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)Lbe8;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->getExecutor()Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lzu1;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2, p0, p1}, Lzu1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lbe8;->a:Lbe8;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final handleResponse$lambda$1$0(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->getCallback()Lt22;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Lt22;->onError(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final handleResponse$lambda$2(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;)Lbe8;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->getExecutor()Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, La9;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v1, p0, v2}, La9;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lbe8;->a:Lbe8;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final handleResponse$lambda$2$0(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->getCallback()Lt22;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ll12;

    .line 6
    .line 7
    const-string v1, "No provider data returned."

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ll12;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Lt22;->onError(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final handleResponse$lambda$3(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)Lbe8;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->getExecutor()Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lo12;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2, p0, p1}, Lo12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lbe8;->a:Lbe8;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final handleResponse$lambda$3$0(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->getCallback()Lt22;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ll12;

    .line 8
    .line 9
    const-string v0, "Unexpected configuration error"

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ll12;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {p0, p1}, Lt22;->onError(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final handleResponse$lambda$4(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lk12;)Lbe8;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->getExecutor()Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lxu1;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, v2, p0, p1}, Lxu1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lbe8;->a:Lbe8;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final handleResponse$lambda$4$0(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lk12;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->getCallback()Lt22;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Lt22;->onResult(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final invokePlayServices$lambda$0(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Ld12;)Lbe8;
    .locals 3

    .line 1
    sget-object v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewer$credentials_play_services_auth(Landroid/os/CancellationSignal;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    sget-object v0, Lbe8;->a:Lbe8;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance p0, Landroid/content/Intent;

    .line 13
    .line 14
    iget-object v1, p1, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->context:Landroid/content/Context;

    .line 15
    .line 16
    const-class v2, Landroidx/credentials/playservices/controllers/identitycredentials/IdentityCredentialApiHiddenActivity;

    .line 17
    .line 18
    invoke-direct {p0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    const/high16 v1, 0x10000

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    iget-object v1, p1, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->resultReceiver:Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController$resultReceiver$1;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->toIpcFriendlyResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "RESULT_RECEIVER"

    .line 33
    .line 34
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const-string v1, "EXTRA_FLOW_PENDING_INTENT"

    .line 38
    .line 39
    iget-object p2, p2, Ld12;->a:Landroid/app/PendingIntent;

    .line 40
    .line 41
    invoke-virtual {p0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string p2, "EXTRA_ERROR_NAME"

    .line 45
    .line 46
    const-string v1, "CREATE_UNKNOWN"

    .line 47
    .line 48
    invoke-virtual {p0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->context:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method private static final invokePlayServices$lambda$1(Lmt3;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokePlayServices$lambda$2(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    .line 5
    .line 6
    new-instance v1, Lyi0;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2, p1, p2, p3}, Lyi0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0, v1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final invokePlayServices$lambda$2$0(Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)Lbe8;
    .locals 2

    .line 1
    new-instance v0, Lp12;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1, p2}, Lp12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lbe8;->a:Lbe8;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final invokePlayServices$lambda$2$0$0(Lt22;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    new-instance v0, Ll12;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ll12;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Lt22;->onError(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public convertRequestToPlayServices(Lq12;)Lh12;
    .locals 0

    const/4 p0, 0x0

    .line 14
    throw p0
.end method

.method public synthetic convertRequestToPlayServices(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->convertRequestToPlayServices(Lq12;)Lh12;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {}, Le6;->d()V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public bridge synthetic convertResponseToCredentialManager(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lj12;

    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->convertResponseToCredentialManager(Lj12;)Lk12;

    move-result-object p0

    return-object p0
.end method

.method public convertResponseToCredentialManager(Lj12;)Lk12;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "androidx.credentials.TYPE_DIGITAL_CREDENTIAL"

    .line 5
    .line 6
    iget-object p1, p1, Lj12;->b:Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-static {p1, p0}, Lxx3;->c(Landroid/os/Bundle;Ljava/lang/String;)Lk12;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final getCallback()Lt22;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt22;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->callback:Lt22;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "callback"

    .line 7
    .line 8
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "executor"

    .line 7
    .line 8
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final handleResponse$credentials_play_services_auth(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->getCONTROLLER_REQUEST_CODE$credentials_play_services_auth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string p2, "Returned request code "

    .line 12
    .line 13
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->getCONTROLLER_REQUEST_CODE$credentials_play_services_auth()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, " which  does not match what was given "

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "DigitalCredentialClient"

    .line 36
    .line 37
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    new-instance p1, Lpc1;

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    invoke-direct {p1, v0}, Lpc1;-><init>(I)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lox;

    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    invoke-direct {v0, p0, v1}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 55
    .line 56
    invoke-static {p2, p1, v0, v1}, Landroidx/credentials/playservices/controllers/CredentialProviderController;->maybeReportErrorResultCodeCreate(ILqt3;Lmt3;Landroid/os/CancellationSignal;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    if-nez p3, :cond_2

    .line 64
    .line 65
    sget-object p1, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    .line 66
    .line 67
    iget-object p2, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 68
    .line 69
    new-instance p3, Lck;

    .line 70
    .line 71
    const/16 v0, 0xf

    .line 72
    .line 73
    invoke-direct {p3, p0, v0}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2, p3}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    const-string p1, "androidx.credentials.TYPE_DIGITAL_CREDENTIAL"

    .line 81
    .line 82
    invoke-static {p3, p1}, Lg67;->D(Landroid/content/Intent;Ljava/lang/String;)Lk12;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-nez p1, :cond_3

    .line 87
    .line 88
    invoke-static {p3}, Lg67;->C(Landroid/content/Intent;)Lc12;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget-object p2, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    .line 93
    .line 94
    iget-object p3, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 95
    .line 96
    new-instance v0, Ld11;

    .line 97
    .line 98
    const/4 v1, 0x4

    .line 99
    invoke-direct {v0, v1, p0, p1}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p3, v0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    sget-object p2, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    .line 107
    .line 108
    iget-object p3, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 109
    .line 110
    new-instance v0, Lqf;

    .line 111
    .line 112
    const/4 v1, 0x7

    .line 113
    invoke-direct {v0, v1, p0, p1}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p3, v0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth(Landroid/os/CancellationSignal;Lbt3;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public synthetic invokePlayServices(Ljava/lang/Object;Lt22;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->invokePlayServices(Lq12;Lt22;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Le6;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public invokePlayServices(Lq12;Lt22;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq12;",
            "Lt22;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            ")V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final setCallback(Lt22;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt22;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->callback:Lt22;

    .line 5
    .line 6
    return-void
.end method

.method public final setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->executor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    return-void
.end method
