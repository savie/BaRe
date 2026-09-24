.class public final synthetic Lhl8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lls5;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lhl8;->a:I

    .line 5
    .line 6
    iput p2, p0, Lhl8;->b:I

    .line 7
    .line 8
    iput p3, p0, Lhl8;->c:I

    .line 9
    .line 10
    iput p4, p0, Lhl8;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final n(Landroid/view/View;Ltv8;)Ltv8;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 17
    .line 18
    :cond_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 22
    .line 23
    invoke-virtual {p2}, Ltv8;->a()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget v3, p0, Lhl8;->d:I

    .line 28
    .line 29
    add-int/2addr v2, v3

    .line 30
    iget v3, p0, Lhl8;->a:I

    .line 31
    .line 32
    iget v4, p0, Lhl8;->b:I

    .line 33
    .line 34
    iget p0, p0, Lhl8;->c:I

    .line 35
    .line 36
    invoke-virtual {v1, v3, v4, p0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    return-object p2

    .line 43
    :cond_2
    const-string p0, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    .line 44
    .line 45
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v1
.end method
