.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showNewAccountConfirmation(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$recoveryFile:Ljava/io/File;

.field final synthetic val$vaultFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 467
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;->val$id:Ljava/lang/String;

    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;->val$vaultFile:Ljava/io/File;

    iput-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;->val$recoveryFile:Ljava/io/File;

    iput-object p4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 469
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$000()V

    .line 471
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$700()Ljava/lang/Object;

    move-result-object p1

    .line 472
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$800()Ljava/lang/Object;

    move-result-object p2

    .line 473
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;->val$id:Ljava/lang/String;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;->val$vaultFile:Ljava/io/File;

    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;->val$recoveryFile:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$900(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 475
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$1000(Ljava/lang/Object;)V

    .line 476
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$1100(ZZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 479
    invoke-static {p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$1202(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$1302(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 481
    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$1402(Z)Z

    .line 482
    invoke-static {v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$1502(Z)Z

    .line 483
    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;->val$activity:Landroid/app/Activity;

    const-string v1, "Previous account files archived. Creating a new Local Account."

    invoke-static {p2, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$400(Landroid/app/Activity;Ljava/lang/String;)V

    .line 484
    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;->val$activity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$1600(Landroid/app/Activity;)V

    .line 489
    nop

    .line 493
    goto :goto_1

    .line 477
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v1, "Could not save the new Local Account setup state"

    invoke-direct {p2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    :catchall_0
    move-exception p2

    .line 486
    :try_start_2
    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$1000(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 487
    :goto_0
    :try_start_3
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;->val$vaultFile:Ljava/io/File;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;->val$recoveryFile:Ljava/io/File;

    invoke-static {v0, p1, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$1700(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 488
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 490
    :catchall_2
    move-exception p1

    .line 491
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;->val$activity:Landroid/app/Activity;

    const-string p2, "Could not create a new Local Account"

    const-string v0, "The existing account files were not intentionally deleted. Check storage access and try again. If files were archived, they remain under recovery-archive."

    invoke-static {p1, p2, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$100(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :goto_1
    return-void
.end method
