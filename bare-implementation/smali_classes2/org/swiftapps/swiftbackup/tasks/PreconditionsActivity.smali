.class public final Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic P:I


# instance fields
.field public final K:Lgv7;

.field public final L:Lgv7;

.field public final M:Lgv7;

.field public N:I

.field public O:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lxq4;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, p0, v1}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lgv7;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->K:Lgv7;

    .line 16
    .line 17
    new-instance v0, Las4;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lgv7;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->L:Lgv7;

    .line 30
    .line 31
    new-instance v0, Lpr4;

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lpr4;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lgv7;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->M:Lgv7;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final F()Lqo0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final N()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->N:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/16 v3, 0x24d

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    if-ne v1, v3, :cond_1

    .line 14
    .line 15
    :cond_0
    sget-object v1, Ldz5;->a:Ldz5;

    .line 16
    .line 17
    invoke-static {}, Ldz5;->m()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    iget p0, p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->N:I

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    if-eq p0, v1, :cond_2

    .line 32
    .line 33
    if-ne p0, v3, :cond_3

    .line 34
    .line 35
    :cond_2
    sget-object p0, Ldz5;->a:Ldz5;

    .line 36
    .line 37
    invoke-static {}, Ldz5;->g()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    check-cast v0, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    const/4 p0, 0x0

    .line 77
    return p0

    .line 78
    :cond_5
    const/4 p0, 0x1

    .line 79
    return p0
.end method

.method public final O()Lp36;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->K:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lp36;

    .line 8
    .line 9
    return-object p0
.end method

.method public final P()V
    .locals 6

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->N:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/16 v2, 0x24d

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    if-ne v0, v2, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->O()Lp36;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lp36;->k:Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->O()Lp36;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lp36;->n:Lgm1;

    .line 25
    .line 26
    sget-object v1, Ldz5;->a:Ldz5;

    .line 27
    .line 28
    invoke-static {}, Ldz5;->m()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const v4, 0x7f130535

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-object v5, Ldz5;->d:Lgv7;

    .line 43
    .line 44
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Ljava/util/Set;

    .line 49
    .line 50
    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->Q(Lgm1;ZLjava/lang/String;Ljava/util/Set;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget v0, p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->N:I

    .line 54
    .line 55
    const/4 v1, 0x3

    .line 56
    if-eq v0, v1, :cond_2

    .line 57
    .line 58
    if-ne v0, v2, :cond_3

    .line 59
    .line 60
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->O()Lp36;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v0, v0, Lp36;->d:Landroid/widget/RelativeLayout;

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->O()Lp36;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v0, v0, Lp36;->e:Lgm1;

    .line 74
    .line 75
    sget-object v1, Ldz5;->a:Ldz5;

    .line 76
    .line 77
    invoke-static {}, Ldz5;->g()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const v2, 0x7f1300e8

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    sget-object v3, Ldz5;->f:Lgv7;

    .line 92
    .line 93
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Ljava/util/Set;

    .line 98
    .line 99
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->Q(Lgm1;ZLjava/lang/String;Ljava/util/Set;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->M:Lgv7;

    .line 103
    .line 104
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/widget/ImageView;

    .line 109
    .line 110
    new-instance v1, Li00;

    .line 111
    .line 112
    const/16 v2, 0xc

    .line 113
    .line 114
    invoke-direct {v1, p0, v2}, Li00;-><init>(Ljava/lang/Object;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->L:Lgv7;

    .line 121
    .line 122
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    check-cast v1, Landroid/widget/Button;

    .line 130
    .line 131
    new-instance v2, Lmf;

    .line 132
    .line 133
    const/16 v3, 0xa

    .line 134
    .line 135
    invoke-direct {v2, p0, v3}, Lmf;-><init>(Ljava/lang/Object;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    check-cast v0, Landroid/widget/Button;

    .line 149
    .line 150
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->N()Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public final Q(Lgm1;ZLjava/lang/String;Ljava/util/Set;)V
    .locals 3

    .line 1
    new-instance v0, Lfm1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lfm1;-><init>(Lgm1;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lfm1;->a()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lfm1;->b()V

    .line 13
    .line 14
    .line 15
    :goto_0
    iget-object v0, p1, Lgm1;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroid/widget/ImageView;

    .line 18
    .line 19
    iget-object v1, p1, Lgm1;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Landroid/widget/TextView;

    .line 22
    .line 23
    iget-object v2, p1, Lgm1;->f:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    const p3, 0x7f080101

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const p3, 0x7f08020b

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    const p3, 0x7f130032

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const p3, 0x7f13040b

    .line 49
    .line 50
    .line 51
    :goto_2
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p1, Lgm1;->a:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    .line 61
    .line 62
    new-instance p3, Lo36;

    .line 63
    .line 64
    invoke-direct {p3, p2, p0, p4}, Lo36;-><init>(ZLorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;Ljava/util/Set;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/16 v0, 0x2639

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->P()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/u;->onActivityResult(IILandroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->O()Lp36;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lp36;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lil0;->B()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->O()Lp36;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p1, p1, Lp36;->b:Landroid/widget/RelativeLayout;

    .line 21
    .line 22
    const/4 v0, 0x7

    .line 23
    invoke-static {p1, v0}, Lsz8;->b(Landroid/view/View;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "request_code"

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->N:I

    .line 38
    .line 39
    new-instance p1, Lyi5;

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    invoke-direct {p1, p0, v0}, Lyi5;-><init>(Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0, p1}, Lil0;->L(ZLbt3;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->O:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->N()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-super {p0}, Lil0;->onDestroy()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Lil0;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->P()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
