.class final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager$3$1;
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
.field final synthetic val$callback:Lvz0;


# direct methods
.method public constructor <init>(Lvz0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager$3$1;->val$callback:Lvz0;

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
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager$3$1$1;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager$3$1$1;-><init>(Lcn6;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcn6;->c(Ljava/util/concurrent/Callable;)Lcn6;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitNfcSmartcardCertBasedAuthManager$3$1;->val$callback:Lvz0;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lvz0;->invoke(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
