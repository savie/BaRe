.class public abstract Lcx4;
.super Lcom/google/android/material/card/MaterialCardView;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final K:[I


# instance fields
.field public G:Z

.field public final H:I

.field public I:Z

.field public final J:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x7f040563

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcx4;->K:[I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    const v4, 0x7f140584

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2, p3, v4}, Lzm5;->J(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcx4;->G:Z

    .line 13
    .line 14
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcx4;->J:Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const v2, 0x7f0702e3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, p0, Lcx4;->H:I

    .line 37
    .line 38
    sget-object v2, Ltd6;->r:[I

    .line 39
    .line 40
    new-array v5, p1, [I

    .line 41
    .line 42
    move-object v1, p2

    .line 43
    move v3, p3

    .line 44
    invoke-static/range {v0 .. v5}, Ljd4;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lu94;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iget-object p3, p2, Lu94;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p3, Landroid/content/res/TypedArray;

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p3, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput-boolean p1, p0, Lcx4;->I:Z

    .line 58
    .line 59
    invoke-virtual {p2}, Lu94;->f()V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public getSwipeMaxOvershoot()I
    .locals 0

    .line 1
    iget p0, p0, Lcx4;->H:I

    .line 2
    .line 3
    return p0
.end method

.method public final onCreateDrawableState(I)[I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->onCreateDrawableState(I)[I

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-boolean p0, p0, Lcx4;->G:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcx4;->K:[I

    .line 12
    .line 13
    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p1
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcx4;->I:Z

    .line 2
    .line 3
    return-void
.end method
