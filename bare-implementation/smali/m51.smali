.class public final synthetic Lm51;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lm51;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lm51;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lm51;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lm51;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lm51;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Lm51;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lmt3;

    .line 12
    .line 13
    check-cast v1, Lux5;

    .line 14
    .line 15
    invoke-interface {p0, v1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    check-cast p0, Lmt3;

    .line 20
    .line 21
    check-cast v1, Lwa;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 32
    .line 33
    check-cast v1, Luv2;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p0, v1, Luv2;->f:Lox;

    .line 43
    .line 44
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lox;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lol1;->j(Z)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :pswitch_2
    check-cast p0, Lji;

    .line 54
    .line 55
    check-cast v1, Lgj2;

    .line 56
    .line 57
    sget-object p1, Lv53;->a:Lv53;

    .line 58
    .line 59
    invoke-virtual {p1, p0, v0}, Lv53;->f(Lji;Z)V

    .line 60
    .line 61
    .line 62
    iput-boolean v0, v1, Lgj2;->o:Z

    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_3
    check-cast p0, Lyq1;

    .line 66
    .line 67
    check-cast v1, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 68
    .line 69
    sget p1, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 70
    .line 71
    iget-object p0, p0, Lyq1;->l:Lil0;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    sget-object p1, Lmp6;->a:Lmp6;

    .line 77
    .line 78
    invoke-static {}, Lmp6;->f()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_1

    .line 83
    .line 84
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->N(Lil0;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 89
    .line 90
    const-class v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 91
    .line 92
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .line 94
    .line 95
    const-string v0, "extra_config"

    .line 96
    .line 97
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    return-void

    .line 108
    :pswitch_4
    check-cast p0, Lwg5;

    .line 109
    .line 110
    check-cast v1, Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1}, Lwg5;->openFile(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
