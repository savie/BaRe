.class public final synthetic Lin;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lin;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lin;->b:Landroid/content/Context;

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
    .locals 5

    .line 1
    iget v0, p0, Lin;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lin;->b:Landroid/content/Context;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lcom/yubico/yubikit/android/ui/OtpActivity;

    .line 10
    .line 11
    iget v0, p0, Lcom/yubico/yubikit/android/ui/OtpActivity;->t:I

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    iput v0, p0, Lcom/yubico/yubikit/android/ui/OtpActivity;->t:I

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lvn1;

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    invoke-direct {v0, p0, v1}, Lvn1;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v2, 0x21

    .line 31
    .line 32
    if-lt v0, v2, :cond_6

    .line 33
    .line 34
    new-instance v3, Landroid/content/ComponentName;

    .line 35
    .line 36
    const-string v4, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    .line 37
    .line 38
    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eq v4, v1, :cond_6

    .line 50
    .line 51
    const-string v4, "locale"

    .line 52
    .line 53
    if-lt v0, v2, :cond_3

    .line 54
    .line 55
    sget-object v0, Lnn;->k:Lp50;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v2, Lo50;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Lo50;-><init>(Lp50;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {v2}, Lob4;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v2}, Lob4;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lnn;

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    check-cast v0, Lfo;

    .line 86
    .line 87
    iget-object v0, v0, Lfo;->r:Landroid/content/Context;

    .line 88
    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    .line 97
    :goto_0
    if-eqz v0, :cond_4

    .line 98
    .line 99
    invoke-static {v0}, Lkn;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lh05;->c(Landroid/os/LocaleList;)Lh05;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    sget-object v0, Lnn;->c:Lh05;

    .line 109
    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    sget-object v0, Lh05;->b:Lh05;

    .line 114
    .line 115
    :goto_1
    iget-object v0, v0, Lh05;->a:Li05;

    .line 116
    .line 117
    iget-object v0, v0, Li05;->a:Landroid/os/LocaleList;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    invoke-static {p0}, Liz1;->x(Landroid/content/Context;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-eqz v2, :cond_5

    .line 134
    .line 135
    invoke-static {v0}, Ljn;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v2, v0}, Lkn;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p0, v3, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 147
    .line 148
    .line 149
    :cond_6
    sput-boolean v1, Lnn;->f:Z

    .line 150
    .line 151
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
