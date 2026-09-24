.class public final Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic O:I


# instance fields
.field public final K:Ll90;

.field public final L:Lgv7;

.field public final M:Lgv7;

.field public final N:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj51;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lj51;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ll90;

    .line 11
    .line 12
    const-class v2, Lr51;

    .line 13
    .line 14
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lf20;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-direct {v3, p0, v4}, Lf20;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lls;

    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    invoke-direct {v4, p0, v5}, Lls;-><init>(Lil0;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->K:Ll90;

    .line 34
    .line 35
    new-instance v0, Ld76;

    .line 36
    .line 37
    const/16 v1, 0xa

    .line 38
    .line 39
    invoke-direct {v0, p0, v1}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lgv7;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->L:Lgv7;

    .line 48
    .line 49
    new-instance v0, Lkf;

    .line 50
    .line 51
    const/16 v1, 0xd

    .line 52
    .line 53
    invoke-direct {v0, p0, v1}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lgv7;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->M:Lgv7;

    .line 62
    .line 63
    new-instance v0, Llf;

    .line 64
    .line 65
    const/16 v1, 0xb

    .line 66
    .line 67
    invoke-direct {v0, p0, v1}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lgv7;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->N:Lgv7;

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->N()Lr51;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Lr51;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lr51;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->L:Lgv7;

    .line 8
    .line 9
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lk51;

    .line 14
    .line 15
    iget-object v0, v0, Lk51;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lk28;->setContentView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v2, "extra_conversation"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v0, v1

    .line 35
    :goto_0
    check-cast v0, Lqv1;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->N()Lr51;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v0, v2, Lr51;->e:Lqv1;

    .line 48
    .line 49
    sget-object v3, Lzn4;->a:Lzn4;

    .line 50
    .line 51
    new-instance v3, Lq51;

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-direct {v3, v0, v2, v1, v4}, Lq51;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v3}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lk51;

    .line 65
    .line 66
    iget-object p1, p1, Lk51;->b:Lw00;

    .line 67
    .line 68
    iget-object p1, p1, Lw00;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Lix0;

    .line 71
    .line 72
    iget-object p1, p1, Lix0;->c:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    invoke-virtual {p1, v0}, Lnc8;->Z(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->N()Lr51;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v0, v0, Lr51;->e:Lqv1;

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    invoke-virtual {v0}, Lqv1;->getDisplayName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1, v0}, Lnc8;->f0(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const-string p0, "conversationItem"

    .line 106
    .line 107
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v1

    .line 111
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->M:Lgv7;

    .line 112
    .line 113
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    .line 119
    const/4 v0, 0x7

    .line 120
    invoke-static {p1, v0}, Lsz8;->b(Landroid/view/View;I)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 124
    .line 125
    invoke-direct {v0, p0}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->N:Lgv7;

    .line 132
    .line 133
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lo51;

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->N()Lr51;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object p1, p1, Lr51;->f:Lex6;

    .line 147
    .line 148
    new-instance v0, Lzs;

    .line 149
    .line 150
    const/4 v1, 0x3

    .line 151
    invoke-direct {v0, p0, v1}, Lzs;-><init>(Ljava/lang/Object;I)V

    .line 152
    .line 153
    .line 154
    new-instance v1, Li51;

    .line 155
    .line 156
    invoke-direct {v1, v4, v0}, Li51;-><init>(ILmt3;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0f000a

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0053

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 23
    .line 24
    .line 25
    invoke-super {p0, p1}, Lil0;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f0a0053

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->N()Lr51;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lr51;->f:Lex6;

    .line 18
    .line 19
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lex6;->l(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0, p1}, Lil0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method
