.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final O:Lx15;


# instance fields
.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Lkj6;

.field public final K:Ljava/util/HashSet;

.field public L:I

.field public M:Li35;

.field public N:Le25;

.field public final d:Ly15;

.field public final e:Lz15;

.field public f:Le35;

.field public k:I

.field public final n:Lc35;

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:I

.field public t:Z

.field public x:Z

.field public y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx15;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->O:Lx15;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ly15;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ly15;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Ly15;

    .line 10
    .line 11
    new-instance p1, Lz15;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lz15;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz15;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:I

    .line 20
    .line 21
    new-instance v0, Lc35;

    .line 22
    .line 23
    invoke-direct {v0}, Lc35;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Z

    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->G:Z

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->H:Z

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->I:Z

    .line 40
    .line 41
    sget-object v0, Lkj6;->a:Lkj6;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->J:Lkj6;

    .line 44
    .line 45
    new-instance v0, Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->K:Ljava/util/HashSet;

    .line 51
    .line 52
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->L:I

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    const v0, 0x7f0403cb

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->e(Landroid/util/AttributeSet;I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance p1, Ly15;

    invoke-direct {p1, p0}, Ly15;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Ly15;

    .line 64
    new-instance p1, Lz15;

    invoke-direct {p1, p0}, Lz15;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz15;

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:I

    .line 66
    new-instance v0, Lc35;

    invoke-direct {v0}, Lc35;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 67
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    .line 68
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    .line 69
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Z

    .line 70
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->G:Z

    .line 71
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->H:Z

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->I:Z

    .line 73
    sget-object v0, Lkj6;->a:Lkj6;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->J:Lkj6;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->K:Ljava/util/HashSet;

    .line 75
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->L:I

    const p1, 0x7f0403cb

    .line 76
    invoke-virtual {p0, p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance p1, Ly15;

    invoke-direct {p1, p0}, Ly15;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Ly15;

    .line 79
    new-instance p1, Lz15;

    invoke-direct {p1, p0}, Lz15;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz15;

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:I

    .line 81
    new-instance v0, Lc35;

    invoke-direct {v0}, Lc35;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 82
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    .line 83
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    .line 84
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Z

    .line 85
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->G:Z

    .line 86
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->H:Z

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->I:Z

    .line 88
    sget-object v0, Lkj6;->a:Lkj6;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->J:Lkj6;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->K:Ljava/util/HashSet;

    .line 90
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->L:I

    .line 91
    invoke-virtual {p0, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setCompositionTask(Li35;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li35;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->N:Le25;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 5
    .line 6
    invoke-virtual {v0}, Lc35;->d()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Ly15;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Li35;->b(Le35;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz15;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Li35;->a(Le35;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->M:Li35;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->M:Li35;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Ly15;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v2, v0, Li35;->a:Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->M:Li35;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz15;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_1
    iget-object v0, v1, Li35;->b:Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit v1

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    throw p0

    .line 29
    :catchall_1
    move-exception p0

    .line 30
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    throw p0

    .line 32
    :cond_0
    return-void
.end method

.method public final buildDrawingCache(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->L:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->L:I

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->L:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    sget-object p1, Lkj6;->b:Lkj6;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lkj6;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->L:I

    .line 44
    .line 45
    sub-int/2addr p1, v1

    .line 46
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->L:I

    .line 47
    .line 48
    invoke-static {}, Lzv1;->d()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->J:Lkj6;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-eq v0, v2, :cond_2

    .line 12
    .line 13
    :goto_0
    move v1, v2

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->N:Le25;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-boolean v3, v0, Le25;->n:Z

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v4, 0x1c

    .line 26
    .line 27
    if-ge v3, v4, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget v0, v0, Le25;->o:I

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    if-le v0, v3, :cond_2

    .line 36
    .line 37
    :goto_1
    goto :goto_0

    .line 38
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eq v1, v0, :cond_3

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public final e(Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lqd6;->a:[I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->I:Z

    .line 18
    .line 19
    const/16 v0, 0xa

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v3, 0x5

    .line 26
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/16 v5, 0x10

    .line 31
    .line 32
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p0, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    .line 42
    .line 43
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    if-eqz v4, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    if-eqz v6, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_1
    const/4 v0, 0x4

    .line 83
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFallbackResource(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Z

    .line 97
    .line 98
    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->H:Z

    .line 99
    .line 100
    :cond_5
    const/16 v0, 0x8

    .line 101
    .line 102
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/4 v1, -0x1

    .line 107
    iget-object v3, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    iget-object v0, v3, Lc35;->c:Lj35;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 114
    .line 115
    .line 116
    :cond_6
    const/16 v0, 0xd

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_7

    .line 123
    .line 124
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 129
    .line 130
    .line 131
    :cond_7
    const/16 v0, 0xc

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_8

    .line 138
    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 144
    .line 145
    .line 146
    :cond_8
    const/16 v0, 0xf

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    const/high16 v5, 0x3f800000    # 1.0f

    .line 153
    .line 154
    if-eqz v4, :cond_9

    .line 155
    .line 156
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 161
    .line 162
    .line 163
    :cond_9
    const/4 v0, 0x7

    .line 164
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const/16 v0, 0x9

    .line 172
    .line 173
    const/4 v4, 0x0

    .line 174
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 179
    .line 180
    .line 181
    const/4 v0, 0x3

    .line 182
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    iget-boolean v6, v3, Lc35;->t:Z

    .line 187
    .line 188
    if-ne v6, v0, :cond_a

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_a
    iput-boolean v0, v3, Lc35;->t:Z

    .line 192
    .line 193
    iget-object v0, v3, Lc35;->b:Le25;

    .line 194
    .line 195
    if-eqz v0, :cond_b

    .line 196
    .line 197
    invoke-virtual {v3}, Lc35;->c()V

    .line 198
    .line 199
    .line 200
    :cond_b
    :goto_2
    const/4 v0, 0x2

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eqz v6, :cond_c

    .line 206
    .line 207
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v1, v0}, Lzh8;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-instance v1, Lfg7;

    .line 220
    .line 221
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 226
    .line 227
    invoke-direct {v1, v0, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 228
    .line 229
    .line 230
    new-instance v0, Lpo4;

    .line 231
    .line 232
    const-string v6, "**"

    .line 233
    .line 234
    filled-new-array {v6}, [Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-direct {v0, v6}, Lpo4;-><init>([Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    new-instance v6, Lcd;

    .line 242
    .line 243
    invoke-direct {v6, v1}, Lcd;-><init>(Lfg7;)V

    .line 244
    .line 245
    .line 246
    sget-object v1, Lf35;->F:Landroid/graphics/ColorFilter;

    .line 247
    .line 248
    invoke-virtual {v3, v0, v1, v6}, Lc35;->a(Lpo4;Ljava/lang/Object;Lcd;)V

    .line 249
    .line 250
    .line 251
    :cond_c
    const/16 v0, 0xe

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_d

    .line 258
    .line 259
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    iput v0, v3, Lc35;->d:F

    .line 264
    .line 265
    :cond_d
    const/16 v0, 0xb

    .line 266
    .line 267
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_f

    .line 272
    .line 273
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    invoke-static {}, Lkj6;->values()[Lkj6;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    array-length v1, v1

    .line 282
    if-lt v0, v1, :cond_e

    .line 283
    .line 284
    move v0, v2

    .line 285
    :cond_e
    invoke-static {}, Lkj6;->values()[Lkj6;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    aget-object v0, v1, v0

    .line 290
    .line 291
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lkj6;)V

    .line 292
    .line 293
    .line 294
    :cond_f
    const/4 v0, 0x6

    .line 295
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setIgnoreDisabledSystemAnimations(Z)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    sget-object v0, Lmi8;->a:Ldi8;

    .line 310
    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    const-string v0, "animator_duration_scale"

    .line 316
    .line 317
    invoke-static {p1, v0, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    cmpl-float p1, p1, v4

    .line 322
    .line 323
    if-eqz p1, :cond_10

    .line 324
    .line 325
    move v2, p2

    .line 326
    :cond_10
    iput-boolean v2, v3, Lc35;->e:Z

    .line 327
    .line 328
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 329
    .line 330
    .line 331
    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Z

    .line 332
    .line 333
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 8
    .line 9
    invoke-virtual {v0}, Lc35;->g()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    .line 18
    .line 19
    return-void
.end method

.method public getComposition()Le25;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->N:Le25;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->N:Le25;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Le25;->b()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    float-to-long v0, p0

    .line 10
    return-wide v0

    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    return-wide v0
.end method

.method public getFrame()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 4
    .line 5
    iget p0, p0, Lj35;->f:F

    .line 6
    .line 7
    float-to-int p0, p0

    .line 8
    return p0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object p0, p0, Lc35;->q:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public getMaxFrame()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 4
    .line 5
    invoke-virtual {p0}, Lj35;->b()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getMinFrame()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 4
    .line 5
    invoke-virtual {p0}, Lj35;->c()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getPerformanceTracker()Laz5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object p0, p0, Lc35;->b:Le25;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Le25;->a:Laz5;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public getProgress()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 4
    .line 5
    invoke-virtual {p0}, Lj35;->a()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getRepeatCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getScale()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget p0, p0, Lc35;->d:F

    .line 4
    .line 5
    return p0
.end method

.method public getSpeed()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 4
    .line 5
    iget p0, p0, Lj35;->c:F

    .line 6
    .line 7
    return p0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, v1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->H:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->H:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Z

    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc35;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    .line 15
    .line 16
    iget-object v1, v0, Lc35;->n:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lc35;->c:Lj35;

    .line 22
    .line 23
    invoke-virtual {v0}, Lj35;->cancel()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Z

    .line 31
    .line 32
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Ld25;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Ld25;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Ld25;->a:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget v0, p1, Ld25;->b:I

    .line 34
    .line 35
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget v0, p1, Ld25;->c:F

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p1, Ld25;->d:Z

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    .line 52
    .line 53
    .line 54
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 55
    .line 56
    iget-object v1, p1, Ld25;->e:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v1, v0, Lc35;->q:Ljava/lang/String;

    .line 59
    .line 60
    iget v0, p1, Ld25;->f:I

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 63
    .line 64
    .line 65
    iget p1, p1, Ld25;->k:I

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ld25;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, v1, Ld25;->a:Ljava/lang/String;

    .line 13
    .line 14
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    .line 15
    .line 16
    iput v0, v1, Ld25;->b:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 19
    .line 20
    iget-object v2, v0, Lc35;->c:Lj35;

    .line 21
    .line 22
    iget-object v3, v0, Lc35;->c:Lj35;

    .line 23
    .line 24
    invoke-virtual {v2}, Lj35;->a()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iput v2, v1, Ld25;->c:F

    .line 29
    .line 30
    invoke-virtual {v0}, Lc35;->f()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    sget-object v2, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Z

    .line 45
    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 52
    :goto_1
    iput-boolean p0, v1, Ld25;->d:Z

    .line 53
    .line 54
    iget-object p0, v0, Lc35;->q:Ljava/lang/String;

    .line 55
    .line 56
    iput-object p0, v1, Ld25;->e:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    iput p0, v1, Ld25;->f:I

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    iput p0, v1, Ld25;->k:I

    .line 69
    .line 70
    return-object v1
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p2, 0x1

    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lc35;->h()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    .line 34
    .line 35
    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    invoke-virtual {v0}, Lc35;->f()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->H:Z

    .line 57
    .line 58
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Z

    .line 59
    .line 60
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    .line 61
    .line 62
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    .line 63
    .line 64
    iget-object p1, v0, Lc35;->n:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 67
    .line 68
    .line 69
    iget-object p1, v0, Lc35;->c:Lj35;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lj35;->f(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 75
    .line 76
    .line 77
    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    .line 78
    .line 79
    :cond_5
    :goto_1
    return-void
.end method

.method public setAnimation(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Li35;

    .line 13
    .line 14
    new-instance v1, La25;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, La25;-><init>(Lcom/airbnb/lottie/LottieAnimationView;I)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-direct {v0, v1, p1}, Li35;-><init>(Ljava/util/concurrent/Callable;Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->I:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0, p1}, Ln25;->h(Landroid/content/Context;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v3, Lk25;

    .line 46
    .line 47
    invoke-direct {v3, v2, v0, p1, v1}, Lk25;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v3}, Ln25;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Li35;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sget-object v2, Ln25;->a:Ljava/util/HashMap;

    .line 60
    .line 61
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v3, Lk25;

    .line 71
    .line 72
    invoke-direct {v3, v2, v1, p1, v0}, Lk25;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v3}, Ln25;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Li35;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_0
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Li35;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 4

    .line 83
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:Ljava/lang/String;

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Li35;

    new-instance v1, Lb25;

    invoke-direct {v1, p0, p1}, Lb25;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Li35;-><init>(Ljava/util/concurrent/Callable;Z)V

    goto :goto_0

    .line 87
    :cond_0
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->I:Z

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ln25;->a:Ljava/util/HashMap;

    .line 89
    const-string v2, "asset_"

    .line 90
    invoke-static {v2, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 92
    new-instance v3, Lj25;

    invoke-direct {v3, v0, v1, p1, v2}, Lj25;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Ln25;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Li35;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ln25;->a:Ljava/util/HashMap;

    .line 94
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 95
    new-instance v2, Lj25;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Lj25;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v2}, Ln25;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Li35;

    move-result-object v0

    .line 96
    :goto_0
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Li35;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ll25;

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ll25;-><init>(Ljava/io/ByteArrayInputStream;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0, p1}, Ln25;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Li35;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Li35;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->I:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ln25;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    const-string v1, "url_"

    .line 12
    .line 13
    invoke-static {v1, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Li25;

    .line 18
    .line 19
    invoke-direct {v2, v0, p1, v1}, Li25;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Ln25;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Li35;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Li25;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v0, p1, v2}, Li25;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v1}, Ln25;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Li35;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Li35;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iput-boolean p1, p0, Lc35;->I:Z

    .line 4
    .line 5
    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->I:Z

    .line 2
    .line 3
    return-void
.end method

.method public setComposition(Le25;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->N:Le25;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->G:Z

    .line 10
    .line 11
    iget-object v2, v0, Lc35;->n:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v3, v0, Lc35;->c:Lj35;

    .line 14
    .line 15
    iget-object v4, v0, Lc35;->b:Le25;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    if-ne v4, p1, :cond_0

    .line 20
    .line 21
    move v1, v6

    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    iput-boolean v6, v0, Lc35;->K:Z

    .line 25
    .line 26
    invoke-virtual {v0}, Lc35;->d()V

    .line 27
    .line 28
    .line 29
    iput-object p1, v0, Lc35;->b:Le25;

    .line 30
    .line 31
    invoke-virtual {v0}, Lc35;->c()V

    .line 32
    .line 33
    .line 34
    iget-object v4, v3, Lj35;->q:Le25;

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    move v4, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v4, v6

    .line 41
    :goto_0
    iput-object p1, v3, Lj35;->q:Le25;

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    iget v4, v3, Lj35;->n:F

    .line 46
    .line 47
    iget v7, p1, Le25;->k:F

    .line 48
    .line 49
    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    float-to-int v4, v4

    .line 54
    int-to-float v4, v4

    .line 55
    iget v7, v3, Lj35;->p:F

    .line 56
    .line 57
    iget v8, p1, Le25;->l:F

    .line 58
    .line 59
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    float-to-int v7, v7

    .line 64
    int-to-float v7, v7

    .line 65
    invoke-virtual {v3, v4, v7}, Lj35;->i(FF)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget v4, p1, Le25;->k:F

    .line 70
    .line 71
    float-to-int v4, v4

    .line 72
    int-to-float v4, v4

    .line 73
    iget v7, p1, Le25;->l:F

    .line 74
    .line 75
    float-to-int v7, v7

    .line 76
    int-to-float v7, v7

    .line 77
    invoke-virtual {v3, v4, v7}, Lj35;->i(FF)V

    .line 78
    .line 79
    .line 80
    :goto_1
    iget v4, v3, Lj35;->f:F

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    iput v7, v3, Lj35;->f:F

    .line 84
    .line 85
    float-to-int v4, v4

    .line 86
    int-to-float v4, v4

    .line 87
    invoke-virtual {v3, v4}, Lj35;->h(F)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Lj35;->e()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lj35;->getAnimatedFraction()F

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v0, v3}, Lc35;->o(F)V

    .line 98
    .line 99
    .line 100
    iget v3, v0, Lc35;->d:F

    .line 101
    .line 102
    iput v3, v0, Lc35;->d:F

    .line 103
    .line 104
    new-instance v3, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_4

    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Lb35;

    .line 124
    .line 125
    if-eqz v4, :cond_3

    .line 126
    .line 127
    invoke-interface {v4}, Lb35;->run()V

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 135
    .line 136
    .line 137
    iget-boolean v2, v0, Lc35;->G:Z

    .line 138
    .line 139
    iget-object p1, p1, Le25;->a:Laz5;

    .line 140
    .line 141
    iput-boolean v2, p1, Laz5;->a:Z

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    instance-of v2, p1, Landroid/widget/ImageView;

    .line 148
    .line 149
    if-eqz v2, :cond_5

    .line 150
    .line 151
    check-cast p1, Landroid/widget/ImageView;

    .line 152
    .line 153
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    .line 158
    .line 159
    :cond_5
    :goto_3
    iput-boolean v6, p0, Lcom/airbnb/lottie/LottieAnimationView;->G:Z

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    if-ne p1, v0, :cond_6

    .line 169
    .line 170
    if-nez v1, :cond_6

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_6
    if-nez v1, :cond_7

    .line 174
    .line 175
    invoke-virtual {v0}, Lc35;->f()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-virtual {p0, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    .line 184
    .line 185
    if-eqz p1, :cond_7

    .line 186
    .line 187
    invoke-virtual {v0}, Lc35;->h()V

    .line 188
    .line 189
    .line 190
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    invoke-virtual {p0, p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 198
    .line 199
    .line 200
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->K:Ljava/util/HashSet;

    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-nez p1, :cond_8

    .line 211
    .line 212
    :goto_4
    return-void

    .line 213
    :cond_8
    invoke-static {p0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    throw p0
.end method

.method public setFailureListener(Le35;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le35;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Le35;

    .line 2
    .line 3
    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public setFontAssetDelegate(Lwp3;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object p0, p0, Lc35;->r:Lxp3;

    .line 4
    .line 5
    return-void
.end method

.method public setFrame(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lc35;->i(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iput-boolean p1, p0, Lc35;->f:Z

    .line 4
    .line 5
    return-void
.end method

.method public setImageAssetDelegate(Lt94;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object p0, p0, Lc35;->p:Lu94;

    .line 4
    .line 5
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iput-object p1, p0, Lc35;->q:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lc35;->j(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    invoke-virtual {p0, p1}, Lc35;->k(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object v0, p0, Lc35;->b:Le25;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lc35;->n:Ljava/util/ArrayList;

    .line 8
    .line 9
    new-instance v1, Lz25;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lz25;-><init>(Lc35;F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget v1, v0, Le25;->k:F

    .line 19
    .line 20
    iget v0, v0, Le25;->l:F

    .line 21
    .line 22
    invoke-static {v1, v0, p1}, Lsg5;->d(FFF)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    float-to-int p1, p1

    .line 27
    invoke-virtual {p0, p1}, Lc35;->j(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lc35;->l(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinFrame(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lc35;->m(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    invoke-virtual {p0, p1}, Lc35;->n(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object v0, p0, Lc35;->b:Le25;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lc35;->n:Ljava/util/ArrayList;

    .line 8
    .line 9
    new-instance v1, Lx25;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lx25;-><init>(Lc35;F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget v1, v0, Le25;->k:F

    .line 19
    .line 20
    iget v0, v0, Le25;->l:F

    .line 21
    .line 22
    invoke-static {v1, v0, p1}, Lsg5;->d(FFF)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    float-to-int p1, p1

    .line 27
    invoke-virtual {p0, p1}, Lc35;->m(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-boolean v0, p0, Lc35;->H:Z

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput-boolean p1, p0, Lc35;->H:Z

    .line 9
    .line 10
    iget-object p0, p0, Lc35;->x:Lhp1;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lhp1;->r(Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iput-boolean p1, p0, Lc35;->G:Z

    .line 4
    .line 5
    iget-object p0, p0, Lc35;->b:Le25;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Le25;->a:Laz5;

    .line 10
    .line 11
    iput-boolean p1, p0, Laz5;->a:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lc35;->o(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRenderMode(Lkj6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->J:Lkj6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lj35;->setRepeatMode(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iput-boolean p1, p0, Lc35;->k:Z

    .line 4
    .line 5
    return-void
.end method

.method public setScale(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iput p1, v0, Lc35;->d:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lc35;->f()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lc35;->h()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 4
    .line 5
    iput p1, p0, Lj35;->c:F

    .line 6
    .line 7
    return-void
.end method

.method public setTextDelegate(Lw08;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->G:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lc35;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lc35;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->H:Z

    .line 18
    .line 19
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Z

    .line 20
    .line 21
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    .line 22
    .line 23
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    .line 24
    .line 25
    iget-object v2, v0, Lc35;->n:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lc35;->c:Lj35;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lj35;->f(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->G:Z

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    instance-of v0, p1, Lc35;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    move-object v0, p1

    .line 48
    check-cast v0, Lc35;

    .line 49
    .line 50
    invoke-virtual {v0}, Lc35;->f()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    iget-object v2, v0, Lc35;->n:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, Lc35;->c:Lj35;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lj35;->f(Z)V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
