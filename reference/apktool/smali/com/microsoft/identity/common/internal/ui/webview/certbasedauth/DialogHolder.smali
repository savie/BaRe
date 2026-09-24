.class public final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mActivity:Landroidx/fragment/app/u;

.field private mCurrentDialog:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mActivity:Landroidx/fragment/app/u;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mCurrentDialog:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final declared-synchronized dismissDialog()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public final declared-synchronized isDialogShowing()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mCurrentDialog:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method public final declared-synchronized isSmartcardRemovalPromptDialogShowing()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mCurrentDialog:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardRemovalPromptDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public final declared-synchronized onUnexpectedUnplug()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mCurrentDialog:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->onUnexpectedUnplug()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public final declared-synchronized setPinDialogErrorMode()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mCurrentDialog:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 11
    .line 12
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$3;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, v0, v3}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$3;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method public final declared-synchronized showCertPickerDialog(Ljava/util/ArrayList;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$PositiveButtonListener;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mActivity:Landroidx/fragment/app/u;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog;-><init>(Ljava/util/ArrayList;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardCertPickerDialog$PositiveButtonListener;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;Landroidx/fragment/app/u;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    :try_start_1
    const-string p2, "DialogHolder:showCertPickerDialog"

    .line 17
    .line 18
    const-string v0, "Failed to show CertPickerDialog due to BadTokenException. Activity may be finishing or destroyed."

    .line 19
    .line 20
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 21
    .line 22
    invoke-static {p2, v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    check-cast p3, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;

    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;->onCancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :goto_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p1
.end method

.method public final declared-synchronized showDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mCurrentDialog:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->mActivity:Landroidx/fragment/app/u;

    .line 7
    .line 8
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$2;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog$2;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mCurrentDialog:Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public final declared-synchronized showErrorDialog()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;

    .line 3
    .line 4
    new-instance v4, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$2;

    .line 5
    .line 6
    invoke-direct {v4, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$2;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v5, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mActivity:Landroidx/fragment/app/u;

    .line 10
    .line 11
    const v1, 0x7f13051e

    .line 12
    .line 13
    .line 14
    const v2, 0x7f13051c

    .line 15
    .line 16
    .line 17
    const v3, 0x7f13051d

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;-><init>(IIILcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;Landroidx/fragment/app/u;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    :try_start_1
    const-string v1, "DialogHolder:showErrorDialog"

    .line 31
    .line 32
    const-string v2, "Failed to show ErrorDialog due to BadTokenException. Activity may be finishing or destroyed."

    .line 33
    .line 34
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 35
    .line 36
    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    :goto_0
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw v0
.end method

.method public final declared-synchronized showErrorDialog(II)V
    .locals 6

    monitor-enter p0

    .line 43
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;

    new-instance v4, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$1;

    invoke-direct {v4, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$1;-><init>(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mActivity:Landroidx/fragment/app/u;

    const v3, 0x7f130517

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardErrorDialog;-><init>(IIILcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;Landroidx/fragment/app/u;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 44
    :try_start_1
    const-string p2, "DialogHolder:showErrorDialog"

    const-string v0, "Failed to show ErrorDialog due to BadTokenException. Activity may be finishing or destroyed."

    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 45
    invoke-static {p2, v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized showPinDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$PositiveButtonListener;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mActivity:Landroidx/fragment/app/u;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$PositiveButtonListener;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;Landroidx/fragment/app/u;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    :try_start_1
    const-string v0, "DialogHolder:showPinDialog"

    .line 17
    .line 18
    const-string v1, "Failed to show PinDialog due to BadTokenException. Activity may be finishing or destroyed."

    .line 19
    .line 20
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    check-cast p2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/AbstractSmartcardCertBasedAuthChallengeHandler$2;->onCancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :goto_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p1
.end method

.method public final declared-synchronized showSmartcardNfcLoadingDialog()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcLoadingDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mActivity:Landroidx/fragment/app/u;

    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;-><init>(Landroidx/fragment/app/u;)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$3;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, v0, v3}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPinDialog$3;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    :try_start_1
    const-string v1, "DialogHolder:showSmartcardNfcLoadingDialog"

    .line 26
    .line 27
    const-string v2, "Failed to show SmartcardNfcLoadingDialog due to BadTokenException. Activity may be finishing or destroyed."

    .line 28
    .line 29
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 30
    .line 31
    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    :goto_0
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    throw v0
.end method

.method public final declared-synchronized showSmartcardNfcPromptDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mActivity:Landroidx/fragment/app/u;

    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcPromptDialog;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;Landroidx/fragment/app/u;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception v0

    .line 16
    :try_start_1
    const-string v1, "DialogHolder:showSmartcardNfcPromptDialog"

    .line 17
    .line 18
    const-string v2, "Failed to show SmartcardNfcPromptDialog due to BadTokenException. Activity may be finishing or destroyed."

    .line 19
    .line 20
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    check-cast p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$5;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UsbSmartcardCertBasedAuthChallengeHandler$5;->onCancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :goto_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p1
.end method

.method public final declared-synchronized showSmartcardNfcReminderDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mActivity:Landroidx/fragment/app/u;

    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardNfcReminderDialog;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;Landroidx/fragment/app/u;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception v0

    .line 16
    :try_start_1
    const-string v1, "DialogHolder:showSmartcardNfcReminderDialog"

    .line 17
    .line 18
    const-string v2, "Failed to show SmartcardNfcReminderDialog due to BadTokenException. Activity may be finishing or destroyed."

    .line 19
    .line 20
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    check-cast p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$3;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$3;->onDismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :goto_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p1
.end method

.method public final declared-synchronized showSmartcardPromptDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mActivity:Landroidx/fragment/app/u;

    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardPromptDialog;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;Landroidx/fragment/app/u;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception v0

    .line 16
    :try_start_1
    const-string v1, "DialogHolder:showSmartcardPromptDialog"

    .line 17
    .line 18
    const-string v2, "Failed to show SmartcardPromptDialog due to BadTokenException. Activity may be finishing or destroyed."

    .line 19
    .line 20
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    check-cast p1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$4;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$4;->onCancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :goto_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p1
.end method

.method public final declared-synchronized showSmartcardRemovalPromptDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardRemovalPromptDialog;

    .line 3
    .line 4
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$3;

    .line 5
    .line 6
    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder$3;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mActivity:Landroidx/fragment/app/u;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardRemovalPromptDialog;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;Landroidx/fragment/app/u;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    :try_start_1
    const-string v1, "DialogHolder:showSmartcardRemovalPromptDialog"

    .line 22
    .line 23
    const-string v2, "Failed to show SmartcardRemovalPromptDialog due to BadTokenException. Activity may be finishing or destroyed."

    .line 24
    .line 25
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 26
    .line 27
    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/IDismissCallback;->onDismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p1
.end method

.method public final declared-synchronized showUserChoiceDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$PositiveButtonListener;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->mActivity:Landroidx/fragment/app/u;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, v1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/UserChoiceDialog$PositiveButtonListener;Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/ICancelCbaCallback;Landroidx/fragment/app/u;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/DialogHolder;->showDialog(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/SmartcardDialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    :try_start_1
    const-string v0, "DialogHolder:showUserChoiceDialog"

    .line 17
    .line 18
    const-string v1, "Failed to show UserChoiceDialog due to BadTokenException. Activity may be finishing or destroyed."

    .line 19
    .line 20
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    check-cast p2, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$2;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/CertBasedAuthFactory$2;->onCancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :goto_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p1
.end method
