.class public final synthetic Lrs1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lrs1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lrs1;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lrs1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lrs1;->b:Ljava/lang/String;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sput-object v2, Lhy7;->h:Landroid/os/Bundle;

    .line 11
    .line 12
    new-instance v0, Ljy7;

    .line 13
    .line 14
    invoke-direct {v0}, Ljy7;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lhy7;->e:Ljy7;

    .line 18
    .line 19
    sput-object p0, Lhy7;->d:Ljava/lang/String;

    .line 20
    .line 21
    sget-object p0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 22
    .line 23
    sput-boolean v1, Lorg/swiftapps/swiftbackup/tasks/TaskService;->c:Z

    .line 24
    .line 25
    sget-object p0, Lgz7;->WAITING:Lgz7;

    .line 26
    .line 27
    invoke-static {p0}, Lez7;->b(Lgz7;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Landroid/content/Intent;

    .line 31
    .line 32
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 33
    .line 34
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-class v2, Lorg/swiftapps/swiftbackup/tasks/TaskService;

    .line 39
    .line 40
    invoke-direct {p0, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    move-object p0, v0

    .line 53
    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->c:Z

    .line 55
    .line 56
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 61
    .line 62
    const/4 v6, 0x4

    .line 63
    const/4 v7, 0x0

    .line 64
    const-string v3, "TaskService"

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0}, Lez7;->a(Ljava/lang/Exception;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_1

    .line 75
    .line 76
    sget-object p0, Lhy7;->a:Lhy7;

    .line 77
    .line 78
    invoke-static {}, Lhy7;->f()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_0

    .line 83
    .line 84
    invoke-static {}, Lo37;->d()V

    .line 85
    .line 86
    .line 87
    :cond_0
    sget-object v2, Lkc2;->a:Lkc2;

    .line 88
    .line 89
    invoke-static {}, Lhy7;->f()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    sget-boolean v7, Lhy7;->f:Z

    .line 94
    .line 95
    move-object v5, v4

    .line 96
    sget-object v4, Lhy7;->g:Ljava/lang/String;

    .line 97
    .line 98
    const-string v3, "TaskService"

    .line 99
    .line 100
    invoke-virtual/range {v2 .. v7}, Lkc2;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 101
    .line 102
    .line 103
    move-object v4, v5

    .line 104
    sget-object p0, Lqc2;->a:Lqc2;

    .line 105
    .line 106
    const-string v2, "TaskService start blocked"

    .line 107
    .line 108
    invoke-virtual {p0, v2, v1}, Lqc2;->h(Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    sget-object p0, Lgz7;->CANCEL_COMPLETE:Lgz7;

    .line 112
    .line 113
    invoke-static {p0}, Lez7;->b(Lgz7;)V

    .line 114
    .line 115
    .line 116
    :cond_1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 117
    .line 118
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const v2, 0x7f130222

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v2, ": "

    .line 134
    .line 135
    invoke-static {v1, v2, v4}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    sget-object v2, Lzn4;->a:Lzn4;

    .line 140
    .line 141
    new-instance v2, Ll30;

    .line 142
    .line 143
    const/16 v3, 0xf

    .line 144
    .line 145
    invoke-direct {v2, v3, p0, v1}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 149
    .line 150
    .line 151
    move v1, v0

    .line 152
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0

    .line 157
    :pswitch_0
    const-wide/16 v3, 0xbb8

    .line 158
    .line 159
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 160
    .line 161
    .line 162
    invoke-static {p0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->g(Ljava/lang/String;Z)V

    .line 163
    .line 164
    .line 165
    throw v2

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
