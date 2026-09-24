.class public Lcom/yubico/yubikit/android/ui/OtpActivity;
.super Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic x:I


# instance fields
.field public r:Lvq;

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/yubico/yubikit/android/ui/OtpActivity;->t:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ACTION_CLASS"

    .line 6
    .line 7
    const-class v2, Lwu5;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "ALLOW_USB"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1}, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->b:Lyf1;

    .line 26
    .line 27
    new-instance v0, Lkg8;

    .line 28
    .line 29
    invoke-direct {v0}, Lkg8;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-boolean v2, v0, Lkg8;->a:Z

    .line 33
    .line 34
    new-instance v1, Lvu5;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lvu5;-><init>(Lcom/yubico/yubikit/android/ui/OtpActivity;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Lyf1;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lzg8;

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Lzg8;->b(Lkg8;Lvz0;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lvq;

    .line 47
    .line 48
    new-instance v0, Ls79;

    .line 49
    .line 50
    const/4 v1, 0x4

    .line 51
    invoke-direct {v0, p0, v1}, Ls79;-><init>(Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, v0}, Lvq;-><init>(Ls79;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/yubico/yubikit/android/ui/OtpActivity;->r:Lvq;

    .line 58
    .line 59
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->b:Lyf1;

    .line 2
    .line 3
    iget-object v0, v0, Lyf1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lzg8;

    .line 6
    .line 7
    invoke-virtual {v0}, Lzg8;->a()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->onDestroy()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/yubico/yubikit/android/ui/OtpActivity;->r:Lvq;

    .line 2
    .line 3
    iget-object p1, p0, Lvq;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Ls79;

    .line 6
    .line 7
    iget-object v0, p0, Lvq;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_5

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/InputDevice;->getVendorId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x1050

    .line 22
    .line 23
    if-eq v1, v2, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v1, v2, :cond_4

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/16 v5, 0x42

    .line 53
    .line 54
    if-eq v4, v5, :cond_3

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const/16 v5, 0xa0

    .line 61
    .line 62
    if-ne v4, v5, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_2

    .line 70
    .line 71
    iget-object v4, p0, Lvq;->c:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v4, Landroid/os/Handler;

    .line 74
    .line 75
    new-instance v5, Lzu5;

    .line 76
    .line 77
    invoke-direct {v5, p0, v1}, Lzu5;-><init>(Lvq;I)V

    .line 78
    .line 79
    .line 80
    const-wide/16 v6, 0x3e8

    .line 81
    .line 82
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .line 84
    .line 85
    iget-object p0, p1, Ls79;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Lcom/yubico/yubikit/android/ui/OtpActivity;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->k:Landroid/widget/TextView;

    .line 90
    .line 91
    const p1, 0x7f1305da

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    int-to-char p0, p0

    .line 102
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return v2

    .line 109
    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    new-instance p2, Landroid/content/Intent;

    .line 117
    .line 118
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v3, "otp"

    .line 122
    .line 123
    invoke-virtual {p2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    iget-object p0, p1, Ls79;->b:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p0, Lcom/yubico/yubikit/android/ui/OtpActivity;

    .line 129
    .line 130
    const/4 p1, -0x1

    .line 131
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 138
    .line 139
    .line 140
    :cond_4
    return v2

    .line 141
    :cond_5
    :goto_1
    const/4 p0, 0x0

    .line 142
    return p0
.end method
