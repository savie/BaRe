.class public final Ll76;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ll76;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll76;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll76;->a:Ll76;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "activity"

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    instance-of v2, p0, Landroid/app/ActivityManager;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    check-cast p0, Landroid/app/ActivityManager;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object p0, v3

    .line 31
    :goto_0
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-nez p0, :cond_2

    .line 38
    .line 39
    :cond_1
    sget-object p0, Lov2;->a:Lov2;

    .line 40
    .line 41
    :cond_2
    invoke-static {p0}, Lel1;->Q0(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    move-object v5, v4

    .line 65
    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 66
    .line 67
    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 68
    .line 69
    if-ne v5, v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    .line 76
    .line 77
    const/16 v0, 0xa

    .line 78
    .line 79
    invoke-static {v2, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_6

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 101
    .line 102
    new-instance v4, Lvc0;

    .line 103
    .line 104
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 108
    .line 109
    if-eqz v5, :cond_5

    .line 110
    .line 111
    iput-object v5, v4, Lvc0;->a:Ljava/lang/String;

    .line 112
    .line 113
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 114
    .line 115
    iput v6, v4, Lvc0;->b:I

    .line 116
    .line 117
    iget-byte v6, v4, Lvc0;->e:B

    .line 118
    .line 119
    or-int/lit8 v6, v6, 0x1

    .line 120
    .line 121
    int-to-byte v6, v6

    .line 122
    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 123
    .line 124
    iput v2, v4, Lvc0;->c:I

    .line 125
    .line 126
    or-int/lit8 v2, v6, 0x2

    .line 127
    .line 128
    int-to-byte v2, v2

    .line 129
    iput-byte v2, v4, Lvc0;->e:B

    .line 130
    .line 131
    invoke-static {v5, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    iput-boolean v2, v4, Lvc0;->d:Z

    .line 136
    .line 137
    iget-byte v2, v4, Lvc0;->e:B

    .line 138
    .line 139
    or-int/lit8 v2, v2, 0x4

    .line 140
    .line 141
    int-to-byte v2, v2

    .line 142
    iput-byte v2, v4, Lvc0;->e:B

    .line 143
    .line 144
    invoke-virtual {v4}, Lvc0;->a()Lwc0;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    const-string p0, "Null processName"

    .line 153
    .line 154
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-object v3

    .line 158
    :cond_6
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lrz1;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    invoke-static {p1}, Ll76;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Lrz1;

    .line 28
    .line 29
    check-cast v1, Lwc0;

    .line 30
    .line 31
    iget v1, v1, Lwc0;->b:I

    .line 32
    .line 33
    if-ne v1, p0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    check-cast v0, Lrz1;

    .line 38
    .line 39
    if-nez v0, :cond_5

    .line 40
    .line 41
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v0, 0x21

    .line 44
    .line 45
    if-le p1, v0, :cond_2

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/16 v0, 0x1c

    .line 56
    .line 57
    const-string v1, ""

    .line 58
    .line 59
    if-lt p1, v0, :cond_3

    .line 60
    .line 61
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_4

    .line 66
    .line 67
    :cond_3
    move-object p1, v1

    .line 68
    :cond_4
    :goto_1
    new-instance v0, Lvc0;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p1, v0, Lvc0;->a:Ljava/lang/String;

    .line 74
    .line 75
    iput p0, v0, Lvc0;->b:I

    .line 76
    .line 77
    iget-byte p0, v0, Lvc0;->e:B

    .line 78
    .line 79
    or-int/lit8 p0, p0, 0x1

    .line 80
    .line 81
    int-to-byte p0, p0

    .line 82
    const/4 p1, 0x0

    .line 83
    iput p1, v0, Lvc0;->c:I

    .line 84
    .line 85
    or-int/lit8 p0, p0, 0x2

    .line 86
    .line 87
    int-to-byte p0, p0

    .line 88
    iput-boolean p1, v0, Lvc0;->d:Z

    .line 89
    .line 90
    or-int/lit8 p0, p0, 0x4

    .line 91
    .line 92
    int-to-byte p0, p0

    .line 93
    iput-byte p0, v0, Lvc0;->e:B

    .line 94
    .line 95
    invoke-virtual {v0}, Lvc0;->a()Lwc0;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_5
    return-object v0
.end method
