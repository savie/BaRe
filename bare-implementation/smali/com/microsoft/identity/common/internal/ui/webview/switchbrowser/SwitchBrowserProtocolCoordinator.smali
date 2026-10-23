.class public final Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final spanContext:Lrj7;

.field private final switchBrowserRequestHandler:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u;Lrj7;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;-><init>(Landroidx/fragment/app/u;Lrj7;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;->switchBrowserRequestHandler:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;->spanContext:Lrj7;

    .line 12
    .line 13
    new-instance p1, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator$span$2;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator$span$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Lgv7;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static final synthetic access$getSpanContext$p(Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;)Lrj7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;->spanContext:Lrj7;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final getSwitchBrowserRequestHandler()Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;->switchBrowserRequestHandler:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isExpectingSwitchBrowserResume()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ExpectingRequest: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserProtocolCoordinator;->switchBrowserRequestHandler:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->isSwitchBrowserChallengeActive()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 22
    .line 23
    const-string v1, "SwitchBrowserProtocolCoordinator:isExpectingSwitchBrowserResume"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/SwitchBrowserRequestHandler;->isSwitchBrowserChallengeActive()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method
