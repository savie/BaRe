.class public final Lo7;
.super Lrl0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrl0<",
        "Lp7;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ll90;

.field public final d:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lrl0;-><init>(I)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Ln7;

    .line 6
    .line 7
    const-string v5, "getCtx()Lorg/swiftapps/swiftbackup/home/HomeActivity;"

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const-class v3, Lo7;

    .line 11
    .line 12
    const-string v4, "ctx"

    .line 13
    .line 14
    move-object v2, p0

    .line 15
    invoke-direct/range {v1 .. v6}, Ld96;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Lj7;

    .line 19
    .line 20
    invoke-direct {p0, v1, v0}, Lj7;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lys4;->c:Lys4;

    .line 24
    .line 25
    invoke-static {v1, p0}, Ljd4;->x(Lys4;Lbt3;)Los4;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-class v1, Lr7;

    .line 30
    .line 31
    invoke-static {v1}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v3, Lk7;

    .line 36
    .line 37
    invoke-direct {v3, p0, v0}, Lk7;-><init>(Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    new-instance v4, Ll7;

    .line 41
    .line 42
    invoke-direct {v4, p0, v0}, Ll7;-><init>(Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Lm7;

    .line 46
    .line 47
    invoke-direct {v5, v2, p0}, Lm7;-><init>(Lo7;Los4;)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Ll90;

    .line 51
    .line 52
    invoke-direct {p0, v1, v3, v5, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 53
    .line 54
    .line 55
    iput-object p0, v2, Lo7;->c:Ll90;

    .line 56
    .line 57
    new-instance p0, Lb7;

    .line 58
    .line 59
    invoke-direct {p0, v0}, Lb7;-><init>(I)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lgv7;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lgv7;-><init>(Lbt3;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, v2, Lo7;->d:Lgv7;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final i()Lorg/swiftapps/swiftbackup/home/HomeActivity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 9
    .line 10
    return-object p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0d001c

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    move-object p2, p1

    .line 13
    check-cast p2, Landroidx/core/widget/NestedScrollView;

    .line 14
    .line 15
    const p3, 0x7f0a03a3

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const-string v2, "Missing required view with ID: "

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const p3, 0x7f0a0032

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    const p3, 0x7f0a012b

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v6, v3

    .line 46
    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    .line 47
    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    const p3, 0x7f0a0136

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    move-object v7, v3

    .line 58
    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    .line 59
    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    const p3, 0x7f0a02d4

    .line 63
    .line 64
    .line 65
    invoke-static {v0, p3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    move-object v8, v3

    .line 70
    check-cast v8, Landroid/widget/ImageView;

    .line 71
    .line 72
    if-eqz v8, :cond_0

    .line 73
    .line 74
    const p3, 0x7f0a0534

    .line 75
    .line 76
    .line 77
    invoke-static {v0, p3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    move-object v9, v3

    .line 82
    check-cast v9, Landroid/widget/TextView;

    .line 83
    .line 84
    if-eqz v9, :cond_0

    .line 85
    .line 86
    const p3, 0x7f0a0535

    .line 87
    .line 88
    .line 89
    invoke-static {v0, p3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Landroid/widget/TextView;

    .line 94
    .line 95
    if-eqz v3, :cond_0

    .line 96
    .line 97
    const p3, 0x7f0a05c6

    .line 98
    .line 99
    .line 100
    invoke-static {v0, p3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    move-object v10, v3

    .line 105
    check-cast v10, Landroid/widget/TextView;

    .line 106
    .line 107
    if-eqz v10, :cond_0

    .line 108
    .line 109
    const p3, 0x7f0a05c7

    .line 110
    .line 111
    .line 112
    invoke-static {v0, p3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    move-object v11, v3

    .line 117
    check-cast v11, Landroid/widget/TextView;

    .line 118
    .line 119
    if-eqz v11, :cond_0

    .line 120
    .line 121
    new-instance v4, Lj75;

    .line 122
    .line 123
    move-object v5, v0

    .line 124
    check-cast v5, Lcom/google/android/material/card/MaterialCardView;

    .line 125
    .line 126
    invoke-direct/range {v4 .. v11}, Lj75;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    const p3, 0x7f0a0406

    .line 130
    .line 131
    .line 132
    invoke-static {p1, p3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    .line 138
    if-eqz v0, :cond_1

    .line 139
    .line 140
    new-instance p1, Lp7;

    .line 141
    .line 142
    invoke-direct {p1, p2, v4, v0}, Lp7;-><init>(Landroidx/core/widget/NestedScrollView;Lj75;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Lrl0;->b:Ljk8;

    .line 146
    .line 147
    invoke-virtual {p1}, Lp7;->getRoot()Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    return-object p0

    .line 155
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-object v1

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-object v1
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/o;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/o;->isAdded()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, Lw44;->c:Lx44;

    .line 19
    .line 20
    iget-object p0, p0, Lx44;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 23
    .line 24
    const v0, 0x7f0a032d

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftOnScrollTargetViewId(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lrl0;->b:Ljk8;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    check-cast p1, Lp7;

    .line 10
    .line 11
    iget-object p1, p1, Lp7;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lo7;->d:Lgv7;

    .line 30
    .line 31
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, La7;

    .line 36
    .line 37
    new-instance v1, Lf7;

    .line 38
    .line 39
    invoke-direct {v1, p0, p2}, Lf7;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lgm7;->j:Lqt3;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lrl0;->b:Ljk8;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    check-cast p1, Lp7;

    .line 53
    .line 54
    iget-object p1, p1, Lp7;->b:Lj75;

    .line 55
    .line 56
    iget-object p1, p1, Lj75;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 59
    .line 60
    new-instance v0, Lg7;

    .line 61
    .line 62
    invoke-direct {v0, p0, p2}, Lg7;-><init>(Ljava/lang/Object;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 69
    .line 70
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->a()Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/SwiftApp;->a:Lex6;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Lc7;

    .line 81
    .line 82
    invoke-direct {v1, p0, p2}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Li7;

    .line 86
    .line 87
    invoke-direct {v2, p2, v1}, Li7;-><init>(ILmt3;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lo7;->c:Ll90;

    .line 94
    .line 95
    invoke-virtual {p1}, Ll90;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lr7;

    .line 100
    .line 101
    iget-object v0, v0, Lr7;->c:Lex6;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    new-instance v2, Ld7;

    .line 108
    .line 109
    invoke-direct {v2, p0, p2}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 110
    .line 111
    .line 112
    new-instance v3, Li7;

    .line 113
    .line 114
    invoke-direct {v3, p2, v2}, Li7;-><init>(ILmt3;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ll90;->getValue()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lr7;

    .line 125
    .line 126
    iget-object p1, p1, Lr7;->d:Lex6;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v1, Le7;

    .line 133
    .line 134
    invoke-direct {v1, p0, p2}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 135
    .line 136
    .line 137
    new-instance p0, Li7;

    .line 138
    .line 139
    invoke-direct {p0, p2, v1}, Li7;-><init>(ILmt3;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method
