.class public final Lxx6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lwl8;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lvl8;

.field public final c:Landroid/os/Bundle;

.field public final d:Lhu4;

.field public final e:Lot9;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lwx6;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Lwx6;->getSavedStateRegistry()Lot9;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lxx6;->e:Lot9;

    .line 9
    .line 10
    invoke-interface {p2}, Lfu4;->getLifecycle()Lhu4;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lxx6;->d:Lhu4;

    .line 15
    .line 16
    iput-object p3, p0, Lxx6;->c:Landroid/os/Bundle;

    .line 17
    .line 18
    iput-object p1, p0, Lxx6;->a:Landroid/app/Application;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    sget-object p2, Lvl8;->c:Lvl8;

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    new-instance p2, Lvl8;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Lvl8;-><init>(Landroid/app/Application;)V

    .line 29
    .line 30
    .line 31
    sput-object p2, Lvl8;->c:Lvl8;

    .line 32
    .line 33
    :cond_0
    sget-object p1, Lvl8;->c:Lvl8;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Lvl8;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-direct {p1, p2}, Lvl8;-><init>(Landroid/app/Application;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iput-object p1, p0, Lxx6;->b:Lvl8;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ltl8;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lxx6;->d(Ljava/lang/Class;Ljava/lang/String;)Ltl8;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 13
    .line 14
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public final b(Ljava/lang/Class;Lej5;)Ltl8;
    .locals 4

    .line 1
    sget-object v0, Lg67;->f:Lnh4;

    .line 2
    .line 3
    iget-object v1, p2, Ln22;->a:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    sget-object v3, Lcy0;->c:Lq34;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_3

    .line 21
    .line 22
    sget-object v3, Lcy0;->d:Lma2;

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    sget-object v0, Lvl8;->d:Lsl4;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/app/Application;

    .line 37
    .line 38
    const-class v1, Lxb;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    sget-object v2, Lyx6;->a:Ljava/util/List;

    .line 49
    .line 50
    invoke-static {v2, p1}, Lyx6;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget-object v2, Lyx6;->b:Ljava/util/List;

    .line 56
    .line 57
    invoke-static {v2, p1}, Lyx6;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_0
    if-nez v2, :cond_1

    .line 62
    .line 63
    iget-object p0, p0, Lxx6;->b:Lvl8;

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2}, Lvl8;->b(Ljava/lang/Class;Lej5;)Ltl8;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_1
    if-eqz v1, :cond_2

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-static {p2}, Lcy0;->m(Lej5;)Lmx6;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p1, v2, p0}, Lyx6;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ltl8;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_2
    invoke-static {p2}, Lcy0;->m(Lej5;)Lmx6;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p1, v2, p0}, Lyx6;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ltl8;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_3
    iget-object p2, p0, Lxx6;->d:Lhu4;

    .line 101
    .line 102
    if-eqz p2, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0, p1, v0}, Lxx6;->d(Ljava/lang/Class;Ljava/lang/String;)Ltl8;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :cond_4
    const-string p0, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    .line 110
    .line 111
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v2

    .line 115
    :cond_5
    const-string p0, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    .line 116
    .line 117
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-object v2
.end method

.method public final c(Ln81;Lej5;)Ltl8;
    .locals 0

    .line 1
    iget-object p1, p1, Ln81;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lxx6;->b(Ljava/lang/Class;Lej5;)Ltl8;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final d(Ljava/lang/Class;Ljava/lang/String;)Ltl8;
    .locals 7

    .line 1
    iget-object v0, p0, Lxx6;->d:Lhu4;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    const-class v1, Lxb;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lxx6;->a:Landroid/app/Application;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    sget-object v2, Lyx6;->a:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {v2, p1}, Lyx6;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v2, Lyx6;->b:Ljava/util/List;

    .line 25
    .line 26
    invoke-static {v2, p1}, Lyx6;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    if-nez v2, :cond_3

    .line 31
    .line 32
    iget-object p2, p0, Lxx6;->a:Landroid/app/Application;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lxx6;->b:Lvl8;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lvl8;->a(Ljava/lang/Class;)Ltl8;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    sget-object p0, Lxl8;->a:Lxl8;

    .line 44
    .line 45
    if-nez p0, :cond_2

    .line 46
    .line 47
    new-instance p0, Lxl8;

    .line 48
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object p0, Lxl8;->a:Lxl8;

    .line 53
    .line 54
    :cond_2
    sget-object p0, Lxl8;->a:Lxl8;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lxh8;->g(Ljava/lang/Class;)Ltl8;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_3
    iget-object v3, p0, Lxx6;->e:Lot9;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lxx6;->c:Landroid/os/Bundle;

    .line 70
    .line 71
    invoke-virtual {v3, p2}, Lot9;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v5, v4}, Ljm1;->k(Landroid/os/Bundle;Landroid/os/Bundle;)Lmx6;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    new-instance v5, Lox6;

    .line 80
    .line 81
    invoke-direct {v5, p2, v4}, Lox6;-><init>(Ljava/lang/String;Lmx6;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v0, v3}, Lox6;->a(Lhu4;Lot9;)V

    .line 85
    .line 86
    .line 87
    iget-object p2, v0, Lhu4;->d:Lst4;

    .line 88
    .line 89
    sget-object v6, Lst4;->b:Lst4;

    .line 90
    .line 91
    if-eq p2, v6, :cond_5

    .line 92
    .line 93
    sget-object v6, Lst4;->d:Lst4;

    .line 94
    .line 95
    invoke-virtual {p2, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-ltz p2, :cond_4

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    new-instance p2, Ldt4;

    .line 103
    .line 104
    invoke-direct {p2, v0, v3}, Ldt4;-><init>(Lhu4;Lot9;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p2}, Lhu4;->a(Leu4;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    :goto_1
    invoke-virtual {v3}, Lot9;->i()V

    .line 112
    .line 113
    .line 114
    :goto_2
    if-eqz v1, :cond_6

    .line 115
    .line 116
    iget-object p0, p0, Lxx6;->a:Landroid/app/Application;

    .line 117
    .line 118
    if-eqz p0, :cond_6

    .line 119
    .line 120
    filled-new-array {p0, v4}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {p1, v2, p0}, Lyx6;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ltl8;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    goto :goto_3

    .line 129
    :cond_6
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {p1, v2, p0}, Lyx6;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ltl8;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    :goto_3
    const-string p1, "androidx.lifecycle.savedstate.vm.tag"

    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iget-object p2, p0, Ltl8;->a:Lul8;

    .line 143
    .line 144
    if-eqz p2, :cond_8

    .line 145
    .line 146
    iget-boolean v0, p2, Lul8;->d:Z

    .line 147
    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    invoke-static {v5}, Lul8;->a(Ljava/lang/AutoCloseable;)V

    .line 151
    .line 152
    .line 153
    return-object p0

    .line 154
    :cond_7
    iget-object v0, p2, Lul8;->a:Lus2;

    .line 155
    .line 156
    monitor-enter v0

    .line 157
    :try_start_0
    iget-object p2, p2, Lul8;->b:Ljava/util/LinkedHashMap;

    .line 158
    .line 159
    invoke-interface {p2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .line 165
    monitor-exit v0

    .line 166
    invoke-static {p1}, Lul8;->a(Ljava/lang/AutoCloseable;)V

    .line 167
    .line 168
    .line 169
    return-object p0

    .line 170
    :catchall_0
    move-exception p0

    .line 171
    monitor-exit v0

    .line 172
    throw p0

    .line 173
    :cond_8
    return-object p0

    .line 174
    :cond_9
    const-string p0, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    .line 175
    .line 176
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const/4 p0, 0x0

    .line 180
    return-object p0
.end method
