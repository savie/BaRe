.class public final synthetic Lpv5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpv5;->a:Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->M:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iget-object p0, p0, Lpv5;->a:Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
