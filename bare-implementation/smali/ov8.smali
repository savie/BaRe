.class public Lov8;
.super Lnv8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final w:Ltv8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lm0;->a()Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Ltv8;->h(Landroid/view/WindowInsets;Landroid/view/View;)Ltv8;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lov8;->w:Ltv8;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ltv8;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnv8;-><init>(Ltv8;Landroid/view/WindowInsets;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public h(I)Lvc4;
    .locals 0

    .line 1
    iget-object p0, p0, Liv8;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p1}, Lsv8;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lvc4;->d(Landroid/graphics/Insets;)Lvc4;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public i(I)Lvc4;
    .locals 0

    .line 1
    iget-object p0, p0, Liv8;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p1}, Lsv8;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lvc4;->d(Landroid/graphics/Insets;)Lvc4;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public o(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
