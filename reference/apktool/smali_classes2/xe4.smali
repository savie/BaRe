.class public final synthetic Lxe4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/intro/IntroActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lxe4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lxe4;->b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lxe4;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object p0, p0, Lxe4;->b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->R()Lorg/swiftapps/swiftbackup/intro/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v2, Loh1;

    .line 24
    .line 25
    iget-object v4, v0, Lorg/swiftapps/swiftbackup/intro/d;->o:Lqf4;

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x3

    .line 29
    const/4 v3, 0x1

    .line 30
    const-class v5, Lqf4;

    .line 31
    .line 32
    const-string v6, "start"

    .line 33
    .line 34
    const-string v7, "start(Lkotlin/jvm/functions/Function1;)Z"

    .line 35
    .line 36
    invoke-direct/range {v2 .. v9}, Loh1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {v0, p0, v3, v2}, Lorg/swiftapps/swiftbackup/intro/d;->n(Landroid/content/Intent;ZLmt3;)Z

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->Q()Lif4;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    iget-object p0, p0, Lif4;->c:Lv04;

    .line 51
    .line 52
    iget-object p0, p0, Lv04;->b:Lcom/google/android/material/button/MaterialButton;

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_1
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->T:Lorg/swiftapps/swiftbackup/intro/IntroActivity$a;

    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->T()V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
