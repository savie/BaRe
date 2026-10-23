.class public final synthetic Le21;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Le21;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le21;->b:Ljava/lang/Object;

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
    .locals 0

    .line 1
    iget p1, p0, Le21;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Le21;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 9
    .line 10
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->b0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f;->h:Lgv7;

    .line 17
    .line 18
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lwg5$c;

    .line 23
    .line 24
    invoke-virtual {p0}, Lwg5$c;->cancel()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    check-cast p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->a(Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
