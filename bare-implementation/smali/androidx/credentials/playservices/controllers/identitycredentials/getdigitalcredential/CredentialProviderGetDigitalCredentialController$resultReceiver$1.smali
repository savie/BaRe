.class public final Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController$resultReceiver$1;
.super Landroid/os/ResultReceiver;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;


# direct methods
.method public constructor <init>(Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;

    .line 5
    .line 6
    new-instance v2, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController$resultReceiver$1$onReceiveResult$1;

    .line 7
    .line 8
    sget-object v1, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController$resultReceiver$1$onReceiveResult$1;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;->getExecutor()Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;->getCallback()Lt22;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;

    .line 26
    .line 27
    invoke-static {v1}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;->access$getCancellationSignal$p(Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;)Landroid/os/CancellationSignal;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    move-object v1, p2

    .line 32
    invoke-static/range {v0 .. v5}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;->access$maybeReportErrorFromResultReceiver(Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;Landroid/os/Bundle;Lqt3;Ljava/util/concurrent/Executor;Lt22;Landroid/os/CancellationSignal;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    sget-object v0, Landroidx/credentials/playservices/controllers/ResponseUtils;->Companion:Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;

    .line 40
    .line 41
    const-string p2, "ACTIVITY_REQUEST_CODE"

    .line 42
    .line 43
    invoke-virtual {v1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    const-string v2, "RESULT_DATA"

    .line 48
    .line 49
    const-class v3, Landroid/content/Intent;

    .line 50
    .line 51
    invoke-static {v1, v2, v3}, Lxx3;->j(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    move-object v3, v1

    .line 56
    check-cast v3, Landroid/content/Intent;

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;->getExecutor()Ljava/util/concurrent/Executor;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;->getCallback()Lt22;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;

    .line 71
    .line 72
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;->access$getCancellationSignal$p(Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;)Landroid/os/CancellationSignal;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    move v2, p1

    .line 77
    move v1, p2

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse(IILandroid/content/Intent;Ljava/util/concurrent/Executor;Lt22;Landroid/os/CancellationSignal;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
