.class public Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;
.super Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mCloseCustomTabs:Z

.field private mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;

.field private redirectReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->mCloseCustomTabs:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/microsoft/identity/common/PropertyBagUtil;->getAuthorizationFragmentFromStartIntent(Landroid/content/Intent;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;

    .line 13
    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    check-cast v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->setInstanceState(Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "redirect_returned_action"

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const-class p1, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    new-instance p1, Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v0, "RESPONSE"

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Landroidx/fragment/app/o;->setArguments(Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "RESPONSE_URI"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;->completeAuthorizationInBrowserFlow(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 89
    .line 90
    .line 91
    :cond_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->setFragment(Landroidx/fragment/app/o;)V

    .line 93
    .line 94
    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->mCloseCustomTabs:Z

    .line 99
    .line 100
    new-instance p1, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity$1;

    .line 101
    .line 102
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity$1;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;)V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->redirectReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    .line 107
    new-instance p1, Landroid/content/IntentFilter;

    .line 108
    .line 109
    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 113
    .line 114
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->redirectReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    .line 116
    const/16 v2, 0x21

    .line 117
    .line 118
    if-lt v0, v2, :cond_2

    .line 119
    .line 120
    const/4 v0, 0x4

    .line 121
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_2
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    :cond_3
    return-void

    .line 129
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    const-string p1, "Unexpected fragment type"

    .line 132
    .line 133
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 137
    .line 138
    const-string p1, "CurrentTaskAuthorizationActivity:onCreate"

    .line 139
    .line 140
    const-string v0, "Fragment provided was not of type CurrentTaskBrowserAuthorizationFragment"

    .line 141
    .line 142
    invoke-static {p1, v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw p0
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lio1;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "refresh_to_close"

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    const-string v1, "destroy_redirect_receiving_activity_action"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->redirectReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/u;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "redirect_returned_action"

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "RESPONSE"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroidx/fragment/app/o;->setArguments(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "RESPONSE_URI"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskBrowserAuthorizationFragment;->completeAuthorizationInBrowserFlow(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, -0x1

    .line 52
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->redirectReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->mCloseCustomTabs:Z

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->redirectReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 77
    .line 78
    .line 79
    :cond_3
    iput-boolean v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;->mCloseCustomTabs:Z

    .line 80
    .line 81
    return-void
.end method
