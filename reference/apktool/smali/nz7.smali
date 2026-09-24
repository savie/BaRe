.class public final Lnz7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/gun0912/tedpermission/TedPermissionActivity;


# direct methods
.method public constructor <init>(Lcom/gun0912/tedpermission/TedPermissionActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnz7;->b:Lcom/gun0912/tedpermission/TedPermissionActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lnz7;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    sget-object p1, Lcom/gun0912/tedpermission/TedPermissionActivity;->x:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    iget-object p1, p0, Lnz7;->b:Lcom/gun0912/tedpermission/TedPermissionActivity;

    .line 4
    .line 5
    iget-object p0, p0, Lnz7;->a:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->o(Ljava/util/ArrayList;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
