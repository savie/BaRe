.class public final synthetic Lcb;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Leb;
.implements Lh9;
.implements Lt45;
.implements Lhm6;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/pcloud/sdk/internal/a;

    .line 4
    .line 5
    const-class v0, Lhw3;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/pcloud/sdk/internal/a;->f(Lokhttp3/Response;Ljava/lang/Class;)Lgf;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lhw3;

    .line 12
    .line 13
    invoke-virtual {p0}, Lhw3;->d()Lbj6;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public b(ZZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 4
    .line 5
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    sget-object p1, Ldz5;->a:Ldz5;

    .line 11
    .line 12
    invoke-static {}, Ldz5;->c()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p0, p1, v0}, Ldz5;->o(Lzm;Ljava/util/Set;Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->R()Lorg/swiftapps/swiftbackup/intro/d;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/d;->o()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->N()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->P()Lqi7;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const p2, 0x7f130409

    .line 44
    .line 45
    .line 46
    iget-object v1, p1, Lfo0;->h:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iget-object v1, p1, Lfo0;->i:Leo0;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Lbf4;

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    invoke-direct {p2, p0, v0}, Lbf4;-><init>(Lorg/swiftapps/swiftbackup/intro/IntroActivity;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lqi7;->h(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lqi7;->i()V

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Llr1;

    .line 4
    .line 5
    check-cast p1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Llr1;->r()Lmr1;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Lmr1;->k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public p(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ldb;

    .line 4
    .line 5
    iget-object p0, p0, Ldb;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lq34;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lq34;->p(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
