.class public final synthetic Lcf4;
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
    iput p2, p0, Lcf4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcf4;->b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

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
    iget v0, p0, Lcf4;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lcf4;->b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->R()Lorg/swiftapps/swiftbackup/intro/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v1, Lzn7;->q:Lyn7;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2}, Lyn7;->h(Lzn7;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lg70;

    .line 28
    .line 29
    iget-object v5, v0, Lorg/swiftapps/swiftbackup/intro/d;->o:Lqf4;

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x3

    .line 33
    const/4 v4, 0x1

    .line 34
    const-class v6, Lqf4;

    .line 35
    .line 36
    const-string v7, "retry"

    .line 37
    .line 38
    const-string v8, "retry(Lkotlin/jvm/functions/Function1;)Z"

    .line 39
    .line 40
    invoke-direct/range {v3 .. v10}, Lg70;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, p0, v1, v3}, Lorg/swiftapps/swiftbackup/intro/d;->n(Landroid/content/Intent;ZLmt3;)Z

    .line 45
    .line 46
    .line 47
    sget-object p0, Lbe8;->a:Lbe8;

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 51
    .line 52
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->Q()Lif4;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object p0, p0, Lif4;->e:Ljf4;

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
