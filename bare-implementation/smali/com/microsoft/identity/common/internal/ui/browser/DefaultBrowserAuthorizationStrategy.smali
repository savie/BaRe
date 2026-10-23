.class public final Lcom/microsoft/identity/common/internal/ui/browser/DefaultBrowserAuthorizationStrategy;
.super Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericOAuth2Strategy:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;",
        "GenericAuthorizationRequest:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;",
        ">",
        "Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy<",
        "TGenericOAuth2Strategy;TGenericAuthorizationRequest;>;"
    }
.end annotation


# virtual methods
.method public final setIntentFlag(Landroid/content/Intent;)V
    .locals 0

    .line 1
    const/high16 p0, 0x10000000

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    return-void
.end method
