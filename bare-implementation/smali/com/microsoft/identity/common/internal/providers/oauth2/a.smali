.class public final synthetic Lcom/microsoft/identity/common/internal/providers/oauth2/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;

.field public final synthetic b:Landroid/webkit/PermissionRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;Landroid/webkit/PermissionRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/a;->a:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/a;->b:Landroid/webkit/PermissionRequest;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Permission requested from:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/a;->b:Landroid/webkit/PermissionRequest;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " for resources:"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 38
    .line 39
    const-string v2, "WebViewAuthorizationFragment:setUpWebView"

    .line 40
    .line 41
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/a;->a:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 47
    .line 48
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->access$300(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, v1, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->handle(Landroid/webkit/PermissionRequest;Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
