.class public final synthetic Lnv0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lil0;


# direct methods
.method public synthetic constructor <init>(Lil0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnv0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lnv0;->b:Lil0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget p1, p0, Lnv0;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lnv0;->b:Lil0;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;

    .line 10
    .line 11
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;->L:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;->N()Lvt5;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, v0, p1}, Lvt5;->j(ZLcom/microsoft/identity/client/AuthenticationResult;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

    .line 23
    .line 24
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->N:I

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;

    .line 34
    .line 35
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;->L:I

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
