.class public final Lno8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final b:Lcom/google/android/material/appbar/AppBarLayout;

.field public final c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final d:Lcom/github/chrisbanes/photoview/PhotoView;

.field public final e:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/github/chrisbanes/photoview/PhotoView;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lno8;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lno8;->b:Lcom/google/android/material/appbar/AppBarLayout;

    .line 7
    .line 8
    iput-object p3, p0, Lno8;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 9
    .line 10
    iput-object p4, p0, Lno8;->d:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 11
    .line 12
    iput-object p5, p0, Lno8;->e:Landroidx/appcompat/widget/Toolbar;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lno8;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2
    .line 3
    return-object p0
.end method
