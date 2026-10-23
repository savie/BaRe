.class public final Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private webViewSilentAuthorizationFlowTimeOut:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x1388

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;->webViewSilentAuthorizationFlowTimeOut:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final extractState$1(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->extractState$1(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "com.microsoft.identity.web.view.silent.authorization.flow.timeout"

    .line 8
    .line 9
    const-wide/16 v1, 0x1388

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    const-wide/16 v5, 0x3e8

    .line 16
    .line 17
    const-wide/16 v7, 0x4e20

    .line 18
    .line 19
    invoke-static/range {v3 .. v8}, Ll73;->i(JJJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;->webViewSilentAuthorizationFlowTimeOut:J

    .line 24
    .line 25
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/16 p1, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.microsoft.identity.web.view.silent.authorization.flow.timeout"

    .line 5
    .line 6
    iget-wide v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;->webViewSilentAuthorizationFlowTimeOut:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;->webViewSilentAuthorizationFlowTimeOut:J

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lz85;->t(Lfu4;)Lxt4;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p1, p2, p0, v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment$cancelAuthorizationOnTimeOut$1;-><init>(JLcom/microsoft/identity/common/internal/providers/oauth2/SilentWebViewAuthorizationFragment;Ljv1;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x3

    .line 21
    invoke-static {v0, v2, v1, p0}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 22
    .line 23
    .line 24
    return-void
.end method
