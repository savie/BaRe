.class public final synthetic Lin0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lin0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lin0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lin0;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lin0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->k:Landroid/widget/TextView;

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->c:Z

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const p0, 0x7f1305d7

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const p0, 0x7f1305d6

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    check-cast p0, Lbt3;

    .line 28
    .line 29
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    check-cast p0, Lt22;

    .line 34
    .line 35
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$H8m58jFF48xOVIW7wbb-qAohYTk(Lt22;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_2
    check-cast p0, Lio1;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_3
    check-cast p0, Lcom/google/android/material/slider/Slider;

    .line 46
    .line 47
    const/4 v0, -0x1

    .line 48
    invoke-virtual {p0, v0}, Lon0;->setActiveThumbIndex(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
