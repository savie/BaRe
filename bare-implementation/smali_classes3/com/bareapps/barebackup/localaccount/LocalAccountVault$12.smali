.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$12;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showSignOutFailure(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1104
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$12;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1106
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$000()V

    .line 1107
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$12;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->signOut(Landroid/app/Activity;)V

    .line 1108
    return-void
.end method
