.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$8;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$enrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 635
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$8;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$8;->val$enrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 637
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$000()V

    .line 638
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$8;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$8;->val$enrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$1900(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    .line 639
    return-void
.end method
