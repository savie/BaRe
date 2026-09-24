.class public abstract Landroidx/fragment/app/u;
.super Lio1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field mCreated:Z

.field final mFragmentLifecycleRegistry:Lhu4;

.field final mFragments:Lke;

.field mResumed:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/fragment/app/t;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/u;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lke;

    .line 10
    .line 11
    const/4 v2, 0x7

    .line 12
    invoke-direct {v1, v0, v2}, Lke;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 16
    .line 17
    new-instance v0, Lhu4;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lhu4;-><init>(Lfu4;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lhu4;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Landroidx/fragment/app/u;->mStopped:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Lio1;->getSavedStateRegistry()Lot9;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Landroidx/fragment/app/p;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/u;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "android:support:lifecycle"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lot9;->h(Ljava/lang/String;Lux6;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroidx/fragment/app/q;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/u;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lio1;->addOnConfigurationChangedListener(Lyt1;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Landroidx/fragment/app/r;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Landroidx/fragment/app/r;-><init>(Landroidx/fragment/app/u;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lio1;->addOnNewIntentListener(Landroidx/fragment/app/r;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Landroidx/fragment/app/s;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Landroidx/fragment/app/s;-><init>(Landroidx/fragment/app/u;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lio1;->addOnContextAvailableListener(Lbt5;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static m(Landroidx/fragment/app/z;)Z
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->f()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_5

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/fragment/app/o;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v2, v1, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 34
    .line 35
    :goto_1
    if-eqz v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/o;->getChildFragmentManager()Landroidx/fragment/app/z;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Landroidx/fragment/app/u;->m(Landroidx/fragment/app/z;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    or-int/2addr v0, v2

    .line 46
    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 47
    .line 48
    const-string v3, "setCurrentState"

    .line 49
    .line 50
    sget-object v4, Lst4;->c:Lst4;

    .line 51
    .line 52
    sget-object v5, Lst4;->d:Lst4;

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/fragment/app/f0;->b()V

    .line 58
    .line 59
    .line 60
    iget-object v2, v2, Landroidx/fragment/app/f0;->e:Lhu4;

    .line 61
    .line 62
    iget-object v2, v2, Lhu4;->d:Lst4;

    .line 63
    .line 64
    invoke-virtual {v2, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ltz v2, :cond_4

    .line 69
    .line 70
    iget-object v0, v1, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 71
    .line 72
    iget-object v0, v0, Landroidx/fragment/app/f0;->e:Lhu4;

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Lhu4;->c(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4}, Lhu4;->e(Lst4;)V

    .line 78
    .line 79
    .line 80
    move v0, v6

    .line 81
    :cond_4
    iget-object v2, v1, Landroidx/fragment/app/o;->mLifecycleRegistry:Lhu4;

    .line 82
    .line 83
    iget-object v2, v2, Lhu4;->d:Lst4;

    .line 84
    .line 85
    invoke-virtual {v2, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-ltz v2, :cond_0

    .line 90
    .line 91
    iget-object v0, v1, Landroidx/fragment/app/o;->mLifecycleRegistry:Lhu4;

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Lhu4;->c(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Lhu4;->e(Lst4;)V

    .line 97
    .line 98
    .line 99
    move v0, v6

    .line 100
    goto :goto_0

    .line 101
    :cond_5
    return v0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    if-eqz p4, :cond_5

    .line 5
    .line 6
    array-length v0, p4

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    aget-object v0, p4, v0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sparse-switch v1, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :sswitch_0
    const-string v1, "--autofill"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_4

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :sswitch_1
    const-string v1, "--contentcapture"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v1, 0x1d

    .line 42
    .line 43
    if-lt v0, v1, :cond_5

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :sswitch_2
    const-string v1, "--list-dumpables"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :sswitch_3
    const-string v1, "--dump-dumpable"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    .line 66
    const/16 v1, 0x21

    .line 67
    .line 68
    if-lt v0, v1, :cond_5

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :sswitch_4
    const-string v1, "--translation"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 81
    .line 82
    const/16 v1, 0x1f

    .line 83
    .line 84
    if-lt v0, v1, :cond_5

    .line 85
    .line 86
    :cond_4
    :goto_0
    return-void

    .line 87
    :cond_5
    :goto_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "Local FragmentActivity "

    .line 91
    .line 92
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v0, " State:"

    .line 107
    .line 108
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v1, "  "

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v1, "mCreated="

    .line 132
    .line 133
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-boolean v1, p0, Landroidx/fragment/app/u;->mCreated:Z

    .line 137
    .line 138
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 139
    .line 140
    .line 141
    const-string v1, " mResumed="

    .line 142
    .line 143
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-boolean v1, p0, Landroidx/fragment/app/u;->mResumed:Z

    .line 147
    .line 148
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 149
    .line 150
    .line 151
    const-string v1, " mStopped="

    .line 152
    .line 153
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-boolean v1, p0, Landroidx/fragment/app/u;->mStopped:Z

    .line 157
    .line 158
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    if-eqz v1, :cond_6

    .line 166
    .line 167
    new-instance v1, Lro;

    .line 168
    .line 169
    invoke-interface {p0}, Lzl8;->getViewModelStore()Lyl8;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-direct {v1, p0, v2}, Lro;-><init>(Lfu4;Lyl8;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v0, p3}, Lro;->e(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 177
    .line 178
    .line 179
    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 180
    .line 181
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast p0, Landroidx/fragment/app/t;

    .line 184
    .line 185
    iget-object p0, p0, Landroidx/fragment/app/t;->k:Lur3;

    .line 186
    .line 187
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/z;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :sswitch_data_0
    .sparse-switch
        -0x2673d6ef -> :sswitch_4
        0x5fd0f67 -> :sswitch_3
        0x1c2b8816 -> :sswitch_2
        0x4519f64d -> :sswitch_1
        0x56b9c952 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getSupportFragmentManager()Lur3;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 2
    .line 3
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroidx/fragment/app/t;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/fragment/app/t;->k:Lur3;

    .line 8
    .line 9
    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 2
    .line 3
    invoke-virtual {v0}, Lke;->f()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lio1;->onActivityResult(IILandroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lio1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lhu4;

    .line 5
    .line 6
    sget-object v0, Lrt4;->ON_CREATE:Lrt4;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lhu4;->d(Lrt4;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 12
    .line 13
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Landroidx/fragment/app/t;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/fragment/app/t;->k:Lur3;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Landroidx/fragment/app/z;->H:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Landroidx/fragment/app/z;->I:Z

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 25
    .line 26
    iput-boolean p1, v0, Landroidx/fragment/app/a0;->g:Z

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->u(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 24
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 25
    iget-object v0, v0, Lke;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/t;

    .line 26
    iget-object v0, v0, Landroidx/fragment/app/t;->k:Lur3;

    .line 27
    iget-object v0, v0, Landroidx/fragment/app/z;->f:Landroidx/fragment/app/w;

    .line 28
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/w;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 2
    .line 3
    iget-object v0, v0, Lke;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/fragment/app/t;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/fragment/app/t;->k:Lur3;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/fragment/app/z;->f:Landroidx/fragment/app/w;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/fragment/app/w;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 5
    .line 6
    iget-object v0, v0, Lke;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/t;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/t;->k:Lur3;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/z;->l()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lhu4;

    .line 16
    .line 17
    sget-object v0, Lrt4;->ON_DESTROY:Lrt4;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lhu4;->d(Lrt4;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio1;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p2, 0x6

    .line 10
    if-ne p1, p2, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 13
    .line 14
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroidx/fragment/app/t;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/fragment/app/t;->k:Lur3;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/z;->j()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/u;->mResumed:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 8
    .line 9
    iget-object v0, v0, Lke;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroidx/fragment/app/t;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/fragment/app/t;->k:Lur3;

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/z;->u(I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lhu4;

    .line 20
    .line 21
    sget-object v0, Lrt4;->ON_PAUSE:Lrt4;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lhu4;->d(Lrt4;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lhu4;

    .line 5
    .line 6
    sget-object v1, Lrt4;->ON_RESUME:Lrt4;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lhu4;->d(Lrt4;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 12
    .line 13
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Landroidx/fragment/app/t;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/fragment/app/t;->k:Lur3;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroidx/fragment/app/z;->H:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Landroidx/fragment/app/z;->I:Z

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 25
    .line 26
    iput-boolean v0, v1, Landroidx/fragment/app/a0;->g:Z

    .line 27
    .line 28
    const/4 v0, 0x7

    .line 29
    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->u(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 2
    .line 3
    invoke-virtual {v0}, Lke;->f()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lio1;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 2
    .line 3
    invoke-virtual {v0}, Lke;->f()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Landroidx/fragment/app/u;->mResumed:Z

    .line 11
    .line 12
    iget-object p0, v0, Lke;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroidx/fragment/app/t;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/fragment/app/t;->k:Lur3;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/fragment/app/z;->z(Z)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 2
    .line 3
    invoke-virtual {v0}, Lke;->f()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lke;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/t;

    .line 9
    .line 10
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Landroidx/fragment/app/u;->mStopped:Z

    .line 15
    .line 16
    iget-boolean v2, p0, Landroidx/fragment/app/u;->mCreated:Z

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iput-boolean v3, p0, Landroidx/fragment/app/u;->mCreated:Z

    .line 22
    .line 23
    iget-object v2, v0, Landroidx/fragment/app/t;->k:Lur3;

    .line 24
    .line 25
    iput-boolean v1, v2, Landroidx/fragment/app/z;->H:Z

    .line 26
    .line 27
    iput-boolean v1, v2, Landroidx/fragment/app/z;->I:Z

    .line 28
    .line 29
    iget-object v4, v2, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 30
    .line 31
    iput-boolean v1, v4, Landroidx/fragment/app/a0;->g:Z

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    invoke-virtual {v2, v4}, Landroidx/fragment/app/z;->u(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v2, v0, Landroidx/fragment/app/t;->k:Lur3;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroidx/fragment/app/z;->z(Z)Z

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lhu4;

    .line 43
    .line 44
    sget-object v2, Lrt4;->ON_START:Lrt4;

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lhu4;->d(Lrt4;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, v0, Landroidx/fragment/app/t;->k:Lur3;

    .line 50
    .line 51
    iput-boolean v1, p0, Landroidx/fragment/app/z;->H:Z

    .line 52
    .line 53
    iput-boolean v1, p0, Landroidx/fragment/app/z;->I:Z

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 56
    .line 57
    iput-boolean v1, v0, Landroidx/fragment/app/a0;->g:Z

    .line 58
    .line 59
    const/4 v0, 0x5

    .line 60
    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->u(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final onStateNotSaved()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 2
    .line 3
    invoke-virtual {p0}, Lke;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/u;->mStopped:Z

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroidx/fragment/app/u;->m(Landroidx/fragment/app/z;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/fragment/app/u;->mFragments:Lke;

    .line 18
    .line 19
    iget-object v1, v1, Lke;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Landroidx/fragment/app/t;

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/fragment/app/t;->k:Lur3;

    .line 24
    .line 25
    iput-boolean v0, v1, Landroidx/fragment/app/z;->I:Z

    .line 26
    .line 27
    iget-object v2, v1, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 28
    .line 29
    iput-boolean v0, v2, Landroidx/fragment/app/a0;->g:Z

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    invoke-virtual {v1, v0}, Landroidx/fragment/app/z;->u(I)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lhu4;

    .line 36
    .line 37
    sget-object v0, Lrt4;->ON_STOP:Lrt4;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lhu4;->d(Lrt4;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
