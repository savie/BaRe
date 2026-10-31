.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$12;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;


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

    .line 1050
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$12;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$12;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->signOut(Landroid/app/Activity;)V

    return-void
.end method
