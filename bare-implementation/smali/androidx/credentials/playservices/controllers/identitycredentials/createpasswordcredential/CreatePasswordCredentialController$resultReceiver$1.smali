.class public final Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController$resultReceiver$1;
.super Landroid/os/ResultReceiver;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;


# direct methods
.method public constructor <init>(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

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
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 5
    .line 6
    new-instance v2, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController$resultReceiver$1$onReceiveResult$1;

    .line 7
    .line 8
    sget-object v1, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController$resultReceiver$1$onReceiveResult$1;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 14
    .line 15
    invoke-static {v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->access$getExecutor$p(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;)Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    iget-object v4, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 23
    .line 24
    invoke-static {v4}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->access$getCallback$p(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;)Lt22;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 31
    .line 32
    invoke-static {v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->access$getCancellationSignal$p(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;)Landroid/os/CancellationSignal;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    move-object v1, p2

    .line 37
    invoke-static/range {v0 .. v5}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->access$maybeReportErrorFromResultReceiver(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;Landroid/os/Bundle;Lqt3;Ljava/util/concurrent/Executor;Lt22;Landroid/os/CancellationSignal;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 45
    .line 46
    const-string p2, "ACTIVITY_REQUEST_CODE"

    .line 47
    .line 48
    invoke-virtual {v1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const-string v0, "RESULT_DATA"

    .line 53
    .line 54
    const-class v2, Landroid/content/Intent;

    .line 55
    .line 56
    invoke-static {v1, v0, v2}, Lxx3;->j(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/content/Intent;

    .line 61
    .line 62
    invoke-virtual {p0, p2, p1, v0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->handleResponse$credentials_play_services_auth(IILandroid/content/Intent;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    const-string p0, "callback"

    .line 67
    .line 68
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_2
    const-string p0, "executor"

    .line 73
    .line 74
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1
.end method
