.class public final Lfo;
.super Lnn;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldc5;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final A0:Z

.field public static final y0:Ldg7;

.field public static final z0:[I


# instance fields
.field public G:Lks7;

.field public H:Ljava/lang/CharSequence;

.field public I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public J:Ljq6;

.field public K:Lln5;

.field public L:Ls8;

.field public M:Landroidx/appcompat/widget/ActionBarContextView;

.field public N:Landroid/widget/PopupWindow;

.field public O:Lqn;

.field public P:Llm8;

.field public Q:Z

.field public R:Landroid/view/ViewGroup;

.field public S:Landroid/widget/TextView;

.field public T:Landroid/view/View;

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:[Leo;

.field public d0:Leo;

.field public e0:Z

.field public f0:Z

.field public g0:Z

.field public h0:Z

.field public i0:Landroid/content/res/Configuration;

.field public final j0:I

.field public k0:I

.field public l0:I

.field public m0:Z

.field public n0:Lbo;

.field public o0:Lyn;

.field public p0:Z

.field public final q:Ljava/lang/Object;

.field public q0:I

.field public final r:Landroid/content/Context;

.field public final r0:Lon;

.field public s0:Z

.field public t:Landroid/view/Window;

.field public t0:Landroid/graphics/Rect;

.field public u0:Landroid/graphics/Rect;

.field public v0:Lbq;

.field public w0:Landroid/window/OnBackInvokedDispatcher;

.field public x:Lxn;

.field public x0:Landroid/window/OnBackInvokedCallback;

.field public y:Lnc8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldg7;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ldg7;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lfo;->y0:Ldg7;

    .line 8
    .line 9
    const v0, 0x1010054

    .line 10
    .line 11
    .line 12
    filled-new-array {v0}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lfo;->z0:[I

    .line 17
    .line 18
    const-string v0, "robolectric"

    .line 19
    .line 20
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    xor-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    sput-boolean v0, Lfo;->A0:Z

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Ldn;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Lfo;->P:Llm8;

    .line 6
    .line 7
    const/16 v0, -0x64

    .line 8
    .line 9
    iput v0, p0, Lfo;->j0:I

    .line 10
    .line 11
    new-instance v1, Lon;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v2}, Lon;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lfo;->r0:Lon;

    .line 18
    .line 19
    iput-object p1, p0, Lfo;->r:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p4, p0, Lfo;->q:Ljava/lang/Object;

    .line 22
    .line 23
    instance-of p4, p4, Landroid/app/Dialog;

    .line 24
    .line 25
    if-eqz p4, :cond_2

    .line 26
    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    instance-of p4, p1, Lzm;

    .line 30
    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    move-object p3, p1

    .line 34
    check-cast p3, Lzm;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    instance-of p4, p1, Landroid/content/ContextWrapper;

    .line 38
    .line 39
    if-eqz p4, :cond_1

    .line 40
    .line 41
    check-cast p1, Landroid/content/ContextWrapper;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 49
    .line 50
    invoke-virtual {p3}, Lzm;->getDelegate()Lnn;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lfo;

    .line 55
    .line 56
    iget p1, p1, Lfo;->j0:I

    .line 57
    .line 58
    iput p1, p0, Lfo;->j0:I

    .line 59
    .line 60
    :cond_2
    iget p1, p0, Lfo;->j0:I

    .line 61
    .line 62
    if-ne p1, v0, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lfo;->q:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget-object p3, Lfo;->y0:Ldg7;

    .line 75
    .line 76
    invoke-virtual {p3, p1}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Ljava/lang/Integer;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput p1, p0, Lfo;->j0:I

    .line 89
    .line 90
    iget-object p1, p0, Lfo;->q:Ljava/lang/Object;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p3, p1}, Ldg7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_3
    if-eqz p2, :cond_4

    .line 104
    .line 105
    invoke-virtual {p0, p2}, Lfo;->o(Landroid/view/Window;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-static {}, Ljo;->d()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public static p(Landroid/content/Context;)Lh05;
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lnn;->c:Lh05;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_1
    iget-object v1, v0, Lh05;->a:Li05;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lun;->b(Landroid/content/res/Configuration;)Lh05;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object v2, v1, Li05;->a:Landroid/os/LocaleList;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    sget-object v0, Lh05;->b:Lh05;

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_2
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    :goto_1
    iget-object v4, v1, Li05;->a:Landroid/os/LocaleList;

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    iget-object v5, p0, Lh05;->a:Li05;

    .line 56
    .line 57
    iget-object v5, v5, Li05;->a:Landroid/os/LocaleList;

    .line 58
    .line 59
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    add-int/2addr v5, v4

    .line 64
    if-ge v3, v5, :cond_5

    .line 65
    .line 66
    iget-object v4, v1, Li05;->a:Landroid/os/LocaleList;

    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-ge v3, v4, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Lh05;->b(I)Ljava/util/Locale;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    iget-object v4, v1, Li05;->a:Landroid/os/LocaleList;

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    sub-int v4, v3, v4

    .line 86
    .line 87
    invoke-virtual {p0, v4}, Lh05;->b(I)Ljava/util/Locale;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    :goto_2
    if-eqz v4, :cond_4

    .line 92
    .line 93
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    new-array v0, v0, [Ljava/util/Locale;

    .line 104
    .line 105
    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, [Ljava/util/Locale;

    .line 110
    .line 111
    new-instance v1, Landroid/os/LocaleList;

    .line 112
    .line 113
    invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v1}, Lh05;->c(Landroid/os/LocaleList;)Lh05;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :goto_3
    iget-object v1, v0, Lh05;->a:Li05;

    .line 121
    .line 122
    iget-object v1, v1, Li05;->a:Landroid/os/LocaleList;

    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_6

    .line 129
    .line 130
    return-object p0

    .line 131
    :cond_6
    return-object v0
.end method

.method public static t(Landroid/content/Context;ILh05;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 24
    .line 25
    and-int/lit8 p0, p0, 0x30

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/16 p0, 0x20

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/16 p0, 0x10

    .line 32
    .line 33
    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 p4, 0x0

    .line 39
    iput p4, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 40
    .line 41
    if-eqz p3, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget p3, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 47
    .line 48
    and-int/lit8 p3, p3, -0x31

    .line 49
    .line 50
    or-int/2addr p0, p3

    .line 51
    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 52
    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    invoke-static {p1, p2}, Lun;->d(Landroid/content/res/Configuration;Lh05;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    return-object p1
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfo;->w()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lfo;->W:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lfo;->y:Lnc8;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lfo;->q:Ljava/lang/Object;

    .line 14
    .line 15
    instance-of v1, v0, Landroid/app/Activity;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lou8;

    .line 20
    .line 21
    check-cast v0, Landroid/app/Activity;

    .line 22
    .line 23
    iget-boolean v2, p0, Lfo;->X:Z

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Lou8;-><init>(Landroid/app/Activity;Z)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lfo;->y:Lnc8;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    new-instance v1, Lou8;

    .line 36
    .line 37
    check-cast v0, Landroid/app/Dialog;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Lou8;-><init>(Landroid/app/Dialog;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lfo;->y:Lnc8;

    .line 43
    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Lfo;->y:Lnc8;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-boolean p0, p0, Lfo;->s0:Z

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Lnc8;->Y(Z)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_1
    return-void
.end method

.method public final B(I)V
    .locals 2

    .line 1
    iget v0, p0, Lfo;->q0:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    shl-int p1, v1, p1

    .line 5
    .line 6
    or-int/2addr p1, v0

    .line 7
    iput p1, p0, Lfo;->q0:I

    .line 8
    .line 9
    iget-boolean p1, p0, Lfo;->p0:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lfo;->t:Landroid/view/Window;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 20
    .line 21
    iget-object v0, p0, Lfo;->r0:Lon;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    iput-boolean v1, p0, Lfo;->p0:Z

    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final C(Landroid/content/Context;I)I
    .locals 2

    .line 1
    const/16 v0, -0x64

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq p2, v0, :cond_5

    .line 5
    .line 6
    if-eq p2, v1, :cond_4

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p2, v0, :cond_4

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p2, v0, :cond_4

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    iget-object p2, p0, Lfo;->o0:Lyn;

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    new-instance p2, Lyn;

    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Lyn;-><init>(Lfo;Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lfo;->o0:Lyn;

    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lfo;->o0:Lyn;

    .line 31
    .line 32
    invoke-virtual {p0}, Lyn;->g()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_1
    const-string p0, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    .line 38
    .line 39
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v0, "uimode"

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Landroid/app/UiModeManager;

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p0, p1}, Lfo;->y(Landroid/content/Context;)Lao;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lao;->g()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    return p0

    .line 72
    :cond_4
    return p2

    .line 73
    :cond_5
    :goto_0
    return v1
.end method

.method public final D()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lfo;->e0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lfo;->e0:Z

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lfo;->z(I)Leo;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-boolean v3, v2, Leo;->m:Z

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v2, v4}, Lfo;->s(Leo;Z)V

    .line 18
    .line 19
    .line 20
    return v4

    .line 21
    :cond_0
    iget-object v0, p0, Lfo;->L:Ls8;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ls8;->a()V

    .line 26
    .line 27
    .line 28
    return v4

    .line 29
    :cond_1
    invoke-virtual {p0}, Lfo;->A()V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lfo;->y:Lnc8;

    .line 33
    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Lnc8;->l()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    :cond_2
    return v4

    .line 43
    :cond_3
    return v1
.end method

.method public final E(Leo;Landroid/view/KeyEvent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v1, Leo;->m:Z

    .line 6
    .line 7
    iget v3, v1, Leo;->a:I

    .line 8
    .line 9
    if-nez v2, :cond_1a

    .line 10
    .line 11
    iget-boolean v2, v0, Lfo;->h0:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_9

    .line 16
    .line 17
    :cond_0
    iget-object v2, v0, Lfo;->r:Landroid/content/Context;

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 30
    .line 31
    and-int/lit8 v4, v4, 0xf

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    if-ne v4, v5, :cond_1

    .line 35
    .line 36
    goto/16 :goto_9

    .line 37
    .line 38
    :cond_1
    iget-object v4, v0, Lfo;->t:Landroid/view/Window;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/4 v5, 0x1

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    iget-object v6, v1, Leo;->h:Lfc5;

    .line 48
    .line 49
    invoke-interface {v4, v3, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, v1, v5}, Lfo;->s(Leo;Z)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    const-string v4, "window"

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroid/view/WindowManager;

    .line 66
    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    goto/16 :goto_9

    .line 70
    .line 71
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lfo;->G(Leo;Landroid/view/KeyEvent;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_4

    .line 76
    .line 77
    goto/16 :goto_9

    .line 78
    .line 79
    :cond_4
    iget-object v6, v1, Leo;->e:Lco;

    .line 80
    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, -0x2

    .line 83
    if-eqz v6, :cond_6

    .line 84
    .line 85
    iget-boolean v9, v1, Leo;->n:Z

    .line 86
    .line 87
    if-eqz v9, :cond_5

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    iget-object v2, v1, Leo;->g:Landroid/view/View;

    .line 91
    .line 92
    if-eqz v2, :cond_18

    .line 93
    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_18

    .line 99
    .line 100
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    .line 102
    const/4 v6, -0x1

    .line 103
    if-ne v2, v6, :cond_18

    .line 104
    .line 105
    move v10, v6

    .line 106
    goto/16 :goto_7

    .line 107
    .line 108
    :cond_6
    :goto_0
    if-nez v6, :cond_b

    .line 109
    .line 110
    invoke-virtual {v0}, Lfo;->A()V

    .line 111
    .line 112
    .line 113
    iget-object v6, v0, Lfo;->y:Lnc8;

    .line 114
    .line 115
    if-eqz v6, :cond_7

    .line 116
    .line 117
    invoke-virtual {v6}, Lnc8;->C()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    goto :goto_1

    .line 122
    :cond_7
    const/4 v6, 0x0

    .line 123
    :goto_1
    if-nez v6, :cond_8

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_8
    move-object v2, v6

    .line 127
    :goto_2
    new-instance v6, Landroid/util/TypedValue;

    .line 128
    .line 129
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 145
    .line 146
    .line 147
    const v10, 0x7f040004

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 151
    .line 152
    .line 153
    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    .line 154
    .line 155
    if-eqz v10, :cond_9

    .line 156
    .line 157
    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 158
    .line 159
    .line 160
    :cond_9
    const v10, 0x7f04049c

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 164
    .line 165
    .line 166
    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    .line 167
    .line 168
    if-eqz v6, :cond_a

    .line 169
    .line 170
    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_a
    const v6, 0x7f140340

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 178
    .line 179
    .line 180
    :goto_3
    new-instance v6, Lhv1;

    .line 181
    .line 182
    invoke-direct {v6, v2, v7}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6}, Lhv1;->getTheme()Landroid/content/res/Resources$Theme;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 190
    .line 191
    .line 192
    iput-object v6, v1, Leo;->j:Lhv1;

    .line 193
    .line 194
    sget-object v2, Lge6;->j:[I

    .line 195
    .line 196
    invoke-virtual {v6, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    const/16 v6, 0x56

    .line 201
    .line 202
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    iput v6, v1, Leo;->b:I

    .line 207
    .line 208
    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    iput v6, v1, Leo;->d:I

    .line 213
    .line 214
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    .line 216
    .line 217
    new-instance v2, Lco;

    .line 218
    .line 219
    iget-object v6, v1, Leo;->j:Lhv1;

    .line 220
    .line 221
    invoke-direct {v2, v0, v6}, Lco;-><init>(Lfo;Lhv1;)V

    .line 222
    .line 223
    .line 224
    iput-object v2, v1, Leo;->e:Lco;

    .line 225
    .line 226
    const/16 v2, 0x51

    .line 227
    .line 228
    iput v2, v1, Leo;->c:I

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_b
    iget-boolean v2, v1, Leo;->n:Z

    .line 232
    .line 233
    if-eqz v2, :cond_c

    .line 234
    .line 235
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-lez v2, :cond_c

    .line 240
    .line 241
    iget-object v2, v1, Leo;->e:Lco;

    .line 242
    .line 243
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 244
    .line 245
    .line 246
    :cond_c
    :goto_4
    iget-object v2, v1, Leo;->g:Landroid/view/View;

    .line 247
    .line 248
    if-eqz v2, :cond_d

    .line 249
    .line 250
    iput-object v2, v1, Leo;->f:Landroid/view/View;

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_d
    iget-object v2, v1, Leo;->h:Lfc5;

    .line 254
    .line 255
    if-nez v2, :cond_e

    .line 256
    .line 257
    goto/16 :goto_8

    .line 258
    .line 259
    :cond_e
    iget-object v2, v0, Lfo;->K:Lln5;

    .line 260
    .line 261
    if-nez v2, :cond_f

    .line 262
    .line 263
    new-instance v2, Lln5;

    .line 264
    .line 265
    const/4 v6, 0x2

    .line 266
    invoke-direct {v2, v0, v6}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 267
    .line 268
    .line 269
    iput-object v2, v0, Lfo;->K:Lln5;

    .line 270
    .line 271
    :cond_f
    iget-object v2, v0, Lfo;->K:Lln5;

    .line 272
    .line 273
    iget-object v6, v1, Leo;->i:Lmx4;

    .line 274
    .line 275
    if-nez v6, :cond_10

    .line 276
    .line 277
    new-instance v6, Lmx4;

    .line 278
    .line 279
    iget-object v9, v1, Leo;->j:Lhv1;

    .line 280
    .line 281
    invoke-direct {v6, v9}, Lmx4;-><init>(Landroid/content/ContextWrapper;)V

    .line 282
    .line 283
    .line 284
    iput-object v6, v1, Leo;->i:Lmx4;

    .line 285
    .line 286
    iput-object v2, v6, Lmx4;->e:Lvc5;

    .line 287
    .line 288
    iget-object v2, v1, Leo;->h:Lfc5;

    .line 289
    .line 290
    iget-object v9, v2, Lfc5;->a:Landroid/content/Context;

    .line 291
    .line 292
    invoke-virtual {v2, v6, v9}, Lfc5;->b(Lwc5;Landroid/content/Context;)V

    .line 293
    .line 294
    .line 295
    :cond_10
    iget-object v2, v1, Leo;->i:Lmx4;

    .line 296
    .line 297
    iget-object v6, v1, Leo;->e:Lco;

    .line 298
    .line 299
    iget-object v9, v2, Lmx4;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 300
    .line 301
    if-nez v9, :cond_12

    .line 302
    .line 303
    iget-object v9, v2, Lmx4;->b:Landroid/view/LayoutInflater;

    .line 304
    .line 305
    const v10, 0x7f0d000d

    .line 306
    .line 307
    .line 308
    invoke-virtual {v9, v10, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    check-cast v6, Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 313
    .line 314
    iput-object v6, v2, Lmx4;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 315
    .line 316
    iget-object v6, v2, Lmx4;->f:Llx4;

    .line 317
    .line 318
    if-nez v6, :cond_11

    .line 319
    .line 320
    new-instance v6, Llx4;

    .line 321
    .line 322
    invoke-direct {v6, v2}, Llx4;-><init>(Lmx4;)V

    .line 323
    .line 324
    .line 325
    iput-object v6, v2, Lmx4;->f:Llx4;

    .line 326
    .line 327
    :cond_11
    iget-object v6, v2, Lmx4;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 328
    .line 329
    iget-object v9, v2, Lmx4;->f:Llx4;

    .line 330
    .line 331
    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 332
    .line 333
    .line 334
    iget-object v6, v2, Lmx4;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 335
    .line 336
    invoke-virtual {v6, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 337
    .line 338
    .line 339
    :cond_12
    iget-object v2, v2, Lmx4;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 340
    .line 341
    iput-object v2, v1, Leo;->f:Landroid/view/View;

    .line 342
    .line 343
    if-eqz v2, :cond_19

    .line 344
    .line 345
    :goto_5
    iget-object v2, v1, Leo;->f:Landroid/view/View;

    .line 346
    .line 347
    if-nez v2, :cond_13

    .line 348
    .line 349
    goto/16 :goto_8

    .line 350
    .line 351
    :cond_13
    iget-object v2, v1, Leo;->g:Landroid/view/View;

    .line 352
    .line 353
    if-eqz v2, :cond_14

    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_14
    iget-object v2, v1, Leo;->i:Lmx4;

    .line 357
    .line 358
    iget-object v6, v2, Lmx4;->f:Llx4;

    .line 359
    .line 360
    if-nez v6, :cond_15

    .line 361
    .line 362
    new-instance v6, Llx4;

    .line 363
    .line 364
    invoke-direct {v6, v2}, Llx4;-><init>(Lmx4;)V

    .line 365
    .line 366
    .line 367
    iput-object v6, v2, Lmx4;->f:Llx4;

    .line 368
    .line 369
    :cond_15
    iget-object v2, v2, Lmx4;->f:Llx4;

    .line 370
    .line 371
    invoke-virtual {v2}, Llx4;->getCount()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-lez v2, :cond_19

    .line 376
    .line 377
    :goto_6
    iget-object v2, v1, Leo;->f:Landroid/view/View;

    .line 378
    .line 379
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    if-nez v2, :cond_16

    .line 384
    .line 385
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 386
    .line 387
    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 388
    .line 389
    .line 390
    :cond_16
    iget v6, v1, Leo;->b:I

    .line 391
    .line 392
    iget-object v9, v1, Leo;->e:Lco;

    .line 393
    .line 394
    invoke-virtual {v9, v6}, Lco;->setBackgroundResource(I)V

    .line 395
    .line 396
    .line 397
    iget-object v6, v1, Leo;->f:Landroid/view/View;

    .line 398
    .line 399
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    instance-of v9, v6, Landroid/view/ViewGroup;

    .line 404
    .line 405
    if-eqz v9, :cond_17

    .line 406
    .line 407
    check-cast v6, Landroid/view/ViewGroup;

    .line 408
    .line 409
    iget-object v9, v1, Leo;->f:Landroid/view/View;

    .line 410
    .line 411
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 412
    .line 413
    .line 414
    :cond_17
    iget-object v6, v1, Leo;->e:Lco;

    .line 415
    .line 416
    iget-object v9, v1, Leo;->f:Landroid/view/View;

    .line 417
    .line 418
    invoke-virtual {v6, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    .line 420
    .line 421
    iget-object v2, v1, Leo;->f:Landroid/view/View;

    .line 422
    .line 423
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    if-nez v2, :cond_18

    .line 428
    .line 429
    iget-object v2, v1, Leo;->f:Landroid/view/View;

    .line 430
    .line 431
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 432
    .line 433
    .line 434
    :cond_18
    move v10, v8

    .line 435
    :goto_7
    iput-boolean v7, v1, Leo;->l:Z

    .line 436
    .line 437
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    .line 438
    .line 439
    const/high16 v15, 0x820000

    .line 440
    .line 441
    const/16 v16, -0x3

    .line 442
    .line 443
    const/4 v11, -0x2

    .line 444
    const/4 v12, 0x0

    .line 445
    const/4 v13, 0x0

    .line 446
    const/16 v14, 0x3ea

    .line 447
    .line 448
    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 449
    .line 450
    .line 451
    iget v2, v1, Leo;->c:I

    .line 452
    .line 453
    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 454
    .line 455
    iget v2, v1, Leo;->d:I

    .line 456
    .line 457
    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 458
    .line 459
    iget-object v2, v1, Leo;->e:Lco;

    .line 460
    .line 461
    invoke-interface {v4, v2, v9}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    .line 463
    .line 464
    iput-boolean v5, v1, Leo;->m:Z

    .line 465
    .line 466
    if-nez v3, :cond_1a

    .line 467
    .line 468
    invoke-virtual {v0}, Lfo;->I()V

    .line 469
    .line 470
    .line 471
    return-void

    .line 472
    :cond_19
    :goto_8
    iput-boolean v5, v1, Leo;->n:Z

    .line 473
    .line 474
    :cond_1a
    :goto_9
    return-void
.end method

.method public final F(Leo;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p1, Leo;->k:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Lfo;->G(Leo;Landroid/view/KeyEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    :cond_1
    iget-object p0, p1, Leo;->h:Lfc5;

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p2, p3, p1}, Lfc5;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :cond_2
    return v1
.end method

.method public final G(Leo;Landroid/view/KeyEvent;)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lfo;->h0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_5

    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p1, Leo;->k:Z

    .line 9
    .line 10
    iget v2, p1, Leo;->a:I

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v3

    .line 16
    :cond_1
    iget-object v0, p0, Lfo;->d0:Leo;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    if-eq v0, p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lfo;->s(Leo;Z)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lfo;->t:Landroid/view/Window;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iput-object v4, p1, Leo;->g:Landroid/view/View;

    .line 38
    .line 39
    :cond_3
    const/16 v4, 0x6c

    .line 40
    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    if-ne v2, v4, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    move v5, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_5
    :goto_0
    move v5, v3

    .line 49
    :goto_1
    if-eqz v5, :cond_6

    .line 50
    .line 51
    iget-object v6, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 52
    .line 53
    if-eqz v6, :cond_6

    .line 54
    .line 55
    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 56
    .line 57
    .line 58
    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lwd2;

    .line 59
    .line 60
    check-cast v6, Lr88;

    .line 61
    .line 62
    iput-boolean v3, v6, Lr88;->l:Z

    .line 63
    .line 64
    :cond_6
    iget-object v6, p1, Leo;->g:Landroid/view/View;

    .line 65
    .line 66
    if-nez v6, :cond_1e

    .line 67
    .line 68
    if-eqz v5, :cond_7

    .line 69
    .line 70
    iget-object v6, p0, Lfo;->y:Lnc8;

    .line 71
    .line 72
    instance-of v6, v6, Lo88;

    .line 73
    .line 74
    if-nez v6, :cond_1e

    .line 75
    .line 76
    :cond_7
    iget-object v6, p1, Leo;->h:Lfc5;

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    if-eqz v6, :cond_8

    .line 80
    .line 81
    iget-boolean v8, p1, Leo;->o:Z

    .line 82
    .line 83
    if-eqz v8, :cond_18

    .line 84
    .line 85
    :cond_8
    if-nez v6, :cond_11

    .line 86
    .line 87
    iget-object v6, p0, Lfo;->r:Landroid/content/Context;

    .line 88
    .line 89
    if-eqz v2, :cond_9

    .line 90
    .line 91
    if-ne v2, v4, :cond_d

    .line 92
    .line 93
    :cond_9
    iget-object v4, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 94
    .line 95
    if-eqz v4, :cond_d

    .line 96
    .line 97
    new-instance v4, Landroid/util/TypedValue;

    .line 98
    .line 99
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    const v9, 0x7f04000b

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, v9, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 110
    .line 111
    .line 112
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    .line 113
    .line 114
    const v10, 0x7f04000c

    .line 115
    .line 116
    .line 117
    if-eqz v9, :cond_a

    .line 118
    .line 119
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 128
    .line 129
    .line 130
    iget v11, v4, Landroid/util/TypedValue;->resourceId:I

    .line 131
    .line 132
    invoke-virtual {v9, v11, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9, v10, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_a
    invoke-virtual {v8, v10, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 140
    .line 141
    .line 142
    move-object v9, v7

    .line 143
    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    .line 144
    .line 145
    if-eqz v10, :cond_c

    .line 146
    .line 147
    if-nez v9, :cond_b

    .line 148
    .line 149
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 158
    .line 159
    .line 160
    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    .line 161
    .line 162
    invoke-virtual {v9, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 163
    .line 164
    .line 165
    :cond_c
    if-eqz v9, :cond_d

    .line 166
    .line 167
    new-instance v4, Lhv1;

    .line 168
    .line 169
    invoke-direct {v4, v6, v1}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Lhv1;->getTheme()Landroid/content/res/Resources$Theme;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 177
    .line 178
    .line 179
    move-object v6, v4

    .line 180
    :cond_d
    new-instance v4, Lfc5;

    .line 181
    .line 182
    invoke-direct {v4, v6}, Lfc5;-><init>(Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    iput-object p0, v4, Lfc5;->e:Ldc5;

    .line 186
    .line 187
    iget-object v6, p1, Leo;->h:Lfc5;

    .line 188
    .line 189
    if-ne v4, v6, :cond_e

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_e
    if-eqz v6, :cond_f

    .line 193
    .line 194
    iget-object v8, p1, Leo;->i:Lmx4;

    .line 195
    .line 196
    invoke-virtual {v6, v8}, Lfc5;->r(Lwc5;)V

    .line 197
    .line 198
    .line 199
    :cond_f
    iput-object v4, p1, Leo;->h:Lfc5;

    .line 200
    .line 201
    iget-object v6, p1, Leo;->i:Lmx4;

    .line 202
    .line 203
    if-eqz v6, :cond_10

    .line 204
    .line 205
    iget-object v8, v4, Lfc5;->a:Landroid/content/Context;

    .line 206
    .line 207
    invoke-virtual {v4, v6, v8}, Lfc5;->b(Lwc5;Landroid/content/Context;)V

    .line 208
    .line 209
    .line 210
    :cond_10
    :goto_3
    iget-object v4, p1, Leo;->h:Lfc5;

    .line 211
    .line 212
    if-nez v4, :cond_11

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_11
    if-eqz v5, :cond_13

    .line 216
    .line 217
    iget-object v4, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 218
    .line 219
    if-eqz v4, :cond_13

    .line 220
    .line 221
    iget-object v6, p0, Lfo;->J:Ljq6;

    .line 222
    .line 223
    if-nez v6, :cond_12

    .line 224
    .line 225
    new-instance v6, Ljq6;

    .line 226
    .line 227
    const/4 v8, 0x2

    .line 228
    invoke-direct {v6, p0, v8}, Ljq6;-><init>(Ljava/lang/Object;I)V

    .line 229
    .line 230
    .line 231
    iput-object v6, p0, Lfo;->J:Ljq6;

    .line 232
    .line 233
    :cond_12
    iget-object v6, p1, Leo;->h:Lfc5;

    .line 234
    .line 235
    iget-object v8, p0, Lfo;->J:Ljq6;

    .line 236
    .line 237
    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Landroid/view/Menu;Lvc5;)V

    .line 238
    .line 239
    .line 240
    :cond_13
    iget-object v4, p1, Leo;->h:Lfc5;

    .line 241
    .line 242
    invoke-virtual {v4}, Lfc5;->w()V

    .line 243
    .line 244
    .line 245
    iget-object v4, p1, Leo;->h:Lfc5;

    .line 246
    .line 247
    invoke-interface {v0, v2, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-nez v2, :cond_17

    .line 252
    .line 253
    iget-object p2, p1, Leo;->h:Lfc5;

    .line 254
    .line 255
    if-nez p2, :cond_14

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_14
    if-eqz p2, :cond_15

    .line 259
    .line 260
    iget-object v0, p1, Leo;->i:Lmx4;

    .line 261
    .line 262
    invoke-virtual {p2, v0}, Lfc5;->r(Lwc5;)V

    .line 263
    .line 264
    .line 265
    :cond_15
    iput-object v7, p1, Leo;->h:Lfc5;

    .line 266
    .line 267
    :goto_4
    if-eqz v5, :cond_16

    .line 268
    .line 269
    iget-object p1, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 270
    .line 271
    if-eqz p1, :cond_16

    .line 272
    .line 273
    iget-object p0, p0, Lfo;->J:Ljq6;

    .line 274
    .line 275
    invoke-virtual {p1, v7, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Landroid/view/Menu;Lvc5;)V

    .line 276
    .line 277
    .line 278
    :cond_16
    :goto_5
    return v1

    .line 279
    :cond_17
    iput-boolean v1, p1, Leo;->o:Z

    .line 280
    .line 281
    :cond_18
    iget-object v2, p1, Leo;->h:Lfc5;

    .line 282
    .line 283
    invoke-virtual {v2}, Lfc5;->w()V

    .line 284
    .line 285
    .line 286
    iget-object v2, p1, Leo;->p:Landroid/os/Bundle;

    .line 287
    .line 288
    if-eqz v2, :cond_19

    .line 289
    .line 290
    iget-object v4, p1, Leo;->h:Lfc5;

    .line 291
    .line 292
    invoke-virtual {v4, v2}, Lfc5;->s(Landroid/os/Bundle;)V

    .line 293
    .line 294
    .line 295
    iput-object v7, p1, Leo;->p:Landroid/os/Bundle;

    .line 296
    .line 297
    :cond_19
    iget-object v2, p1, Leo;->g:Landroid/view/View;

    .line 298
    .line 299
    iget-object v4, p1, Leo;->h:Lfc5;

    .line 300
    .line 301
    invoke-interface {v0, v1, v2, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-nez v0, :cond_1b

    .line 306
    .line 307
    if-eqz v5, :cond_1a

    .line 308
    .line 309
    iget-object p2, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 310
    .line 311
    if-eqz p2, :cond_1a

    .line 312
    .line 313
    iget-object p0, p0, Lfo;->J:Ljq6;

    .line 314
    .line 315
    invoke-virtual {p2, v7, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Landroid/view/Menu;Lvc5;)V

    .line 316
    .line 317
    .line 318
    :cond_1a
    iget-object p0, p1, Leo;->h:Lfc5;

    .line 319
    .line 320
    invoke-virtual {p0}, Lfc5;->v()V

    .line 321
    .line 322
    .line 323
    return v1

    .line 324
    :cond_1b
    if-eqz p2, :cond_1c

    .line 325
    .line 326
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    goto :goto_6

    .line 331
    :cond_1c
    const/4 p2, -0x1

    .line 332
    :goto_6
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 337
    .line 338
    .line 339
    move-result p2

    .line 340
    if-eq p2, v3, :cond_1d

    .line 341
    .line 342
    move p2, v3

    .line 343
    goto :goto_7

    .line 344
    :cond_1d
    move p2, v1

    .line 345
    :goto_7
    iget-object v0, p1, Leo;->h:Lfc5;

    .line 346
    .line 347
    invoke-virtual {v0, p2}, Lfc5;->setQwertyMode(Z)V

    .line 348
    .line 349
    .line 350
    iget-object p2, p1, Leo;->h:Lfc5;

    .line 351
    .line 352
    invoke-virtual {p2}, Lfc5;->v()V

    .line 353
    .line 354
    .line 355
    :cond_1e
    iput-boolean v3, p1, Leo;->k:Z

    .line 356
    .line 357
    iput-boolean v1, p1, Leo;->l:Z

    .line 358
    .line 359
    iput-object p1, p0, Lfo;->d0:Leo;

    .line 360
    .line 361
    return v3
.end method

.method public final H()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lfo;->Q:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 7
    .line 8
    const-string v0, "Window feature must be requested before adding content"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public final I()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lfo;->w0:Landroid/window/OnBackInvokedDispatcher;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, v1}, Lfo;->z(I)Leo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean v0, v0, Leo;->m:Z

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :goto_0
    move v1, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v0, p0, Lfo;->L:Ls8;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lfo;->x0:Landroid/window/OnBackInvokedCallback;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lfo;->w0:Landroid/window/OnBackInvokedDispatcher;

    .line 36
    .line 37
    invoke-static {v0, p0}, Lwn;->b(Ljava/lang/Object;Lfo;)Landroid/window/OnBackInvokedCallback;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lfo;->x0:Landroid/window/OnBackInvokedCallback;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    if-nez v1, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lfo;->x0:Landroid/window/OnBackInvokedCallback;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget-object v1, p0, Lfo;->w0:Landroid/window/OnBackInvokedDispatcher;

    .line 51
    .line 52
    invoke-static {v1, v0}, Lwn;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lfo;->x0:Landroid/window/OnBackInvokedCallback;

    .line 57
    .line 58
    :cond_4
    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfo;->r:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    instance-of p0, p0, Lfo;

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    const-string p0, "AppCompatDelegate"

    .line 26
    .line 27
    const-string v0, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 28
    .line 29
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfo;->y:Lnc8;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lfo;->A()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lfo;->y:Lnc8;

    .line 9
    .line 10
    invoke-virtual {v0}, Lnc8;->F()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lfo;->B(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lfo;->f0:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v0}, Lfo;->n(ZZ)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lfo;->x()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lfo;->q:Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v2, v1, Landroid/app/Activity;

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lrs9;->j(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    :catch_1
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lfo;->y:Lnc8;

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    iput-boolean v0, p0, Lfo;->s0:Z

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v1, v0}, Lnc8;->Y(Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_1
    sget-object v1, Lnn;->n:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v1

    .line 51
    :try_start_3
    invoke-static {p0}, Lnn;->g(Lfo;)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Lnn;->k:Lp50;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lp50;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    monitor-exit v1

    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    throw p0

    .line 69
    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    .line 70
    .line 71
    iget-object v2, p0, Lfo;->r:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lfo;->i0:Landroid/content/res/Configuration;

    .line 85
    .line 86
    iput-boolean v0, p0, Lfo;->g0:Z

    .line 87
    .line 88
    return-void
.end method

.method public final e(Lfc5;Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lfo;->t:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-boolean v2, p0, Lfo;->h0:Z

    .line 11
    .line 12
    if-nez v2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Lfc5;->k()Lfc5;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lfo;->c0:[Leo;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    array-length v2, p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v1

    .line 25
    :goto_0
    move v3, v1

    .line 26
    :goto_1
    if-ge v3, v2, :cond_2

    .line 27
    .line 28
    aget-object v4, p0, v3

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    iget-object v5, v4, Leo;->h:Lfc5;

    .line 33
    .line 34
    if-ne v5, p1, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v4, 0x0

    .line 41
    :goto_2
    if-eqz v4, :cond_3

    .line 42
    .line 43
    iget p0, v4, Leo;->a:I

    .line 44
    .line 45
    invoke-interface {v0, p0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_3
    return v1
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfo;->q:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lnn;->n:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {p0}, Lnn;->g(Lfo;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0

    .line 18
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lfo;->p0:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lfo;->t:Landroid/view/Window;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lfo;->r0:Lon;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lfo;->h0:Z

    .line 35
    .line 36
    iget v0, p0, Lfo;->j0:I

    .line 37
    .line 38
    const/16 v1, -0x64

    .line 39
    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lfo;->q:Ljava/lang/Object;

    .line 43
    .line 44
    instance-of v1, v0, Landroid/app/Activity;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    check-cast v0, Landroid/app/Activity;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    sget-object v0, Lfo;->y0:Ldg7;

    .line 57
    .line 58
    iget-object v1, p0, Lfo;->q:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget v2, p0, Lfo;->j0:I

    .line 69
    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    sget-object v0, Lfo;->y0:Ldg7;

    .line 79
    .line 80
    iget-object v1, p0, Lfo;->q:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ldg7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :goto_1
    iget-object v0, p0, Lfo;->y:Lnc8;

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0}, Lnc8;->O()V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v0, p0, Lfo;->n0:Lbo;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {v0}, Lao;->d()V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-object p0, p0, Lfo;->o0:Lyn;

    .line 108
    .line 109
    if-eqz p0, :cond_5

    .line 110
    .line 111
    invoke-virtual {p0}, Lao;->d()V

    .line 112
    .line 113
    .line 114
    :cond_5
    return-void
.end method

.method public final h(I)Z
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/16 v1, 0x6d

    .line 4
    .line 5
    const/16 v2, 0x6c

    .line 6
    .line 7
    const-string v3, "AppCompatDelegate"

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 12
    .line 13
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move p1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v0, 0x9

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 23
    .line 24
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move p1, v1

    .line 28
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lfo;->a0:Z

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    if-ne p1, v2, :cond_2

    .line 34
    .line 35
    return v3

    .line 36
    :cond_2
    iget-boolean v0, p0, Lfo;->W:Z

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    if-ne p1, v4, :cond_3

    .line 42
    .line 43
    iput-boolean v3, p0, Lfo;->W:Z

    .line 44
    .line 45
    :cond_3
    if-eq p1, v4, :cond_9

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    if-eq p1, v0, :cond_8

    .line 49
    .line 50
    const/4 v0, 0x5

    .line 51
    if-eq p1, v0, :cond_7

    .line 52
    .line 53
    const/16 v0, 0xa

    .line 54
    .line 55
    if-eq p1, v0, :cond_6

    .line 56
    .line 57
    if-eq p1, v2, :cond_5

    .line 58
    .line 59
    if-eq p1, v1, :cond_4

    .line 60
    .line 61
    iget-object p0, p0, Lfo;->t:Landroid/view/Window;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0

    .line 68
    :cond_4
    invoke-virtual {p0}, Lfo;->H()V

    .line 69
    .line 70
    .line 71
    iput-boolean v4, p0, Lfo;->X:Z

    .line 72
    .line 73
    return v4

    .line 74
    :cond_5
    invoke-virtual {p0}, Lfo;->H()V

    .line 75
    .line 76
    .line 77
    iput-boolean v4, p0, Lfo;->W:Z

    .line 78
    .line 79
    return v4

    .line 80
    :cond_6
    invoke-virtual {p0}, Lfo;->H()V

    .line 81
    .line 82
    .line 83
    iput-boolean v4, p0, Lfo;->Y:Z

    .line 84
    .line 85
    return v4

    .line 86
    :cond_7
    invoke-virtual {p0}, Lfo;->H()V

    .line 87
    .line 88
    .line 89
    iput-boolean v4, p0, Lfo;->V:Z

    .line 90
    .line 91
    return v4

    .line 92
    :cond_8
    invoke-virtual {p0}, Lfo;->H()V

    .line 93
    .line 94
    .line 95
    iput-boolean v4, p0, Lfo;->U:Z

    .line 96
    .line 97
    return v4

    .line 98
    :cond_9
    invoke-virtual {p0}, Lfo;->H()V

    .line 99
    .line 100
    .line 101
    iput-boolean v4, p0, Lfo;->a0:Z

    .line 102
    .line 103
    return v4
.end method

.method public final i(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfo;->w()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfo;->R:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const v1, 0x1020002

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lfo;->r:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lfo;->x:Lxn;

    .line 28
    .line 29
    iget-object p0, p0, Lfo;->t:Landroid/view/Window;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Lxn;->a(Landroid/view/Window$Callback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfo;->w()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfo;->R:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const v1, 0x1020002

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lfo;->x:Lxn;

    .line 22
    .line 23
    iget-object p0, p0, Lfo;->t:Landroid/view/Window;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Lxn;->a(Landroid/view/Window$Callback;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final k(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfo;->w()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfo;->R:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const v1, 0x1020002

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lfo;->x:Lxn;

    .line 22
    .line 23
    iget-object p0, p0, Lfo;->t:Landroid/view/Window;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Lxn;->a(Landroid/view/Window$Callback;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lfo;->H:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lfo;->y:Lnc8;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lnc8;->g0(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object p0, p0, Lfo;->S:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public final m(Lfc5;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lwd2;

    .line 11
    .line 12
    check-cast p1, Lr88;

    .line 13
    .line 14
    iget-object p1, p1, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_5

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 23
    .line 24
    if-eqz p1, :cond_5

    .line 25
    .line 26
    iget-boolean p1, p1, Landroidx/appcompat/widget/ActionMenuView;->K:Z

    .line 27
    .line 28
    if-eqz p1, :cond_5

    .line 29
    .line 30
    iget-object p1, p0, Lfo;->r:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lwd2;

    .line 48
    .line 49
    check-cast p1, Lr88;

    .line 50
    .line 51
    iget-object p1, p1, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 52
    .line 53
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 54
    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->L:Lo8;

    .line 58
    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    iget-object v2, p1, Lo8;->N:Li8;

    .line 62
    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    invoke-virtual {p1}, Lo8;->k()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    :cond_0
    iget-object p1, p0, Lfo;->t:Landroid/view/Window;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object v2, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 78
    .line 79
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 80
    .line 81
    .line 82
    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lwd2;

    .line 83
    .line 84
    check-cast v2, Lr88;

    .line 85
    .line 86
    iget-object v2, v2, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 87
    .line 88
    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->o()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/16 v3, 0x6c

    .line 93
    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    iget-object v0, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 99
    .line 100
    .line 101
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lwd2;

    .line 102
    .line 103
    check-cast v0, Lr88;

    .line 104
    .line 105
    iget-object v0, v0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 106
    .line 107
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 108
    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->L:Lo8;

    .line 112
    .line 113
    if-eqz v0, :cond_1

    .line 114
    .line 115
    invoke-virtual {v0}, Lo8;->b()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    :cond_1
    iget-boolean v0, p0, Lfo;->h0:Z

    .line 120
    .line 121
    if-nez v0, :cond_4

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lfo;->z(I)Leo;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    iget-object p0, p0, Leo;->h:Lfc5;

    .line 128
    .line 129
    invoke-interface {p1, v3, p0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    if-eqz p1, :cond_4

    .line 134
    .line 135
    iget-boolean v2, p0, Lfo;->h0:Z

    .line 136
    .line 137
    if-nez v2, :cond_4

    .line 138
    .line 139
    iget-boolean v2, p0, Lfo;->p0:Z

    .line 140
    .line 141
    if-eqz v2, :cond_3

    .line 142
    .line 143
    iget v2, p0, Lfo;->q0:I

    .line 144
    .line 145
    and-int/2addr v0, v2

    .line 146
    if-eqz v0, :cond_3

    .line 147
    .line 148
    iget-object v0, p0, Lfo;->t:Landroid/view/Window;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v2, p0, Lfo;->r0:Lon;

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Lon;->run()V

    .line 160
    .line 161
    .line 162
    :cond_3
    invoke-virtual {p0, v1}, Lfo;->z(I)Leo;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-object v2, v0, Leo;->h:Lfc5;

    .line 167
    .line 168
    if-eqz v2, :cond_4

    .line 169
    .line 170
    iget-boolean v4, v0, Leo;->o:Z

    .line 171
    .line 172
    if-nez v4, :cond_4

    .line 173
    .line 174
    iget-object v4, v0, Leo;->g:Landroid/view/View;

    .line 175
    .line 176
    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_4

    .line 181
    .line 182
    iget-object v0, v0, Leo;->h:Lfc5;

    .line 183
    .line 184
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 188
    .line 189
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 190
    .line 191
    .line 192
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lwd2;

    .line 193
    .line 194
    check-cast p0, Lr88;

    .line 195
    .line 196
    iget-object p0, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->u()Z

    .line 199
    .line 200
    .line 201
    :cond_4
    return-void

    .line 202
    :cond_5
    invoke-virtual {p0, v1}, Lfo;->z(I)Leo;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iput-boolean v0, p1, Leo;->n:Z

    .line 207
    .line 208
    invoke-virtual {p0, p1, v1}, Lfo;->s(Leo;Z)V

    .line 209
    .line 210
    .line 211
    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, p1, v0}, Lfo;->E(Leo;Landroid/view/KeyEvent;)V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public final n(ZZ)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lfo;->h0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/16 v0, -0x64

    .line 8
    .line 9
    iget v2, p0, Lfo;->j0:I

    .line 10
    .line 11
    if-eq v2, v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    sget v2, Lnn;->b:I

    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Lfo;->r:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0, v0, v2}, Lfo;->C(Landroid/content/Context;I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v5, 0x21

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    if-ge v4, v5, :cond_2

    .line 28
    .line 29
    invoke-static {v0}, Lfo;->p(Landroid/content/Context;)Lh05;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-object v5, v6

    .line 35
    :goto_1
    if-nez p2, :cond_3

    .line 36
    .line 37
    if-eqz v5, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p2}, Lun;->b(Landroid/content/res/Configuration;)Lh05;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    :cond_3
    invoke-static {v0, v3, v5, v6, v1}, Lfo;->t(Landroid/content/Context;ILh05;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iget-boolean v3, p0, Lfo;->m0:Z

    .line 56
    .line 57
    const/4 v7, 0x1

    .line 58
    iget-object v8, p0, Lfo;->q:Ljava/lang/Object;

    .line 59
    .line 60
    if-nez v3, :cond_6

    .line 61
    .line 62
    instance-of v3, v8, Landroid/app/Activity;

    .line 63
    .line 64
    if-eqz v3, :cond_6

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-nez v3, :cond_4

    .line 71
    .line 72
    move v3, v1

    .line 73
    goto :goto_4

    .line 74
    :cond_4
    const/16 v9, 0x1d

    .line 75
    .line 76
    if-lt v4, v9, :cond_5

    .line 77
    .line 78
    const/high16 v4, 0x100c0000

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    const/high16 v4, 0xc0000

    .line 82
    .line 83
    :goto_2
    :try_start_0
    new-instance v9, Landroid/content/ComponentName;

    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-direct {v9, v0, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v9, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_6

    .line 97
    .line 98
    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 99
    .line 100
    iput v3, p0, Lfo;->l0:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :catch_0
    move-exception v3

    .line 104
    const-string v4, "AppCompatDelegate"

    .line 105
    .line 106
    const-string v9, "Exception while getting ActivityInfo"

    .line 107
    .line 108
    invoke-static {v4, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    iput v1, p0, Lfo;->l0:I

    .line 112
    .line 113
    :cond_6
    :goto_3
    iput-boolean v7, p0, Lfo;->m0:Z

    .line 114
    .line 115
    iget v3, p0, Lfo;->l0:I

    .line 116
    .line 117
    :goto_4
    iget-object v4, p0, Lfo;->i0:Landroid/content/res/Configuration;

    .line 118
    .line 119
    if-nez v4, :cond_7

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    :cond_7
    iget v9, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 130
    .line 131
    and-int/lit8 v9, v9, 0x30

    .line 132
    .line 133
    iget v10, p2, Landroid/content/res/Configuration;->uiMode:I

    .line 134
    .line 135
    and-int/lit8 v10, v10, 0x30

    .line 136
    .line 137
    invoke-static {v4}, Lun;->b(Landroid/content/res/Configuration;)Lh05;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    if-nez v5, :cond_8

    .line 142
    .line 143
    move-object v5, v6

    .line 144
    goto :goto_5

    .line 145
    :cond_8
    invoke-static {p2}, Lun;->b(Landroid/content/res/Configuration;)Lh05;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    :goto_5
    if-eq v9, v10, :cond_9

    .line 150
    .line 151
    const/16 v9, 0x200

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_9
    move v9, v1

    .line 155
    :goto_6
    if-eqz v5, :cond_a

    .line 156
    .line 157
    invoke-virtual {v4, v5}, Lh05;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-nez v4, :cond_a

    .line 162
    .line 163
    or-int/lit16 v9, v9, 0x2004

    .line 164
    .line 165
    :cond_a
    not-int v4, v3

    .line 166
    and-int/2addr v4, v9

    .line 167
    if-eqz v4, :cond_e

    .line 168
    .line 169
    if-eqz p1, :cond_e

    .line 170
    .line 171
    iget-boolean p1, p0, Lfo;->f0:Z

    .line 172
    .line 173
    if-eqz p1, :cond_e

    .line 174
    .line 175
    sget-boolean p1, Lfo;->A0:Z

    .line 176
    .line 177
    if-nez p1, :cond_b

    .line 178
    .line 179
    iget-boolean p1, p0, Lfo;->g0:Z

    .line 180
    .line 181
    if-eqz p1, :cond_e

    .line 182
    .line 183
    :cond_b
    instance-of p1, v8, Landroid/app/Activity;

    .line 184
    .line 185
    if-eqz p1, :cond_e

    .line 186
    .line 187
    move-object p1, v8

    .line 188
    check-cast p1, Landroid/app/Activity;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-nez v4, :cond_e

    .line 195
    .line 196
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 197
    .line 198
    const/16 v11, 0x1f

    .line 199
    .line 200
    if-lt v4, v11, :cond_c

    .line 201
    .line 202
    and-int/lit16 v11, v9, 0x2000

    .line 203
    .line 204
    if-eqz v11, :cond_c

    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    invoke-virtual {v11, p2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 219
    .line 220
    .line 221
    :cond_c
    const/16 p2, 0x1c

    .line 222
    .line 223
    if-lt v4, p2, :cond_d

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    .line 226
    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_d
    new-instance p2, Landroid/os/Handler;

    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-direct {p2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 236
    .line 237
    .line 238
    new-instance v4, La9;

    .line 239
    .line 240
    invoke-direct {v4, p1, v1}, La9;-><init>(Ljava/lang/Object;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    .line 245
    .line 246
    :goto_7
    move p1, v7

    .line 247
    goto :goto_8

    .line 248
    :cond_e
    move p1, v1

    .line 249
    :goto_8
    if-nez p1, :cond_13

    .line 250
    .line 251
    if-eqz v9, :cond_13

    .line 252
    .line 253
    and-int p1, v9, v3

    .line 254
    .line 255
    if-ne p1, v9, :cond_f

    .line 256
    .line 257
    move v1, v7

    .line 258
    :cond_f
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    new-instance p2, Landroid/content/res/Configuration;

    .line 263
    .line 264
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-direct {p2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 276
    .line 277
    and-int/lit8 v3, v3, -0x31

    .line 278
    .line 279
    or-int/2addr v3, v10

    .line 280
    iput v3, p2, Landroid/content/res/Configuration;->uiMode:I

    .line 281
    .line 282
    if-eqz v5, :cond_10

    .line 283
    .line 284
    invoke-static {p2, v5}, Lun;->d(Landroid/content/res/Configuration;Lh05;)V

    .line 285
    .line 286
    .line 287
    :cond_10
    invoke-virtual {p1, p2, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 288
    .line 289
    .line 290
    iget p1, p0, Lfo;->k0:I

    .line 291
    .line 292
    if-eqz p1, :cond_11

    .line 293
    .line 294
    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    iget v3, p0, Lfo;->k0:I

    .line 302
    .line 303
    invoke-virtual {p1, v3, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 304
    .line 305
    .line 306
    :cond_11
    if-eqz v1, :cond_14

    .line 307
    .line 308
    instance-of p1, v8, Landroid/app/Activity;

    .line 309
    .line 310
    if-eqz p1, :cond_14

    .line 311
    .line 312
    check-cast v8, Landroid/app/Activity;

    .line 313
    .line 314
    instance-of p1, v8, Lfu4;

    .line 315
    .line 316
    if-eqz p1, :cond_12

    .line 317
    .line 318
    move-object p1, v8

    .line 319
    check-cast p1, Lfu4;

    .line 320
    .line 321
    invoke-interface {p1}, Lfu4;->getLifecycle()Lhu4;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    iget-object p1, p1, Lhu4;->d:Lst4;

    .line 326
    .line 327
    sget-object v1, Lst4;->c:Lst4;

    .line 328
    .line 329
    invoke-virtual {p1, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    if-ltz p1, :cond_14

    .line 334
    .line 335
    invoke-virtual {v8, p2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 336
    .line 337
    .line 338
    goto :goto_9

    .line 339
    :cond_12
    iget-boolean p1, p0, Lfo;->g0:Z

    .line 340
    .line 341
    if-eqz p1, :cond_14

    .line 342
    .line 343
    iget-boolean p1, p0, Lfo;->h0:Z

    .line 344
    .line 345
    if-nez p1, :cond_14

    .line 346
    .line 347
    invoke-virtual {v8, p2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 348
    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_13
    move v7, p1

    .line 352
    :cond_14
    :goto_9
    if-eqz v5, :cond_15

    .line 353
    .line 354
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-static {p1}, Lun;->b(Landroid/content/res/Configuration;)Lh05;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-static {p1}, Lun;->c(Lh05;)V

    .line 367
    .line 368
    .line 369
    :cond_15
    if-nez v2, :cond_16

    .line 370
    .line 371
    invoke-virtual {p0, v0}, Lfo;->y(Landroid/content/Context;)Lao;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-virtual {p1}, Lao;->n()V

    .line 376
    .line 377
    .line 378
    goto :goto_a

    .line 379
    :cond_16
    iget-object p1, p0, Lfo;->n0:Lbo;

    .line 380
    .line 381
    if-eqz p1, :cond_17

    .line 382
    .line 383
    invoke-virtual {p1}, Lao;->d()V

    .line 384
    .line 385
    .line 386
    :cond_17
    :goto_a
    iget-object p1, p0, Lfo;->o0:Lyn;

    .line 387
    .line 388
    const/4 p2, 0x3

    .line 389
    if-ne v2, p2, :cond_19

    .line 390
    .line 391
    if-nez p1, :cond_18

    .line 392
    .line 393
    new-instance p1, Lyn;

    .line 394
    .line 395
    invoke-direct {p1, p0, v0}, Lyn;-><init>(Lfo;Landroid/content/Context;)V

    .line 396
    .line 397
    .line 398
    iput-object p1, p0, Lfo;->o0:Lyn;

    .line 399
    .line 400
    :cond_18
    iget-object p0, p0, Lfo;->o0:Lyn;

    .line 401
    .line 402
    invoke-virtual {p0}, Lao;->n()V

    .line 403
    .line 404
    .line 405
    goto :goto_b

    .line 406
    :cond_19
    if-eqz p1, :cond_1a

    .line 407
    .line 408
    invoke-virtual {p1}, Lao;->d()V

    .line 409
    .line 410
    .line 411
    :cond_1a
    :goto_b
    return v7
.end method

.method public final o(Landroid/view/Window;)V
    .locals 7

    .line 1
    const-string v0, "AppCompat has already installed itself into the Window"

    .line 2
    .line 3
    iget-object v1, p0, Lfo;->t:Landroid/view/Window;

    .line 4
    .line 5
    if-nez v1, :cond_6

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v2, v1, Lxn;

    .line 12
    .line 13
    if-nez v2, :cond_5

    .line 14
    .line 15
    new-instance v0, Lxn;

    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Lxn;-><init>(Lfo;Landroid/view/Window$Callback;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lfo;->x:Lxn;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lfo;->r:Landroid/content/Context;

    .line 26
    .line 27
    sget-object v1, Lfo;->z0:[I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-static {}, Ljo;->a()Ljo;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    monitor-enter v4

    .line 52
    :try_start_0
    iget-object v5, v4, Ljo;->a:Lyl6;

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    invoke-virtual {v5, v0, v3, v6}, Lyl6;->e(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v4

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0

    .line 64
    :cond_0
    move-object v0, v2

    .line 65
    :goto_0
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lfo;->t:Landroid/view/Window;

    .line 74
    .line 75
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    const/16 v0, 0x21

    .line 78
    .line 79
    if-lt p1, v0, :cond_4

    .line 80
    .line 81
    iget-object p1, p0, Lfo;->w0:Landroid/window/OnBackInvokedDispatcher;

    .line 82
    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    iget-object v0, p0, Lfo;->q:Ljava/lang/Object;

    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    iget-object v1, p0, Lfo;->x0:Landroid/window/OnBackInvokedCallback;

    .line 90
    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    invoke-static {p1, v1}, Lwn;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iput-object v2, p0, Lfo;->x0:Landroid/window/OnBackInvokedCallback;

    .line 97
    .line 98
    :cond_2
    instance-of p1, v0, Landroid/app/Activity;

    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    check-cast v0, Landroid/app/Activity;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    invoke-static {v0}, Lwn;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lfo;->w0:Landroid/window/OnBackInvokedDispatcher;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    iput-object v2, p0, Lfo;->w0:Landroid/window/OnBackInvokedDispatcher;

    .line 118
    .line 119
    :goto_1
    invoke-virtual {p0}, Lfo;->I()V

    .line 120
    .line 121
    .line 122
    :cond_4
    return-void

    .line 123
    :cond_5
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_6
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .line 1
    iget-object p1, p0, Lfo;->v0:Lbq;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    sget-object p1, Lge6;->j:[I

    .line 7
    .line 8
    iget-object v1, p0, Lfo;->r:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/16 v2, 0x74

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    new-instance p1, Lbq;

    .line 26
    .line 27
    invoke-direct {p1}, Lbq;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lfo;->v0:Lbq;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lbq;

    .line 50
    .line 51
    iput-object p1, p0, Lfo;->v0:Lbq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v3, "Failed to instantiate custom view inflater "

    .line 58
    .line 59
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, ". Falling back to default."

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v2, "AppCompatDelegate"

    .line 75
    .line 76
    invoke-static {v2, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    new-instance p1, Lbq;

    .line 80
    .line 81
    invoke-direct {p1}, Lbq;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lfo;->v0:Lbq;

    .line 85
    .line 86
    :cond_1
    :goto_0
    iget-object p0, p0, Lfo;->v0:Lbq;

    .line 87
    .line 88
    sget p1, Lsj8;->a:I

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    sget-object p1, Lge6;->y:[I

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p3, p4, p1, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const/4 v2, 0x4

    .line 101
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_2

    .line 106
    .line 107
    const-string v4, "AppCompatViewInflater"

    .line 108
    .line 109
    const-string v5, "app:theme is now deprecated. Please move to using android:theme instead."

    .line 110
    .line 111
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    .line 116
    .line 117
    if-eqz v3, :cond_4

    .line 118
    .line 119
    instance-of p1, p3, Lhv1;

    .line 120
    .line 121
    if-eqz p1, :cond_3

    .line 122
    .line 123
    move-object p1, p3

    .line 124
    check-cast p1, Lhv1;

    .line 125
    .line 126
    iget p1, p1, Lhv1;->a:I

    .line 127
    .line 128
    if-eq p1, v3, :cond_4

    .line 129
    .line 130
    :cond_3
    new-instance p1, Lhv1;

    .line 131
    .line 132
    invoke-direct {p1, p3, v3}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    move-object p1, p3

    .line 137
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    const/4 v4, 0x3

    .line 145
    const/4 v5, 0x1

    .line 146
    const/4 v6, -0x1

    .line 147
    sparse-switch v3, :sswitch_data_0

    .line 148
    .line 149
    .line 150
    :goto_2
    move v2, v6

    .line 151
    goto/16 :goto_3

    .line 152
    .line 153
    :sswitch_0
    const-string v2, "Button"

    .line 154
    .line 155
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-nez v2, :cond_5

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_5
    const/16 v2, 0xd

    .line 163
    .line 164
    goto/16 :goto_3

    .line 165
    .line 166
    :sswitch_1
    const-string v2, "EditText"

    .line 167
    .line 168
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_6

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_6
    const/16 v2, 0xc

    .line 176
    .line 177
    goto/16 :goto_3

    .line 178
    .line 179
    :sswitch_2
    const-string v2, "CheckBox"

    .line 180
    .line 181
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-nez v2, :cond_7

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_7
    const/16 v2, 0xb

    .line 189
    .line 190
    goto/16 :goto_3

    .line 191
    .line 192
    :sswitch_3
    const-string v2, "AutoCompleteTextView"

    .line 193
    .line 194
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-nez v2, :cond_8

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_8
    const/16 v2, 0xa

    .line 202
    .line 203
    goto/16 :goto_3

    .line 204
    .line 205
    :sswitch_4
    const-string v2, "ImageView"

    .line 206
    .line 207
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-nez v2, :cond_9

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_9
    const/16 v2, 0x9

    .line 215
    .line 216
    goto/16 :goto_3

    .line 217
    .line 218
    :sswitch_5
    const-string v2, "ToggleButton"

    .line 219
    .line 220
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_a

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_a
    const/16 v2, 0x8

    .line 228
    .line 229
    goto/16 :goto_3

    .line 230
    .line 231
    :sswitch_6
    const-string v2, "RadioButton"

    .line 232
    .line 233
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-nez v2, :cond_b

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_b
    const/4 v2, 0x7

    .line 241
    goto :goto_3

    .line 242
    :sswitch_7
    const-string v2, "Spinner"

    .line 243
    .line 244
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-nez v2, :cond_c

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_c
    const/4 v2, 0x6

    .line 252
    goto :goto_3

    .line 253
    :sswitch_8
    const-string v2, "SeekBar"

    .line 254
    .line 255
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-nez v2, :cond_d

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_d
    const/4 v2, 0x5

    .line 263
    goto :goto_3

    .line 264
    :sswitch_9
    const-string v3, "ImageButton"

    .line 265
    .line 266
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-nez v3, :cond_12

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :sswitch_a
    const-string v2, "TextView"

    .line 274
    .line 275
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-nez v2, :cond_e

    .line 280
    .line 281
    goto/16 :goto_2

    .line 282
    .line 283
    :cond_e
    move v2, v4

    .line 284
    goto :goto_3

    .line 285
    :sswitch_b
    const-string v2, "MultiAutoCompleteTextView"

    .line 286
    .line 287
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-nez v2, :cond_f

    .line 292
    .line 293
    goto/16 :goto_2

    .line 294
    .line 295
    :cond_f
    const/4 v2, 0x2

    .line 296
    goto :goto_3

    .line 297
    :sswitch_c
    const-string v2, "CheckedTextView"

    .line 298
    .line 299
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-nez v2, :cond_10

    .line 304
    .line 305
    goto/16 :goto_2

    .line 306
    .line 307
    :cond_10
    move v2, v5

    .line 308
    goto :goto_3

    .line 309
    :sswitch_d
    const-string v2, "RatingBar"

    .line 310
    .line 311
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-nez v2, :cond_11

    .line 316
    .line 317
    goto/16 :goto_2

    .line 318
    .line 319
    :cond_11
    move v2, v1

    .line 320
    :cond_12
    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 321
    .line 322
    .line 323
    move-object v2, v0

    .line 324
    goto :goto_4

    .line 325
    :pswitch_0
    invoke-virtual {p0, p1, p4}, Lbq;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lcn;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    goto :goto_4

    .line 330
    :pswitch_1
    new-instance v2, Llo;

    .line 331
    .line 332
    const v3, 0x7f0401fe

    .line 333
    .line 334
    .line 335
    invoke-direct {v2, p1, p4, v3}, Llo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 336
    .line 337
    .line 338
    goto :goto_4

    .line 339
    :pswitch_2
    invoke-virtual {p0, p1, p4}, Lbq;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Len;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    goto :goto_4

    .line 344
    :pswitch_3
    invoke-virtual {p0, p1, p4}, Lbq;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lan;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    goto :goto_4

    .line 349
    :pswitch_4
    new-instance v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 350
    .line 351
    invoke-direct {v2, p1, p4}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 352
    .line 353
    .line 354
    goto :goto_4

    .line 355
    :pswitch_5
    new-instance v2, Lzp;

    .line 356
    .line 357
    invoke-direct {v2, p1, p4}, Lzp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 358
    .line 359
    .line 360
    goto :goto_4

    .line 361
    :pswitch_6
    invoke-virtual {p0, p1, p4}, Lbq;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Lso;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    goto :goto_4

    .line 366
    :pswitch_7
    new-instance v2, Lip;

    .line 367
    .line 368
    invoke-direct {v2, p1, p4}, Lip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 369
    .line 370
    .line 371
    goto :goto_4

    .line 372
    :pswitch_8
    new-instance v2, Lvo;

    .line 373
    .line 374
    invoke-direct {v2, p1, p4}, Lvo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 375
    .line 376
    .line 377
    goto :goto_4

    .line 378
    :pswitch_9
    new-instance v2, Lno;

    .line 379
    .line 380
    const v3, 0x7f0402d4

    .line 381
    .line 382
    .line 383
    invoke-direct {v2, p1, p4, v3}, Lno;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 384
    .line 385
    .line 386
    goto :goto_4

    .line 387
    :pswitch_a
    invoke-virtual {p0, p1, p4}, Lbq;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Ltp;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    goto :goto_4

    .line 392
    :pswitch_b
    new-instance v2, Lpo;

    .line 393
    .line 394
    invoke-direct {v2, p1, p4}, Lpo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 395
    .line 396
    .line 397
    goto :goto_4

    .line 398
    :pswitch_c
    new-instance v2, Lfn;

    .line 399
    .line 400
    invoke-direct {v2, p1, p4}, Lfn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 401
    .line 402
    .line 403
    goto :goto_4

    .line 404
    :pswitch_d
    new-instance v2, Lto;

    .line 405
    .line 406
    invoke-direct {v2, p1, p4}, Lto;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 407
    .line 408
    .line 409
    :goto_4
    if-nez v2, :cond_17

    .line 410
    .line 411
    if-eq p3, p1, :cond_17

    .line 412
    .line 413
    iget-object p3, p0, Lbq;->a:[Ljava/lang/Object;

    .line 414
    .line 415
    const-string v2, "view"

    .line 416
    .line 417
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-eqz v2, :cond_13

    .line 422
    .line 423
    const-string p2, "class"

    .line 424
    .line 425
    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p2

    .line 429
    :cond_13
    :try_start_1
    aput-object p1, p3, v1

    .line 430
    .line 431
    aput-object p4, p3, v5

    .line 432
    .line 433
    const/16 v2, 0x2e

    .line 434
    .line 435
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    if-ne v6, v2, :cond_16

    .line 440
    .line 441
    move v2, v1

    .line 442
    :goto_5
    sget-object v3, Lbq;->g:[Ljava/lang/String;

    .line 443
    .line 444
    if-ge v2, v4, :cond_15

    .line 445
    .line 446
    aget-object v3, v3, v2

    .line 447
    .line 448
    invoke-virtual {p0, p1, p2, v3}, Lbq;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 449
    .line 450
    .line 451
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 452
    if-eqz v3, :cond_14

    .line 453
    .line 454
    aput-object v0, p3, v1

    .line 455
    .line 456
    aput-object v0, p3, v5

    .line 457
    .line 458
    move-object v0, v3

    .line 459
    goto :goto_7

    .line 460
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 461
    .line 462
    goto :goto_5

    .line 463
    :catchall_1
    move-exception p0

    .line 464
    goto :goto_6

    .line 465
    :cond_15
    aput-object v0, p3, v1

    .line 466
    .line 467
    aput-object v0, p3, v5

    .line 468
    .line 469
    goto :goto_7

    .line 470
    :cond_16
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lbq;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 471
    .line 472
    .line 473
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 474
    aput-object v0, p3, v1

    .line 475
    .line 476
    aput-object v0, p3, v5

    .line 477
    .line 478
    move-object v0, p0

    .line 479
    goto :goto_7

    .line 480
    :goto_6
    aput-object v0, p3, v1

    .line 481
    .line 482
    aput-object v0, p3, v5

    .line 483
    .line 484
    throw p0

    .line 485
    :catch_0
    aput-object v0, p3, v1

    .line 486
    .line 487
    aput-object v0, p3, v5

    .line 488
    .line 489
    :goto_7
    move-object v2, v0

    .line 490
    :cond_17
    if-eqz v2, :cond_1f

    .line 491
    .line 492
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 493
    .line 494
    .line 495
    move-result-object p0

    .line 496
    instance-of p2, p0, Landroid/content/ContextWrapper;

    .line 497
    .line 498
    if-eqz p2, :cond_1a

    .line 499
    .line 500
    invoke-virtual {v2}, Landroid/view/View;->hasOnClickListeners()Z

    .line 501
    .line 502
    .line 503
    move-result p2

    .line 504
    if-nez p2, :cond_18

    .line 505
    .line 506
    goto :goto_8

    .line 507
    :cond_18
    sget-object p2, Lbq;->c:[I

    .line 508
    .line 509
    invoke-virtual {p0, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 510
    .line 511
    .line 512
    move-result-object p0

    .line 513
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object p2

    .line 517
    if-eqz p2, :cond_19

    .line 518
    .line 519
    new-instance p3, Laq;

    .line 520
    .line 521
    invoke-direct {p3, v2, p2}, Laq;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    .line 526
    .line 527
    :cond_19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 528
    .line 529
    .line 530
    :cond_1a
    :goto_8
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 531
    .line 532
    const/16 p2, 0x1c

    .line 533
    .line 534
    if-le p0, p2, :cond_1b

    .line 535
    .line 536
    goto :goto_9

    .line 537
    :cond_1b
    sget-object p0, Lbq;->d:[I

    .line 538
    .line 539
    invoke-virtual {p1, p4, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 540
    .line 541
    .line 542
    move-result-object p0

    .line 543
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 544
    .line 545
    .line 546
    move-result p3

    .line 547
    const-class v0, Ljava/lang/Boolean;

    .line 548
    .line 549
    if-eqz p3, :cond_1c

    .line 550
    .line 551
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 552
    .line 553
    .line 554
    move-result p3

    .line 555
    sget-object v3, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 556
    .line 557
    new-instance v3, Lqk8;

    .line 558
    .line 559
    const v4, 0x7f0a04a1

    .line 560
    .line 561
    .line 562
    invoke-direct {v3, v4, v0, v1, p2}, La65;-><init>(ILjava/lang/Class;II)V

    .line 563
    .line 564
    .line 565
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 566
    .line 567
    .line 568
    move-result-object p3

    .line 569
    invoke-virtual {v3, v2, p3}, La65;->g(Landroid/view/View;Ljava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    :cond_1c
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 573
    .line 574
    .line 575
    sget-object p0, Lbq;->e:[I

    .line 576
    .line 577
    invoke-virtual {p1, p4, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 578
    .line 579
    .line 580
    move-result-object p0

    .line 581
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 582
    .line 583
    .line 584
    move-result p3

    .line 585
    if-eqz p3, :cond_1d

    .line 586
    .line 587
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object p3

    .line 591
    invoke-static {v2, p3}, Ldl8;->o(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 592
    .line 593
    .line 594
    :cond_1d
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 595
    .line 596
    .line 597
    sget-object p0, Lbq;->f:[I

    .line 598
    .line 599
    invoke-virtual {p1, p4, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 600
    .line 601
    .line 602
    move-result-object p0

    .line 603
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 604
    .line 605
    .line 606
    move-result p1

    .line 607
    if-eqz p1, :cond_1e

    .line 608
    .line 609
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 610
    .line 611
    .line 612
    move-result p1

    .line 613
    sget-object p3, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 614
    .line 615
    new-instance p3, Lnk8;

    .line 616
    .line 617
    const p4, 0x7f0a04a7

    .line 618
    .line 619
    .line 620
    invoke-direct {p3, p4, v0, v1, p2}, La65;-><init>(ILjava/lang/Class;II)V

    .line 621
    .line 622
    .line 623
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 624
    .line 625
    .line 626
    move-result-object p1

    .line 627
    invoke-virtual {p3, v2, p1}, La65;->g(Landroid/view/View;Ljava/lang/Object;)V

    .line 628
    .line 629
    .line 630
    :cond_1e
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 631
    .line 632
    .line 633
    :cond_1f
    :goto_9
    return-object v2

    .line 634
    nop

    .line 635
    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0, v0, p1, p2, p3}, Lfo;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final q(ILeo;Lfc5;)V
    .locals 2

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lfo;->c0:[Leo;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    if-ge p1, v1, :cond_0

    .line 11
    .line 12
    aget-object p2, v0, p1

    .line 13
    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget-object p3, p2, Leo;->h:Lfc5;

    .line 17
    .line 18
    :cond_1
    if-eqz p2, :cond_2

    .line 19
    .line 20
    iget-boolean p2, p2, Leo;->m:Z

    .line 21
    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-boolean p2, p0, Lfo;->h0:Z

    .line 26
    .line 27
    if-nez p2, :cond_3

    .line 28
    .line 29
    iget-object p2, p0, Lfo;->x:Lxn;

    .line 30
    .line 31
    iget-object p0, p0, Lfo;->t:Landroid/view/Window;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    const/4 v1, 0x0

    .line 42
    :try_start_0
    iput-boolean v0, p2, Lxn;->e:Z

    .line 43
    .line 44
    invoke-interface {p0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    iput-boolean v1, p2, Lxn;->e:Z

    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    iput-boolean v1, p2, Lxn;->e:Z

    .line 52
    .line 53
    throw p0

    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public final r(Lfc5;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lfo;->b0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lfo;->b0:Z

    .line 8
    .line 9
    iget-object v0, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lwd2;

    .line 15
    .line 16
    check-cast v0, Lr88;

    .line 17
    .line 18
    iget-object v0, v0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->L:Lo8;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lo8;->b()Z

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lo8;->M:Lg8;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lqc5;->b()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lqc5;->j:Loc5;

    .line 42
    .line 43
    invoke-interface {v0}, Laf7;->dismiss()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lfo;->t:Landroid/view/Window;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-boolean v1, p0, Lfo;->h0:Z

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    const/16 v1, 0x6c

    .line 59
    .line 60
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lfo;->b0:Z

    .line 65
    .line 66
    return-void
.end method

.method public final s(Leo;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget v0, p1, Leo;->a:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lwd2;

    .line 15
    .line 16
    check-cast v0, Lr88;

    .line 17
    .line 18
    iget-object v0, v0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->o()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object p1, p1, Leo;->h:Lfc5;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lfo;->r(Lfc5;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lfo;->r:Landroid/content/Context;

    .line 33
    .line 34
    const-string v1, "window"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/view/WindowManager;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-boolean v2, p1, Leo;->m:Z

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v2, p1, Leo;->e:Lco;

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    iget p2, p1, Leo;->a:I

    .line 59
    .line 60
    invoke-virtual {p0, p2, p1, v1}, Lfo;->q(ILeo;Lfc5;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    const/4 p2, 0x0

    .line 64
    iput-boolean p2, p1, Leo;->k:Z

    .line 65
    .line 66
    iput-boolean p2, p1, Leo;->l:Z

    .line 67
    .line 68
    iput-boolean p2, p1, Leo;->m:Z

    .line 69
    .line 70
    iput-object v1, p1, Leo;->f:Landroid/view/View;

    .line 71
    .line 72
    const/4 p2, 0x1

    .line 73
    iput-boolean p2, p1, Leo;->n:Z

    .line 74
    .line 75
    iget-object p2, p0, Lfo;->d0:Leo;

    .line 76
    .line 77
    if-ne p2, p1, :cond_2

    .line 78
    .line 79
    iput-object v1, p0, Lfo;->d0:Leo;

    .line 80
    .line 81
    :cond_2
    iget p1, p1, Leo;->a:I

    .line 82
    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    invoke-virtual {p0}, Lfo;->I()V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method

.method public final u(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lfo;->q:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lmo4;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    instance-of v0, v0, Lho;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lfo;->t:Landroid/view/Window;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {v0, p1}, Ltu0;->h(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/16 v3, 0x52

    .line 34
    .line 35
    if-ne v0, v3, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lfo;->x:Lxn;

    .line 38
    .line 39
    iget-object v4, p0, Lfo;->t:Landroid/view/Window;

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    :try_start_0
    iput-boolean v2, v0, Lxn;->d:Z

    .line 49
    .line 50
    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 51
    .line 52
    .line 53
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iput-boolean v1, v0, Lxn;->d:Z

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :catchall_0
    move-exception p0

    .line 61
    iput-boolean v1, v0, Lxn;->d:Z

    .line 62
    .line 63
    throw p0

    .line 64
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const/4 v5, 0x4

    .line 73
    if-nez v4, :cond_6

    .line 74
    .line 75
    if-eq v0, v5, :cond_4

    .line 76
    .line 77
    if-eq v0, v3, :cond_3

    .line 78
    .line 79
    goto/16 :goto_6

    .line 80
    .line 81
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_11

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Lfo;->z(I)Leo;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-boolean v1, v0, Leo;->m:Z

    .line 92
    .line 93
    if-nez v1, :cond_11

    .line 94
    .line 95
    invoke-virtual {p0, v0, p1}, Lfo;->G(Leo;Landroid/view/KeyEvent;)Z

    .line 96
    .line 97
    .line 98
    return v2

    .line 99
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    and-int/lit16 p1, p1, 0x80

    .line 104
    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    move v2, v1

    .line 109
    :goto_0
    iput-boolean v2, p0, Lfo;->e0:Z

    .line 110
    .line 111
    return v1

    .line 112
    :cond_6
    if-eq v0, v5, :cond_10

    .line 113
    .line 114
    if-eq v0, v3, :cond_7

    .line 115
    .line 116
    goto/16 :goto_6

    .line 117
    .line 118
    :cond_7
    iget-object v0, p0, Lfo;->L:Ls8;

    .line 119
    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    goto/16 :goto_5

    .line 123
    .line 124
    :cond_8
    invoke-virtual {p0, v1}, Lfo;->z(I)Leo;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v3, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 129
    .line 130
    iget-object v4, p0, Lfo;->r:Landroid/content/Context;

    .line 131
    .line 132
    if-eqz v3, :cond_a

    .line 133
    .line 134
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 135
    .line 136
    .line 137
    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lwd2;

    .line 138
    .line 139
    check-cast v3, Lr88;

    .line 140
    .line 141
    iget-object v3, v3, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 142
    .line 143
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-nez v5, :cond_a

    .line 148
    .line 149
    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 150
    .line 151
    if-eqz v3, :cond_a

    .line 152
    .line 153
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView;->K:Z

    .line 154
    .line 155
    if-eqz v3, :cond_a

    .line 156
    .line 157
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-nez v3, :cond_a

    .line 166
    .line 167
    iget-object v3, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 168
    .line 169
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 170
    .line 171
    .line 172
    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lwd2;

    .line 173
    .line 174
    check-cast v3, Lr88;

    .line 175
    .line 176
    iget-object v3, v3, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 177
    .line 178
    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->o()Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-nez v3, :cond_9

    .line 183
    .line 184
    iget-boolean v3, p0, Lfo;->h0:Z

    .line 185
    .line 186
    if-nez v3, :cond_d

    .line 187
    .line 188
    invoke-virtual {p0, v0, p1}, Lfo;->G(Leo;Landroid/view/KeyEvent;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_d

    .line 193
    .line 194
    iget-object p0, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 195
    .line 196
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 197
    .line 198
    .line 199
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lwd2;

    .line 200
    .line 201
    check-cast p0, Lr88;

    .line 202
    .line 203
    iget-object p0, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 204
    .line 205
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->u()Z

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    goto :goto_4

    .line 210
    :cond_9
    iget-object p0, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 211
    .line 212
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 213
    .line 214
    .line 215
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lwd2;

    .line 216
    .line 217
    check-cast p0, Lr88;

    .line 218
    .line 219
    iget-object p0, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 220
    .line 221
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 222
    .line 223
    if-eqz p0, :cond_d

    .line 224
    .line 225
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->L:Lo8;

    .line 226
    .line 227
    if-eqz p0, :cond_d

    .line 228
    .line 229
    invoke-virtual {p0}, Lo8;->b()Z

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    if-eqz p0, :cond_d

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_a
    iget-boolean v3, v0, Leo;->m:Z

    .line 237
    .line 238
    if-nez v3, :cond_e

    .line 239
    .line 240
    iget-boolean v5, v0, Leo;->l:Z

    .line 241
    .line 242
    if-eqz v5, :cond_b

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_b
    iget-boolean v3, v0, Leo;->k:Z

    .line 246
    .line 247
    if-eqz v3, :cond_d

    .line 248
    .line 249
    iget-boolean v3, v0, Leo;->o:Z

    .line 250
    .line 251
    if-eqz v3, :cond_c

    .line 252
    .line 253
    iput-boolean v1, v0, Leo;->k:Z

    .line 254
    .line 255
    invoke-virtual {p0, v0, p1}, Lfo;->G(Leo;Landroid/view/KeyEvent;)Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    goto :goto_1

    .line 260
    :cond_c
    move v3, v2

    .line 261
    :goto_1
    if-eqz v3, :cond_d

    .line 262
    .line 263
    invoke-virtual {p0, v0, p1}, Lfo;->E(Leo;Landroid/view/KeyEvent;)V

    .line 264
    .line 265
    .line 266
    :goto_2
    move p0, v2

    .line 267
    goto :goto_4

    .line 268
    :cond_d
    move p0, v1

    .line 269
    goto :goto_4

    .line 270
    :cond_e
    :goto_3
    invoke-virtual {p0, v0, v2}, Lfo;->s(Leo;Z)V

    .line 271
    .line 272
    .line 273
    move p0, v3

    .line 274
    :goto_4
    if-eqz p0, :cond_11

    .line 275
    .line 276
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    const-string p1, "audio"

    .line 281
    .line 282
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    check-cast p0, Landroid/media/AudioManager;

    .line 287
    .line 288
    if-eqz p0, :cond_f

    .line 289
    .line 290
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 291
    .line 292
    .line 293
    return v2

    .line 294
    :cond_f
    const-string p0, "AppCompatDelegate"

    .line 295
    .line 296
    const-string p1, "Couldn\'t get audio manager"

    .line 297
    .line 298
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    return v2

    .line 302
    :cond_10
    invoke-virtual {p0}, Lfo;->D()Z

    .line 303
    .line 304
    .line 305
    move-result p0

    .line 306
    if-eqz p0, :cond_12

    .line 307
    .line 308
    :cond_11
    :goto_5
    return v2

    .line 309
    :cond_12
    :goto_6
    return v1
.end method

.method public final v(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lfo;->z(I)Leo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Leo;->h:Lfc5;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Leo;->h:Lfc5;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lfc5;->t(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    iput-object v1, v0, Leo;->p:Landroid/os/Bundle;

    .line 26
    .line 27
    :cond_0
    iget-object v1, v0, Leo;->h:Lfc5;

    .line 28
    .line 29
    invoke-virtual {v1}, Lfc5;->w()V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Leo;->h:Lfc5;

    .line 33
    .line 34
    invoke-virtual {v1}, Lfc5;->clear()V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Leo;->o:Z

    .line 39
    .line 40
    iput-boolean v1, v0, Leo;->n:Z

    .line 41
    .line 42
    const/16 v0, 0x6c

    .line 43
    .line 44
    if-eq p1, v0, :cond_2

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lfo;->z(I)Leo;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-boolean p1, v0, Leo;->k:Z

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, v0, p1}, Lfo;->G(Leo;Landroid/view/KeyEvent;)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public final w()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lfo;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_1b

    .line 4
    .line 5
    iget-object v0, p0, Lfo;->r:Landroid/content/Context;

    .line 6
    .line 7
    sget-object v1, Lge6;->j:[I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/16 v3, 0x75

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_1a

    .line 20
    .line 21
    const/16 v4, 0x7e

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/16 v6, 0x6c

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v7}, Lfo;->h(I)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, v6}, Lfo;->h(I)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    const/16 v3, 0x76

    .line 47
    .line 48
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/16 v4, 0x6d

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v4}, Lfo;->h(I)Z

    .line 57
    .line 58
    .line 59
    :cond_2
    const/16 v3, 0x77

    .line 60
    .line 61
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    const/16 v3, 0xa

    .line 68
    .line 69
    invoke-virtual {p0, v3}, Lfo;->h(I)Z

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iput-boolean v3, p0, Lfo;->Z:Z

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lfo;->x()V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lfo;->t:Landroid/view/Window;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-boolean v3, p0, Lfo;->a0:Z

    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    if-nez v3, :cond_9

    .line 97
    .line 98
    iget-boolean v3, p0, Lfo;->Z:Z

    .line 99
    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    const v3, 0x7f0d000c

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Landroid/view/ViewGroup;

    .line 110
    .line 111
    iput-boolean v5, p0, Lfo;->X:Z

    .line 112
    .line 113
    iput-boolean v5, p0, Lfo;->W:Z

    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    :cond_4
    iget-boolean v2, p0, Lfo;->W:Z

    .line 118
    .line 119
    if-eqz v2, :cond_8

    .line 120
    .line 121
    new-instance v2, Landroid/util/TypedValue;

    .line 122
    .line 123
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    const v9, 0x7f04000b

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v9, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 134
    .line 135
    .line 136
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    .line 137
    .line 138
    if-eqz v3, :cond_5

    .line 139
    .line 140
    new-instance v3, Lhv1;

    .line 141
    .line 142
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 143
    .line 144
    invoke-direct {v3, v0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    move-object v3, v0

    .line 149
    :goto_1
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const v3, 0x7f0d0017

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Landroid/view/ViewGroup;

    .line 161
    .line 162
    const v3, 0x7f0a01c9

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 170
    .line 171
    iput-object v3, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 172
    .line 173
    iget-object v9, p0, Lfo;->t:Landroid/view/Window;

    .line 174
    .line 175
    invoke-virtual {v9}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    invoke-virtual {v3, v9}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 180
    .line 181
    .line 182
    iget-boolean v3, p0, Lfo;->X:Z

    .line 183
    .line 184
    if-eqz v3, :cond_6

    .line 185
    .line 186
    iget-object v3, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 187
    .line 188
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    .line 189
    .line 190
    .line 191
    :cond_6
    iget-boolean v3, p0, Lfo;->U:Z

    .line 192
    .line 193
    if-eqz v3, :cond_7

    .line 194
    .line 195
    iget-object v3, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 196
    .line 197
    const/4 v4, 0x2

    .line 198
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    .line 199
    .line 200
    .line 201
    :cond_7
    iget-boolean v3, p0, Lfo;->V:Z

    .line 202
    .line 203
    if-eqz v3, :cond_b

    .line 204
    .line 205
    iget-object v3, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 206
    .line 207
    const/4 v4, 0x5

    .line 208
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_8
    move-object v2, v8

    .line 213
    goto :goto_2

    .line 214
    :cond_9
    iget-boolean v3, p0, Lfo;->Y:Z

    .line 215
    .line 216
    if-eqz v3, :cond_a

    .line 217
    .line 218
    const v3, 0x7f0d0016

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Landroid/view/ViewGroup;

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_a
    const v3, 0x7f0d0015

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    check-cast v2, Landroid/view/ViewGroup;

    .line 236
    .line 237
    :cond_b
    :goto_2
    if-eqz v2, :cond_19

    .line 238
    .line 239
    new-instance v3, Lrb;

    .line 240
    .line 241
    const/4 v4, 0x4

    .line 242
    invoke-direct {v3, p0, v4}, Lrb;-><init>(Ljava/lang/Object;I)V

    .line 243
    .line 244
    .line 245
    sget-object v9, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 246
    .line 247
    invoke-static {v2, v3}, Luk8;->c(Landroid/view/View;Lls5;)V

    .line 248
    .line 249
    .line 250
    iget-object v3, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 251
    .line 252
    if-nez v3, :cond_c

    .line 253
    .line 254
    const v3, 0x7f0a04df

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    check-cast v3, Landroid/widget/TextView;

    .line 262
    .line 263
    iput-object v3, p0, Lfo;->S:Landroid/widget/TextView;

    .line 264
    .line 265
    :cond_c
    sget-boolean v3, Lxm8;->a:Z

    .line 266
    .line 267
    const-string v3, "Could not invoke makeOptionalFitsSystemWindows"

    .line 268
    .line 269
    const-string v9, "ViewUtils"

    .line 270
    .line 271
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    move-result-object v10

    .line 275
    const-string v11, "makeOptionalFitsSystemWindows"

    .line 276
    .line 277
    invoke-virtual {v10, v11, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    invoke-virtual {v10}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 282
    .line 283
    .line 284
    move-result v11

    .line 285
    if-nez v11, :cond_d

    .line 286
    .line 287
    invoke-virtual {v10, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 288
    .line 289
    .line 290
    goto :goto_3

    .line 291
    :catch_0
    move-exception v10

    .line 292
    goto :goto_4

    .line 293
    :catch_1
    move-exception v10

    .line 294
    goto :goto_5

    .line 295
    :cond_d
    :goto_3
    invoke-virtual {v10, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .line 297
    .line 298
    goto :goto_6

    .line 299
    :goto_4
    invoke-static {v9, v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :goto_5
    invoke-static {v9, v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .line 305
    .line 306
    goto :goto_6

    .line 307
    :catch_2
    const-string v3, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    .line 308
    .line 309
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    :goto_6
    const v3, 0x7f0a003f

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    check-cast v3, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 320
    .line 321
    iget-object v9, p0, Lfo;->t:Landroid/view/Window;

    .line 322
    .line 323
    const v10, 0x1020002

    .line 324
    .line 325
    .line 326
    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    check-cast v9, Landroid/view/ViewGroup;

    .line 331
    .line 332
    if-eqz v9, :cond_f

    .line 333
    .line 334
    :goto_7
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    .line 335
    .line 336
    .line 337
    move-result v11

    .line 338
    if-lez v11, :cond_e

    .line 339
    .line 340
    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 341
    .line 342
    .line 343
    move-result-object v11

    .line 344
    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 348
    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_e
    const/4 v11, -0x1

    .line 352
    invoke-virtual {v9, v11}, Landroid/view/View;->setId(I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3, v10}, Landroid/view/View;->setId(I)V

    .line 356
    .line 357
    .line 358
    instance-of v11, v9, Landroid/widget/FrameLayout;

    .line 359
    .line 360
    if-eqz v11, :cond_f

    .line 361
    .line 362
    check-cast v9, Landroid/widget/FrameLayout;

    .line 363
    .line 364
    invoke-virtual {v9, v8}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 365
    .line 366
    .line 367
    :cond_f
    iget-object v8, p0, Lfo;->t:Landroid/view/Window;

    .line 368
    .line 369
    invoke-virtual {v8, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 370
    .line 371
    .line 372
    new-instance v8, Lzq8;

    .line 373
    .line 374
    invoke-direct {v8, p0, v4}, Lzq8;-><init>(Ljava/lang/Object;I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v8}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Lhu1;)V

    .line 378
    .line 379
    .line 380
    iput-object v2, p0, Lfo;->R:Landroid/view/ViewGroup;

    .line 381
    .line 382
    iget-object v2, p0, Lfo;->q:Ljava/lang/Object;

    .line 383
    .line 384
    instance-of v3, v2, Landroid/app/Activity;

    .line 385
    .line 386
    if-eqz v3, :cond_10

    .line 387
    .line 388
    check-cast v2, Landroid/app/Activity;

    .line 389
    .line 390
    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    goto :goto_8

    .line 395
    :cond_10
    iget-object v2, p0, Lfo;->H:Ljava/lang/CharSequence;

    .line 396
    .line 397
    :goto_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    if-nez v3, :cond_13

    .line 402
    .line 403
    iget-object v3, p0, Lfo;->I:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 404
    .line 405
    if-eqz v3, :cond_11

    .line 406
    .line 407
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 408
    .line 409
    .line 410
    goto :goto_9

    .line 411
    :cond_11
    iget-object v3, p0, Lfo;->y:Lnc8;

    .line 412
    .line 413
    if-eqz v3, :cond_12

    .line 414
    .line 415
    invoke-virtual {v3, v2}, Lnc8;->g0(Ljava/lang/CharSequence;)V

    .line 416
    .line 417
    .line 418
    goto :goto_9

    .line 419
    :cond_12
    iget-object v3, p0, Lfo;->S:Landroid/widget/TextView;

    .line 420
    .line 421
    if-eqz v3, :cond_13

    .line 422
    .line 423
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    .line 425
    .line 426
    :cond_13
    :goto_9
    iget-object v2, p0, Lfo;->R:Landroid/view/ViewGroup;

    .line 427
    .line 428
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    check-cast v2, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 433
    .line 434
    iget-object v3, p0, Lfo;->t:Landroid/view/Window;

    .line 435
    .line 436
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    .line 441
    .line 442
    .line 443
    move-result v4

    .line 444
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 445
    .line 446
    .line 447
    move-result v8

    .line 448
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 449
    .line 450
    .line 451
    move-result v9

    .line 452
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    iget-object v10, v2, Landroidx/appcompat/widget/ContentFrameLayout;->k:Landroid/graphics/Rect;

    .line 457
    .line 458
    invoke-virtual {v10, v4, v8, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    if-eqz v3, :cond_14

    .line 466
    .line 467
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 468
    .line 469
    .line 470
    :cond_14
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    const/16 v1, 0x7c

    .line 475
    .line 476
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 481
    .line 482
    .line 483
    const/16 v1, 0x7d

    .line 484
    .line 485
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 490
    .line 491
    .line 492
    const/16 v1, 0x7a

    .line 493
    .line 494
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    if-eqz v3, :cond_15

    .line 499
    .line 500
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 505
    .line 506
    .line 507
    :cond_15
    const/16 v1, 0x7b

    .line 508
    .line 509
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    if-eqz v3, :cond_16

    .line 514
    .line 515
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 520
    .line 521
    .line 522
    :cond_16
    const/16 v1, 0x78

    .line 523
    .line 524
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    if-eqz v3, :cond_17

    .line 529
    .line 530
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 535
    .line 536
    .line 537
    :cond_17
    const/16 v1, 0x79

    .line 538
    .line 539
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 540
    .line 541
    .line 542
    move-result v3

    .line 543
    if-eqz v3, :cond_18

    .line 544
    .line 545
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 550
    .line 551
    .line 552
    :cond_18
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 556
    .line 557
    .line 558
    iput-boolean v7, p0, Lfo;->Q:Z

    .line 559
    .line 560
    invoke-virtual {p0, v5}, Lfo;->z(I)Leo;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    iget-boolean v1, p0, Lfo;->h0:Z

    .line 565
    .line 566
    if-nez v1, :cond_1b

    .line 567
    .line 568
    iget-object v0, v0, Leo;->h:Lfc5;

    .line 569
    .line 570
    if-nez v0, :cond_1b

    .line 571
    .line 572
    invoke-virtual {p0, v6}, Lfo;->B(I)V

    .line 573
    .line 574
    .line 575
    goto :goto_a

    .line 576
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    .line 579
    .line 580
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    iget-boolean v1, p0, Lfo;->W:Z

    .line 584
    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    const-string v1, ", windowActionBarOverlay: "

    .line 589
    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    iget-boolean v1, p0, Lfo;->X:Z

    .line 594
    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    const-string v1, ", android:windowIsFloating: "

    .line 599
    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    iget-boolean v1, p0, Lfo;->Z:Z

    .line 604
    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    const-string v1, ", windowActionModeOverlay: "

    .line 609
    .line 610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    iget-boolean v1, p0, Lfo;->Y:Z

    .line 614
    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    const-string v1, ", windowNoTitle: "

    .line 619
    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    iget-boolean p0, p0, Lfo;->a0:Z

    .line 624
    .line 625
    const-string v1, " }"

    .line 626
    .line 627
    invoke-static {v0, p0, v1}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object p0

    .line 631
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    return-void

    .line 635
    :cond_1a
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 636
    .line 637
    .line 638
    const-string p0, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    .line 639
    .line 640
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    :cond_1b
    :goto_a
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfo;->t:Landroid/view/Window;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lfo;->q:Ljava/lang/Object;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lfo;->o(Landroid/view/Window;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lfo;->t:Landroid/view/Window;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const-string p0, "We have not been given a Window"

    .line 26
    .line 27
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final y(Landroid/content/Context;)Lao;
    .locals 4

    .line 1
    iget-object v0, p0, Lfo;->n0:Lbo;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lbo;

    .line 6
    .line 7
    sget-object v1, Lbp0;->d:Lbp0;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lbp0;

    .line 16
    .line 17
    const-string v2, "location"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/location/LocationManager;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lrb8;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v3, v1, Lbp0;->c:Ljava/lang/Object;

    .line 34
    .line 35
    iput-object p1, v1, Lbp0;->a:Ljava/lang/Object;

    .line 36
    .line 37
    iput-object v2, v1, Lbp0;->b:Ljava/lang/Object;

    .line 38
    .line 39
    sput-object v1, Lbp0;->d:Lbp0;

    .line 40
    .line 41
    :cond_0
    sget-object p1, Lbp0;->d:Lbp0;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Lbo;-><init>(Lfo;Lbp0;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lfo;->n0:Lbo;

    .line 47
    .line 48
    :cond_1
    iget-object p0, p0, Lfo;->n0:Lbo;

    .line 49
    .line 50
    return-object p0
.end method

.method public final z(I)Leo;
    .locals 4

    .line 1
    iget-object v0, p0, Lfo;->c0:[Leo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-gt v2, p1, :cond_2

    .line 8
    .line 9
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 10
    .line 11
    new-array v2, v2, [Leo;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    array-length v3, v0

    .line 16
    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object v2, p0, Lfo;->c0:[Leo;

    .line 20
    .line 21
    move-object v0, v2

    .line 22
    :cond_2
    aget-object p0, v0, p1

    .line 23
    .line 24
    if-nez p0, :cond_3

    .line 25
    .line 26
    new-instance p0, Leo;

    .line 27
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput p1, p0, Leo;->a:I

    .line 32
    .line 33
    iput-boolean v1, p0, Leo;->n:Z

    .line 34
    .line 35
    aput-object p0, v0, p1

    .line 36
    .line 37
    :cond_3
    return-object p0
.end method
