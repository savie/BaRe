.class public final Lp72;
.super La95;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final s:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lp72;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La95;-><init>(La95;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lp72;->s:Landroid/graphics/RectF;

    .line 5
    .line 6
    iput-object p1, p0, Lp72;->s:Landroid/graphics/RectF;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ltb7;Landroid/graphics/RectF;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, La95;-><init>(Lrb7;)V

    .line 10
    iput-object p2, p0, Lp72;->s:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Lq72;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lc95;-><init>(La95;)V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lq72;->Z:Lp72;

    .line 7
    .line 8
    invoke-virtual {v0}, Lc95;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
