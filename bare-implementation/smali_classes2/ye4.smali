.class public final synthetic Lye4;
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
    iput p2, p0, Lye4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lye4;->b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

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
    .locals 11

    .line 1
    iget v0, p0, Lye4;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lbe8;->a:Lbe8;

    .line 5
    .line 6
    iget-object p0, p0, Lye4;->b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->T:Lorg/swiftapps/swiftbackup/intro/IntroActivity$a;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->R()Lorg/swiftapps/swiftbackup/intro/d;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Lzn4;->a:Lzn4;

    .line 18
    .line 19
    new-instance v0, Ltf4;

    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Ltf4;-><init>(Lorg/swiftapps/swiftbackup/intro/d;Ljv1;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 25
    .line 26
    .line 27
    return-object v2

    .line 28
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->R()Lorg/swiftapps/swiftbackup/intro/d;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v3, Lg70;

    .line 42
    .line 43
    iget-object v5, v0, Lorg/swiftapps/swiftbackup/intro/d;->o:Lqf4;

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, 0x3

    .line 47
    const/4 v4, 0x1

    .line 48
    const-class v6, Lqf4;

    .line 49
    .line 50
    const-string v7, "retry"

    .line 51
    .line 52
    const-string v8, "retry(Lkotlin/jvm/functions/Function1;)Z"

    .line 53
    .line 54
    invoke-direct/range {v3 .. v10}, Lg70;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, p0, v1, v3}, Lorg/swiftapps/swiftbackup/intro/d;->n(Landroid/content/Intent;ZLmt3;)Z

    .line 59
    .line 60
    .line 61
    return-object v2

    .line 62
    :pswitch_1
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->Q()Lif4;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iget-object p0, p0, Lif4;->b:Lh80;

    .line 69
    .line 70
    iget-object p0, p0, Lh80;->c:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_2
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->T:Lorg/swiftapps/swiftbackup/intro/IntroActivity$a;

    .line 76
    .line 77
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V()V

    .line 78
    .line 79
    .line 80
    return-object v2

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
