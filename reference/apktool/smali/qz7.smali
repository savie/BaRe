.class public final Lqz7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/gun0912/tedpermission/TedPermissionActivity;


# direct methods
.method public constructor <init>(Lcom/gun0912/tedpermission/TedPermissionActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqz7;->a:Lcom/gun0912/tedpermission/TedPermissionActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lqz7;->a:Lcom/gun0912/tedpermission/TedPermissionActivity;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->f:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    const-string v0, "package"

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 15
    .line 16
    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 17
    .line 18
    .line 19
    const/16 p1, 0x1f

    .line 20
    .line 21
    invoke-virtual {p0, p2, p1}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
