.class public final Lh72;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Llk;

.field public c:Landroid/app/ActivityOptions;

.field public d:Landroid/os/Bundle;

.field public final e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lh72;->a:Landroid/content/Intent;

    .line 56
    new-instance v0, Llk;

    .line 57
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lh72;->b:Llk;

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lh72;->e:Z

    return-void
.end method

.method public constructor <init>(Lka;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-string v1, "android.intent.action.VIEW"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lh72;->a:Landroid/content/Intent;

    .line 12
    .line 13
    new-instance v1, Llk;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lh72;->b:Llk;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lh72;->e:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p0, p1, Lka;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Landroid/content/ComponentName;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    iget-object p0, p1, Lka;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Ld72;

    .line 39
    .line 40
    new-instance p1, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "android.support.customtabs.extra.SESSION"

    .line 46
    .line 47
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lix0;
    .locals 8

    .line 1
    iget-object v0, p0, Lh72;->a:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.support.customtabs.extra.SESSION"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    :cond_0
    const-string v1, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 24
    .line 25
    iget-boolean v2, p0, Lh72;->e:Z

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lh72;->b:Llk;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v1, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lh72;->d:Landroid/os/Bundle;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    :cond_1
    const-string v1, "androidx.browser.customtabs.extra.SHARE_STATE"

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lf72;->a()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_3

    .line 65
    .line 66
    const-string v4, "com.android.browser.headers"

    .line 67
    .line 68
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    new-instance v5, Landroid/os/Bundle;

    .line 80
    .line 81
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 82
    .line 83
    .line 84
    :goto_0
    const-string v6, "Accept-Language"

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-nez v7, :cond_3

    .line 91
    .line 92
    invoke-virtual {v5, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    const/16 v4, 0x22

    .line 101
    .line 102
    if-lt v1, v4, :cond_5

    .line 103
    .line 104
    iget-object v1, p0, Lh72;->c:Landroid/app/ActivityOptions;

    .line 105
    .line 106
    if-nez v1, :cond_4

    .line 107
    .line 108
    invoke-static {}, Le72;->a()Landroid/app/ActivityOptions;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iput-object v1, p0, Lh72;->c:Landroid/app/ActivityOptions;

    .line 113
    .line 114
    :cond_4
    iget-object v1, p0, Lh72;->c:Landroid/app/ActivityOptions;

    .line 115
    .line 116
    invoke-static {v1, v2}, Lg72;->a(Landroid/app/ActivityOptions;Z)V

    .line 117
    .line 118
    .line 119
    :cond_5
    iget-object p0, p0, Lh72;->c:Landroid/app/ActivityOptions;

    .line 120
    .line 121
    if-eqz p0, :cond_6

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    :cond_6
    new-instance p0, Lix0;

    .line 128
    .line 129
    const/4 v1, 0x1

    .line 130
    invoke-direct {p0, v1, v0, v3}, Lix0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-object p0
.end method
