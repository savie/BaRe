.class public final synthetic Lgf4;
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
    iput p2, p0, Lgf4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lgf4;->b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

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
    .locals 3

    .line 1
    iget p1, p0, Lgf4;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lgf4;->b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 9
    .line 10
    sget-object p1, Ldz5;->a:Ldz5;

    .line 11
    .line 12
    invoke-static {}, Ldz5;->j()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Ldz5;->l(Z)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x0

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->N()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->P()Lqi7;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const v1, 0x7f1305cc

    .line 37
    .line 38
    .line 39
    iget-object v2, p1, Lfo0;->h:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p1, Lfo0;->i:Leo0;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lgf4;

    .line 61
    .line 62
    invoke-direct {v1, p0, v0}, Lgf4;-><init>(Lorg/swiftapps/swiftbackup/intro/IntroActivity;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lqi7;->h(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lqi7;->i()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const-string p1, "com.android.permission.GET_INSTALLED_APPS"

    .line 73
    .line 74
    invoke-static {p1}, Ldz5;->h(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    invoke-static {}, Ldz5;->k()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_1

    .line 85
    .line 86
    invoke-static {p1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p0, p1, v0}, Ldz5;->o(Lzm;Ljava/util/Set;Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Lrn1;

    .line 95
    .line 96
    const/4 v1, 0x4

    .line 97
    invoke-direct {v0, p0, v1}, Lrn1;-><init>(Ljava/lang/Object;I)V

    .line 98
    .line 99
    .line 100
    filled-new-array {p1}, [Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p0, v0, p1}, Ldz5;->a(Lzm;Lt45;[Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    :goto_0
    return-void

    .line 108
    :pswitch_0
    sget p1, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 109
    .line 110
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->P()Lqi7;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const/4 p1, 0x3

    .line 115
    invoke-virtual {p0, p1}, Lfo0;->a(I)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
