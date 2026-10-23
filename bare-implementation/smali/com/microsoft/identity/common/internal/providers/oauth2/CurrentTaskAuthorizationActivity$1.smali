.class final Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity$1;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-class p2, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity$1;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/CurrentTaskAuthorizationActivity;

    .line 6
    .line 7
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string p2, "refresh_to_close"

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const/high16 p2, 0x24000000

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
