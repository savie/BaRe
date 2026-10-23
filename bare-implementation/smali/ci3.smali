.class public final Lci3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Z

.field public final synthetic b:Lhi3;


# direct methods
.method public constructor <init>(Lhi3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lci3;->b:Lhi3;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lci3;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lci3;->b:Lhi3;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p1, Lhi3;->r:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p1, Lhi3;->m:Landroid/animation/Animator;

    .line 8
    .line 9
    iget-boolean p0, p0, Lci3;->a:Z

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p1, Lhi3;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 14
    .line 15
    const/4 p1, 0x4

    .line 16
    invoke-virtual {p0, p1, v0}, Lmn8;->a(IZ)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lci3;->b:Lhi3;

    .line 2
    .line 3
    iget-object v1, v0, Lhi3;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2, v2}, Lmn8;->a(IZ)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput v1, v0, Lhi3;->r:I

    .line 11
    .line 12
    iput-object p1, v0, Lhi3;->m:Landroid/animation/Animator;

    .line 13
    .line 14
    iput-boolean v2, p0, Lci3;->a:Z

    .line 15
    .line 16
    return-void
.end method
