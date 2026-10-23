.class public final Landroidx/appcompat/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lec5;
.implements Lzc5;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final b:[I


# instance fields
.field public a:Lfc5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x10100d4

    .line 2
    .line 3
    .line 4
    const v1, 0x1010129

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/appcompat/view/menu/ExpandedMenuView;->b:[I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    .line 49
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ExpandedMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sget-object v1, Landroidx/appcompat/view/menu/ExpandedMenuView;->b:[I

    .line 9
    .line 10
    invoke-static {p3, v0, p1, p2, v1}, Lu94;->e(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lu94;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p1, Lu94;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Landroid/content/res/TypedArray;

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lu94;->b(I)Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p3, 0x1

    .line 32
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1, p3}, Lu94;->b(I)Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1}, Lu94;->f()V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lic5;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/ExpandedMenuView;->a:Lfc5;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v1, v0}, Lfc5;->q(Landroid/view/MenuItem;Lwc5;I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final b(Lfc5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ExpandedMenuView;->a:Lfc5;

    .line 2
    .line 3
    return-void
.end method

.method public getWindowAnimations()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lic5;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ExpandedMenuView;->a(Lic5;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
