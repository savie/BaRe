.class public final Lu94;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Lam6;
.implements Lz23;
.implements Ln59;


# static fields
.field public static final d:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lu94;->d:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lu94;->a:Ljava/lang/Object;

    .line 70
    iput-object p2, p0, Lu94;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x2f

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const-string v0, "/"

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lu94;->b:Ljava/lang/Object;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iput-object p2, p0, Lu94;->b:Ljava/lang/Object;

    .line 34
    .line 35
    :goto_0
    instance-of p2, p1, Landroid/view/View;

    .line 36
    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    const-string p1, "LottieDrawable must be inside of a view for images to work."

    .line 40
    .line 41
    invoke-static {p1}, Lm15;->b(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lu94;->c:Ljava/lang/Object;

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lu94;->a:Ljava/lang/Object;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    check-cast p1, Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lu94;->a:Ljava/lang/Object;

    .line 62
    .line 63
    iput-object p3, p0, Lu94;->c:Ljava/lang/Object;

    .line 64
    .line 65
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lu94;->a:Ljava/lang/Object;

    iput-object p2, p0, Lu94;->b:Ljava/lang/Object;

    iput-object p3, p0, Lu94;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lke;Lhh8;Lyf1;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu94;->a:Ljava/lang/Object;

    iput-object p3, p0, Lu94;->b:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lu94;->c:Ljava/lang/Object;

    return-void
.end method

.method public static e(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lu94;
    .locals 1

    .line 1
    new-instance v0, Lu94;

    .line 2
    .line 3
    invoke-virtual {p2, p3, p4, p0, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p2, p0}, Lu94;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, Lu94;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lu94;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p0, v1}, Lzh8;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public b(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lu94;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lu94;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p0, v1}, Liz1;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public c(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Lu94;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lu94;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/content/res/TypedArray;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Ljo;->a()Ljo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object p0, p0, Lu94;->a:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Landroid/content/Context;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, v0, Ljo;->a:Lyl6;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1, p0, p1, v2}, Lyl6;->e(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    .line 39
    return-object p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method public d(IILkp;)Landroid/graphics/Typeface;
    .locals 9

    .line 1
    iget-object v0, p0, Lu94;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lu94;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Landroid/util/TypedValue;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    new-instance p1, Landroid/util/TypedValue;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lu94;->c:Ljava/lang/Object;

    .line 25
    .line 26
    :cond_1
    iget-object p1, p0, Lu94;->a:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v2, p1

    .line 29
    check-cast v2, Landroid/content/Context;

    .line 30
    .line 31
    iget-object p0, p0, Lu94;->c:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v4, p0

    .line 34
    check-cast v4, Landroid/util/TypedValue;

    .line 35
    .line 36
    sget-object p0, Lfm6;->a:Ljava/lang/ThreadLocal;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    :goto_0
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    :cond_2
    const/4 v7, 0x1

    .line 47
    const/4 v8, 0x0

    .line 48
    move v5, p2

    .line 49
    move-object v6, p3

    .line 50
    invoke-static/range {v2 .. v8}, Lfm6;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILg67;ZZ)Landroid/graphics/Typeface;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public f()V
    .locals 0

    .line 1
    iget-object p0, p0, Lu94;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v1, Lb05;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lsl4;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lu94;->a:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ltf2;

    .line 14
    .line 15
    invoke-virtual {v0}, Ltf2;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v3, v0

    .line 20
    check-cast v3, Lsf2;

    .line 21
    .line 22
    iget-object v0, p0, Lu94;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lzr7;

    .line 25
    .line 26
    invoke-virtual {v0}, Lzr7;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v4, v0

    .line 31
    check-cast v4, Lfg8;

    .line 32
    .line 33
    iget-object p0, p0, Lu94;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Llj3;

    .line 36
    .line 37
    invoke-virtual {p0}, Llj3;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    move-object v5, p0

    .line 42
    check-cast v5, Le38;

    .line 43
    .line 44
    new-instance v0, Lya8;

    .line 45
    .line 46
    invoke-direct/range {v0 .. v5}, Lya8;-><init>(Lba1;Lba1;Lsf2;Lfg8;Le38;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lu94;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    return-object p0
.end method

.method public h(Lf59;)V
    .locals 7

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Lb69;

    .line 3
    .line 4
    new-instance v5, Las2;

    .line 5
    .line 6
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Llp1;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p1, v0}, Llp1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v5, Las2;->d:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v1, Llp1;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Llp1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v1, v5, Las2;->e:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v1, v4, Lb69;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1}, Lly8;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v5, Las2;->a:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v1, p0, Lu94;->a:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lhh8;

    .line 34
    .line 35
    iget-boolean v2, v1, Lhh8;->c:Z

    .line 36
    .line 37
    iget-object v3, v1, Lhh8;->a:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p1, p1, Llp1;->a:Ljava/util/ArrayList;

    .line 40
    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    :cond_0
    if-nez v3, :cond_1

    .line 46
    .line 47
    const-string v2, "DISPLAY_NAME"

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iput-object v3, v5, Las2;->b:Ljava/lang/Object;

    .line 54
    .line 55
    :cond_2
    :goto_0
    iget-boolean v2, v1, Lhh8;->d:Z

    .line 56
    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    iget-object v2, v1, Lhh8;->e:Landroid/net/Uri;

    .line 60
    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    :cond_3
    iget-object v1, v1, Lhh8;->b:Ljava/lang/String;

    .line 64
    .line 65
    if-nez v1, :cond_4

    .line 66
    .line 67
    const-string v1, "PHOTO_URL"

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    iput-object v1, v5, Las2;->c:Ljava/io/Serializable;

    .line 74
    .line 75
    :cond_5
    :goto_1
    iget-object p1, p0, Lu94;->c:Ljava/lang/Object;

    .line 76
    .line 77
    move-object v1, p1

    .line 78
    check-cast v1, Lke;

    .line 79
    .line 80
    iget-object p1, p0, Lu94;->b:Ljava/lang/Object;

    .line 81
    .line 82
    move-object v3, p1

    .line 83
    check-cast v3, Lyf1;

    .line 84
    .line 85
    iget-object p1, v4, Lb69;->b:Ljava/lang/String;

    .line 86
    .line 87
    new-instance v6, Lbi9;

    .line 88
    .line 89
    invoke-direct {v6, p1, v0}, Lbi9;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, v1, Lke;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Lg59;

    .line 95
    .line 96
    new-instance v0, Lxp3;

    .line 97
    .line 98
    move-object v2, p0

    .line 99
    invoke-direct/range {v0 .. v5}, Lxp3;-><init>(Lke;Lu94;Lyf1;Lb69;Las2;)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p1, Lg59;->a:Ld59;

    .line 103
    .line 104
    iget-object p1, p1, Lg59;->f:Ljava/lang/String;

    .line 105
    .line 106
    const-string v1, "/getAccountInfo"

    .line 107
    .line 108
    invoke-virtual {p0, v1, p1}, Lao;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance v1, Lw59;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lao;->b:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p0, Lxt1;

    .line 120
    .line 121
    invoke-static {p1, v6, v0, v1, p0}, Lms8;->U(Ljava/lang/String;Le59;Ln59;Lf59;Lxt1;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public m(Lll6;Lou5;)Lll6;
    .locals 2

    .line 1
    invoke-interface {p1}, Lll6;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lu94;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lir0;

    .line 14
    .line 15
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object p0, p0, Lu94;->a:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lnr0;

    .line 24
    .line 25
    invoke-static {p0, v0}, Lor0;->e(Lnr0;Landroid/graphics/Bitmap;)Lor0;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0, p2}, Lir0;->m(Lll6;Lou5;)Lll6;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_0
    instance-of v0, v0, Lfx3;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lu94;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lb05;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lb05;->m(Lll6;Lou5;)Lll6;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lzv1;->t(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lu94;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lyf1;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lyf1;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
