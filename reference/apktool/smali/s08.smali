.class public final Ls08;
.super Lg67;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic k:Ljb9;

.field public final synthetic n:Lu08;


# direct methods
.method public constructor <init>(Lu08;Ljb9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls08;->n:Lu08;

    .line 5
    .line 6
    iput-object p2, p0, Ls08;->k:Ljb9;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final x(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls08;->n:Lu08;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lu08;->n:Z

    .line 5
    .line 6
    iget-object p0, p0, Ls08;->k:Ljb9;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljb9;->J(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final y(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls08;->n:Lu08;

    .line 2
    .line 3
    iget v1, v0, Lu08;->d:I

    .line 4
    .line 5
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Lu08;->p:Landroid/graphics/Typeface;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lu08;->n:Z

    .line 13
    .line 14
    iget-object p0, p0, Ls08;->k:Ljb9;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Ljb9;->K(Landroid/graphics/Typeface;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
