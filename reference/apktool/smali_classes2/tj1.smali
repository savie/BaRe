.class public final synthetic Ltj1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lba2;

.field public final synthetic b:Luj1;


# direct methods
.method public synthetic constructor <init>(Lba2;Luj1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltj1;->a:Lba2;

    .line 5
    .line 6
    iput-object p2, p0, Ltj1;->b:Luj1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Ltj1;->a:Lba2;

    .line 13
    .line 14
    iget-object p1, p1, Lba2;->d:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ld71;

    .line 21
    .line 22
    iget p1, p1, Ld71;->a:I

    .line 23
    .line 24
    iget-object p0, p0, Ltj1;->b:Luj1;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    if-eq p1, p2, :cond_5

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    const-string v1, "android.hardware.telephony"

    .line 31
    .line 32
    if-eq p1, v0, :cond_3

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    if-eq p1, v0, :cond_1

    .line 36
    .line 37
    const/4 p2, 0x6

    .line 38
    if-ne p1, p2, :cond_0

    .line 39
    .line 40
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U:I

    .line 41
    .line 42
    iget-object p0, p0, Luj1;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 43
    .line 44
    sget-object p1, Lto3;->CLOUD:Lto3;

    .line 45
    .line 46
    invoke-static {p0, p1}, Lnc8;->k0(Lil0;Lto3;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string p0, "No click action for item id: "

    .line 51
    .line 52
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0

    .line 61
    :cond_1
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 62
    .line 63
    iget-object p0, p0, Luj1;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 64
    .line 65
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 76
    .line 77
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string p1, "Feature not supported on this device"

    .line 82
    .line 83
    invoke-static {p0, p1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    new-instance p1, Landroid/content/Intent;

    .line 88
    .line 89
    const-class v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 90
    .line 91
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .line 93
    .line 94
    const-string v0, "highlight_cloud_card"

    .line 95
    .line 96
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    sget-object p1, Lg00;->a:Lg00;

    .line 108
    .line 109
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 120
    .line 121
    iget-object p0, p0, Luj1;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 122
    .line 123
    invoke-static {p0, p2}, Lvm4;->A(Lorg/swiftapps/swiftbackup/home/HomeActivity;Z)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    iget-object p0, p0, Luj1;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 128
    .line 129
    sget-object p1, Lzn4;->a:Lzn4;

    .line 130
    .line 131
    new-instance p1, Lcv;

    .line 132
    .line 133
    const/16 p2, 0xe

    .line 134
    .line 135
    const-string v0, "Not supported on this device"

    .line 136
    .line 137
    invoke-direct {p1, p2, p0, v0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_5
    iget-object p1, p0, Luj1;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 145
    .line 146
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_6

    .line 151
    .line 152
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 153
    .line 154
    iget-object p0, p0, Luj1;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 155
    .line 156
    invoke-static {p0}, Ly13;->H(Landroid/app/Activity;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 160
    .line 161
    return-object p0
.end method
