.class public final Ltr;
.super Lkx4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final n0:Lqr;

.field public static final o0:Ljava/util/WeakHashMap;

.field public static final p0:Lpr;

.field public static final q0:Lor;


# instance fields
.field public final A:Lqt3;

.field public final B:Z

.field public final C:Z

.field public final D:Z

.field public final E:Z

.field public final F:Lqt3;

.field public final G:Lqt3;

.field public final H:Z

.field public final I:Z

.field public final J:Ldr;

.field public K:Lji;

.field public final L:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

.field public final M:Landroid/widget/ImageView;

.field public final N:Landroid/widget/TextView;

.field public final O:Landroid/widget/TextView;

.field public final P:Landroid/widget/TextView;

.field public final Q:Landroid/widget/TextView;

.field public final R:Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;

.field public final S:Landroid/widget/ImageView;

.field public final T:Lorg/swiftapps/swiftbackup/views/MCheckBox;

.field public final U:Landroid/widget/ImageView;

.field public final V:Landroid/view/View;

.field public final W:Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;

.field public final X:Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;

.field public final Y:Lcom/google/android/material/button/MaterialButton;

.field public final Z:Lcom/google/android/material/button/MaterialButton;

.field public final a0:Lcom/google/android/material/button/MaterialButton;

.field public final b0:Lcom/google/android/material/button/MaterialButton;

.field public final c0:I

.field public final d0:I

.field public final e0:Landroid/content/res/ColorStateList;

.field public final f0:I

.field public final g0:I

.field public final h0:Ljava/lang/String;

.field public i0:Ljava/util/List;

.field public j0:F

.field public k0:I

.field public l0:Loy;

.field public m0:Loy;

.field public final v:Lgm7;

.field public final w:Z

.field public final x:Ljava/lang/String;

.field public final y:I

.field public final z:Lqt3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqr;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ltr;->n0:Lqr;

    .line 7
    .line 8
    new-instance v0, Ljava/util/WeakHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ltr;->o0:Ljava/util/WeakHashMap;

    .line 14
    .line 15
    new-instance v0, Lpr;

    .line 16
    .line 17
    const/16 v1, 0x200

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Ltr;->p0:Lpr;

    .line 23
    .line 24
    new-instance v0, Lor;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Ltr;->q0:Lor;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lgm7;ZLjava/lang/String;ILqt3;Lqt3;ZLrs;Lss;ZZI)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p13

    and-int/lit16 v4, v3, 0x80

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    and-int/lit16 v7, v3, 0x200

    if-eqz v7, :cond_1

    move v5, v6

    :cond_1
    and-int/lit16 v3, v3, 0x1000

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    move-object v3, v7

    goto :goto_1

    :cond_2
    move-object/from16 v3, p10

    .line 1
    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct/range {p0 .. p1}, Lkx4;-><init>(Landroid/view/View;)V

    move-object/from16 v8, p2

    .line 3
    iput-object v8, v0, Ltr;->v:Lgm7;

    .line 4
    iput-boolean v2, v0, Ltr;->w:Z

    move-object/from16 v8, p4

    .line 5
    iput-object v8, v0, Ltr;->x:Ljava/lang/String;

    move/from16 v8, p5

    .line 6
    iput v8, v0, Ltr;->y:I

    move-object/from16 v8, p6

    .line 7
    iput-object v8, v0, Ltr;->z:Lqt3;

    move-object/from16 v8, p7

    .line 8
    iput-object v8, v0, Ltr;->A:Lqt3;

    .line 9
    iput-boolean v4, v0, Ltr;->B:Z

    .line 10
    iput-boolean v6, v0, Ltr;->C:Z

    .line 11
    iput-boolean v5, v0, Ltr;->D:Z

    move/from16 v4, p8

    .line 12
    iput-boolean v4, v0, Ltr;->E:Z

    move-object/from16 v4, p9

    .line 13
    iput-object v4, v0, Ltr;->F:Lqt3;

    .line 14
    iput-object v3, v0, Ltr;->G:Lqt3;

    move/from16 v3, p11

    .line 15
    iput-boolean v3, v0, Ltr;->H:Z

    move/from16 v3, p12

    .line 16
    iput-boolean v3, v0, Ltr;->I:Z

    const v3, 0x7f0a012e

    .line 17
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    if-eqz v10, :cond_4

    const v3, 0x7f0a012f

    .line 18
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    if-eqz v11, :cond_4

    const v3, 0x7f0a0130

    .line 19
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    if-eqz v12, :cond_4

    const v3, 0x7f0a0131

    .line 20
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/google/android/material/button/MaterialButton;

    if-eqz v13, :cond_4

    const v3, 0x7f0a014b

    .line 21
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lorg/swiftapps/swiftbackup/views/MCheckBox;

    if-eqz v14, :cond_4

    .line 22
    move-object v9, v1

    check-cast v9, Lorg/swiftapps/swiftbackup/appslist/ui/AppListItemLayout;

    const v3, 0x7f0a01a6

    .line 23
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;

    if-eqz v4, :cond_4

    const v3, 0x7f0a0270

    .line 24
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_4

    const v3, 0x7f0a028c

    .line 25
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    if-eqz v17, :cond_4

    const v3, 0x7f0a02b5

    .line 26
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/widget/ImageView;

    if-eqz v18, :cond_4

    const v3, 0x7f0a02bd

    .line 27
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Landroid/widget/ImageView;

    if-eqz v19, :cond_4

    const v3, 0x7f0a02be

    .line 28
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_4

    const v3, 0x7f0a03c9

    .line 29
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v21, v4

    check-cast v21, Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;

    if-eqz v21, :cond_4

    const v3, 0x7f0a03ca

    .line 30
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v22, v4

    check-cast v22, Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;

    if-eqz v22, :cond_4

    const v3, 0x7f0a0400

    .line 31
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v23, v4

    check-cast v23, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;

    if-eqz v23, :cond_4

    const v3, 0x7f0a05ad

    .line 32
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v24, v4

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_4

    const v3, 0x7f0a05ae

    .line 33
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v25, v4

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_4

    const v3, 0x7f0a05af

    .line 34
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v26, v4

    check-cast v26, Landroid/widget/TextView;

    if-eqz v26, :cond_4

    const v3, 0x7f0a05ba

    .line 35
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v27, v4

    check-cast v27, Landroid/widget/TextView;

    if-eqz v27, :cond_4

    .line 36
    new-instance v8, Ldr;

    move-object v15, v9

    invoke-direct/range {v8 .. v27}, Ldr;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/AppListItemLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lorg/swiftapps/swiftbackup/views/MCheckBox;Lorg/swiftapps/swiftbackup/appslist/ui/AppListItemLayout;Landroid/widget/ImageView;Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v9, v22

    move-object/from16 v15, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v17, v10

    move-object/from16 v16, v11

    move-object/from16 v18, v13

    move-object/from16 v11, v26

    move-object/from16 v10, v27

    move-object v13, v8

    move-object/from16 v8, v21

    .line 37
    iput-object v13, v0, Ltr;->J:Ldr;

    .line 38
    iput-object v3, v0, Ltr;->L:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 39
    iput-object v4, v0, Ltr;->M:Landroid/widget/ImageView;

    .line 40
    iput-object v10, v0, Ltr;->N:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Ltr;->O:Landroid/widget/TextView;

    .line 42
    iput-object v2, v0, Ltr;->P:Landroid/widget/TextView;

    .line 43
    iput-object v11, v0, Ltr;->Q:Landroid/widget/TextView;

    .line 44
    iput-object v15, v0, Ltr;->R:Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;

    .line 45
    iput-object v5, v0, Ltr;->S:Landroid/widget/ImageView;

    .line 46
    iput-object v14, v0, Ltr;->T:Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 47
    iput-object v6, v0, Ltr;->U:Landroid/widget/ImageView;

    .line 48
    iput-object v7, v0, Ltr;->V:Landroid/view/View;

    .line 49
    iput-object v9, v0, Ltr;->W:Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;

    .line 50
    iput-object v8, v0, Ltr;->X:Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;

    .line 51
    iput-object v12, v0, Ltr;->Y:Lcom/google/android/material/button/MaterialButton;

    move-object/from16 v13, v18

    .line 52
    iput-object v13, v0, Ltr;->Z:Lcom/google/android/material/button/MaterialButton;

    move-object/from16 v10, v17

    .line 53
    iput-object v10, v0, Ltr;->a0:Lcom/google/android/material/button/MaterialButton;

    move-object/from16 v11, v16

    .line 54
    iput-object v11, v0, Ltr;->b0:Lcom/google/android/material/button/MaterialButton;

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lsz8;->w(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Ltr;->c0:I

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lsz8;->r(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Ltr;->d0:I

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7f0600d0

    .line 58
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v2, v4}, Lio4;->c(Landroid/content/Context;I)I

    move-result v2

    .line 59
    invoke-static {v2}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Ltr;->e0:Landroid/content/res/ColorStateList;

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7f0600c4

    .line 61
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v2, v4}, Lio4;->c(Landroid/content/Context;I)I

    move-result v2

    .line 62
    iput v2, v0, Ltr;->f0:I

    .line 63
    iput v1, v0, Ltr;->g0:I

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p3, :cond_3

    const v2, 0x7f1303bd

    goto :goto_2

    :cond_3
    const v2, 0x7f1303be

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Ltr;->h0:Ljava/lang/String;

    .line 65
    sget-object v1, Lov2;->a:Lov2;

    iput-object v1, v0, Ltr;->i0:Ljava/util/List;

    const/high16 v1, -0x40800000    # -1.0f

    .line 66
    iput v1, v0, Ltr;->j0:F

    const/4 v1, -0x1

    .line 67
    iput v1, v0, Ltr;->k0:I

    .line 68
    new-instance v1, Lkr;

    invoke-direct {v1, v0}, Lkr;-><init>(Ltr;)V

    .line 69
    iget-object v0, v3, Lcx4;->J:Ljava/util/LinkedHashSet;

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 71
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public final r(II)V
    .locals 2

    .line 1
    if-ltz p1, :cond_4

    .line 2
    .line 3
    if-gtz p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_1
    if-nez p1, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    goto :goto_1

    .line 14
    :cond_2
    add-int/lit8 v0, p2, -0x1

    .line 15
    .line 16
    if-ne p1, v0, :cond_3

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_1

    .line 20
    :cond_3
    const/4 v0, 0x3

    .line 21
    goto :goto_1

    .line 22
    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 23
    :goto_1
    iget v1, p0, Ltr;->k0:I

    .line 24
    .line 25
    if-ne v1, v0, :cond_5

    .line 26
    .line 27
    return-void

    .line 28
    :cond_5
    iput v0, p0, Ltr;->k0:I

    .line 29
    .line 30
    invoke-super {p0, p1, p2}, Lkx4;->r(II)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final s(Lji;Lsx;Z)V
    .locals 15

    .line 1
    move-object/from16 v5, p1

    .line 2
    .line 3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iput-object v5, p0, Ltr;->K:Lji;

    .line 10
    .line 11
    iget-object v0, p0, Ltr;->M:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-static {v0, v5}, Lqr;->d(Landroid/widget/ImageView;Lji;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Ltr;->F:Lqt3;

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Ltr;->M:Landroid/widget/ImageView;

    .line 22
    .line 23
    new-instance v1, Ler;

    .line 24
    .line 25
    invoke-direct {v1, v7, p0, v5}, Ler;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Ltr;->O:Landroid/widget/TextView;

    .line 32
    .line 33
    iget v1, p0, Ltr;->y:I

    .line 34
    .line 35
    iget v2, p0, Ltr;->f0:I

    .line 36
    .line 37
    iget v3, p0, Ltr;->g0:I

    .line 38
    .line 39
    invoke-static {v0, v5, v1, v2, v3}, Lqr;->g(Landroid/widget/TextView;Lji;III)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Ltr;->N:Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-static {v0, v5}, Lqr;->e(Landroid/widget/TextView;Lji;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Ltr;->P:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-static {v0}, Lsz8;->I(Landroid/view/View;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v8, 0x1

    .line 57
    if-eqz v1, :cond_7

    .line 58
    .line 59
    iget-boolean v1, p0, Ltr;->w:Z

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {v5}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getLatestBackup()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getDateBackedUpOrUpdated()J

    .line 76
    .line 77
    .line 78
    move-result-wide v9

    .line 79
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    move-object v1, v4

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v5}, Lji;->getDateBackedUpOrUpdated()Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :goto_0
    iget-object v14, p0, Ltr;->x:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v6, p0, Ltr;->h0:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v9

    .line 98
    const-wide/32 v11, 0xea60

    .line 99
    .line 100
    .line 101
    div-long v12, v9, v11

    .line 102
    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v9

    .line 109
    cmp-long v9, v9, v2

    .line 110
    .line 111
    if-gtz v9, :cond_3

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    new-instance v9, Lmr;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 117
    .line 118
    .line 119
    move-result-wide v10

    .line 120
    invoke-direct/range {v9 .. v14}, Lmr;-><init>(JJLjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object v6, Ltr;->q0:Lor;

    .line 124
    .line 125
    monitor-enter v6

    .line 126
    :try_start_0
    invoke-virtual {v6, v9}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    check-cast v10, Llr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    .line 132
    if-eqz v10, :cond_4

    .line 133
    .line 134
    monitor-exit v6

    .line 135
    goto :goto_2

    .line 136
    :cond_4
    monitor-exit v6

    .line 137
    new-instance v10, Llr;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 140
    .line 141
    .line 142
    move-result-wide v11

    .line 143
    invoke-static {v11, v12}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const-string v11, ": "

    .line 148
    .line 149
    invoke-static {v14, v11, v1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-direct {v10, v1, v8}, Llr;-><init>(Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    monitor-enter v6

    .line 157
    :try_start_1
    invoke-virtual {v6, v9, v10}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Llr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .line 163
    monitor-exit v6

    .line 164
    goto :goto_2

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    move-object p0, v0

    .line 167
    monitor-exit v6

    .line 168
    throw p0

    .line 169
    :catchall_1
    move-exception v0

    .line 170
    move-object p0, v0

    .line 171
    monitor-exit v6

    .line 172
    throw p0

    .line 173
    :cond_5
    :goto_1
    new-instance v10, Llr;

    .line 174
    .line 175
    invoke-direct {v10, v6, v7}, Llr;-><init>(Ljava/lang/String;Z)V

    .line 176
    .line 177
    .line 178
    :goto_2
    invoke-static {v5}, Lqr;->a(Lji;)F

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 183
    .line 184
    .line 185
    iget-boolean v1, v10, Llr;->a:Z

    .line 186
    .line 187
    if-eqz v1, :cond_6

    .line 188
    .line 189
    iget v1, p0, Ltr;->c0:I

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_6
    iget v1, p0, Ltr;->y:I

    .line 193
    .line 194
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v10, Llr;->b:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    iget-object v0, p0, Ltr;->Q:Landroid/widget/TextView;

    .line 203
    .line 204
    iget-boolean v1, p0, Ltr;->D:Z

    .line 205
    .line 206
    if-nez v1, :cond_8

    .line 207
    .line 208
    invoke-static {v0}, Lsz8;->W(Landroid/view/View;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_f

    .line 212
    .line 213
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    const-string v6, ": "

    .line 221
    .line 222
    sget-object v9, Lsr;->b:[I

    .line 223
    .line 224
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    aget v9, v9, v10

    .line 229
    .line 230
    packed-switch v9, :pswitch_data_0

    .line 231
    .line 232
    .line 233
    invoke-static {}, Lq;->j()V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :pswitch_0
    invoke-virtual {v5}, Lji;->isInstalled()Z

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    if-nez v9, :cond_a

    .line 242
    .line 243
    :cond_9
    :pswitch_1
    move-object v1, v4

    .line 244
    goto/16 :goto_c

    .line 245
    .line 246
    :cond_a
    sget-object v9, Liy;->e:Ljava/util/LinkedHashMap;

    .line 247
    .line 248
    invoke-virtual {v5}, Lji;->getPackageName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v9

    .line 256
    check-cast v9, Ljava/lang/Long;

    .line 257
    .line 258
    if-eqz v9, :cond_9

    .line 259
    .line 260
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 261
    .line 262
    .line 263
    move-result-wide v10

    .line 264
    cmp-long v2, v10, v2

    .line 265
    .line 266
    if-lez v2, :cond_b

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_b
    move-object v9, v4

    .line 270
    :goto_4
    if-eqz v9, :cond_9

    .line 271
    .line 272
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 273
    .line 274
    .line 275
    move-result-wide v2

    .line 276
    const v9, 0x7f1302ec

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-static {v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-static {v1, v6, v2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    goto/16 :goto_c

    .line 292
    .line 293
    :pswitch_2
    iget-boolean v9, p0, Ltr;->w:Z

    .line 294
    .line 295
    if-eqz v9, :cond_d

    .line 296
    .line 297
    invoke-virtual {v5}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    if-eqz v9, :cond_c

    .line 302
    .line 303
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getTotalSize()J

    .line 304
    .line 305
    .line 306
    move-result-wide v9

    .line 307
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    goto :goto_5

    .line 312
    :cond_c
    move-object v9, v4

    .line 313
    goto :goto_5

    .line 314
    :cond_d
    sget-object v9, Liy;->d:Ljava/util/LinkedHashMap;

    .line 315
    .line 316
    invoke-virtual {v5}, Lji;->getPackageName()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v9

    .line 324
    check-cast v9, Ljava/lang/Long;

    .line 325
    .line 326
    :goto_5
    if-eqz v9, :cond_9

    .line 327
    .line 328
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 329
    .line 330
    .line 331
    move-result-wide v10

    .line 332
    cmp-long v2, v10, v2

    .line 333
    .line 334
    if-lez v2, :cond_e

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_e
    move-object v9, v4

    .line 338
    :goto_6
    if-eqz v9, :cond_9

    .line 339
    .line 340
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 341
    .line 342
    .line 343
    move-result-wide v2

    .line 344
    const v9, 0x7f1300a6

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    sget-object v9, Lp93;->a:Lp93;

    .line 352
    .line 353
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-static {v1, v6, v2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    goto/16 :goto_c

    .line 366
    .line 367
    :pswitch_3
    sget-object v9, Liy;->c:Ljava/util/LinkedHashMap;

    .line 368
    .line 369
    invoke-virtual {v5}, Lji;->getPackageName()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v10

    .line 373
    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    check-cast v9, Ljava/lang/Long;

    .line 378
    .line 379
    if-eqz v9, :cond_9

    .line 380
    .line 381
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 382
    .line 383
    .line 384
    move-result-wide v10

    .line 385
    cmp-long v2, v10, v2

    .line 386
    .line 387
    if-lez v2, :cond_f

    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_f
    move-object v9, v4

    .line 391
    :goto_7
    if-eqz v9, :cond_9

    .line 392
    .line 393
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 394
    .line 395
    .line 396
    move-result-wide v2

    .line 397
    const v9, 0x7f130061

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    sget-object v9, Lp93;->a:Lp93;

    .line 405
    .line 406
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-static {v1, v6, v2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    goto/16 :goto_c

    .line 419
    .line 420
    :pswitch_4
    invoke-virtual {v5}, Lji;->isInstalled()Z

    .line 421
    .line 422
    .line 423
    move-result v9

    .line 424
    if-eqz v9, :cond_10

    .line 425
    .line 426
    move-object v9, v5

    .line 427
    goto :goto_8

    .line 428
    :cond_10
    move-object v9, v4

    .line 429
    :goto_8
    if-eqz v9, :cond_9

    .line 430
    .line 431
    invoke-virtual {v9}, Lji;->getDateUpdated()Ljava/lang/Long;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    if-eqz v9, :cond_9

    .line 436
    .line 437
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 438
    .line 439
    .line 440
    move-result-wide v10

    .line 441
    cmp-long v2, v10, v2

    .line 442
    .line 443
    if-lez v2, :cond_11

    .line 444
    .line 445
    goto :goto_9

    .line 446
    :cond_11
    move-object v9, v4

    .line 447
    :goto_9
    if-eqz v9, :cond_9

    .line 448
    .line 449
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 450
    .line 451
    .line 452
    move-result-wide v2

    .line 453
    const v9, 0x7f1302eb

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-static {v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-static {v1, v6, v2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    goto :goto_c

    .line 469
    :pswitch_5
    invoke-virtual {v5}, Lji;->isInstalled()Z

    .line 470
    .line 471
    .line 472
    move-result v6

    .line 473
    if-eqz v6, :cond_12

    .line 474
    .line 475
    move-object v6, v5

    .line 476
    goto :goto_a

    .line 477
    :cond_12
    move-object v6, v4

    .line 478
    :goto_a
    if-eqz v6, :cond_9

    .line 479
    .line 480
    invoke-virtual {v6}, Lji;->getDateInstalled()Ljava/lang/Long;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    if-eqz v6, :cond_9

    .line 485
    .line 486
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    .line 487
    .line 488
    .line 489
    move-result-wide v9

    .line 490
    cmp-long v2, v9, v2

    .line 491
    .line 492
    if-lez v2, :cond_13

    .line 493
    .line 494
    goto :goto_b

    .line 495
    :cond_13
    move-object v6, v4

    .line 496
    :goto_b
    if-eqz v6, :cond_9

    .line 497
    .line 498
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    .line 499
    .line 500
    .line 501
    move-result-wide v2

    .line 502
    invoke-static {v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    const v3, 0x7f1302c4

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    :goto_c
    if-eqz v1, :cond_15

    .line 518
    .line 519
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    if-nez v2, :cond_14

    .line 524
    .line 525
    goto :goto_d

    .line 526
    :cond_14
    move v2, v7

    .line 527
    goto :goto_e

    .line 528
    :cond_15
    :goto_d
    move v2, v8

    .line 529
    :goto_e
    xor-int/2addr v2, v8

    .line 530
    invoke-static {v0, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 531
    .line 532
    .line 533
    invoke-static {v0}, Lsz8;->I(Landroid/view/View;)Z

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    if-eqz v2, :cond_16

    .line 538
    .line 539
    iget v2, p0, Ltr;->y:I

    .line 540
    .line 541
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    .line 546
    .line 547
    :cond_16
    :goto_f
    invoke-virtual {v5}, Lji;->getLabels()Ljava/util/Set;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    iget-object v1, p0, Ltr;->R:Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;

    .line 552
    .line 553
    iget-boolean v2, p0, Ltr;->E:Z

    .line 554
    .line 555
    if-eqz v2, :cond_18

    .line 556
    .line 557
    if-eqz v0, :cond_18

    .line 558
    .line 559
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    if-eqz v2, :cond_17

    .line 564
    .line 565
    goto :goto_10

    .line 566
    :cond_17
    move v2, v8

    .line 567
    goto :goto_11

    .line 568
    :cond_18
    :goto_10
    move v2, v7

    .line 569
    :goto_11
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 570
    .line 571
    .line 572
    invoke-static {v1}, Lsz8;->I(Landroid/view/View;)Z

    .line 573
    .line 574
    .line 575
    move-result v2

    .line 576
    if-eqz v2, :cond_1d

    .line 577
    .line 578
    invoke-static {v5}, Lqr;->a(Lji;)F

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    if-eqz v0, :cond_19

    .line 583
    .line 584
    invoke-static {v0}, Lqr;->b(Ljava/util/Set;)Ljava/util/List;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    goto :goto_12

    .line 589
    :cond_19
    move-object v0, v4

    .line 590
    :goto_12
    if-nez v0, :cond_1a

    .line 591
    .line 592
    sget-object v0, Lov2;->a:Lov2;

    .line 593
    .line 594
    :cond_1a
    iget-object v3, p0, Ltr;->i0:Ljava/util/List;

    .line 595
    .line 596
    invoke-static {v3, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    if-eqz v3, :cond_1b

    .line 601
    .line 602
    iget v3, p0, Ltr;->j0:F

    .line 603
    .line 604
    cmpg-float v3, v3, v2

    .line 605
    .line 606
    if-nez v3, :cond_1b

    .line 607
    .line 608
    goto :goto_14

    .line 609
    :cond_1b
    iget-boolean v3, p0, Ltr;->I:Z

    .line 610
    .line 611
    iget-object v6, v1, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->t:Ljava/util/List;

    .line 612
    .line 613
    invoke-static {v6, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v6

    .line 617
    if-eqz v6, :cond_1c

    .line 618
    .line 619
    iget v6, v1, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->x:F

    .line 620
    .line 621
    cmpg-float v6, v6, v2

    .line 622
    .line 623
    if-nez v6, :cond_1c

    .line 624
    .line 625
    iget-boolean v6, v1, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->y:Z

    .line 626
    .line 627
    if-ne v6, v3, :cond_1c

    .line 628
    .line 629
    goto :goto_13

    .line 630
    :cond_1c
    iput-object v0, v1, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->t:Ljava/util/List;

    .line 631
    .line 632
    iput v2, v1, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->x:F

    .line 633
    .line 634
    iput-boolean v3, v1, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->y:Z

    .line 635
    .line 636
    const/4 v3, -0x1

    .line 637
    iput v3, v1, Lorg/swiftapps/swiftbackup/appslist/ui/AppRowLabelsView;->H:I

    .line 638
    .line 639
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 643
    .line 644
    .line 645
    :goto_13
    iput-object v0, p0, Ltr;->i0:Ljava/util/List;

    .line 646
    .line 647
    iput v2, p0, Ltr;->j0:F

    .line 648
    .line 649
    :cond_1d
    :goto_14
    iget-object v0, p0, Ltr;->S:Landroid/widget/ImageView;

    .line 650
    .line 651
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 652
    .line 653
    .line 654
    iget-boolean v1, p0, Ltr;->C:Z

    .line 655
    .line 656
    if-eqz v1, :cond_1e

    .line 657
    .line 658
    invoke-virtual {v5}, Lji;->isFavorite()Z

    .line 659
    .line 660
    .line 661
    move-result v1

    .line 662
    if-eqz v1, :cond_1e

    .line 663
    .line 664
    move v1, v8

    .line 665
    goto :goto_15

    .line 666
    :cond_1e
    move v1, v7

    .line 667
    :goto_15
    invoke-static {v0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 668
    .line 669
    .line 670
    invoke-static {v0}, Lsz8;->I(Landroid/view/View;)Z

    .line 671
    .line 672
    .line 673
    move-result v1

    .line 674
    if-eqz v1, :cond_1f

    .line 675
    .line 676
    iget-object v1, p0, Ltr;->e0:Landroid/content/res/ColorStateList;

    .line 677
    .line 678
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 679
    .line 680
    .line 681
    if-eqz p3, :cond_1f

    .line 682
    .line 683
    sget-object v1, Lv53;->a:Lv53;

    .line 684
    .line 685
    invoke-static {v0}, Lv53;->a(Landroid/widget/ImageView;)V

    .line 686
    .line 687
    .line 688
    :cond_1f
    invoke-virtual/range {p0 .. p1}, Ltr;->t(Lji;)V

    .line 689
    .line 690
    .line 691
    iget-object v0, p0, Ltr;->z:Lqt3;

    .line 692
    .line 693
    if-eqz v0, :cond_20

    .line 694
    .line 695
    iget-object v0, p0, Ltr;->L:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 696
    .line 697
    new-instance v1, Lfr;

    .line 698
    .line 699
    invoke-direct {v1, v7, p0, v5}, Lfr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    .line 704
    .line 705
    :cond_20
    iget-object v0, p0, Ltr;->U:Landroid/widget/ImageView;

    .line 706
    .line 707
    iget-object v1, p0, Ltr;->A:Lqt3;

    .line 708
    .line 709
    if-eqz v1, :cond_21

    .line 710
    .line 711
    iget-boolean v1, p0, Ltr;->B:Z

    .line 712
    .line 713
    if-eqz v1, :cond_21

    .line 714
    .line 715
    move v1, v8

    .line 716
    goto :goto_16

    .line 717
    :cond_21
    move v1, v7

    .line 718
    :goto_16
    invoke-static {v0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 719
    .line 720
    .line 721
    iget-object v0, p0, Ltr;->V:Landroid/view/View;

    .line 722
    .line 723
    iget-object v1, p0, Ltr;->U:Landroid/widget/ImageView;

    .line 724
    .line 725
    invoke-static {v1}, Lsz8;->I(Landroid/view/View;)Z

    .line 726
    .line 727
    .line 728
    move-result v1

    .line 729
    invoke-static {v0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 730
    .line 731
    .line 732
    invoke-static {v0}, Lsz8;->I(Landroid/view/View;)Z

    .line 733
    .line 734
    .line 735
    move-result v1

    .line 736
    if-eqz v1, :cond_22

    .line 737
    .line 738
    iget-object v1, p0, Ltr;->A:Lqt3;

    .line 739
    .line 740
    if-eqz v1, :cond_22

    .line 741
    .line 742
    new-instance v1, Lgr;

    .line 743
    .line 744
    invoke-direct {v1, v7, p0, v5}, Lgr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    .line 749
    .line 750
    new-instance v1, Lhr;

    .line 751
    .line 752
    invoke-direct {v1, p0, v5}, Lhr;-><init>(Ltr;Lji;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 756
    .line 757
    .line 758
    :cond_22
    iget-object v0, p0, Ltr;->A:Lqt3;

    .line 759
    .line 760
    if-eqz v0, :cond_23

    .line 761
    .line 762
    iget-object v0, p0, Ltr;->L:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 763
    .line 764
    new-instance v1, Lir;

    .line 765
    .line 766
    invoke-direct {v1, p0, v5}, Lir;-><init>(Ltr;Lji;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 770
    .line 771
    .line 772
    :cond_23
    iget-object v0, p0, Ltr;->G:Lqt3;

    .line 773
    .line 774
    sget-object v1, Lxy;->Right:Lxy;

    .line 775
    .line 776
    invoke-static {v1}, Lho6;->o(Lxy;)Lqy;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    sget-object v2, Lxy;->Left:Lxy;

    .line 781
    .line 782
    invoke-static {v2}, Lho6;->o(Lxy;)Lqy;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    iget-object v3, p0, Lfh6;->a:Landroid/view/View;

    .line 787
    .line 788
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    .line 789
    .line 790
    .line 791
    move-result v6

    .line 792
    if-ne v6, v8, :cond_24

    .line 793
    .line 794
    move-object v6, v4

    .line 795
    move-object v4, v2

    .line 796
    goto :goto_17

    .line 797
    :cond_24
    move-object v6, v4

    .line 798
    move-object v4, v1

    .line 799
    :goto_17
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    .line 800
    .line 801
    .line 802
    move-result v3

    .line 803
    if-ne v3, v8, :cond_25

    .line 804
    .line 805
    move-object v9, v1

    .line 806
    goto :goto_18

    .line 807
    :cond_25
    move-object v9, v2

    .line 808
    :goto_18
    iget-object v1, v4, Lqy;->a:Loy;

    .line 809
    .line 810
    if-eqz v1, :cond_26

    .line 811
    .line 812
    if-eqz v0, :cond_26

    .line 813
    .line 814
    invoke-virtual {v1, v5}, Loy;->isAvailable(Lji;)Z

    .line 815
    .line 816
    .line 817
    move-result v2

    .line 818
    if-eqz v2, :cond_26

    .line 819
    .line 820
    goto :goto_19

    .line 821
    :cond_26
    move-object v1, v6

    .line 822
    :goto_19
    iput-object v1, p0, Ltr;->l0:Loy;

    .line 823
    .line 824
    iget-object v1, v9, Lqy;->a:Loy;

    .line 825
    .line 826
    if-eqz v1, :cond_27

    .line 827
    .line 828
    if-eqz v0, :cond_27

    .line 829
    .line 830
    invoke-virtual {v1, v5}, Loy;->isAvailable(Lji;)Z

    .line 831
    .line 832
    .line 833
    move-result v0

    .line 834
    if-eqz v0, :cond_27

    .line 835
    .line 836
    move-object v6, v1

    .line 837
    :cond_27
    iput-object v6, p0, Ltr;->m0:Loy;

    .line 838
    .line 839
    iget-object v1, p0, Ltr;->W:Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;

    .line 840
    .line 841
    iget-object v2, p0, Ltr;->Y:Lcom/google/android/material/button/MaterialButton;

    .line 842
    .line 843
    iget-object v3, p0, Ltr;->Z:Lcom/google/android/material/button/MaterialButton;

    .line 844
    .line 845
    iget-object v6, p0, Ltr;->l0:Loy;

    .line 846
    .line 847
    move-object v0, p0

    .line 848
    invoke-virtual/range {v0 .. v6}, Ltr;->v(Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lqy;Lji;Loy;)Z

    .line 849
    .line 850
    .line 851
    move-result v10

    .line 852
    iget-object v1, p0, Ltr;->X:Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;

    .line 853
    .line 854
    iget-object v2, p0, Ltr;->a0:Lcom/google/android/material/button/MaterialButton;

    .line 855
    .line 856
    iget-object v3, p0, Ltr;->b0:Lcom/google/android/material/button/MaterialButton;

    .line 857
    .line 858
    iget-object v6, p0, Ltr;->m0:Loy;

    .line 859
    .line 860
    move-object/from16 v5, p1

    .line 861
    .line 862
    move-object v4, v9

    .line 863
    invoke-virtual/range {v0 .. v6}, Ltr;->v(Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lqy;Lji;Loy;)Z

    .line 864
    .line 865
    .line 866
    move-result v1

    .line 867
    iget-object v2, p0, Ltr;->J:Ldr;

    .line 868
    .line 869
    iget-object v2, v2, Ldr;->d:Ljava/lang/Object;

    .line 870
    .line 871
    check-cast v2, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 872
    .line 873
    if-nez v10, :cond_29

    .line 874
    .line 875
    if-eqz v1, :cond_28

    .line 876
    .line 877
    goto :goto_1a

    .line 878
    :cond_28
    move v8, v7

    .line 879
    :cond_29
    :goto_1a
    invoke-virtual {v2, v8}, Lcx4;->setSwipeEnabled(Z)V

    .line 880
    .line 881
    .line 882
    :try_start_2
    iget-object v1, p0, Ltr;->J:Ldr;

    .line 883
    .line 884
    iget-object v1, v1, Ldr;->c:Ljava/lang/Object;

    .line 885
    .line 886
    check-cast v1, Lorg/swiftapps/swiftbackup/appslist/ui/AppListItemLayout;

    .line 887
    .line 888
    iget-object p0, p0, Ltr;->W:Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;

    .line 889
    .line 890
    invoke-virtual {v1, p0, v7}, Lcom/google/android/material/listitem/ListItemLayout;->h(Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;Z)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 891
    .line 892
    .line 893
    :catch_0
    return-void

    .line 894
    nop

    .line 895
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final t(Lji;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltr;->v:Lgm7;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgm7;->q(Ljl0;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Ltr;->J:Ldr;

    .line 8
    .line 9
    iget-object v1, v0, Ldr;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 12
    .line 13
    iget-boolean v2, p0, Ltr;->H:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/material/card/MaterialCardView;->setCheckable(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Ldr;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Ltr;->T:Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 33
    .line 34
    invoke-static {p0, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eq v0, p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final u(Lcom/google/android/material/button/MaterialButton;Loy;Lji;)Z
    .locals 8

    .line 1
    invoke-static {p1}, Lsz8;->I(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    :goto_0
    invoke-static {p1, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 13
    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    invoke-virtual {p2}, Loy;->getTone()Lry;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget-object v4, Lsr;->a:[I

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    aget v3, v4, v3

    .line 33
    .line 34
    const/16 v4, 0xc

    .line 35
    .line 36
    const/16 v5, 0x12

    .line 37
    .line 38
    if-eq v3, v2, :cond_4

    .line 39
    .line 40
    const/4 v6, 0x2

    .line 41
    if-eq v3, v6, :cond_3

    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    if-ne v3, v4, :cond_2

    .line 45
    .line 46
    iget-object v3, p0, Lfh6;->a:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const v4, 0x7f04011f

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v4}, Lsz8;->y(Landroid/content/Context;I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-static {v3}, Lsz8;->x(Landroid/content/Context;)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    new-instance v5, Lrr;

    .line 71
    .line 72
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-static {v3}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-direct {v5, v6, v3, v4}, Lrr;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 89
    .line 90
    .line 91
    return v1

    .line 92
    :cond_3
    new-instance v3, Lrr;

    .line 93
    .line 94
    iget v6, p0, Ltr;->d0:I

    .line 95
    .line 96
    invoke-static {v6, v5}, Lsz8;->U(II)I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-static {v5}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v6}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-static {v6, v4}, Lsz8;->U(II)I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-direct {v3, v5, v7, v4}, Lrr;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 117
    .line 118
    .line 119
    :goto_1
    move-object v5, v3

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    new-instance v3, Lrr;

    .line 122
    .line 123
    iget v6, p0, Ltr;->c0:I

    .line 124
    .line 125
    invoke-static {v6, v5}, Lsz8;->U(II)I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-static {v5}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-static {v6}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-static {v6, v4}, Lsz8;->U(II)I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-direct {v3, v5, v7, v4}, Lrr;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {p2, p3}, Loy;->iconResFor(Lji;)I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {p1, v3}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, v3, p3}, Loy;->title(Landroid/content/Context;Lji;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    iget-object v3, v5, Lrr;->a:Landroid/content/res/ColorStateList;

    .line 179
    .line 180
    invoke-virtual {p1, v3}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 181
    .line 182
    .line 183
    iget-object v3, v5, Lrr;->b:Landroid/content/res/ColorStateList;

    .line 184
    .line 185
    invoke-virtual {p1, v3}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 186
    .line 187
    .line 188
    iget-object v3, v5, Lrr;->c:Landroid/content/res/ColorStateList;

    .line 189
    .line 190
    invoke-virtual {p1, v3}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 191
    .line 192
    .line 193
    new-instance v3, Ljr;

    .line 194
    .line 195
    invoke-direct {v3, p0, p2, p3, v1}, Ljr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljl0;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    xor-int/lit8 p0, v0, 0x1

    .line 202
    .line 203
    return p0
.end method

.method public final v(Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lqy;Lji;Loy;)Z
    .locals 2

    .line 1
    iget-object p4, p4, Lqy;->b:Loy;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Ltr;->G:Lqt3;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p4, p5}, Loy;->isAvailable(Lji;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p4, v0

    .line 18
    :goto_0
    invoke-virtual {p0, p2, p6, p5}, Ltr;->u(Lcom/google/android/material/button/MaterialButton;Loy;Lji;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p0, p3, p4, p5}, Ltr;->u(Lcom/google/android/material/button/MaterialButton;Loy;Lji;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    or-int/2addr p0, p2

    .line 27
    const/4 p2, 0x0

    .line 28
    const/4 p3, 0x1

    .line 29
    if-eqz p6, :cond_1

    .line 30
    .line 31
    move p5, p3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move p5, p2

    .line 34
    :goto_1
    if-eqz p4, :cond_2

    .line 35
    .line 36
    move v0, p3

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v0, p2

    .line 39
    :goto_2
    if-nez p5, :cond_3

    .line 40
    .line 41
    move p5, p2

    .line 42
    goto :goto_3

    .line 43
    :cond_3
    if-eqz v0, :cond_4

    .line 44
    .line 45
    move p5, p3

    .line 46
    goto :goto_3

    .line 47
    :cond_4
    const/4 p5, 0x2

    .line 48
    :goto_3
    invoke-virtual {p1}, Lix4;->getPrimaryActionSwipeMode()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eq v0, p5, :cond_5

    .line 53
    .line 54
    invoke-virtual {p1, p5}, Lix4;->setPrimaryActionSwipeMode(I)V

    .line 55
    .line 56
    .line 57
    :cond_5
    if-eqz p0, :cond_6

    .line 58
    .line 59
    const/4 p0, -0x1

    .line 60
    iput p0, p1, Lix4;->a:I

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 63
    .line 64
    .line 65
    :cond_6
    if-nez p6, :cond_8

    .line 66
    .line 67
    if-eqz p4, :cond_7

    .line 68
    .line 69
    return p3

    .line 70
    :cond_7
    return p2

    .line 71
    :cond_8
    return p3
.end method
