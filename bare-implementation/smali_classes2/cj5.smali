.class public final Lcj5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Lcom/google/android/material/card/MaterialCardView;

.field public final b:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final d:Lcom/google/android/material/radiobutton/MaterialRadioButton;

.field public final e:Lcom/google/android/material/radiobutton/MaterialRadioButton;

.field public final f:Lcom/google/android/material/radiobutton/MaterialRadioButton;

.field public final k:Landroid/widget/RadioGroup;

.field public final n:Lcom/google/android/material/slider/Slider;

.field public final p:Landroid/widget/TextView;

.field public final q:Landroid/widget/TextView;

.field public final r:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/radiobutton/MaterialRadioButton;Lcom/google/android/material/radiobutton/MaterialRadioButton;Lcom/google/android/material/radiobutton/MaterialRadioButton;Landroid/widget/RadioGroup;Lcom/google/android/material/slider/Slider;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcj5;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 5
    .line 6
    iput-object p2, p0, Lcj5;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 7
    .line 8
    iput-object p3, p0, Lcj5;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    iput-object p4, p0, Lcj5;->d:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 11
    .line 12
    iput-object p5, p0, Lcj5;->e:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 13
    .line 14
    iput-object p6, p0, Lcj5;->f:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 15
    .line 16
    iput-object p7, p0, Lcj5;->k:Landroid/widget/RadioGroup;

    .line 17
    .line 18
    iput-object p8, p0, Lcj5;->n:Lcom/google/android/material/slider/Slider;

    .line 19
    .line 20
    iput-object p9, p0, Lcj5;->p:Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object p10, p0, Lcj5;->q:Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p11, p0, Lcj5;->r:Landroid/widget/TextView;

    .line 25
    .line 26
    return-void
.end method

.method public static a(Landroid/view/View;)Lcj5;
    .locals 12

    .line 1
    move-object v1, p0

    .line 2
    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 3
    .line 4
    const v0, 0x7f0a0187

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const v0, 0x7f0a019d

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    const v0, 0x7f0a03ba

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    const v0, 0x7f0a03bb

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 45
    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    const v0, 0x7f0a03bc

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 56
    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    const v0, 0x7f0a03cd

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Landroid/widget/RadioGroup;

    .line 67
    .line 68
    if-eqz v7, :cond_0

    .line 69
    .line 70
    const v0, 0x7f0a0456

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    check-cast v8, Lcom/google/android/material/slider/Slider;

    .line 78
    .line 79
    if-eqz v8, :cond_0

    .line 80
    .line 81
    const v0, 0x7f0a052f

    .line 82
    .line 83
    .line 84
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    check-cast v9, Landroid/widget/TextView;

    .line 89
    .line 90
    if-eqz v9, :cond_0

    .line 91
    .line 92
    const v0, 0x7f0a056a

    .line 93
    .line 94
    .line 95
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    check-cast v9, Landroid/widget/TextView;

    .line 100
    .line 101
    if-eqz v9, :cond_0

    .line 102
    .line 103
    const v0, 0x7f0a059c

    .line 104
    .line 105
    .line 106
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    check-cast v10, Landroid/widget/TextView;

    .line 111
    .line 112
    if-eqz v10, :cond_0

    .line 113
    .line 114
    const v0, 0x7f0a05ac

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    check-cast v10, Landroid/widget/TextView;

    .line 122
    .line 123
    if-eqz v10, :cond_0

    .line 124
    .line 125
    const v0, 0x7f0a05ba

    .line 126
    .line 127
    .line 128
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    check-cast v11, Landroid/widget/TextView;

    .line 133
    .line 134
    if-eqz v11, :cond_0

    .line 135
    .line 136
    new-instance v0, Lcj5;

    .line 137
    .line 138
    invoke-direct/range {v0 .. v11}, Lcj5;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/radiobutton/MaterialRadioButton;Lcom/google/android/material/radiobutton/MaterialRadioButton;Lcom/google/android/material/radiobutton/MaterialRadioButton;Landroid/widget/RadioGroup;Lcom/google/android/material/slider/Slider;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 139
    .line 140
    .line 141
    return-object v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const-string v0, "Missing required view with ID: "

    .line 151
    .line 152
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const/4 p0, 0x0

    .line 160
    return-object p0
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcj5;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    .line 3
    return-object p0
.end method
