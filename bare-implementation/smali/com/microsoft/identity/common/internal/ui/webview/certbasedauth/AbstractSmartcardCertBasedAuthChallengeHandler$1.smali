.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager$ISessionCallback;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;

.field final synthetic val$methodTag:Ljava/lang/String;

.field final synthetic val$request:Landroid/webkit/ClientCertRequest;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;Ljava/lang/String;Landroid/webkit/ClientCertRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1;->val$methodTag:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1;->val$request:Landroid/webkit/ClientCertRequest;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1;->val$request:Landroid/webkit/ClientCertRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/ClientCertRequest;->cancel()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1$2;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1;Ljava/lang/Exception;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->prepForNextUserInteraction(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onGetSession(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;->getPinAttemptsRemaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;->getCertDetailsList()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1$1;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1$1;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1;ILjava/util/ArrayList;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler;->prepForNextUserInteraction(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDisconnectionCallback;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
