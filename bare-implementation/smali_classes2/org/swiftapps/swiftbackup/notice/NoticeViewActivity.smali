.class public final Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;
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
    new-instance v0, Lf20;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lf20;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll90;

    .line 12
    .line 13
    const-class v2, Luo5;

    .line 14
    .line 15
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lls;

    .line 20
    .line 21
    const/16 v4, 0xb

    .line 22
    .line 23
    invoke-direct {v3, p0, v4}, Lls;-><init>(Lil0;I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lms;

    .line 27
    .line 28
    const/16 v5, 0xe

    .line 29
    .line 30
    invoke-direct {v4, p0, v5}, Lms;-><init>(Lil0;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;->K:Ll90;

    .line 37
    .line 38
    new-instance v0, Lyi5;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-direct {v0, p0, v1}, Lyi5;-><init>(Ljava/lang/Object;I)V

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
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;->L:Lgv7;

    .line 50
    .line 51
    new-instance v0, Lto5;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-direct {v0, p0, v1}, Lto5;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lgv7;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;->M:Lgv7;

    .line 63
    .line 64
    new-instance v0, Lhs4;

    .line 65
    .line 66
    const/4 v1, 0x5

    .line 67
    invoke-direct {v0, p0, v1}, Lhs4;-><init>(Ljava/lang/Object;I)V

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
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;->N:Lgv7;

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final F()Lqo0;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Luo5;

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
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "extra_message"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;->L:Lgv7;

    .line 24
    .line 25
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Llo5;

    .line 30
    .line 31
    iget-object v1, v1, Llo5;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Llo5;

    .line 41
    .line 42
    iget-object v1, v1, Llo5;->b:Lw00;

    .line 43
    .line 44
    iget-object v1, v1, Lw00;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lix0;

    .line 47
    .line 48
    iget-object v1, v1, Lix0;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-virtual {v1, v2}, Lnc8;->Z(Z)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Llo5;

    .line 70
    .line 71
    iget-object v0, v0, Llo5;->c:Landroidx/core/widget/NestedScrollView;

    .line 72
    .line 73
    const/4 v1, 0x7

    .line 74
    invoke-static {v0, v1}, Lsz8;->b(Landroid/view/View;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "extra_title"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-lez v1, :cond_2

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    .line 97
    :goto_0
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_3

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Lnc8;->f0(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;->K:Ll90;

    .line 109
    .line 110
    invoke-virtual {v0}, Ll90;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Luo5;

    .line 115
    .line 116
    iget-object v1, v1, Luo5;->e:Lex6;

    .line 117
    .line 118
    invoke-virtual {v1, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ll90;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Luo5;

    .line 126
    .line 127
    iget-object p1, p1, Luo5;->e:Lex6;

    .line 128
    .line 129
    new-instance v0, Lw92;

    .line 130
    .line 131
    const/4 v1, 0x2

    .line 132
    invoke-direct {v0, p0, v1}, Lw92;-><init>(Ljava/lang/Object;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p0, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v2, "Invalid message = "

    .line 146
    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 161
    .line 162
    .line 163
    return-void
.end method
