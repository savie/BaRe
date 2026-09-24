.class public final Lgj7;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final v:Lorg/swiftapps/swiftbackup/views/LocaleTextView;

.field public final w:Landroid/widget/ImageView;

.field public final x:Landroid/widget/ImageView;

.field public final synthetic y:Lhj7;


# direct methods
.method public constructor <init>(Lhj7;Landroid/view/View;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lgj7;->y:Lhj7;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lfh6;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lfh6;->f:I

    .line 7
    .line 8
    iget p1, p1, Lhj7;->m:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "Missing required view with ID: "

    .line 12
    .line 13
    const v3, 0x7f0a059e

    .line 14
    .line 15
    .line 16
    const v4, 0x7f0a02ce

    .line 17
    .line 18
    .line 19
    const v5, 0x7f0a029e

    .line 20
    .line 21
    .line 22
    const v6, 0x7f0a029c

    .line 23
    .line 24
    .line 25
    if-ne v0, p1, :cond_4

    .line 26
    .line 27
    move-object p1, p2

    .line 28
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    invoke-static {p2, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/ImageView;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-static {p2, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Landroid/widget/ImageView;

    .line 43
    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    invoke-static {p2, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Landroid/widget/ImageView;

    .line 51
    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    invoke-static {p2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lorg/swiftapps/swiftbackup/views/LocaleTextView;

    .line 59
    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    iput-object p1, p0, Lgj7;->u:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    .line 64
    iput-object v4, p0, Lgj7;->v:Lorg/swiftapps/swiftbackup/views/LocaleTextView;

    .line 65
    .line 66
    iput-object v5, p0, Lgj7;->w:Landroid/widget/ImageView;

    .line 67
    .line 68
    iput-object v0, p0, Lgj7;->x:Landroid/widget/ImageView;

    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    move v3, v4

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move v3, v5

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move v3, v6

    .line 76
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1

    .line 92
    :cond_4
    move-object p1, p2

    .line 93
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 94
    .line 95
    invoke-static {p2, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/widget/ImageView;

    .line 100
    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    invoke-static {p2, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Landroid/widget/ImageView;

    .line 108
    .line 109
    if-eqz v6, :cond_6

    .line 110
    .line 111
    invoke-static {p2, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Landroid/widget/ImageView;

    .line 116
    .line 117
    if-eqz v5, :cond_5

    .line 118
    .line 119
    invoke-static {p2, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Lorg/swiftapps/swiftbackup/views/LocaleTextView;

    .line 124
    .line 125
    if-eqz v4, :cond_8

    .line 126
    .line 127
    iput-object p1, p0, Lgj7;->u:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 128
    .line 129
    iput-object v4, p0, Lgj7;->v:Lorg/swiftapps/swiftbackup/views/LocaleTextView;

    .line 130
    .line 131
    iput-object v5, p0, Lgj7;->w:Landroid/widget/ImageView;

    .line 132
    .line 133
    iput-object v0, p0, Lgj7;->x:Landroid/widget/ImageView;

    .line 134
    .line 135
    return-void

    .line 136
    :cond_5
    move v3, v4

    .line 137
    goto :goto_1

    .line 138
    :cond_6
    move v3, v5

    .line 139
    goto :goto_1

    .line 140
    :cond_7
    move v3, v6

    .line 141
    :cond_8
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v1
.end method
