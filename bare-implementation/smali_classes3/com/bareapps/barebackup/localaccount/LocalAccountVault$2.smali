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

    .line 165
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 167
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$000()V

    .line 169
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
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

    .line 171
    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    goto :goto_0

    .line 172
    :catchall_0
    move-exception p1

    .line 174
    :try_start_1
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;->val$activity:Landroid/app/Activity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    goto :goto_0

    .line 175
    :catchall_1
    move-exception p1

    .line 176
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;->val$activity:Landroid/app/Activity;

    const-string p2, "Storage access is still needed"

    const-string v0, "In Android settings, open Apps > B\u039bR\u2630 > All files access, then turn on Allow access to manage all files."

    invoke-static {p1, p2, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$100(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void
.end method
