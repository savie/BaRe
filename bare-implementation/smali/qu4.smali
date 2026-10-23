.class public final Lqu4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lru4;


# direct methods
.method public constructor <init>(Lru4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqu4;->a:Lru4;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lqu4;->a:Lru4;

    .line 5
    .line 6
    iget p1, p0, Lru4;->f:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    add-int/2addr p1, v0

    .line 10
    iget-object v1, p0, Lru4;->e:Lzu4;

    .line 11
    .line 12
    iget-object v1, v1, Llm0;->e:[I

    .line 13
    .line 14
    array-length v1, v1

    .line 15
    rem-int/2addr p1, v1

    .line 16
    iput p1, p0, Lru4;->f:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lru4;->k:Z

    .line 19
    .line 20
    return-void
.end method
