.class final Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper$STATE_VALIDATION_REQUIRED$2;
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


# static fields
.field public static final INSTANCE:Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper$STATE_VALIDATION_REQUIRED$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper$STATE_VALIDATION_REQUIRED$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgs4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper$STATE_VALIDATION_REQUIRED$2;->INSTANCE:Lcom/microsoft/identity/common/internal/ui/webview/switchbrowser/SwitchBrowserUriHelper$STATE_VALIDATION_REQUIRED$2;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->SWITCH_BROWSER_PROTOCOL_REQUIRES_STATE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
