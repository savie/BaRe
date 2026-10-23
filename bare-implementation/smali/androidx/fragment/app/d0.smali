.class public final Landroidx/fragment/app/d0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lw00;

.field public final b:Landroidx/fragment/app/e0;

.field public final c:Landroidx/fragment/app/o;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Lw00;Landroidx/fragment/app/e0;Landroidx/fragment/app/o;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Landroidx/fragment/app/d0;->d:Z

    const/4 v0, -0x1

    .line 140
    iput v0, p0, Landroidx/fragment/app/d0;->e:I

    .line 141
    iput-object p1, p0, Landroidx/fragment/app/d0;->a:Lw00;

    .line 142
    iput-object p2, p0, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/e0;

    .line 143
    iput-object p3, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    return-void
.end method

.method public constructor <init>(Lw00;Landroidx/fragment/app/e0;Landroidx/fragment/app/o;Landroid/os/Bundle;)V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Landroidx/fragment/app/d0;->d:Z

    const/4 v1, -0x1

    .line 146
    iput v1, p0, Landroidx/fragment/app/d0;->e:I

    .line 147
    iput-object p1, p0, Landroidx/fragment/app/d0;->a:Lw00;

    .line 148
    iput-object p2, p0, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/e0;

    .line 149
    iput-object p3, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    const/4 p0, 0x0

    .line 150
    iput-object p0, p3, Landroidx/fragment/app/o;->mSavedViewState:Landroid/util/SparseArray;

    .line 151
    iput-object p0, p3, Landroidx/fragment/app/o;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 152
    iput v0, p3, Landroidx/fragment/app/o;->mBackStackNesting:I

    .line 153
    iput-boolean v0, p3, Landroidx/fragment/app/o;->mInLayout:Z

    .line 154
    iput-boolean v0, p3, Landroidx/fragment/app/o;->mAdded:Z

    .line 155
    iget-object p1, p3, Landroidx/fragment/app/o;->mTarget:Landroidx/fragment/app/o;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p3, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 156
    iput-object p0, p3, Landroidx/fragment/app/o;->mTarget:Landroidx/fragment/app/o;

    .line 157
    iput-object p4, p3, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 158
    const-string p0, "arguments"

    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, p3, Landroidx/fragment/app/o;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lw00;Landroidx/fragment/app/e0;Ljava/lang/ClassLoader;Lor3;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/d0;->d:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroidx/fragment/app/d0;->e:I

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/fragment/app/d0;->a:Lw00;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/e0;

    .line 13
    .line 14
    const-string p1, "state"

    .line 15
    .line 16
    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/fragment/app/c0;

    .line 21
    .line 22
    iget-object p2, p1, Landroidx/fragment/app/c0;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p4, p2}, Lor3;->a(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iget-object p4, p1, Landroidx/fragment/app/c0;->b:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p4, p2, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 31
    .line 32
    iget-boolean p4, p1, Landroidx/fragment/app/c0;->c:Z

    .line 33
    .line 34
    iput-boolean p4, p2, Landroidx/fragment/app/o;->mFromLayout:Z

    .line 35
    .line 36
    iget-boolean p4, p1, Landroidx/fragment/app/c0;->d:Z

    .line 37
    .line 38
    iput-boolean p4, p2, Landroidx/fragment/app/o;->mInDynamicContainer:Z

    .line 39
    .line 40
    const/4 p4, 0x1

    .line 41
    iput-boolean p4, p2, Landroidx/fragment/app/o;->mRestored:Z

    .line 42
    .line 43
    iget p4, p1, Landroidx/fragment/app/c0;->e:I

    .line 44
    .line 45
    iput p4, p2, Landroidx/fragment/app/o;->mFragmentId:I

    .line 46
    .line 47
    iget p4, p1, Landroidx/fragment/app/c0;->f:I

    .line 48
    .line 49
    iput p4, p2, Landroidx/fragment/app/o;->mContainerId:I

    .line 50
    .line 51
    iget-object p4, p1, Landroidx/fragment/app/c0;->k:Ljava/lang/String;

    .line 52
    .line 53
    iput-object p4, p2, Landroidx/fragment/app/o;->mTag:Ljava/lang/String;

    .line 54
    .line 55
    iget-boolean p4, p1, Landroidx/fragment/app/c0;->n:Z

    .line 56
    .line 57
    iput-boolean p4, p2, Landroidx/fragment/app/o;->mRetainInstance:Z

    .line 58
    .line 59
    iget-boolean p4, p1, Landroidx/fragment/app/c0;->p:Z

    .line 60
    .line 61
    iput-boolean p4, p2, Landroidx/fragment/app/o;->mRemoving:Z

    .line 62
    .line 63
    iget-boolean p4, p1, Landroidx/fragment/app/c0;->q:Z

    .line 64
    .line 65
    iput-boolean p4, p2, Landroidx/fragment/app/o;->mDetached:Z

    .line 66
    .line 67
    iget-boolean p4, p1, Landroidx/fragment/app/c0;->r:Z

    .line 68
    .line 69
    iput-boolean p4, p2, Landroidx/fragment/app/o;->mHidden:Z

    .line 70
    .line 71
    invoke-static {}, Lst4;->values()[Lst4;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    iget v0, p1, Landroidx/fragment/app/c0;->t:I

    .line 76
    .line 77
    aget-object p4, p4, v0

    .line 78
    .line 79
    iput-object p4, p2, Landroidx/fragment/app/o;->mMaxState:Lst4;

    .line 80
    .line 81
    iget-object p4, p1, Landroidx/fragment/app/c0;->x:Ljava/lang/String;

    .line 82
    .line 83
    iput-object p4, p2, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 84
    .line 85
    iget p4, p1, Landroidx/fragment/app/c0;->y:I

    .line 86
    .line 87
    iput p4, p2, Landroidx/fragment/app/o;->mTargetRequestCode:I

    .line 88
    .line 89
    iget-boolean p1, p1, Landroidx/fragment/app/c0;->G:Z

    .line 90
    .line 91
    iput-boolean p1, p2, Landroidx/fragment/app/o;->mUserVisibleHint:Z

    .line 92
    .line 93
    iput-object p2, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 94
    .line 95
    iput-object p5, p2, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 96
    .line 97
    const-string p0, "arguments"

    .line 98
    .line 99
    invoke-virtual {p5, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-eqz p0, :cond_0

    .line 104
    .line 105
    invoke-virtual {p0, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 106
    .line 107
    .line 108
    :cond_0
    invoke-virtual {p2, p0}, Landroidx/fragment/app/o;->setArguments(Landroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    const/4 p0, 0x2

    .line 112
    invoke-static {p0}, Landroidx/fragment/app/z;->K(I)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_1

    .line 117
    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string p1, "Instantiated fragment "

    .line 121
    .line 122
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    const-string p1, "FragmentManager"

    .line 133
    .line 134
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto ACTIVITY_CREATED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-string v2, "savedInstanceState"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->performActivityCreated(Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Landroidx/fragment/app/d0;->a:Lw00;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v1, v0}, Lw00;->c(Landroidx/fragment/app/o;Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 4
    .line 5
    :goto_0
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    const v3, 0x7f0a0246

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    instance-of v4, v3, Landroidx/fragment/app/o;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    check-cast v3, Landroidx/fragment/app/o;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move-object v3, v2

    .line 23
    :goto_1
    if-eqz v3, :cond_1

    .line 24
    .line 25
    move-object v2, v3

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    instance-of v3, v1, Landroid/view/View;

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    check-cast v1, Landroid/view/View;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-object v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    :goto_2
    iget-object v1, v0, Landroidx/fragment/app/o;->mParentFragment:Landroidx/fragment/app/o;

    .line 41
    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    if-eq v2, v1, :cond_4

    .line 45
    .line 46
    iget v1, v0, Landroidx/fragment/app/o;->mContainerId:I

    .line 47
    .line 48
    sget-object v3, Lbs3;->a:Las3;

    .line 49
    .line 50
    new-instance v3, Lrw8;

    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v5, "Attempting to nest fragment "

    .line 55
    .line 56
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v5, " within the view of parent fragment "

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, " via container with ID "

    .line 71
    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v2, " without using parent\'s childFragmentManager"

    .line 76
    .line 77
    invoke-static {v4, v1, v2}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-direct {v3, v0, v1}, Lgn8;-><init>(Landroidx/fragment/app/o;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v3}, Lbs3;->b(Lgn8;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lbs3;->a(Landroidx/fragment/app/o;)Las3;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    :cond_4
    iget-object p0, p0, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/e0;

    .line 95
    .line 96
    iget-object p0, p0, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 97
    .line 98
    iget-object v1, v0, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 99
    .line 100
    const/4 v2, -0x1

    .line 101
    if-nez v1, :cond_5

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_5
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    add-int/lit8 v4, v3, -0x1

    .line 109
    .line 110
    :goto_3
    if-ltz v4, :cond_7

    .line 111
    .line 112
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Landroidx/fragment/app/o;

    .line 117
    .line 118
    iget-object v6, v5, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 119
    .line 120
    if-ne v6, v1, :cond_6

    .line 121
    .line 122
    iget-object v5, v5, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 123
    .line 124
    if-eqz v5, :cond_6

    .line 125
    .line 126
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    add-int/lit8 v2, p0, 0x1

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-ge v3, v4, :cond_9

    .line 143
    .line 144
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Landroidx/fragment/app/o;

    .line 149
    .line 150
    iget-object v5, v4, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 151
    .line 152
    if-ne v5, v1, :cond_8

    .line 153
    .line 154
    iget-object v4, v4, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 155
    .line 156
    if-eqz v4, :cond_8

    .line 157
    .line 158
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    goto :goto_5

    .line 163
    :cond_8
    goto :goto_4

    .line 164
    :cond_9
    :goto_5
    iget-object p0, v0, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 165
    .line 166
    iget-object v0, v0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 167
    .line 168
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto ATTACHED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/o;->mTarget:Landroidx/fragment/app/o;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const-string v3, " that does not belong to this FragmentManager!"

    .line 33
    .line 34
    const-string v4, " declared target fragment "

    .line 35
    .line 36
    const-string v5, "Fragment "

    .line 37
    .line 38
    iget-object v6, p0, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/e0;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, v0, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v6, v6, Landroidx/fragment/app/e0;->b:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/fragment/app/d0;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v3, v1, Landroidx/fragment/app/o;->mTarget:Landroidx/fragment/app/o;

    .line 55
    .line 56
    iget-object v3, v3, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v3, v1, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v2, v1, Landroidx/fragment/app/o;->mTarget:Landroidx/fragment/app/o;

    .line 61
    .line 62
    move-object v2, v0

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v1, v1, Landroidx/fragment/app/o;->mTarget:Landroidx/fragment/app/o;

    .line 75
    .line 76
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_2
    iget-object v0, v1, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    iget-object v2, v6, Landroidx/fragment/app/e0;->b:Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    move-object v2, v0

    .line 104
    check-cast v2, Landroidx/fragment/app/d0;

    .line 105
    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v0, v1, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {p0, v0, v3}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 131
    .line 132
    invoke-virtual {v2}, Landroidx/fragment/app/d0;->k()V

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object v0, v1, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 136
    .line 137
    iget-object v2, v0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 138
    .line 139
    iput-object v2, v1, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 140
    .line 141
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 142
    .line 143
    iput-object v0, v1, Landroidx/fragment/app/o;->mParentFragment:Landroidx/fragment/app/o;

    .line 144
    .line 145
    iget-object p0, p0, Landroidx/fragment/app/d0;->a:Lw00;

    .line 146
    .line 147
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v1, v0}, Lw00;->j(Landroidx/fragment/app/o;Z)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Landroidx/fragment/app/o;->performAttach()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v1, v0}, Lw00;->d(Landroidx/fragment/app/o;Z)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public final d()I
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget p0, v0, Landroidx/fragment/app/o;->mState:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    iget v1, p0, Landroidx/fragment/app/d0;->e:I

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/fragment/app/o;->mMaxState:Lst4;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x5

    .line 20
    const/4 v5, -0x1

    .line 21
    const/4 v6, 0x3

    .line 22
    const/4 v7, 0x4

    .line 23
    const/4 v8, 0x2

    .line 24
    const/4 v9, 0x1

    .line 25
    if-eq v2, v9, :cond_3

    .line 26
    .line 27
    if-eq v2, v8, :cond_2

    .line 28
    .line 29
    if-eq v2, v6, :cond_1

    .line 30
    .line 31
    if-eq v2, v7, :cond_4

    .line 32
    .line 33
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_4
    :goto_0
    iget-boolean v2, v0, Landroidx/fragment/app/o;->mFromLayout:Z

    .line 53
    .line 54
    if-eqz v2, :cond_7

    .line 55
    .line 56
    iget-boolean v2, v0, Landroidx/fragment/app/o;->mInLayout:Z

    .line 57
    .line 58
    iget p0, p0, Landroidx/fragment/app/d0;->e:I

    .line 59
    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    invoke-static {p0, v8}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object p0, v0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 67
    .line 68
    if-eqz p0, :cond_7

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-nez p0, :cond_7

    .line 75
    .line 76
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_1

    .line 81
    :cond_5
    if-ge p0, v7, :cond_6

    .line 82
    .line 83
    iget p0, v0, Landroidx/fragment/app/o;->mState:I

    .line 84
    .line 85
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    goto :goto_1

    .line 90
    :cond_6
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    :cond_7
    :goto_1
    iget-boolean p0, v0, Landroidx/fragment/app/o;->mInDynamicContainer:Z

    .line 95
    .line 96
    if-eqz p0, :cond_8

    .line 97
    .line 98
    iget-object p0, v0, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 99
    .line 100
    if-nez p0, :cond_8

    .line 101
    .line 102
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    :cond_8
    iget-boolean p0, v0, Landroidx/fragment/app/o;->mAdded:Z

    .line 107
    .line 108
    if-nez p0, :cond_9

    .line 109
    .line 110
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    :cond_9
    iget-object p0, v0, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 115
    .line 116
    if-eqz p0, :cond_d

    .line 117
    .line 118
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {p0, v2}, Landroidx/fragment/app/g;->i(Landroid/view/ViewGroup;Landroidx/fragment/app/z;)Landroidx/fragment/app/g;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0, v0}, Landroidx/fragment/app/g;->f(Landroidx/fragment/app/o;)Landroidx/fragment/app/h0;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    if-eqz v2, :cond_a

    .line 131
    .line 132
    iget v2, v2, Landroidx/fragment/app/h0;->b:I

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_a
    move v2, v3

    .line 136
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/g;->g(Landroidx/fragment/app/o;)Landroidx/fragment/app/h0;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    if-eqz p0, :cond_b

    .line 141
    .line 142
    iget v3, p0, Landroidx/fragment/app/h0;->b:I

    .line 143
    .line 144
    :cond_b
    if-nez v2, :cond_c

    .line 145
    .line 146
    move p0, v5

    .line 147
    goto :goto_3

    .line 148
    :cond_c
    sget-object p0, Lak7;->a:[I

    .line 149
    .line 150
    invoke-static {v2}, Ldj7;->A(I)I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    aget p0, p0, v10

    .line 155
    .line 156
    :goto_3
    if-eq p0, v5, :cond_d

    .line 157
    .line 158
    if-eq p0, v9, :cond_d

    .line 159
    .line 160
    move v3, v2

    .line 161
    :cond_d
    if-ne v3, v8, :cond_e

    .line 162
    .line 163
    const/4 p0, 0x6

    .line 164
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    goto :goto_4

    .line 169
    :cond_e
    if-ne v3, v6, :cond_f

    .line 170
    .line 171
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    goto :goto_4

    .line 176
    :cond_f
    iget-boolean p0, v0, Landroidx/fragment/app/o;->mRemoving:Z

    .line 177
    .line 178
    if-eqz p0, :cond_11

    .line 179
    .line 180
    invoke-virtual {v0}, Landroidx/fragment/app/o;->isInBackStack()Z

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    if-eqz p0, :cond_10

    .line 185
    .line 186
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    goto :goto_4

    .line 191
    :cond_10
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    :cond_11
    :goto_4
    iget-boolean p0, v0, Landroidx/fragment/app/o;->mDeferStart:Z

    .line 196
    .line 197
    if-eqz p0, :cond_12

    .line 198
    .line 199
    iget p0, v0, Landroidx/fragment/app/o;->mState:I

    .line 200
    .line 201
    if-ge p0, v4, :cond_12

    .line 202
    .line 203
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    :cond_12
    iget-boolean p0, v0, Landroidx/fragment/app/o;->mTransitioning:Z

    .line 208
    .line 209
    if-eqz p0, :cond_13

    .line 210
    .line 211
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    :cond_13
    invoke-static {v8}, Landroidx/fragment/app/z;->K(I)Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-eqz p0, :cond_14

    .line 220
    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v2, "computeExpectedState() of "

    .line 224
    .line 225
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v2, " for "

    .line 232
    .line 233
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    const-string v0, "FragmentManager"

    .line 244
    .line 245
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    :cond_14
    return v1
.end method

.method public final e()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto CREATED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-string v2, "savedInstanceState"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    iget-boolean v2, v1, Landroidx/fragment/app/o;->mIsCreated:Z

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/fragment/app/d0;->a:Lw00;

    .line 47
    .line 48
    invoke-virtual {p0, v1, v3}, Lw00;->k(Landroidx/fragment/app/o;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->performCreate(Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1, v3}, Lw00;->e(Landroidx/fragment/app/o;Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    const/4 p0, 0x1

    .line 59
    iput p0, v1, Landroidx/fragment/app/o;->mState:I

    .line 60
    .line 61
    iget-object v0, v1, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    const-string v2, "childFragmentManager"

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v2, v1, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Landroidx/fragment/app/z;->X(Landroid/os/Bundle;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v1, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 79
    .line 80
    iput-boolean v3, v0, Landroidx/fragment/app/z;->H:Z

    .line 81
    .line 82
    iput-boolean v3, v0, Landroidx/fragment/app/z;->I:Z

    .line 83
    .line 84
    iget-object v1, v0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 85
    .line 86
    iput-boolean v3, v1, Landroidx/fragment/app/a0;->g:Z

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Landroidx/fragment/app/z;->u(I)V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void
.end method

.method public final f()V
    .locals 11

    .line 1
    iget-object v5, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 2
    .line 3
    iget-boolean v0, v5, Landroidx/fragment/app/o;->mFromLayout:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "FragmentManager"

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "moveto CREATE_VIEW: "

    .line 20
    .line 21
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, v5, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 35
    .line 36
    const-string v3, "savedInstanceState"

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move-object v1, v4

    .line 47
    :goto_0
    invoke-virtual {v5, v1}, Landroidx/fragment/app/o;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iput-object v6, v5, Landroidx/fragment/app/o;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 52
    .line 53
    iget-object v7, v5, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 54
    .line 55
    if-eqz v7, :cond_3

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_3
    iget v7, v5, Landroidx/fragment/app/o;->mContainerId:I

    .line 60
    .line 61
    if-eqz v7, :cond_7

    .line 62
    .line 63
    const/4 v8, -0x1

    .line 64
    if-eq v7, v8, :cond_6

    .line 65
    .line 66
    iget-object v8, v5, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 67
    .line 68
    iget-object v8, v8, Landroidx/fragment/app/z;->x:Lms8;

    .line 69
    .line 70
    invoke-virtual {v8, v7}, Lms8;->C(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    check-cast v7, Landroid/view/ViewGroup;

    .line 75
    .line 76
    if-nez v7, :cond_5

    .line 77
    .line 78
    iget-boolean v8, v5, Landroidx/fragment/app/o;->mRestored:Z

    .line 79
    .line 80
    if-nez v8, :cond_8

    .line 81
    .line 82
    iget-boolean v8, v5, Landroidx/fragment/app/o;->mInDynamicContainer:Z

    .line 83
    .line 84
    if-eqz v8, :cond_4

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    :try_start_0
    invoke-virtual {v5}, Landroidx/fragment/app/o;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    iget v0, v5, Landroidx/fragment/app/o;->mContainerId:I

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    move-object v3, p0

    .line 98
    goto :goto_2

    .line 99
    :catch_0
    const-string p0, "unknown"

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :goto_2
    iget p0, v5, Landroidx/fragment/app/o;->mContainerId:I

    .line 103
    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v2, " ("

    .line 109
    .line 110
    const-string v4, ") for fragment "

    .line 111
    .line 112
    const-string v0, "No view found for id 0x"

    .line 113
    .line 114
    invoke-static/range {v0 .. v5}, Lq;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_5
    instance-of v8, v7, Landroidx/fragment/app/FragmentContainerView;

    .line 119
    .line 120
    if-nez v8, :cond_8

    .line 121
    .line 122
    sget-object v8, Lbs3;->a:Las3;

    .line 123
    .line 124
    new-instance v8, Lqw8;

    .line 125
    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v10, "Attempting to add fragment "

    .line 129
    .line 130
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v10, " to container "

    .line 137
    .line 138
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v10, " which is not a FragmentContainerView"

    .line 145
    .line 146
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-direct {v8, v5, v9}, Lgn8;-><init>(Landroidx/fragment/app/o;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v8}, Lbs3;->b(Lgn8;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v5}, Lbs3;->a(Landroidx/fragment/app/o;)Las3;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_6
    const-string p0, "Cannot create fragment "

    .line 168
    .line 169
    const-string v0, " for a container view with no id"

    .line 170
    .line 171
    invoke-static {p0, v5, v0}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_7
    move-object v7, v4

    .line 180
    :cond_8
    :goto_3
    iput-object v7, v5, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 181
    .line 182
    invoke-virtual {v5, v6, v7, v1}, Landroidx/fragment/app/o;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, v5, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 186
    .line 187
    const/4 v6, 0x2

    .line 188
    if-eqz v1, :cond_f

    .line 189
    .line 190
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_9

    .line 195
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v1, "moveto VIEW_CREATED: "

    .line 199
    .line 200
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    :cond_9
    iget-object v0, v5, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 214
    .line 215
    const/4 v1, 0x0

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 217
    .line 218
    .line 219
    iget-object v0, v5, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 220
    .line 221
    const v8, 0x7f0a0246

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v8, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    if-eqz v7, :cond_a

    .line 228
    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/d0;->b()V

    .line 230
    .line 231
    .line 232
    :cond_a
    iget-boolean v0, v5, Landroidx/fragment/app/o;->mHidden:Z

    .line 233
    .line 234
    if-eqz v0, :cond_b

    .line 235
    .line 236
    iget-object v0, v5, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 237
    .line 238
    const/16 v7, 0x8

    .line 239
    .line 240
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    :cond_b
    iget-object v0, v5, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 244
    .line 245
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iget-object v7, v5, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 250
    .line 251
    if-eqz v0, :cond_c

    .line 252
    .line 253
    sget-object v0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 254
    .line 255
    invoke-virtual {v7}, Landroid/view/View;->requestApplyInsets()V

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_c
    new-instance v0, Lzr3;

    .line 260
    .line 261
    invoke-direct {v0, v7}, Lzr3;-><init>(Landroid/view/View;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v7, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 265
    .line 266
    .line 267
    :goto_4
    iget-object v0, v5, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 268
    .line 269
    if-eqz v0, :cond_d

    .line 270
    .line 271
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    :cond_d
    iget-object v0, v5, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 276
    .line 277
    invoke-virtual {v5, v0, v4}, Landroidx/fragment/app/o;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, v5, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 281
    .line 282
    invoke-virtual {v0, v6}, Landroidx/fragment/app/z;->u(I)V

    .line 283
    .line 284
    .line 285
    iget-object p0, p0, Landroidx/fragment/app/d0;->a:Lw00;

    .line 286
    .line 287
    iget-object v0, v5, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 288
    .line 289
    invoke-virtual {p0, v5, v0, v1}, Lw00;->p(Landroidx/fragment/app/o;Landroid/view/View;Z)V

    .line 290
    .line 291
    .line 292
    iget-object p0, v5, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 293
    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    iget-object v0, v5, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 299
    .line 300
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    invoke-virtual {v5}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    iput v0, v1, Ldr3;->j:F

    .line 309
    .line 310
    iget-object v0, v5, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 311
    .line 312
    if-eqz v0, :cond_f

    .line 313
    .line 314
    if-nez p0, :cond_f

    .line 315
    .line 316
    iget-object p0, v5, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 317
    .line 318
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    if-eqz p0, :cond_e

    .line 323
    .line 324
    invoke-virtual {v5}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iput-object p0, v0, Ldr3;->k:Landroid/view/View;

    .line 329
    .line 330
    invoke-static {v6}, Landroidx/fragment/app/z;->K(I)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_e

    .line 335
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    const-string v1, "requestFocus: Saved focused view "

    .line 339
    .line 340
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string p0, " for Fragment "

    .line 347
    .line 348
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    :cond_e
    iget-object p0, v5, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 362
    .line 363
    const/4 v0, 0x0

    .line 364
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 365
    .line 366
    .line 367
    :cond_f
    iput v6, v5, Landroidx/fragment/app/o;->mState:I

    .line 368
    .line 369
    return-void
.end method

.method public final g()V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom CREATED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v0, v1, Landroidx/fragment/app/o;->mRemoving:Z

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/fragment/app/o;->isInBackStack()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    move v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v0, v3

    .line 44
    :goto_0
    const/4 v4, 0x0

    .line 45
    iget-object v5, p0, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/e0;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v6, v1, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v5, v4, v6}, Landroidx/fragment/app/e0;->i(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    :cond_2
    if-nez v0, :cond_7

    .line 55
    .line 56
    iget-object v6, v5, Landroidx/fragment/app/e0;->d:Landroidx/fragment/app/a0;

    .line 57
    .line 58
    iget-object v7, v6, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 59
    .line 60
    iget-object v8, v1, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-boolean v7, v6, Landroidx/fragment/app/a0;->e:Z

    .line 70
    .line 71
    if-eqz v7, :cond_4

    .line 72
    .line 73
    iget-boolean v6, v6, Landroidx/fragment/app/a0;->f:Z

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    :goto_1
    move v6, v2

    .line 77
    :goto_2
    if-eqz v6, :cond_5

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_5
    iget-object p0, v1, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz p0, :cond_6

    .line 83
    .line 84
    invoke-virtual {v5, p0}, Landroidx/fragment/app/e0;->b(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-eqz p0, :cond_6

    .line 89
    .line 90
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mRetainInstance:Z

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    iput-object p0, v1, Landroidx/fragment/app/o;->mTarget:Landroidx/fragment/app/o;

    .line 95
    .line 96
    :cond_6
    iput v3, v1, Landroidx/fragment/app/o;->mState:I

    .line 97
    .line 98
    return-void

    .line 99
    :cond_7
    :goto_3
    iget-object v6, v1, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 100
    .line 101
    if-eqz v6, :cond_8

    .line 102
    .line 103
    iget-object v2, v5, Landroidx/fragment/app/e0;->d:Landroidx/fragment/app/a0;

    .line 104
    .line 105
    iget-boolean v2, v2, Landroidx/fragment/app/a0;->f:Z

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_8
    iget-object v6, v6, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 109
    .line 110
    if-eqz v6, :cond_9

    .line 111
    .line 112
    invoke-virtual {v6}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    xor-int/2addr v2, v6

    .line 117
    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_a
    if-eqz v2, :cond_b

    .line 121
    .line 122
    :goto_5
    iget-object v0, v5, Landroidx/fragment/app/e0;->d:Landroidx/fragment/app/a0;

    .line 123
    .line 124
    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/a0;->c(Landroidx/fragment/app/o;Z)V

    .line 125
    .line 126
    .line 127
    :cond_b
    invoke-virtual {v1}, Landroidx/fragment/app/o;->performDestroy()V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Landroidx/fragment/app/d0;->a:Lw00;

    .line 131
    .line 132
    invoke-virtual {v0, v1, v3}, Lw00;->f(Landroidx/fragment/app/o;Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5}, Landroidx/fragment/app/e0;->d()Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_d

    .line 148
    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Landroidx/fragment/app/d0;

    .line 154
    .line 155
    if-eqz v2, :cond_c

    .line 156
    .line 157
    iget-object v2, v2, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 158
    .line 159
    iget-object v3, v1, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v6, v2, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_c

    .line 168
    .line 169
    iput-object v1, v2, Landroidx/fragment/app/o;->mTarget:Landroidx/fragment/app/o;

    .line 170
    .line 171
    iput-object v4, v2, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_d
    iget-object v0, v1, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 175
    .line 176
    if-eqz v0, :cond_e

    .line 177
    .line 178
    invoke-virtual {v5, v0}, Landroidx/fragment/app/e0;->b(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iput-object v0, v1, Landroidx/fragment/app/o;->mTarget:Landroidx/fragment/app/o;

    .line 183
    .line 184
    :cond_e
    invoke-virtual {v5, p0}, Landroidx/fragment/app/e0;->h(Landroidx/fragment/app/d0;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom CREATE_VIEW: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v2, v1, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/o;->performDestroyView()V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Landroidx/fragment/app/d0;->a:Lw00;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v1, v0}, Lw00;->q(Landroidx/fragment/app/o;Z)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    iput-object p0, v1, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 51
    .line 52
    iput-object p0, v1, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 53
    .line 54
    iput-object p0, v1, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 55
    .line 56
    iget-object v2, v1, Landroidx/fragment/app/o;->mViewLifecycleOwnerLiveData:Lgj5;

    .line 57
    .line 58
    invoke-virtual {v2, p0}, Lzy4;->k(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iput-boolean v0, v1, Landroidx/fragment/app/o;->mInLayout:Z

    .line 62
    .line 63
    return-void
.end method

.method public final i()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "movefrom ATTACHED: "

    .line 15
    .line 16
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v3}, Landroidx/fragment/app/o;->performDetach()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroidx/fragment/app/d0;->a:Lw00;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual {v1, v3, v4}, Lw00;->g(Landroidx/fragment/app/o;Z)V

    .line 36
    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    iput v1, v3, Landroidx/fragment/app/o;->mState:I

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput-object v1, v3, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 43
    .line 44
    iput-object v1, v3, Landroidx/fragment/app/o;->mParentFragment:Landroidx/fragment/app/o;

    .line 45
    .line 46
    iput-object v1, v3, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 47
    .line 48
    iget-boolean v1, v3, Landroidx/fragment/app/o;->mRemoving:Z

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v3}, Landroidx/fragment/app/o;->isInBackStack()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/e0;

    .line 60
    .line 61
    iget-object p0, p0, Landroidx/fragment/app/e0;->d:Landroidx/fragment/app/a0;

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/fragment/app/a0;->b:Ljava/util/HashMap;

    .line 64
    .line 65
    iget-object v4, v3, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-boolean v1, p0, Landroidx/fragment/app/a0;->e:Z

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    iget-boolean p0, p0, Landroidx/fragment/app/a0;->f:Z

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 82
    :goto_1
    if-eqz p0, :cond_5

    .line 83
    .line 84
    :goto_2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_4

    .line 89
    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v0, "initState called for fragment: "

    .line 93
    .line 94
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {v3}, Landroidx/fragment/app/o;->initState()V

    .line 108
    .line 109
    .line 110
    :cond_5
    return-void
.end method

.method public final j()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/fragment/app/o;->mFromLayout:Z

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/o;->mInLayout:Z

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    iget-boolean v1, v0, Landroidx/fragment/app/o;->mPerformedCreateView:Z

    .line 12
    .line 13
    if-nez v1, :cond_4

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-static {v1}, Landroidx/fragment/app/z;->K(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "moveto CREATE_VIEW: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "FragmentManager"

    .line 37
    .line 38
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 42
    .line 43
    const-string v2, "savedInstanceState"

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move-object v1, v3

    .line 54
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/o;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iput-object v4, v0, Landroidx/fragment/app/o;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 59
    .line 60
    invoke-virtual {v0, v4, v3, v1}, Landroidx/fragment/app/o;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-virtual {v1, v4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 72
    .line 73
    const v5, 0x7f0a0246

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-boolean v1, v0, Landroidx/fragment/app/o;->mHidden:Z

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget-object v1, v0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 84
    .line 85
    const/16 v5, 0x8

    .line 86
    .line 87
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object v1, v0, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :cond_3
    iget-object v1, v0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/o;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 104
    .line 105
    const/4 v2, 0x2

    .line 106
    invoke-virtual {v1, v2}, Landroidx/fragment/app/z;->u(I)V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Landroidx/fragment/app/d0;->a:Lw00;

    .line 110
    .line 111
    iget-object v1, v0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 112
    .line 113
    invoke-virtual {p0, v0, v1, v4}, Lw00;->p(Landroidx/fragment/app/o;Landroid/view/View;Z)V

    .line 114
    .line 115
    .line 116
    iput v2, v0, Landroidx/fragment/app/o;->mState:I

    .line 117
    .line 118
    :cond_4
    return-void
.end method

.method public final k()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/e0;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/fragment/app/d0;->d:Z

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const-string v3, "FragmentManager"

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {v2}, Landroidx/fragment/app/z;->K(I)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "Ignoring re-entrant call to moveToExpectedState() for "

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :cond_1
    const/4 v1, 0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    :try_start_0
    iput-boolean v1, p0, Landroidx/fragment/app/d0;->d:Z

    .line 39
    .line 40
    move v6, v5

    .line 41
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/d0;->d()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    iget v8, v4, Landroidx/fragment/app/o;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    const/4 v9, 0x3

    .line 48
    if-eq v7, v8, :cond_f

    .line 49
    .line 50
    iget-object v6, p0, Landroidx/fragment/app/d0;->a:Lw00;

    .line 51
    .line 52
    if-le v7, v8, :cond_8

    .line 53
    .line 54
    add-int/lit8 v8, v8, 0x1

    .line 55
    .line 56
    packed-switch v8, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/d0;->m()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :pswitch_1
    const/4 v6, 0x6

    .line 70
    iput v6, v4, Landroidx/fragment/app/o;->mState:I

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :pswitch_2
    invoke-static {v9}, Landroidx/fragment/app/z;->K(I)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_2

    .line 79
    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v8, "moveto STARTED: "

    .line 83
    .line 84
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {v4}, Landroidx/fragment/app/o;->performStart()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v4, v5}, Lw00;->n(Landroidx/fragment/app/o;Z)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :pswitch_3
    iget-object v6, v4, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 106
    .line 107
    const/4 v7, 0x4

    .line 108
    if-eqz v6, :cond_7

    .line 109
    .line 110
    iget-object v6, v4, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 111
    .line 112
    if-eqz v6, :cond_7

    .line 113
    .line 114
    invoke-virtual {v4}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-static {v6, v8}, Landroidx/fragment/app/g;->i(Landroid/view/ViewGroup;Landroidx/fragment/app/z;)Landroidx/fragment/app/g;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    iget-object v8, v4, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_5

    .line 129
    .line 130
    if-eq v8, v7, :cond_4

    .line 131
    .line 132
    const/16 v10, 0x8

    .line 133
    .line 134
    if-ne v8, v10, :cond_3

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v2, "Unknown visibility "

    .line 142
    .line 143
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_4
    move v9, v7

    .line 158
    goto :goto_1

    .line 159
    :cond_5
    move v9, v2

    .line 160
    :goto_1
    invoke-static {v2}, Landroidx/fragment/app/z;->K(I)Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_6

    .line 165
    .line 166
    new-instance v8, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v10, "SpecialEffectsController: Enqueuing add operation for fragment "

    .line 169
    .line 170
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    :cond_6
    invoke-virtual {v6, v9, v2, p0}, Landroidx/fragment/app/g;->d(IILandroidx/fragment/app/d0;)V

    .line 184
    .line 185
    .line 186
    :cond_7
    iput v7, v4, Landroidx/fragment/app/o;->mState:I

    .line 187
    .line 188
    goto/16 :goto_2

    .line 189
    .line 190
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/d0;->a()V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_2

    .line 194
    .line 195
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/d0;->j()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/d0;->f()V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_2

    .line 202
    .line 203
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/d0;->e()V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/d0;->c()V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_2

    .line 212
    .line 213
    :cond_8
    add-int/lit8 v8, v8, -0x1

    .line 214
    .line 215
    packed-switch v8, :pswitch_data_1

    .line 216
    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :pswitch_8
    invoke-static {v9}, Landroidx/fragment/app/z;->K(I)Z

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    if-eqz v7, :cond_9

    .line 225
    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v8, "movefrom RESUMED: "

    .line 229
    .line 230
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    :cond_9
    invoke-virtual {v4}, Landroidx/fragment/app/o;->performPause()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6, v4, v5}, Lw00;->i(Landroidx/fragment/app/o;Z)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_2

    .line 250
    .line 251
    :pswitch_9
    const/4 v6, 0x5

    .line 252
    iput v6, v4, Landroidx/fragment/app/o;->mState:I

    .line 253
    .line 254
    goto/16 :goto_2

    .line 255
    .line 256
    :pswitch_a
    invoke-static {v9}, Landroidx/fragment/app/z;->K(I)Z

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    if-eqz v7, :cond_a

    .line 261
    .line 262
    new-instance v7, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v8, "movefrom STARTED: "

    .line 265
    .line 266
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    :cond_a
    invoke-virtual {v4}, Landroidx/fragment/app/o;->performStop()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v6, v4, v5}, Lw00;->o(Landroidx/fragment/app/o;Z)V

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :pswitch_b
    invoke-static {v9}, Landroidx/fragment/app/z;->K(I)Z

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    if-eqz v6, :cond_b

    .line 291
    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    const-string v7, "movefrom ACTIVITY_CREATED: "

    .line 298
    .line 299
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    :cond_b
    iget-object v6, v4, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 313
    .line 314
    if-eqz v6, :cond_c

    .line 315
    .line 316
    iget-object v6, v4, Landroidx/fragment/app/o;->mSavedViewState:Landroid/util/SparseArray;

    .line 317
    .line 318
    if-nez v6, :cond_c

    .line 319
    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/d0;->n()V

    .line 321
    .line 322
    .line 323
    :cond_c
    iget-object v6, v4, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 324
    .line 325
    if-eqz v6, :cond_e

    .line 326
    .line 327
    iget-object v6, v4, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 328
    .line 329
    if-eqz v6, :cond_e

    .line 330
    .line 331
    invoke-virtual {v4}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-static {v6, v7}, Landroidx/fragment/app/g;->i(Landroid/view/ViewGroup;Landroidx/fragment/app/z;)Landroidx/fragment/app/g;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    invoke-static {v2}, Landroidx/fragment/app/z;->K(I)Z

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    if-eqz v7, :cond_d

    .line 344
    .line 345
    new-instance v7, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v8, "SpecialEffectsController: Enqueuing remove operation for fragment "

    .line 348
    .line 349
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    :cond_d
    invoke-virtual {v6, v1, v9, p0}, Landroidx/fragment/app/g;->d(IILandroidx/fragment/app/d0;)V

    .line 363
    .line 364
    .line 365
    :cond_e
    iput v9, v4, Landroidx/fragment/app/o;->mState:I

    .line 366
    .line 367
    goto :goto_2

    .line 368
    :pswitch_c
    iput-boolean v5, v4, Landroidx/fragment/app/o;->mInLayout:Z

    .line 369
    .line 370
    iput v2, v4, Landroidx/fragment/app/o;->mState:I

    .line 371
    .line 372
    goto :goto_2

    .line 373
    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/d0;->h()V

    .line 374
    .line 375
    .line 376
    iput v1, v4, Landroidx/fragment/app/o;->mState:I

    .line 377
    .line 378
    goto :goto_2

    .line 379
    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/d0;->g()V

    .line 380
    .line 381
    .line 382
    goto :goto_2

    .line 383
    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/d0;->i()V

    .line 384
    .line 385
    .line 386
    :goto_2
    move v6, v1

    .line 387
    goto/16 :goto_0

    .line 388
    .line 389
    :cond_f
    if-nez v6, :cond_12

    .line 390
    .line 391
    const/4 v6, -0x1

    .line 392
    if-ne v8, v6, :cond_12

    .line 393
    .line 394
    iget-boolean v6, v4, Landroidx/fragment/app/o;->mRemoving:Z

    .line 395
    .line 396
    if-eqz v6, :cond_12

    .line 397
    .line 398
    invoke-virtual {v4}, Landroidx/fragment/app/o;->isInBackStack()Z

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    if-nez v6, :cond_12

    .line 403
    .line 404
    invoke-static {v9}, Landroidx/fragment/app/z;->K(I)Z

    .line 405
    .line 406
    .line 407
    move-result v6

    .line 408
    if-eqz v6, :cond_10

    .line 409
    .line 410
    new-instance v6, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .line 414
    .line 415
    const-string v7, "Cleaning up state of never attached fragment: "

    .line 416
    .line 417
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    :cond_10
    iget-object v6, v0, Landroidx/fragment/app/e0;->d:Landroidx/fragment/app/a0;

    .line 431
    .line 432
    invoke-virtual {v6, v4, v1}, Landroidx/fragment/app/a0;->c(Landroidx/fragment/app/o;Z)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, p0}, Landroidx/fragment/app/e0;->h(Landroidx/fragment/app/d0;)V

    .line 436
    .line 437
    .line 438
    invoke-static {v9}, Landroidx/fragment/app/z;->K(I)Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_11

    .line 443
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    const-string v6, "initState called for fragment: "

    .line 450
    .line 451
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .line 463
    .line 464
    :cond_11
    invoke-virtual {v4}, Landroidx/fragment/app/o;->initState()V

    .line 465
    .line 466
    .line 467
    :cond_12
    iget-boolean v0, v4, Landroidx/fragment/app/o;->mHiddenChanged:Z

    .line 468
    .line 469
    if-eqz v0, :cond_18

    .line 470
    .line 471
    iget-object v0, v4, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 472
    .line 473
    if-eqz v0, :cond_16

    .line 474
    .line 475
    iget-object v0, v4, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 476
    .line 477
    if-eqz v0, :cond_16

    .line 478
    .line 479
    invoke-virtual {v4}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    invoke-static {v0, v6}, Landroidx/fragment/app/g;->i(Landroid/view/ViewGroup;Landroidx/fragment/app/z;)Landroidx/fragment/app/g;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    iget-boolean v6, v4, Landroidx/fragment/app/o;->mHidden:Z

    .line 488
    .line 489
    if-eqz v6, :cond_14

    .line 490
    .line 491
    invoke-static {v2}, Landroidx/fragment/app/z;->K(I)Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-eqz v2, :cond_13

    .line 496
    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    const-string v6, "SpecialEffectsController: Enqueuing hide operation for fragment "

    .line 500
    .line 501
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    :cond_13
    invoke-virtual {v0, v9, v1, p0}, Landroidx/fragment/app/g;->d(IILandroidx/fragment/app/d0;)V

    .line 515
    .line 516
    .line 517
    goto :goto_3

    .line 518
    :cond_14
    invoke-static {v2}, Landroidx/fragment/app/z;->K(I)Z

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    if-eqz v6, :cond_15

    .line 523
    .line 524
    new-instance v6, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    const-string v7, "SpecialEffectsController: Enqueuing show operation for fragment "

    .line 527
    .line 528
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v6

    .line 538
    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    :cond_15
    invoke-virtual {v0, v2, v1, p0}, Landroidx/fragment/app/g;->d(IILandroidx/fragment/app/d0;)V

    .line 542
    .line 543
    .line 544
    :cond_16
    :goto_3
    iget-object v0, v4, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 545
    .line 546
    if-eqz v0, :cond_17

    .line 547
    .line 548
    iget-boolean v2, v4, Landroidx/fragment/app/o;->mAdded:Z

    .line 549
    .line 550
    if-eqz v2, :cond_17

    .line 551
    .line 552
    invoke-static {v4}, Landroidx/fragment/app/z;->L(Landroidx/fragment/app/o;)Z

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    if-eqz v2, :cond_17

    .line 557
    .line 558
    iput-boolean v1, v0, Landroidx/fragment/app/z;->G:Z

    .line 559
    .line 560
    :cond_17
    iput-boolean v5, v4, Landroidx/fragment/app/o;->mHiddenChanged:Z

    .line 561
    .line 562
    iget-object v0, v4, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 563
    .line 564
    invoke-virtual {v0}, Landroidx/fragment/app/z;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    .line 566
    .line 567
    :cond_18
    iput-boolean v5, p0, Landroidx/fragment/app/d0;->d:Z

    .line 568
    .line 569
    return-void

    .line 570
    :goto_4
    iput-boolean v5, p0, Landroidx/fragment/app/d0;->d:Z

    .line 571
    .line 572
    throw v0

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final l(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 12
    .line 13
    const-string v0, "savedInstanceState"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 22
    .line 23
    new-instance v1, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v0, "viewState"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Landroidx/fragment/app/o;->mSavedViewState:Landroid/util/SparseArray;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 42
    .line 43
    const-string v0, "viewRegistryState"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Landroidx/fragment/app/o;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 52
    .line 53
    const-string v0, "state"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroidx/fragment/app/c0;

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget-object v0, p1, Landroidx/fragment/app/c0;->x:Ljava/lang/String;

    .line 64
    .line 65
    iput-object v0, p0, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 66
    .line 67
    iget v0, p1, Landroidx/fragment/app/c0;->y:I

    .line 68
    .line 69
    iput v0, p0, Landroidx/fragment/app/o;->mTargetRequestCode:I

    .line 70
    .line 71
    iget-object v0, p0, Landroidx/fragment/app/o;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iput-boolean p1, p0, Landroidx/fragment/app/o;->mUserVisibleHint:Z

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Landroidx/fragment/app/o;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-boolean p1, p1, Landroidx/fragment/app/c0;->G:Z

    .line 86
    .line 87
    iput-boolean p1, p0, Landroidx/fragment/app/o;->mUserVisibleHint:Z

    .line 88
    .line 89
    :cond_3
    :goto_0
    iget-boolean p1, p0, Landroidx/fragment/app/o;->mUserVisibleHint:Z

    .line 90
    .line 91
    if-nez p1, :cond_4

    .line 92
    .line 93
    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Landroidx/fragment/app/o;->mDeferStart:Z

    .line 95
    .line 96
    :cond_4
    :goto_1
    return-void

    .line 97
    :catch_0
    move-exception p1

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v2, "Failed to restore view hierarchy state for fragment "

    .line 103
    .line 104
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    throw v0
.end method

.method public final m()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const-string v1, "FragmentManager"

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "moveto RESUMED: "

    .line 15
    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v2, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    move-object v0, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, v0, Ldr3;->k:Landroid/view/View;

    .line 37
    .line 38
    :goto_0
    if-eqz v0, :cond_5

    .line 39
    .line 40
    iget-object v4, v2, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 41
    .line 42
    if-ne v0, v4, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    :goto_1
    if-eqz v4, :cond_5

    .line 50
    .line 51
    iget-object v5, v2, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 52
    .line 53
    if-ne v4, v5, :cond_4

    .line 54
    .line 55
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v5, 0x2

    .line 60
    invoke-static {v5}, Landroidx/fragment/app/z;->K(I)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_5

    .line 65
    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v6, "requestFocus: Restoring focused view "

    .line 69
    .line 70
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, " "

    .line 77
    .line 78
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    if-eqz v4, :cond_3

    .line 82
    .line 83
    const-string v0, "succeeded"

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    const-string v0, "failed"

    .line 87
    .line 88
    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, " on Fragment "

    .line 92
    .line 93
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, " resulting in focused view "

    .line 100
    .line 101
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v0, v2, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_4
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    goto :goto_1

    .line 126
    :cond_5
    :goto_4
    invoke-virtual {v2}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v3, v0, Ldr3;->k:Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {v2}, Landroidx/fragment/app/o;->performResume()V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Landroidx/fragment/app/d0;->a:Lw00;

    .line 136
    .line 137
    const/4 v1, 0x0

    .line 138
    invoke-virtual {v0, v2, v1}, Lw00;->l(Landroidx/fragment/app/o;Z)V

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/e0;

    .line 142
    .line 143
    iget-object v0, v2, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/e0;->i(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 146
    .line 147
    .line 148
    iput-object v3, v2, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 149
    .line 150
    iput-object v3, v2, Landroidx/fragment/app/o;->mSavedViewState:Landroid/util/SparseArray;

    .line 151
    .line 152
    iput-object v3, v2, Landroidx/fragment/app/o;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 153
    .line 154
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Saving view state for fragment "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " with view "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "FragmentManager"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-lez v1, :cond_2

    .line 59
    .line 60
    iput-object v0, p0, Landroidx/fragment/app/o;->mSavedViewState:Landroid/util/SparseArray;

    .line 61
    .line 62
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 68
    .line 69
    iget-object v1, v1, Landroidx/fragment/app/f0;->f:Lw00;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lw00;->v(Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    iput-object v0, p0, Landroidx/fragment/app/o;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 81
    .line 82
    :cond_3
    :goto_0
    return-void
.end method
