.class public final synthetic Lxi;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lrj;


# direct methods
.method public synthetic constructor <init>(Lrj;I)V
    .locals 0

    .line 1
    iput p2, p0, Lxi;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lxi;->b:Lrj;

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
    .locals 13

    .line 1
    iget v0, p0, Lxi;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lxi;->b:Lrj;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lrj;->I()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_0
    invoke-virtual {p0}, Lrj;->H()Lsj;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, Lsj;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_1
    iget-object p0, p0, Lrj;->e:Lk28;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const v0, 0x7f0d0023

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const v0, 0x7f0a00d1

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    check-cast v1, Landroid/widget/ImageView;

    .line 46
    .line 47
    new-instance v5, Lc00;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-direct {v5, v0, v1, v1}, Lc00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const v0, 0x7f0a017e

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v6, v1

    .line 61
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 62
    .line 63
    if-eqz v6, :cond_0

    .line 64
    .line 65
    const v0, 0x7f0a01e0

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    const v0, 0x7f0a029a

    .line 75
    .line 76
    .line 77
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object v7, v1

    .line 82
    check-cast v7, Landroid/widget/ImageView;

    .line 83
    .line 84
    if-eqz v7, :cond_0

    .line 85
    .line 86
    const v0, 0x7f0a02b5

    .line 87
    .line 88
    .line 89
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    move-object v8, v1

    .line 94
    check-cast v8, Landroid/widget/ImageView;

    .line 95
    .line 96
    if-eqz v8, :cond_0

    .line 97
    .line 98
    const v0, 0x7f0a03e8

    .line 99
    .line 100
    .line 101
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v9, v1

    .line 106
    check-cast v9, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 107
    .line 108
    if-eqz v9, :cond_0

    .line 109
    .line 110
    const v0, 0x7f0a0408

    .line 111
    .line 112
    .line 113
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    move-object v10, v1

    .line 118
    check-cast v10, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 119
    .line 120
    if-eqz v10, :cond_0

    .line 121
    .line 122
    const v0, 0x7f0a05ac

    .line 123
    .line 124
    .line 125
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    move-object v11, v1

    .line 130
    check-cast v11, Landroid/widget/TextView;

    .line 131
    .line 132
    if-eqz v11, :cond_0

    .line 133
    .line 134
    const v0, 0x7f0a05ba

    .line 135
    .line 136
    .line 137
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    move-object v12, v1

    .line 142
    check-cast v12, Landroid/widget/TextView;

    .line 143
    .line 144
    if-eqz v12, :cond_0

    .line 145
    .line 146
    new-instance v3, Lsj;

    .line 147
    .line 148
    move-object v4, p0

    .line 149
    check-cast v4, Landroidx/core/widget/NestedScrollView;

    .line 150
    .line 151
    invoke-direct/range {v3 .. v12}, Lsj;-><init>(Landroidx/core/widget/NestedScrollView;Lc00;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 152
    .line 153
    .line 154
    move-object v2, v3

    .line 155
    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    const-string v0, "Missing required view with ID: "

    .line 165
    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :goto_0
    return-object v2

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
