.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lvz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvz0;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager$ISessionCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager$ISessionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$2;->val$callback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager$ISessionCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcn6;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitUsbSmartcardCertBasedAuthManager$2;->val$callback:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager$ISessionCallback;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcn6;->b()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lai7;

    .line 10
    .line 11
    new-instance v0, Lw16;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lw16;-><init>(Lai7;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;-><init>(Lw16;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager$ISessionCallback;->onGetSession(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthManager$ISessionCallback;->onException(Ljava/lang/Exception;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
