.class public final Lorg/swiftapps/swiftbackup/wifi/WifiActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static Y:Let8;


# instance fields
.field public final P:Ll90;

.field public final Q:Lgv7;

.field public final R:I

.field public final S:I

.field public T:Let8;

.field public final U:Lgv7;

.field public final V:Lgv7;

.field public final W:Lgv7;

.field public final X:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj51;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lj51;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll90;

    .line 12
    .line 13
    const-class v2, Liu8;

    .line 14
    .line 15
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lf20;

    .line 20
    .line 21
    const/16 v4, 0xb

    .line 22
    .line 23
    invoke-direct {v3, p0, v4}, Lf20;-><init>(Lil0;I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lls;

    .line 27
    .line 28
    const/16 v5, 0xd

    .line 29
    .line 30
    invoke-direct {v4, p0, v5}, Lls;-><init>(Lil0;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->P:Ll90;

    .line 37
    .line 38
    new-instance v0, Lxq4;

    .line 39
    .line 40
    const/16 v1, 0x13

    .line 41
    .line 42
    invoke-direct {v0, p0, v1}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lgv7;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Q:Lgv7;

    .line 51
    .line 52
    const/16 v0, 0x23a2

    .line 53
    .line 54
    iput v0, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->R:I

    .line 55
    .line 56
    const/16 v0, 0x3db

    .line 57
    .line 58
    iput v0, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->S:I

    .line 59
    .line 60
    new-instance v0, Lqb5;

    .line 61
    .line 62
    const/16 v1, 0xc

    .line 63
    .line 64
    invoke-direct {v0, p0, v1}, Lqb5;-><init>(Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lgv7;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->U:Lgv7;

    .line 73
    .line 74
    new-instance v0, Ln55;

    .line 75
    .line 76
    invoke-direct {v0, p0, v5}, Ln55;-><init>(Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lgv7;

    .line 80
    .line 81
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->V:Lgv7;

    .line 85
    .line 86
    new-instance v0, Lu14;

    .line 87
    .line 88
    invoke-direct {v0, p0, v5}, Lu14;-><init>(Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lgv7;

    .line 92
    .line 93
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->W:Lgv7;

    .line 97
    .line 98
    new-instance v0, Lkn3;

    .line 99
    .line 100
    const/16 v1, 0x12

    .line 101
    .line 102
    invoke-direct {v0, p0, v1}, Lkn3;-><init>(Ljava/lang/Object;I)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lgv7;

    .line 106
    .line 107
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 108
    .line 109
    .line 110
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->X:Lgv7;

    .line 111
    .line 112
    return-void
.end method

.method public static V(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-static {p1, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    add-int/lit8 v3, v1, 0x1

    .line 31
    .line 32
    if-ltz v1, :cond_0

    .line 33
    .line 34
    check-cast v2, Let8;

    .line 35
    .line 36
    const v4, 0x7f04014a

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v4}, Lsz8;->y(Landroid/content/Context;I)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {v2}, Let8;->getSSID()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v5, "\""

    .line 48
    .line 49
    const-string v6, ""

    .line 50
    .line 51
    invoke-static {v2, v5, v6}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v5, Ld71;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    iput v1, v5, Ld71;->a:I

    .line 61
    .line 62
    iput-object v2, v5, Ld71;->b:Ljava/lang/String;

    .line 63
    .line 64
    const v1, 0x7f080211

    .line 65
    .line 66
    .line 67
    iput v1, v5, Ld71;->c:I

    .line 68
    .line 69
    iput v4, v5, Ld71;->d:I

    .line 70
    .line 71
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move v1, v3

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lfl1;->F0()V

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    throw p0

    .line 81
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    .line 85
    .line 86
    return-object p0
.end method

.method public static final f0(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->W()Lw45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->W()Lw45;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lw45;->show()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->W()Lw45;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const v0, 0x102000b

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lho;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const/high16 v0, 0x41580000    # 13.5f

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final U(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lb67;->c()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    const p2, 0x80ff

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p2, 0x1

    .line 32
    invoke-virtual {v1, p2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance p3, Landroid/os/CancellationSignal;

    .line 43
    .line 44
    invoke-direct {p3}, Landroid/os/CancellationSignal;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    sget-object v0, Lfr0;->a:Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sput-object p1, Lfr0;->a:Ljava/lang/Integer;

    .line 58
    .line 59
    sget-object p1, Lfr0;->c:Lgv7;

    .line 60
    .line 61
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ler0;

    .line 66
    .line 67
    invoke-virtual {p2, p3, p0, p1}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final W()Lw45;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->X:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lw45;

    .line 8
    .line 9
    return-object p0
.end method

.method public final X()Lur8;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Q:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lur8;

    .line 8
    .line 9
    return-object p0
.end method

.method public final Y()Liu8;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->P:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Liu8;

    .line 8
    .line 9
    return-object p0
.end method

.method public final Z(Let8;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Liu8;->l:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Let8;->hasValidEnterpriseDetails()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->e0(Let8;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Let8;->getProperPreSharedKey()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lsr8;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, p0, v1}, Lsr8;-><init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;I)V

    .line 27
    .line 28
    .line 29
    const-string p0, "wifi_password_swift"

    .line 30
    .line 31
    invoke-static {p1, p0, v0}, Lorg/swiftapps/swiftbackup/common/Const;->f(Ljava/lang/String;Ljava/lang/String;Lmt3;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->T:Let8;

    .line 36
    .line 37
    const v0, 0x7f13045a

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Let8;->getSSID()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget v1, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->S:I

    .line 52
    .line 53
    invoke-virtual {p0, v1, v0, p1}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->U(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final a0(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    const/4 v3, 0x7

    .line 9
    if-ge v2, v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Ld71;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput v2, v3, Ld71;->a:I

    .line 17
    .line 18
    const-string v4, "     "

    .line 19
    .line 20
    iput-object v4, v3, Ld71;->b:Ljava/lang/String;

    .line 21
    .line 22
    const v4, 0x7f080202

    .line 23
    .line 24
    .line 25
    iput v4, v3, Ld71;->c:I

    .line 26
    .line 27
    iput v1, v3, Ld71;->d:I

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Lh71;

    .line 36
    .line 37
    invoke-direct {v1, p0, v0}, Lh71;-><init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;Ljava/util/ArrayList;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    iput-boolean p0, v1, Lh71;->h:Z

    .line 45
    .line 46
    return-void
.end method

.method public final b0(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->y(Lzm;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lhv1;

    .line 11
    .line 12
    const v1, 0x7f140160

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ls35;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, p0, v1, v0, v3}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 22
    .line 23
    .line 24
    const v0, 0x7f1301e2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Lv75;->v(I)V

    .line 28
    .line 29
    .line 30
    const v0, 0x7f13054e

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Lv75;->n(I)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lbz5;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-direct {v0, p1, p0, v1}, Lbz5;-><init>(ZLzm;I)V

    .line 40
    .line 41
    .line 42
    const p0, 0x7f1305d0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p0, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    const p0, 0x7f1303ba

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p0, v3}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ls35;->m()Lwa;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final c0(Ljava/util/ArrayList;IZLandroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v6, v0

    .line 16
    check-cast v6, Let8;

    .line 17
    .line 18
    new-instance v0, Lu45;

    .line 19
    .line 20
    const/16 v1, 0xc

    .line 21
    .line 22
    invoke-direct {v0, p0, p4, v1}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 23
    .line 24
    .line 25
    const p4, 0x7f0f0024

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p4}, Ll90;->f(I)V

    .line 29
    .line 30
    .line 31
    iget-object p4, v0, Ll90;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p4, Lfc5;

    .line 34
    .line 35
    const v1, 0x7f0a0054

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, v1}, Lfc5;->findItem(I)Landroid/view/MenuItem;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    if-eqz p4, :cond_1

    .line 43
    .line 44
    invoke-interface {p4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p4, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 66
    .line 67
    .line 68
    :cond_1
    new-instance v1, Ltr8;

    .line 69
    .line 70
    move-object v5, p0

    .line 71
    move-object v3, p1

    .line 72
    move v4, p2

    .line 73
    move v2, p3

    .line 74
    invoke-direct/range {v1 .. v6}, Ltr8;-><init>(ZLjava/util/ArrayList;ILorg/swiftapps/swiftbackup/wifi/WifiActivity;Let8;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, v0, Ll90;->e:Ljava/lang/Object;

    .line 78
    .line 79
    invoke-virtual {v0}, Lu45;->j()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final d0()V
    .locals 14

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lov;

    .line 7
    .line 8
    const/16 v2, 0x10

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lov;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lgv7;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lqm;

    .line 19
    .line 20
    const/16 v3, 0x17

    .line 21
    .line 22
    invoke-direct {v1, v3}, Lqm;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lgv7;

    .line 26
    .line 27
    invoke-direct {v3, v1}, Lgv7;-><init>(Lbt3;)V

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0d0194

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static {p0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    .line 43
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 44
    .line 45
    invoke-direct {v5, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Let8;->getSSID()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string v6, "\""

    .line 56
    .line 57
    const-string v7, ""

    .line 58
    .line 59
    invoke-static {v5, v6, v7}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    new-instance v6, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Let8;->getProperPreSharedKey()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    const-string v9, "Password"

    .line 77
    .line 78
    const/4 v10, 0x1

    .line 79
    if-lez v8, :cond_1

    .line 80
    .line 81
    new-instance v8, Lpt8;

    .line 82
    .line 83
    invoke-direct {v8, v9, v7, v10}, Lpt8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-virtual {v0}, Let8;->getPasswordInfo()Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    const/4 v8, 0x0

    .line 94
    if-nez v7, :cond_2

    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_2
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->hasValidEnterpriseDetails()Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-nez v11, :cond_3

    .line 103
    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :cond_3
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntEapMethod()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    const/16 v12, 0xa

    .line 111
    .line 112
    if-eqz v11, :cond_5

    .line 113
    .line 114
    invoke-static {v12, v11}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    if-eqz v11, :cond_5

    .line 119
    .line 120
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/util/Map;

    .line 125
    .line 126
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Ljava/lang/String;

    .line 131
    .line 132
    if-nez v2, :cond_4

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_4
    new-instance v11, Lpt8;

    .line 136
    .line 137
    const-string v13, "EAP"

    .line 138
    .line 139
    invoke-direct {v11, v13, v2, v8}, Lpt8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    :cond_5
    :goto_0
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntPhase2Method()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    if-eqz v2, :cond_7

    .line 150
    .line 151
    invoke-static {v12, v2}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-eqz v2, :cond_7

    .line 156
    .line 157
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Ljava/util/Map;

    .line 162
    .line 163
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Ljava/lang/String;

    .line 168
    .line 169
    if-nez v2, :cond_6

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_6
    new-instance v3, Lpt8;

    .line 173
    .line 174
    const-string v11, "Phase-2 authentication"

    .line 175
    .line 176
    invoke-direct {v3, v11, v2, v8}, Lpt8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    :cond_7
    :goto_1
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntCaCert()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    if-eqz v2, :cond_8

    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-lez v3, :cond_8

    .line 193
    .line 194
    new-instance v3, Lpt8;

    .line 195
    .line 196
    const-string v11, "CA certificate"

    .line 197
    .line 198
    invoke-direct {v3, v11, v2, v8}, Lpt8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    :cond_8
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntIdentity()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    if-eqz v2, :cond_9

    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-lez v3, :cond_9

    .line 215
    .line 216
    new-instance v3, Lpt8;

    .line 217
    .line 218
    const-string v11, "Identity"

    .line 219
    .line 220
    invoke-direct {v3, v11, v2, v10}, Lpt8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :cond_9
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntAnonIdentity()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    if-eqz v2, :cond_a

    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-lez v3, :cond_a

    .line 237
    .line 238
    new-instance v3, Lpt8;

    .line 239
    .line 240
    const-string v7, "Anonymous identity"

    .line 241
    .line 242
    invoke-direct {v3, v7, v2, v10}, Lpt8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    :cond_a
    invoke-virtual {v0}, Let8;->getProperEnterprisePassword()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-lez v2, :cond_b

    .line 257
    .line 258
    new-instance v2, Lpt8;

    .line 259
    .line 260
    invoke-direct {v2, v9, v0, v10}, Lpt8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    :cond_b
    :goto_2
    new-instance v0, Lot8;

    .line 267
    .line 268
    invoke-direct {v0, v6}, Lr35;-><init>(Ljava/util/List;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 272
    .line 273
    .line 274
    new-instance v0, Lhv1;

    .line 275
    .line 276
    const v2, 0x7f140160

    .line 277
    .line 278
    .line 279
    invoke-direct {v0, p0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 280
    .line 281
    .line 282
    new-instance v3, Ls35;

    .line 283
    .line 284
    invoke-direct {v3, p0, v2, v0, v4}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 285
    .line 286
    .line 287
    iget-object p0, v3, Lva;->b:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast p0, Lra;

    .line 290
    .line 291
    iput-boolean v8, p0, Lra;->m:Z

    .line 292
    .line 293
    iput-object v5, p0, Lra;->d:Ljava/lang/CharSequence;

    .line 294
    .line 295
    const v0, 0x7f1303e6

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3, v0, v4}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 299
    .line 300
    .line 301
    iput-object v1, p0, Lra;->s:Landroid/view/View;

    .line 302
    .line 303
    invoke-virtual {v3}, Ls35;->m()Lwa;

    .line 304
    .line 305
    .line 306
    sput-object v4, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 307
    .line 308
    return-void
.end method

.method public final e0(Let8;)V
    .locals 2

    .line 1
    sput-object p1, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v0, v0, Liu8;->l:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->d0()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->T:Let8;

    .line 16
    .line 17
    invoke-static {}, Lb67;->b()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const v1, 0x7f130501

    .line 22
    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Let8;->getSSID()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget v1, p0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->R:I

    .line 38
    .line 39
    invoke-virtual {p0, v1, v0, p1}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->U(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-static {}, Lb67;->b()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    const-class v0, Landroid/app/KeyguardManager;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/app/KeyguardManager;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1}, Let8;->getSSID()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 p1, 0x0

    .line 73
    :goto_0
    if-nez p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->d0()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    const/16 v0, 0x718

    .line 80
    .line 81
    invoke-virtual {p0, p1, v0}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    const-string p0, "Method call WifiActivity.authenticatePreQ()() requires sdk below Android Q!"

    .line 86
    .line 87
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/16 v0, 0x718

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    if-ne p2, p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->d0()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Liu8;->l:Z

    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lsa1;->onActivityResult(IILandroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->X()Lur8;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lur8;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->X()Lur8;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lur8;->b:Lw00;

    .line 18
    .line 19
    iget-object p1, p1, Lw00;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lix0;

    .line 22
    .line 23
    iget-object p1, p1, Lix0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v0, 0x1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lnc8;->Z(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->X()Lur8;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p1, p1, Lur8;->d:Landroidx/core/widget/NestedScrollView;

    .line 45
    .line 46
    const/4 v1, 0x7

    .line 47
    invoke-static {p1, v1}, Lsz8;->b(Landroid/view/View;I)V

    .line 48
    .line 49
    .line 50
    sget p1, Lb67;->a:I

    .line 51
    .line 52
    const/16 v1, 0x1d

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v3, 0x5

    .line 56
    if-ne p1, v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->X()Lur8;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p1, p1, Lur8;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 63
    .line 64
    const-string v1, "user_acknowledge_no_batch_restore_on_q"

    .line 65
    .line 66
    :try_start_0
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 67
    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const-string v1, "prefs"

    .line 76
    .line 77
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    move v1, v2

    .line 83
    :goto_0
    xor-int/2addr v1, v0

    .line 84
    invoke-static {p1, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->X()Lur8;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v1, v1, Lur8;->c:Lcom/google/android/material/button/MaterialButton;

    .line 92
    .line 93
    new-instance v4, Lce1;

    .line 94
    .line 95
    invoke-direct {v4, v3, p0, p1}, Lce1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object p1, p1, Liu8;->g:Lex6;

    .line 106
    .line 107
    new-instance v1, Lpx;

    .line 108
    .line 109
    const/16 v4, 0x13

    .line 110
    .line 111
    invoke-direct {v1, p0, v4}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 112
    .line 113
    .line 114
    new-instance v4, Ls30;

    .line 115
    .line 116
    invoke-direct {v4, v3, v1}, Ls30;-><init>(ILmt3;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p0, v4}, Lzy4;->e(Lfu4;Les5;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object p1, p1, Liu8;->h:Lex6;

    .line 127
    .line 128
    new-instance v1, Lzs;

    .line 129
    .line 130
    const/16 v4, 0x10

    .line 131
    .line 132
    invoke-direct {v1, p0, v4}, Lzs;-><init>(Ljava/lang/Object;I)V

    .line 133
    .line 134
    .line 135
    new-instance v4, Ls30;

    .line 136
    .line 137
    invoke-direct {v4, v3, v1}, Ls30;-><init>(ILmt3;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p0, v4}, Lzy4;->e(Lfu4;Les5;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object p1, p1, Liu8;->i:Lex6;

    .line 148
    .line 149
    new-instance v1, Lrr8;

    .line 150
    .line 151
    invoke-direct {v1, p0, v0}, Lrr8;-><init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;I)V

    .line 152
    .line 153
    .line 154
    new-instance v4, Ls30;

    .line 155
    .line 156
    invoke-direct {v4, v3, v1}, Ls30;-><init>(ILmt3;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p0, v4}, Lzy4;->e(Lfu4;Les5;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-object p1, p1, Liu8;->j:Lix6;

    .line 167
    .line 168
    new-instance v1, Lw20;

    .line 169
    .line 170
    const/16 v4, 0x17

    .line 171
    .line 172
    invoke-direct {v1, p0, v4}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 173
    .line 174
    .line 175
    new-instance v4, Ls30;

    .line 176
    .line 177
    invoke-direct {v4, v3, v1}, Ls30;-><init>(ILmt3;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, p0, v4}, Lix6;->e(Lfu4;Les5;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iget-object p1, p1, Liu8;->k:Lex6;

    .line 188
    .line 189
    new-instance v1, Lsr8;

    .line 190
    .line 191
    invoke-direct {v1, p0, v0}, Lsr8;-><init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;I)V

    .line 192
    .line 193
    .line 194
    new-instance v0, Ls30;

    .line 195
    .line 196
    invoke-direct {v0, v3, v1}, Ls30;-><init>(ILmt3;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p0, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 200
    .line 201
    .line 202
    sget-object p1, Lfr0;->b:Lgv7;

    .line 203
    .line 204
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Lix6;

    .line 209
    .line 210
    new-instance v0, Lrr8;

    .line 211
    .line 212
    invoke-direct {v0, p0, v2}, Lrr8;-><init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;I)V

    .line 213
    .line 214
    .line 215
    new-instance v1, Ls30;

    .line 216
    .line 217
    invoke-direct {v1, v3, v0}, Ls30;-><init>(ILmt3;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Liu8;->l()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lil0;->onStart()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onWifiRestoreOnQRequestEvent(Llt8;)V
    .locals 0
    .annotation runtime Lqr7;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Llt8;->a:Let8;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Z(Let8;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
