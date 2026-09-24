.class public final synthetic Lcs;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcs;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcs;->b:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

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
    .locals 14

    .line 1
    iget v0, p0, Lcs;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lcs;->b:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->p0()Los;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Los;->d:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const v0, 0x7f0d002d

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p0, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const v0, 0x7f0a00aa

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-static {v1}, Lx00;->a(Landroid/view/View;)Lx00;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const v0, 0x7f0a00ac

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    move-object v6, v1

    .line 53
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    if-eqz v6, :cond_0

    .line 56
    .line 57
    const v0, 0x7f0a00e3

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    move-object v7, v1

    .line 65
    check-cast v7, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 66
    .line 67
    if-eqz v7, :cond_0

    .line 68
    .line 69
    const v0, 0x7f0a01ed

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    move-object v8, v1

    .line 77
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 78
    .line 79
    if-eqz v8, :cond_0

    .line 80
    .line 81
    const v0, 0x7f0a0209

    .line 82
    .line 83
    .line 84
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    invoke-static {v1}, Lzx2;->a(Landroid/view/View;)Lzx2;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    const v0, 0x7f0a0220

    .line 95
    .line 96
    .line 97
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    move-object v10, v1

    .line 102
    check-cast v10, Lcom/l4digital/fastscroll/FastScroller;

    .line 103
    .line 104
    if-eqz v10, :cond_0

    .line 105
    .line 106
    const v0, 0x7f0a03f4

    .line 107
    .line 108
    .line 109
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    move-object v11, v1

    .line 114
    check-cast v11, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 115
    .line 116
    if-eqz v11, :cond_0

    .line 117
    .line 118
    const v0, 0x7f0a03f5

    .line 119
    .line 120
    .line 121
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    move-object v12, v1

    .line 126
    check-cast v12, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 127
    .line 128
    if-eqz v12, :cond_0

    .line 129
    .line 130
    const v0, 0x7f0a0498

    .line 131
    .line 132
    .line 133
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    move-object v13, v1

    .line 138
    check-cast v13, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 139
    .line 140
    if-eqz v13, :cond_0

    .line 141
    .line 142
    new-instance v3, Los;

    .line 143
    .line 144
    move-object v4, p0

    .line 145
    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 146
    .line 147
    invoke-direct/range {v3 .. v13}, Los;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;Lx00;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/constraintlayout/widget/ConstraintLayout;Lzx2;Lcom/l4digital/fastscroll/FastScroller;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 148
    .line 149
    .line 150
    move-object v2, v3

    .line 151
    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    const-string v0, "Missing required view with ID: "

    .line 161
    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :goto_0
    return-object v2

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
