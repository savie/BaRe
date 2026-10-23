.class public final synthetic Lbf4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/intro/IntroActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lbf4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lbf4;->b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lbf4;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lbf4;->b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->P()Lqi7;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 p1, 0x3

    .line 15
    invoke-virtual {p0, p1}, Lfo0;->a(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    sget p1, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1, p1}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->U(ZZ)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
