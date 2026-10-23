.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    check-cast p1, Lwa;

    .line 2
    .line 3
    iget-object p1, p1, Lwa;->k:Lua;

    .line 4
    .line 5
    iget-object p1, p1, Lua;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$PositiveButtonListener;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$1;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$1;->val$callback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$1;->val$telemetryHelper:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;)Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->dismissDialog()V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthChoice;->ON_DEVICE_CHOICE:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthChoice;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setUserChoice(Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthChoice;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;)Landroid/app/Activity;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p1, v0, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/OnDeviceCertBasedAuthChallengeHandler;-><init>(Landroid/app/Activity;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;->onReceived(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractCertBasedAuthChallengeHandler;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    sget-object p1, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthChoice;->SMARTCARD_CHOICE:Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthChoice;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;->setUserChoice(Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthChoice;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p2, v0, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;->access$200(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$CertBasedAuthChallengeHandlerCallback;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory;Lcom/microsoft/identity/common/java/opentelemetry/CertBasedAuthTelemetryHelper;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
