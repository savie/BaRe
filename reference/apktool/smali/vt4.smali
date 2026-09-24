.class public abstract Lvt4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field protected final mLifecycleFragment:Lbu4;


# direct methods
.method public constructor <init>(Lbu4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvt4;->mLifecycleFragment:Lbu4;

    .line 5
    .line 6
    return-void
.end method

.method public static getFragment(Landroid/app/Activity;)Lbu4;
    .locals 1

    .line 169
    new-instance v0, Lut4;

    invoke-direct {v0, p0}, Lut4;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lvt4;->getFragment(Lut4;)Lbu4;

    move-result-object p0

    return-object p0
.end method

.method public static getFragment(Landroid/content/ContextWrapper;)Lbu4;
    .locals 0

    .line 170
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static getFragment(Lut4;)Lbu4;
    .locals 6

    .line 1
    iget-object p0, p0, Lut4;->a:Landroid/app/Activity;

    .line 2
    .line 3
    instance-of v0, p0, Landroidx/fragment/app/u;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    check-cast p0, Landroidx/fragment/app/u;

    .line 9
    .line 10
    sget-object v0, Lce9;->b:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    const-string v0, "SLifecycleFragmentImpl"

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Lce9;->b:Ljava/util/WeakHashMap;

    .line 19
    .line 20
    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lce9;

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    return-object v4

    .line 37
    :cond_0
    :try_start_0
    invoke-virtual {v2, v0}, Landroidx/fragment/app/z;->D(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lce9;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4}, Landroidx/fragment/app/o;->isRemoving()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    :cond_1
    new-instance v4, Lce9;

    .line 52
    .line 53
    invoke-direct {v4}, Lce9;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v1, Landroidx/fragment/app/a;

    .line 57
    .line 58
    invoke-direct {v1, v2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v5, 0x1

    .line 63
    invoke-virtual {v1, v2, v4, v0, v5}, Landroidx/fragment/app/a;->g(ILandroidx/fragment/app/o;Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v5, v5}, Landroidx/fragment/app/a;->f(ZZ)I

    .line 67
    .line 68
    .line 69
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 70
    .line 71
    invoke-direct {v0, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    return-object v4

    .line 78
    :catch_0
    move-exception p0

    .line 79
    const-string v0, "Fragment with tag SLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"

    .line 80
    .line 81
    invoke-static {v0, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_3
    if-eqz p0, :cond_8

    .line 86
    .line 87
    const-string v0, "LifecycleFragmentImpl"

    .line 88
    .line 89
    sget-object v2, Ls39;->b:Ljava/util/WeakHashMap;

    .line 90
    .line 91
    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 96
    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Ls39;

    .line 104
    .line 105
    if-nez v3, :cond_4

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    return-object v3

    .line 109
    :cond_5
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v3, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Ls39;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    .line 119
    if-eqz v3, :cond_6

    .line 120
    .line 121
    invoke-virtual {v3}, Landroid/app/Fragment;->isRemoving()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_7

    .line 126
    .line 127
    :cond_6
    new-instance v3, Ls39;

    .line 128
    .line 129
    invoke-direct {v3}, Ls39;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 145
    .line 146
    .line 147
    :cond_7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 148
    .line 149
    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    return-object v3

    .line 156
    :catch_1
    move-exception p0

    .line 157
    const-string v0, "Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl"

    .line 158
    .line 159
    invoke-static {v0, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    return-object v1

    .line 163
    :cond_8
    const-string p0, "Can\'t get fragment for unexpected activity."

    .line 164
    .line 165
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-object v1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lvt4;->mLifecycleFragment:Lbu4;

    .line 2
    .line 3
    invoke-interface {p0}, Lbu4;->c()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lly8;->h(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onStop()V
.end method
