.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;


# instance fields
.field final synthetic val$callback:Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$4;->val$callback:Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClosedConnection()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/NfcSmartcardCertBasedAuthChallengeHandler$4;->val$callback:Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/ui/webview/ISendResultCallback;->onResultReady()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
