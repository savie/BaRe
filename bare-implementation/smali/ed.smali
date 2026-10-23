.class public abstract Led;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static final b:Li53;

.field public static final c:Lh53;

.field public static final d:Lyu4;

.field public static final e:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Led;->a:Landroid/view/animation/LinearInterpolator;

    .line 7
    .line 8
    new-instance v0, Li53;

    .line 9
    .line 10
    invoke-direct {v0}, Li53;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Led;->b:Li53;

    .line 14
    .line 15
    new-instance v0, Lh53;

    .line 16
    .line 17
    invoke-direct {v0}, Lh53;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Led;->c:Lh53;

    .line 21
    .line 22
    new-instance v0, Lyu4;

    .line 23
    .line 24
    sget-object v1, Lyu4;->c:[F

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lw15;-><init>([F)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Led;->d:Lyu4;

    .line 30
    .line 31
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Led;->e:Landroid/view/animation/DecelerateInterpolator;

    .line 37
    .line 38
    return-void
.end method

.method public static a(FFF)F
    .locals 0

    .line 1
    invoke-static {p1, p0, p2, p0}, Lxs1;->e(FFFF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(FFFFF)F
    .locals 1

    .line 1
    cmpg-float v0, p4, p2

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    cmpl-float v0, p4, p3

    .line 7
    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    return p1

    .line 11
    :cond_1
    sub-float/2addr p4, p2

    .line 12
    sub-float/2addr p3, p2

    .line 13
    div-float/2addr p4, p3

    .line 14
    invoke-static {p0, p1, p4}, Led;->a(FFF)F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static c(FII)I
    .locals 0

    .line 1
    sub-int/2addr p2, p1

    .line 2
    int-to-float p2, p2

    .line 3
    mul-float/2addr p0, p2

    .line 4
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    add-int/2addr p0, p1

    .line 9
    return p0
.end method
