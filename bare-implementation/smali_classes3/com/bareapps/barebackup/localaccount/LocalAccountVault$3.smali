.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$recoveryFile:Ljava/io/File;

.field final synthetic val$vaultFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;->val$input:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;->val$vaultFile:Ljava/io/File;

    iput-object p5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;->val$recoveryFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 432
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;->val$vaultFile:Ljava/io/File;

    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;->val$recoveryFile:Ljava/io/File;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$100(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 434
    return-void
.end method
