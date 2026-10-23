.class final Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4$1;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field final synthetic val$isUserGesture:Z

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4;Landroid/webkit/WebView;Lr86;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4$1;->val$view:Landroid/webkit/WebView;

    .line 2
    .line 3
    iput-boolean p4, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4$1;->val$isUserGesture:Z

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 6

    .line 1
    const-string v0, "https://"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4$1;->val$view:Landroid/webkit/WebView;

    .line 4
    .line 5
    const-string v2, "WebViewAuthorizationFragment:handleInterceptedUrlFromNewWindow"

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x1

    .line 9
    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    const-string p0, "onCreateWindow: target URL is null, ignoring."

    .line 24
    .line 25
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 26
    .line 27
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment$4$1;->val$isUserGesture:Z

    .line 38
    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    :try_start_1
    const-string p0, "onCreateWindow: popup not initiated by user gesture, loading URL inline."

    .line 42
    .line 43
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 44
    .line 45
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_2

    .line 61
    .line 62
    const-string p0, "onCreateWindow: URL is not SSL protected, refusing to open."

    .line 63
    .line 64
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 65
    .line 66
    const/4 p2, 0x0

    .line 67
    invoke-static {v2, p0, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    if-nez v5, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    const-string v0, "/tlr/start"

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_4

    .line 91
    .line 92
    move p0, v4

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 95
    :goto_1
    if-nez p0, :cond_5

    .line 96
    .line 97
    const-string p0, "onCreateWindow: non-TLR page, loading URL inline as fallback."

    .line 98
    .line 99
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 100
    .line 101
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    const-string p0, "onCreateWindow: TLR page, delegating URL to system browser."

    .line 109
    .line 110
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 111
    .line 112
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance p0, Landroid/content/Intent;

    .line 116
    .line 117
    const-string v0, "android.intent.action.VIEW"

    .line 118
    .line 119
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-direct {p0, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .line 132
    .line 133
    :goto_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    new-instance p0, Lv12;

    .line 137
    .line 138
    invoke-direct {p0, p1, v3}, Lv12;-><init>(Ljava/lang/Object;I)V

    .line 139
    .line 140
    .line 141
    :goto_3
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_5

    .line 145
    :goto_4
    :try_start_2
    const-string p2, "Error handling target=_blank URL."

    .line 146
    .line 147
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 148
    .line 149
    invoke-static {v2, p2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    new-instance p0, Lv12;

    .line 156
    .line 157
    invoke-direct {p0, p1, v3}, Lv12;-><init>(Ljava/lang/Object;I)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :goto_5
    return v4

    .line 162
    :goto_6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    new-instance p2, Lv12;

    .line 166
    .line 167
    invoke-direct {p2, p1, v3}, Lv12;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 171
    .line 172
    .line 173
    throw p0
.end method
