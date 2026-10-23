.class final Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler$span$2;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgs4;",
        "Lbt3;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler$span$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler$span$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->access$getSpanContext$p(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;)Lrj7;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "SwitchBrowserProcess"

    .line 8
    .line 9
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/PropertyBagUtil;->createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
