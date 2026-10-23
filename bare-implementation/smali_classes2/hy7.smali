.class public final Lhy7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lhy7;

.field public static b:Ljava/lang/String; = ""

.field public static final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static d:Ljava/lang/String;

.field public static e:Ljy7;

.field public static f:Z

.field public static g:Ljava/lang/String;

.field public static h:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhy7;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhy7;->a:Lhy7;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lhy7;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Ljava/lang/Class;Lpw6;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    invoke-static {p1, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lpw6;

    .line 34
    .line 35
    new-instance v2, Lrw6;

    .line 36
    .line 37
    new-instance v3, Lto5;

    .line 38
    .line 39
    const/16 v4, 0xb

    .line 40
    .line 41
    invoke-direct {v3, v1, v4}, Lto5;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, p0, v3}, Lrw6;-><init>(Ljava/lang/Class;Lbt3;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {v0}, Lhy7;->b(Ljava/util/List;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static b(Ljava/util/List;)Z
    .locals 11

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 2
    .line 3
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 4
    .line 5
    sget-boolean v1, Lorg/swiftapps/swiftbackup/tasks/TaskService;->c:Z

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lgz7;->isRunning()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lgz7;->isCancelling()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v0, v2

    .line 30
    :goto_1
    if-eqz v0, :cond_2

    .line 31
    .line 32
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 33
    .line 34
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const v4, 0x7f13056a

    .line 39
    .line 40
    .line 41
    invoke-static {v4}, Ldj7;->g(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    sget-object v5, Lzn4;->a:Lzn4;

    .line 46
    .line 47
    invoke-static {v1, v4}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    if-eqz v0, :cond_3

    .line 51
    .line 52
    return v3

    .line 53
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v4, 0x0

    .line 62
    if-eqz v1, :cond_6

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v5, v1

    .line 69
    check-cast v5, Lrw6;

    .line 70
    .line 71
    iget-object v5, v5, Lrw6;->f:Lgv7;

    .line 72
    .line 73
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Lqw6;

    .line 78
    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    iget-object v5, v5, Lqw6;->a:Lpw6;

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_5
    move-object v5, v4

    .line 85
    :goto_2
    if-eqz v5, :cond_4

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    move-object v1, v4

    .line 89
    :goto_3
    check-cast v1, Lrw6;

    .line 90
    .line 91
    if-eqz v1, :cond_7

    .line 92
    .line 93
    iget-object v0, v1, Lrw6;->c:Lqw6;

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    iget-object v0, v0, Lqw6;->a:Lpw6;

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_7
    move-object v0, v4

    .line 101
    :goto_4
    if-nez v0, :cond_8

    .line 102
    .line 103
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 104
    .line 105
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    const-string v0, "No task to perform in "

    .line 110
    .line 111
    const-string v1, " task providers"

    .line 112
    .line 113
    invoke-static {p0, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    const/4 v9, 0x4

    .line 118
    const/4 v10, 0x0

    .line 119
    const-string v6, "TaskManager"

    .line 120
    .line 121
    const/4 v8, 0x0

    .line 122
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return v3

    .line 126
    :cond_8
    sget-object v1, Lhy7;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lhy7;->f()Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-eqz p0, :cond_9

    .line 139
    .line 140
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 141
    .line 142
    const p0, 0x7f1304c8

    .line 143
    .line 144
    .line 145
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    goto :goto_5

    .line 150
    :cond_9
    sput-boolean v3, Lhy7;->f:Z

    .line 151
    .line 152
    sput-object v4, Lhy7;->g:Ljava/lang/String;

    .line 153
    .line 154
    iget-object p0, v0, Lpw6;->a:Lcz7;

    .line 155
    .line 156
    invoke-virtual {p0}, Lcz7;->a()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    :goto_5
    sput-object p0, Lhy7;->b:Ljava/lang/String;

    .line 161
    .line 162
    return v2
.end method

.method public static c()Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lhy7;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v3, :cond_2

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lrw6;

    .line 24
    .line 25
    iget-object v3, v3, Lrw6;->c:Lqw6;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    iget-object v4, v3, Lqw6;->a:Lpw6;

    .line 30
    .line 31
    :cond_1
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_5

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lpw6;

    .line 57
    .line 58
    iget-object v5, v3, Lpw6;->b:Ldz7;

    .line 59
    .line 60
    invoke-interface {v5}, Ldz7;->c()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    iget-object v3, v3, Lpw6;->b:Ldz7;

    .line 67
    .line 68
    invoke-interface {v3}, Ldz7;->b()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move-object v3, v4

    .line 74
    :goto_2
    if-eqz v3, :cond_3

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    invoke-static {v2}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const/4 v9, 0x0

    .line 85
    const/16 v10, 0x3e

    .line 86
    .line 87
    const-string v6, "\n\n"

    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    const/4 v8, 0x0

    .line 91
    invoke-static/range {v5 .. v10}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_8

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Lrw6;

    .line 115
    .line 116
    iget-object v3, v3, Lrw6;->c:Lqw6;

    .line 117
    .line 118
    if-eqz v3, :cond_7

    .line 119
    .line 120
    iget-object v3, v3, Lqw6;->a:Lpw6;

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_7
    move-object v3, v4

    .line 124
    :goto_4
    if-eqz v3, :cond_6

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    const/4 v3, 0x0

    .line 135
    const/4 v4, 0x1

    .line 136
    if-eqz v1, :cond_9

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_b

    .line 148
    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Lpw6;

    .line 154
    .line 155
    iget-object v2, v2, Lpw6;->b:Ldz7;

    .line 156
    .line 157
    invoke-interface {v2}, Ldz7;->l()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_a

    .line 162
    .line 163
    move v4, v3

    .line 164
    :cond_b
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-lez v1, :cond_c

    .line 169
    .line 170
    new-instance v1, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;

    .line 171
    .line 172
    invoke-direct {v1, v0, v4}, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;-><init>(Ljava/lang/String;Z)V

    .line 173
    .line 174
    .line 175
    return-object v1

    .line 176
    :cond_c
    new-instance v0, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;

    .line 177
    .line 178
    const-string v1, ""

    .line 179
    .line 180
    invoke-direct {v0, v1, v3}, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;-><init>(Ljava/lang/String;Z)V

    .line 181
    .line 182
    .line 183
    return-object v0
.end method

.method public static d()V
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 2
    .line 3
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 4
    .line 5
    invoke-virtual {v0}, Lgz7;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lhy7;->e:Ljy7;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v0, Ljy7;->b:Z

    .line 17
    .line 18
    invoke-virtual {v0}, Ljy7;->c()Landroid/app/Notification;

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object v0, Lzn4;->a:Lzn4;

    .line 22
    .line 23
    new-instance v0, Lb7;

    .line 24
    .line 25
    const/16 v1, 0x1d

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "TaskManager"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "executeWithTaskActivity() called with: ctx = ["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "]"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    sget-object v0, Lvg1;->d:Lgv7;

    .line 26
    .line 27
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lvg1;

    .line 32
    .line 33
    new-instance v1, Lrs1;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-direct {v1, p1, v2}, Lrs1;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object p1, v0, Lvg1;->b:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter p1

    .line 45
    :try_start_0
    iget-boolean v3, v0, Lvg1;->c:Z

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    sget-object v0, Ltg1;->n:Ltg1;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_0
    iget-object v0, v0, Lvg1;->a:Lqg1;

    .line 56
    .line 57
    invoke-virtual {v0}, Lqg1;->invoke()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    sget-object v0, Lug1;->n:Lug1;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Lsg1;

    .line 73
    .line 74
    invoke-virtual {v1}, Lrs1;->invoke()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-direct {v0, v1}, Lsg1;-><init>(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    :goto_0
    monitor-exit p1

    .line 88
    sget-object p1, Ltg1;->n:Ltg1;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    const/4 v1, 0x0

    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 98
    .line 99
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const v0, 0x7f13016c

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget-object v2, Lzn4;->a:Lzn4;

    .line 111
    .line 112
    invoke-static {p1, v0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move v2, v1

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    sget-object p1, Lug1;->n:Lug1;

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_3

    .line 124
    .line 125
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 126
    .line 127
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const v0, 0x7f13056a

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    sget-object v1, Lzn4;->a:Lzn4;

    .line 139
    .line 140
    invoke-static {p1, v0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    instance-of p1, v0, Lsg1;

    .line 145
    .line 146
    if-eqz p1, :cond_5

    .line 147
    .line 148
    check-cast v0, Lsg1;

    .line 149
    .line 150
    iget-boolean v2, v0, Lsg1;->n:Z

    .line 151
    .line 152
    :goto_1
    if-eqz p0, :cond_4

    .line 153
    .line 154
    if-eqz v2, :cond_4

    .line 155
    .line 156
    sget p1, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 157
    .line 158
    const-class p1, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 159
    .line 160
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .line 162
    .line 163
    :cond_4
    return v2

    .line 164
    :cond_5
    invoke-static {}, Lq;->j()V

    .line 165
    .line 166
    .line 167
    return v1

    .line 168
    :goto_2
    monitor-exit p1

    .line 169
    throw p0
.end method

.method public static f()Z
    .locals 2

    .line 1
    sget-object v0, Lhy7;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lrw6;

    .line 27
    .line 28
    iget-boolean v1, v1, Lrw6;->e:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    return v0

    .line 34
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method public static g()V
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_5

    .line 14
    .line 15
    sget-object v0, Lhy7;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_4

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lrw6;

    .line 41
    .line 42
    iget-object v1, v1, Lrw6;->f:Lgv7;

    .line 43
    .line 44
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lqw6;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    iget-object v1, v1, Lqw6;->a:Lpw6;

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v1}, Lpw6;->c()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v3, v1, Lpw6;->a:Lcz7;

    .line 62
    .line 63
    invoke-virtual {v1}, Lpw6;->f()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v6, "Executing "

    .line 70
    .line 71
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ": params="

    .line 78
    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, " totalItems="

    .line 86
    .line 87
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 98
    .line 99
    const/4 v10, 0x4

    .line 100
    const/4 v11, 0x0

    .line 101
    const-string v7, "TaskManager"

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object v2, v1, Lpw6;->c:Lgj5;

    .line 108
    .line 109
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_2

    .line 122
    .line 123
    sget-object v3, Lgz7;->RUNNING:Lgz7;

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Lzy4;->i(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lpw6;->l()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lpw6;->b()V

    .line 132
    .line 133
    .line 134
    sget-object v3, Lgz7;->COMPLETE:Lgz7;

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Lzy4;->i(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object v2, v1, Lpw6;->i:Lex6;

    .line 140
    .line 141
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 142
    .line 143
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    const v4, 0x7f130207

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Lzy4;->i(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Lpw6;->d()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    invoke-virtual {v1, v2}, Lpw6;->n(I)V

    .line 162
    .line 163
    .line 164
    sget-object v1, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 165
    .line 166
    sget-object v1, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 167
    .line 168
    invoke-virtual {v1}, Lgz7;->isCancelled()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_0

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_2
    invoke-static {}, Ld6;->o()V

    .line 176
    .line 177
    .line 178
    :cond_3
    :goto_1
    return-void

    .line 179
    :cond_4
    const-string v0, "Task list empty!!!"

    .line 180
    .line 181
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_5
    invoke-static {}, Ld6;->o()V

    .line 186
    .line 187
    .line 188
    return-void
.end method
