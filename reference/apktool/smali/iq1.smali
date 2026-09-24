.class public final synthetic Liq1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Liq1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Liq1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget p1, p0, Liq1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Liq1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 9
    .line 10
    sget p1, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 11
    .line 12
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->d()Landroid/app/NotificationManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 24
    .line 25
    sget p1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->R:I

    .line 26
    .line 27
    sget-object p1, Lvr6;->INSTANCE:Lvr6;

    .line 28
    .line 29
    new-instance p2, Lzs;

    .line 30
    .line 31
    const/16 v0, 0xd

    .line 32
    .line 33
    invoke-direct {p2, p0, v0}, Lzs;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0, p2}, Lvr6;->clearMessages(Lil0;Lmt3;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    check-cast p0, Lsa1;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 47
    .line 48
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    sget-object p1, Lzn4;->a:Lzn4;

    .line 55
    .line 56
    new-instance p1, Lkf;

    .line 57
    .line 58
    const/16 p2, 0x1c

    .line 59
    .line 60
    invoke-direct {p1, p0, p2}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 68
    .line 69
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    new-instance p1, Landroid/content/Intent;

    .line 75
    .line 76
    const-string p2, "android.settings.PRIVATE_DNS_SETTINGS"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance p2, Landroid/content/Intent;

    .line 82
    .line 83
    const-string v0, "android.settings.WIRELESS_SETTINGS"

    .line 84
    .line 85
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Landroid/content/Intent;

    .line 89
    .line 90
    const-string v1, "android.settings.SETTINGS"

    .line 91
    .line 92
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    filled-new-array {p1, p2, v0}, [Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_1

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    move-object v0, p2

    .line 118
    check-cast v0, Landroid/content/Intent;

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    const/4 p2, 0x0

    .line 132
    :goto_0
    check-cast p2, Landroid/content/Intent;

    .line 133
    .line 134
    if-nez p2, :cond_2

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    .line 140
    :catchall_0
    :goto_1
    return-void

    .line 141
    :pswitch_4
    check-cast p0, Lbt3;

    .line 142
    .line 143
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 148
    .line 149
    sget p1, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 150
    .line 151
    sget-object p1, Lbr1;->a:Lbr1;

    .line 152
    .line 153
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p1}, Lqq1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getId()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    new-instance p2, Ldk;

    .line 166
    .line 167
    const/16 v0, 0x13

    .line 168
    .line 169
    invoke-direct {p2, p1, v0}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 170
    .line 171
    .line 172
    invoke-static {p2}, Lzn4;->c(Lbt3;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
