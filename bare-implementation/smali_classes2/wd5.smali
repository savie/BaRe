.class public final synthetic Lwd5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lwd5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lwd5;->b:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget p2, p0, Lwd5;->a:I

    .line 2
    .line 3
    const-string v0, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    .line 4
    .line 5
    iget-object p0, p0, Lwd5;->b:Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 11
    .line 12
    invoke-static {}, Lud5;->j()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 23
    .line 24
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const p2, 0xd605

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :pswitch_0
    sget p2, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 35
    .line 36
    new-instance p2, Landroid/content/Intent;

    .line 37
    .line 38
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/16 v0, 0x30aa

    .line 42
    .line 43
    invoke-virtual {p0, p2, v0}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
