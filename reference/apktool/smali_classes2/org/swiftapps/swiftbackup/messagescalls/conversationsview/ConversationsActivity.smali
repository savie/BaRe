.class public final Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;
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
    new-instance v0, Lms;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lms;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll90;

    .line 12
    .line 13
    const-class v2, Lwv1;

    .line 14
    .line 15
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lns;

    .line 20
    .line 21
    const/16 v4, 0xa

    .line 22
    .line 23
    invoke-direct {v3, p0, v4}, Lns;-><init>(Lil0;I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lz20;

    .line 27
    .line 28
    const/4 v5, 0x5

    .line 29
    invoke-direct {v4, p0, v5}, Lz20;-><init>(Lil0;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->K:Ll90;

    .line 36
    .line 37
    new-instance v0, Llf;

    .line 38
    .line 39
    const/16 v1, 0x11

    .line 40
    .line 41
    invoke-direct {v0, p0, v1}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lgv7;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->L:Lgv7;

    .line 50
    .line 51
    new-instance v0, Lej;

    .line 52
    .line 53
    const/16 v1, 0xe

    .line 54
    .line 55
    invoke-direct {v0, p0, v1}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lgv7;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->M:Lgv7;

    .line 64
    .line 65
    new-instance v0, Lpu;

    .line 66
    .line 67
    const/4 v1, 0x2

    .line 68
    invoke-direct {v0, v1}, Lpu;-><init>(I)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lgv7;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->N:Lgv7;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final F()Lqo0;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lwv1;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->L:Lgv7;

    .line 8
    .line 9
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lsv1;

    .line 14
    .line 15
    iget-object v0, v0, Lsv1;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lk28;->setContentView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lsv1;

    .line 25
    .line 26
    iget-object p1, p1, Lsv1;->b:Lw00;

    .line 27
    .line 28
    iget-object p1, p1, Lw00;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lix0;

    .line 31
    .line 32
    iget-object p1, p1, Lix0;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0}, Lnc8;->Z(Z)V

    .line 47
    .line 48
    .line 49
    const v0, 0x7f1301bf

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lnc8;->e0(I)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->M:Lgv7;

    .line 56
    .line 57
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    const/4 v0, 0x7

    .line 64
    invoke-static {p1, v0}, Lsz8;->b(Landroid/view/View;I)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->N:Lgv7;

    .line 76
    .line 77
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Luv1;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->K:Ll90;

    .line 87
    .line 88
    invoke-virtual {p1}, Ll90;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lwv1;

    .line 93
    .line 94
    iget-object p1, p1, Lwv1;->e:Lex6;

    .line 95
    .line 96
    new-instance v0, Lk3;

    .line 97
    .line 98
    const/16 v1, 0x9

    .line 99
    .line 100
    invoke-direct {v0, p0, v1}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    new-instance v1, Lrv1;

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-direct {v1, v2, v0}, Lrv1;-><init>(ILmt3;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
