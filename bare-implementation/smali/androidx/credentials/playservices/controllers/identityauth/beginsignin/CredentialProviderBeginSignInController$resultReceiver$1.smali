.class public final Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController$resultReceiver$1;
.super Landroid/os/ResultReceiver;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;


# direct methods
.method public constructor <init>(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

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
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 5
    .line 6
    new-instance v2, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController$resultReceiver$1$onReceiveResult$1;

    .line 7
    .line 8
    sget-object v1, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController$resultReceiver$1$onReceiveResult$1;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->getExecutor()Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->getCallback()Lt22;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 26
    .line 27
    invoke-static {v1}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->access$getCancellationSignal$p(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;)Landroid/os/CancellationSignal;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    move-object v1, p2

    .line 32
    invoke-static/range {v0 .. v5}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->access$maybeReportErrorFromResultReceiver(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;Landroid/os/Bundle;Lqt3;Ljava/util/concurrent/Executor;Lt22;Landroid/os/CancellationSignal;)Z

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
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

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
    const-string v0, "RESULT_DATA"

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/content/Intent;

    .line 54
    .line 55
    invoke-virtual {p0, p2, p1, v0}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->handleResponse$credentials_play_services_auth(IILandroid/content/Intent;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
