.class public Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mAuthIntent:Landroid/content/Intent;

.field private mBrowserFlowStarted:Z

.field private mResponseReceived:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;->mBrowserFlowStarted:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;->mResponseReceived:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final completeAuthorizationInBrowserFlow(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "CurrentTaskBrowserAuthorizationFragment:completeAuthorizationInBrowserFlow"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "Received redirect from customTab/browser."

    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getResultCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ldj7;->A(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getAuthorizationFinalUri()Ljava/net/URI;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/UrlUtil;->getParameters(Ljava/net/URI;)Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "app_link"

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/String;

    .line 48
    .line 49
    new-instance v1, Landroid/content/Intent;

    .line 50
    .line 51
    const-string v2, "android.intent.action.VIEW"

    .line 52
    .line 53
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroidx/fragment/app/o;->startActivity(Landroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;

    .line 65
    .line 66
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;-><init>()V

    .line 67
    .line 68
    .line 69
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "Microsoft.MSAL.ui_complete"

    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;

    .line 85
    .line 86
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;->isUserCancelled()V

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->sendResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->finish()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final extractState$1(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->extractState$1(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.microsoft.identity.auth.intent"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/content/Intent;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;->mAuthIntent:Landroid/content/Intent;

    .line 13
    .line 14
    const-string v0, "browserFlowStarted"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;->mBrowserFlowStarted:Z

    .line 22
    .line 23
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "RESPONSE"

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;->mResponseReceived:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/o;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;->mResponseReceived:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->finish()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;->mBrowserFlowStarted:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;->mBrowserFlowStarted:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;->mAuthIntent:Landroid/content/Intent;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->startActivity(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 27
    .line 28
    const-string v1, "Authorization intent is null."

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->sendResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->finish()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->cancelAuthorization(Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "com.microsoft.identity.auth.intent"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;->mAuthIntent:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "browserFlowStarted"

    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;->mBrowserFlowStarted:Z

    .line 11
    .line 12
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
