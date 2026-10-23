.class public final synthetic Ldf4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/intro/IntroActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ldf4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ldf4;->b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

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
    .locals 7

    .line 1
    iget v0, p0, Ldf4;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Ldf4;->b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 10
    .line 11
    sget-object v0, Ldz5;->a:Ldz5;

    .line 12
    .line 13
    invoke-static {}, Ldz5;->c()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0, v0, v1}, Ldz5;->o(Lzm;Ljava/util/Set;Z)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lbe8;->a:Lbe8;

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->Q()Lif4;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object p0, p0, Lif4;->a:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    sget-object v0, Lqi7;->B:[I

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    move-object v2, v0

    .line 35
    :cond_0
    instance-of v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    check-cast p0, Landroid/view/ViewGroup;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    instance-of v3, p0, Landroid/widget/FrameLayout;

    .line 43
    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const v3, 0x1020002

    .line 51
    .line 52
    .line 53
    if-ne v2, v3, :cond_2

    .line 54
    .line 55
    check-cast p0, Landroid/view/ViewGroup;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move-object v2, p0

    .line 59
    check-cast v2, Landroid/view/ViewGroup;

    .line 60
    .line 61
    :cond_3
    if-eqz p0, :cond_5

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    instance-of v3, p0, Landroid/view/View;

    .line 68
    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    check-cast p0, Landroid/view/View;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    move-object p0, v0

    .line 75
    :cond_5
    :goto_0
    if-nez p0, :cond_0

    .line 76
    .line 77
    move-object p0, v2

    .line 78
    :goto_1
    if-eqz p0, :cond_7

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    sget-object v3, Lqi7;->B:[I

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const/4 v4, -0x1

    .line 95
    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    const/4 v6, 0x1

    .line 100
    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    .line 106
    .line 107
    if-eq v5, v4, :cond_6

    .line 108
    .line 109
    if-eq v6, v4, :cond_6

    .line 110
    .line 111
    const v3, 0x7f0d011a

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    const v3, 0x7f0d007f

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 123
    .line 124
    new-instance v3, Lqi7;

    .line 125
    .line 126
    invoke-direct {v3, v0, p0, v2, v2}, Lqi7;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V

    .line 127
    .line 128
    .line 129
    iget-object p0, v3, Lfo0;->i:Leo0;

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    const-string v0, ""

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    move-object v0, v3

    .line 147
    goto :goto_3

    .line 148
    :cond_7
    const-string p0, "No suitable parent found from the given view. Please provide a valid view."

    .line 149
    .line 150
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :goto_3
    return-object v0

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
