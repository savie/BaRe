.class public abstract Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;
.super Landroidx/fragment/app/o;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field protected mAuthResultSent:Z

.field private final mCancelRequestReceiver:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;

.field private mInstanceState:Landroid/os/Bundle;

.field private mUrlLoadCounter:I

.field private final mUrlStatusTracker:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/o;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mAuthResultSent:Z

    .line 6
    .line 7
    new-instance v1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$1;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mCancelRequestReceiver:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;

    .line 13
    .line 14
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mUrlStatusTracker:Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    iput v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mUrlLoadCounter:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final cancelAuthorization(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "AuthorizationFragment:cancelAuthorization"

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 7
    .line 8
    const-string p1, "Received Authorization flow cancelled by the user"

    .line 9
    .line 10
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromResultCode(I)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->sendResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "CANCELLED: Authorization cancelled by user."

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->updateLatestUrlStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 28
    .line 29
    const-string p1, "Received Authorization flow cancel request from SDK"

    .line 30
    .line 31
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x7

    .line 35
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromResultCode(I)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->sendResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "SDK_CANCELLED: Authorization cancelled by SDK."

    .line 43
    .line 44
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->updateLatestUrlStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;

    .line 48
    .line 49
    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;->isUserCancelled()V

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->finish()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public extractState$1(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string p0, "correlation_id"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/microsoft/identity/common/java/logging/RequestContext;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object p0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->setRequestContext(Lcom/microsoft/identity/common/java/logging/RequestContext;)V

    .line 18
    .line 19
    .line 20
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 21
    .line 22
    const-string p0, "AuthorizationFragment:setDiagnosticContextForAuthorizationActivity"

    .line 23
    .line 24
    const-string p1, "Initializing diagnostic context for AuthorizationActivity"

    .line 25
    .line 26
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final finish()V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 2
    .line 3
    const-string v1, "cancel_authorization_request"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->unregisterCallback(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getFragmentManager()Landroidx/fragment/app/z;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    new-instance v1, Landroidx/fragment/app/a;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/o;)V

    .line 32
    .line 33
    .line 34
    iget-boolean p0, v1, Landroidx/fragment/app/a;->g:Z

    .line 35
    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    iput-boolean p0, v1, Landroidx/fragment/app/a;->h:Z

    .line 40
    .line 41
    iget-object v0, v1, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/z;

    .line 42
    .line 43
    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/z;->A(Landroidx/fragment/app/a;Z)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v0, "This transaction is already being added to the back stack"

    .line 50
    .line 51
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_2
    return-void

    .line 56
    :catch_0
    move-exception p0

    .line 57
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 58
    .line 59
    const-string v0, "AuthorizationFragment#finish"

    .line 60
    .line 61
    const-string v1, "Logged as error to capture \'cause\'; Exception occurred when removing ourselves from provided FragmentManager"

    .line 62
    .line 63
    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public handleBackButtonPressed()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->cancelAuthorization(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 5
    .line 6
    const-string v1, "cancel_authorization_request"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mCancelRequestReceiver:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->registerCallback(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "AuthorizationFragment:onCreate"

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mInstanceState:Landroid/os/Bundle;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 22
    .line 23
    const-string p1, "No stored state. Unable to handle response"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->finish()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    if-nez p1, :cond_1

    .line 33
    .line 34
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 35
    .line 36
    const-string p1, "Extract state from the intent bundle."

    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mInstanceState:Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->extractState$1(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 48
    .line 49
    const-string v1, "Extract state from the saved bundle."

    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->extractState$1(Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "AuthorizationFragment:onDestroy"

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mAuthResultSent:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Hosting Activity is destroyed before Auth request is completed, sending request cancel"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;->isUserCancelled()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x7

    .line 31
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromResultCode(I)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->sendResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    const-string v1, "SDK_CANCELLED: Activity destroyed before auth completion"

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->updateLatestUrlStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    sget-object v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 45
    .line 46
    const-string v1, "cancel_authorization_request"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->unregisterCallback(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-super {p0}, Landroidx/fragment/app/o;->onDestroy()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mAuthResultSent:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 18
    .line 19
    const-string v0, "AuthorizationFragment:onStop"

    .line 20
    .line 21
    const-string v1, "Hosting Activity is destroyed before Auth request is completed, sending request cancel"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/UiEndEvent;->isUserCancelled()V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x7

    .line 38
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromResultCode(I)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->sendResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/o;->onStop()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lio1;->getOnBackPressedDispatcher()Lzs5;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$2;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$2;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2, v0}, Lzs5;->a(Lfu4;Lss5;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final sendResult(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getResultCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lfz5;->v(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Sending result from Authorization Activity, resultCode: "

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 16
    .line 17
    const-string v1, "AuthorizationFragment:sendResult"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->toPropertyBag(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/16 v0, 0x3e9

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "com.microsoft.identity.client.request.code"

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 38
    .line 39
    const-string v1, "return_authorization_request_result"

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->broadcast(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mAuthResultSent:Z

    .line 46
    .line 47
    return-void
.end method

.method public final setInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mInstanceState:Landroid/os/Bundle;

    .line 2
    .line 3
    return-void
.end method

.method public final trackUrlStatus(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mUrlLoadCounter:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mUrlLoadCounter:I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$UrlStatus;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$UrlStatus;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mUrlStatusTracker:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final updateLatestUrlStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mUrlLoadCounter:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mUrlStatusTracker:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$UrlStatus;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 18
    .line 19
    const-string p0, "AuthorizationFragment"

    .line 20
    .line 21
    const-string p1, "No URL load status to update."

    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$UrlStatus;->setLoadingError(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$UrlStatus;->setAuthError(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->mUrlLoadCounter:I

    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-void
.end method
