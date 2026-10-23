.class final Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;
.super Landroid/webkit/WebChromeClient;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    const/16 p0, 0xa

    .line 2
    .line 3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 4
    .line 5
    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 5

    .line 1
    iget-object p2, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "WebViewAuthorizationFragment:setUpWebView"

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 10
    .line 11
    const-string p0, "onCreateWindow: resultMsg.obj is null, cannot set up transport."

    .line 12
    .line 13
    invoke-static {v2, p0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    instance-of v3, v3, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->getSpanContext()Lrj7;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_1
    const-string p2, "WebViewTargetBlankNavigation"

    .line 38
    .line 39
    invoke-static {p2, v1}, Lcom/microsoft/identity/common/PropertyBagUtil;->createSpanFromParent(Ljava/lang/String;Lrj7;)Lr86;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :try_start_0
    invoke-static {p2}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->makeCurrentSpan(Lqj7;)Lv57;

    .line 44
    .line 45
    .line 46
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :try_start_1
    const-string v3, "onCreateWindow: intercepting target=_blank navigation."

    .line 48
    .line 49
    sget v4, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 50
    .line 51
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Landroid/webkit/WebView;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    new-instance v4, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4$1;

    .line 64
    .line 65
    invoke-direct {v4, p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4$1;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;Landroid/webkit/WebView;Lr86;Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Landroid/webkit/WebView$WebViewTransport;

    .line 74
    .line 75
    invoke-virtual {p0, v3}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    :try_start_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    .line 84
    .line 85
    return v0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    :try_start_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_1
    move-exception p1

    .line 94
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 98
    :goto_1
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 99
    .line 100
    const-string p1, "Error handling target=_blank navigation."

    .line 101
    .line 102
    invoke-static {v2, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    return v0
.end method

.method public final onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/microsoft/identity/common/internal/providers/oauth2/a;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/a;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;Landroid/webkit/PermissionRequest;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->getSpanContext()Lrj7;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;->handleFileUploadRequest(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Lrj7;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method
