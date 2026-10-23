.class public final Lmi7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Lcom/google/android/material/listitem/ListItemLayout;

.field public final b:Lorg/swiftapps/swiftbackup/views/MCheckBox;

.field public final c:Landroid/widget/ImageView;

.field public final d:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

.field public final e:Landroid/widget/ImageView;

.field public final f:Landroid/widget/TextView;

.field public final k:Landroid/widget/TextView;

.field public final n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/listitem/ListItemLayout;Lorg/swiftapps/swiftbackup/views/MCheckBox;Landroid/widget/ImageView;Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmi7;->a:Lcom/google/android/material/listitem/ListItemLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lmi7;->b:Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 7
    .line 8
    iput-object p3, p0, Lmi7;->c:Landroid/widget/ImageView;

    .line 9
    .line 10
    iput-object p4, p0, Lmi7;->d:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 11
    .line 12
    iput-object p5, p0, Lmi7;->e:Landroid/widget/ImageView;

    .line 13
    .line 14
    iput-object p6, p0, Lmi7;->f:Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object p7, p0, Lmi7;->k:Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object p8, p0, Lmi7;->n:Landroid/widget/TextView;

    .line 19
    .line 20
    return-void
.end method

.method public static a(Landroid/view/View;)Lmi7;
    .locals 11

    .line 1
    const v0, 0x7f0a014b

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    move-object v4, v1

    .line 9
    check-cast v4, Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v3, p0

    .line 14
    check-cast v3, Lcom/google/android/material/listitem/ListItemLayout;

    .line 15
    .line 16
    const v0, 0x7f0a01a6

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const v0, 0x7f0a0270

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move-object v5, v1

    .line 35
    check-cast v5, Landroid/widget/ImageView;

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    const v0, 0x7f0a028c

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    move-object v6, v1

    .line 47
    check-cast v6, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 48
    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    const v0, 0x7f0a02a0

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    move-object v7, v1

    .line 59
    check-cast v7, Landroid/widget/ImageView;

    .line 60
    .line 61
    if-eqz v7, :cond_0

    .line 62
    .line 63
    const v0, 0x7f0a02b4

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/widget/ImageView;

    .line 71
    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    const v0, 0x7f0a05ad

    .line 75
    .line 76
    .line 77
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object v8, v1

    .line 82
    check-cast v8, Landroid/widget/TextView;

    .line 83
    .line 84
    if-eqz v8, :cond_0

    .line 85
    .line 86
    const v0, 0x7f0a05ae

    .line 87
    .line 88
    .line 89
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    move-object v9, v1

    .line 94
    check-cast v9, Landroid/widget/TextView;

    .line 95
    .line 96
    if-eqz v9, :cond_0

    .line 97
    .line 98
    const v0, 0x7f0a05ba

    .line 99
    .line 100
    .line 101
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v10, v1

    .line 106
    check-cast v10, Landroid/widget/TextView;

    .line 107
    .line 108
    if-eqz v10, :cond_0

    .line 109
    .line 110
    new-instance v2, Lmi7;

    .line 111
    .line 112
    invoke-direct/range {v2 .. v10}, Lmi7;-><init>(Lcom/google/android/material/listitem/ListItemLayout;Lorg/swiftapps/swiftbackup/views/MCheckBox;Landroid/widget/ImageView;Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 113
    .line 114
    .line 115
    return-object v2

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    const-string v0, "Missing required view with ID: "

    .line 125
    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const/4 p0, 0x0

    .line 134
    return-object p0
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmi7;->a:Lcom/google/android/material/listitem/ListItemLayout;

    .line 2
    .line 3
    return-object p0
.end method
