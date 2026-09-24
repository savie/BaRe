.class public final Lb72;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lcom/pcloud/sdk/CustomTabActivity;


# direct methods
.method public constructor <init>(Lcom/pcloud/sdk/CustomTabActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb72;->a:Lcom/pcloud/sdk/CustomTabActivity;

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
    iget-object p0, p0, Lb72;->a:Lcom/pcloud/sdk/CustomTabActivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
