.class public final synthetic Ly42;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly42;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly42;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

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
    .locals 4

    .line 1
    iget p1, p0, Ly42;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ly42;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 9
    .line 10
    sget-object p1, Lyz4;->a:Ljava/util/Set;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 19
    .line 20
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/16 v2, 0x25

    .line 34
    .line 35
    if-lt v0, v2, :cond_3

    .line 36
    .line 37
    if-lt v1, v2, :cond_3

    .line 38
    .line 39
    invoke-static {p1}, Lz85;->j(Ldd1;)Lh80;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Lyz4;->c(Ljava/lang/String;)Lvz4;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    iget-object v0, v1, Lvz4;->a:Ljava/lang/String;

    .line 60
    .line 61
    :cond_0
    const-string v1, "."

    .line 62
    .line 63
    const-string v2, "Local network permission is required for "

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v3, " server "

    .line 79
    .line 80
    invoke-static {v2, p1, v3, v0, v1}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v2, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :goto_1
    new-instance v0, Lv42;

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    invoke-direct {v0, p0, v1}, Lv42;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Lq42;

    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    invoke-direct {v1, p0, v2}, Lq42;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1, v0, v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->o0(Ljava/lang/String;Lv42;Lbt3;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lm62;->j()V

    .line 114
    .line 115
    .line 116
    :goto_2
    return-void

    .line 117
    :pswitch_0
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 118
    .line 119
    new-instance p1, Landroid/content/Intent;

    .line 120
    .line 121
    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    .line 122
    .line 123
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v0, "android.intent.category.OPENABLE"

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    const-string v0, "*/*"

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    const/16 v0, 0x251

    .line 137
    .line 138
    invoke-virtual {p0, p1, v0}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
