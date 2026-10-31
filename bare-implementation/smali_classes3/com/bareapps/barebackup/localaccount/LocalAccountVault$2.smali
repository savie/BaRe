.class Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->requestStoragePermission(Landroid/app/Activity;)V
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

    .line 169
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 171
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$000()V

    .line 173
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 175
    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    goto :goto_0

    .line 176
    :catchall_0
    move-exception p1

    .line 178
    :try_start_1
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;->val$activity:Landroid/app/Activity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    goto :goto_0

    .line 179
    :catchall_1
    move-exception p1

    .line 180
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;->val$activity:Landroid/app/Activity;

    const-string v0, "local_account_storage_access_required_title"

    invoke-static {p2, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$100(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;->val$activity:Landroid/app/Activity;

    .line 181
    const-string v1, "local_account_storage_access_required_message"

    invoke-static {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$100(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {p1, p2, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$200(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void
.end method
