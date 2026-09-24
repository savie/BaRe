.class public final Lbd6;
.super Lcd6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final v:Lyf1;

.field public final synthetic w:Ldd6;


# direct methods
.method public constructor <init>(Ldd6;Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lbd6;->w:Ldd6;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkx4;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    move-object p1, p2

    .line 7
    check-cast p1, Lcom/google/android/material/listitem/ListItemLayout;

    .line 8
    .line 9
    const v0, 0x7f0a01a6

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const v0, 0x7f0a028c

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const v0, 0x7f0a029b

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/widget/ImageView;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    const v0, 0x7f0a05ba

    .line 43
    .line 44
    .line 45
    invoke-static {p2, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/widget/TextView;

    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    new-instance p2, Lyf1;

    .line 54
    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    invoke-direct {p2, v0, p1, v1}, Lyf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object p2, p0, Lbd6;->v:Lyf1;

    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p1, "Missing required view with ID: "

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    throw p0
.end method


# virtual methods
.method public final s(Lzc6;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lbd6;->v:Lyf1;

    .line 5
    .line 6
    iget-object p1, p1, Lyf1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 9
    .line 10
    new-instance p2, Lh7;

    .line 11
    .line 12
    const/16 v0, 0xc

    .line 13
    .line 14
    iget-object p0, p0, Lbd6;->w:Ldd6;

    .line 15
    .line 16
    invoke-direct {p2, p0, v0}, Lh7;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
