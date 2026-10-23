.class public Lro;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements La13;
.implements Lji3;
.implements Lcl6;
.implements Lto2;
.implements Ln59;


# static fields
.field public static final d:[I


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x101013b

    .line 2
    .line 3
    .line 4
    const v1, 0x101013c

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lro;->d:[I

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 101
    iput p1, p0, Lro;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 65
    iput p1, p0, Lro;->a:I

    iput-object p2, p0, Lro;->b:Ljava/lang/Object;

    iput-object p3, p0, Lro;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lai5;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lro;->a:I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Lai5;->n()Lcz4;

    move-result-object v0

    iput-object v0, p0, Lro;->c:Ljava/lang/Object;

    .line 100
    iput-object p1, p0, Lro;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lro;->a:I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lro;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lro;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lro;->b:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Lbv2;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lbv2;-><init>(Landroid/widget/EditText;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lro;->c:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lqu2;->b:Lqu2;

    .line 20
    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    sget-object p0, Lqu2;->a:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    sget-object v0, Lqu2;->b:Lqu2;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Lqu2;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/text/Editable$Factory;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_1
    const-string v1, "android.text.DynamicLayout$ChangeWatcher"

    .line 36
    .line 37
    const-class v2, Lqu2;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sput-object v1, Lqu2;->c:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    :catchall_0
    :try_start_2
    sput-object v0, Lqu2;->b:Lqu2;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    monitor-exit p0

    .line 56
    goto :goto_2

    .line 57
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    throw p1

    .line 59
    :cond_1
    :goto_2
    sget-object p0, Lqu2;->b:Lqu2;

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;I)V
    .locals 0

    iput p2, p0, Lro;->a:I

    packed-switch p2, :pswitch_data_0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 90
    iput-object p1, p0, Lro;->c:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lro;->b:Ljava/lang/Object;

    return-void

    .line 92
    :cond_0
    const-string p0, "FirebaseDatabase"

    const-string p1, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string p2, "ERROR: You must call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string p0, "You need to call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 96
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lro;->c:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lfo8;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lro;->a:I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lro;->b:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lro;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfu4;Lyl8;)V
    .locals 2

    const/16 v0, 0x9

    iput v0, p0, Lro;->a:I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lro;->b:Ljava/lang/Object;

    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    sget-object p1, Lm22;->b:Lm22;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    new-instance v0, Llj3;

    sget-object v1, Lgz4;->d:Lfz4;

    invoke-direct {v0, p2, v1, p1}, Llj3;-><init>(Lyl8;Lwl8;Ln22;)V

    .line 77
    const-class p1, Lgz4;

    .line 78
    invoke-static {p1}, Lph6;->a(Ljava/lang/Class;)Ln81;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ln81;->b()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 80
    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 81
    invoke-virtual {v0, p1, p2}, Llj3;->b(Ln81;Ljava/lang/String;)Ltl8;

    move-result-object p1

    .line 82
    check-cast p1, Lgz4;

    .line 83
    iput-object p1, p0, Lro;->c:Ljava/lang/Object;

    return-void

    .line 84
    :cond_0
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 85
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 66
    iput p3, p0, Lro;->a:I

    iput-object p1, p0, Lro;->c:Ljava/lang/Object;

    iput-object p2, p0, Lro;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lke;Lyf1;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lro;->a:I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lro;->b:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lro;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 1
    iget-object v0, p0, Lro;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnh;

    .line 4
    .line 5
    iget-object v0, v0, Lnh;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 8
    .line 9
    iget-object p0, p0, Lro;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A0:I

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    const/4 v3, -0x2

    .line 17
    if-ne v1, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    instance-of v1, v1, Landroid/view/View;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    .line 46
    if-ne v2, v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    add-int/2addr v2, v0

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 75
    .line 76
    if-eqz p0, :cond_2

    .line 77
    .line 78
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 79
    .line 80
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 81
    .line 82
    add-int/2addr v0, p0

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x0

    .line 85
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    sub-int/2addr p0, v0

    .line 90
    sub-int/2addr p0, v2

    .line 91
    return p0

    .line 92
    :cond_3
    if-eqz v1, :cond_5

    .line 93
    .line 94
    if-ne v1, v3, :cond_4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    return v1

    .line 98
    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    return p0
.end method

.method public b()I
    .locals 4

    .line 1
    iget-object v0, p0, Lro;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnh;

    .line 4
    .line 5
    iget-object p0, p0, Lro;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v1, v1, Landroid/view/View;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lnh;->b()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    .line 36
    const/4 v3, -0x2

    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lnh;->b()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-int/2addr v2, v0

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 66
    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 70
    .line 71
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 72
    .line 73
    add-int/2addr v0, p0

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v0, 0x0

    .line 76
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    sub-int/2addr p0, v0

    .line 81
    sub-int/2addr p0, v2

    .line 82
    return p0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object p0, p0, Lro;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Leg6;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Leg6;->a:[B

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    iput v0, p0, Leg6;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1, p2}, Lwc2;->b(Ljava/lang/String;Ljava/lang/String;)Lwc2;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object p2, p0, Lro;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lgd;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lgd;->k(Lwc2;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lro;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lkm5;

    .line 20
    .line 21
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lwj6;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lwj6;->j(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lro;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lgz4;

    .line 4
    .line 5
    iget-object v0, p0, Lgz4;->b:Lyj7;

    .line 6
    .line 7
    iget v0, v0, Lyj7;->c:I

    .line 8
    .line 9
    if-lez v0, :cond_8

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "Loaders:"

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "    "

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    move v2, v1

    .line 27
    :goto_0
    iget-object v3, p0, Lgz4;->b:Lyj7;

    .line 28
    .line 29
    iget v4, v3, Lyj7;->c:I

    .line 30
    .line 31
    if-ge v2, v4, :cond_8

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Lyj7;->c(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ldz4;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v4, "  #"

    .line 43
    .line 44
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lgz4;->b:Lyj7;

    .line 48
    .line 49
    iget-object v4, v4, Lyj7;->a:[I

    .line 50
    .line 51
    aget v4, v4, v2

    .line 52
    .line 53
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 54
    .line 55
    .line 56
    const-string v4, ": "

    .line 57
    .line 58
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ldz4;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v4, "mId="

    .line 72
    .line 73
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 77
    .line 78
    .line 79
    const-string v5, " mArgs="

    .line 80
    .line 81
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v5, "mLoader="

    .line 92
    .line 93
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v5, v3, Ldz4;->l:Ly29;

    .line 97
    .line 98
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v5, v3, Ldz4;->l:Ly29;

    .line 102
    .line 103
    const-string v6, "  "

    .line 104
    .line 105
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 119
    .line 120
    .line 121
    const-string v4, " mListener="

    .line 122
    .line 123
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v4, v5, Ly29;->a:Ldz4;

    .line 127
    .line 128
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-boolean v4, v5, Ly29;->b:Z

    .line 132
    .line 133
    const-string v8, "mStarted="

    .line 134
    .line 135
    if-nez v4, :cond_0

    .line 136
    .line 137
    iget-boolean v4, v5, Ly29;->e:Z

    .line 138
    .line 139
    if-nez v4, :cond_0

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_0
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-boolean v4, v5, Ly29;->b:Z

    .line 149
    .line 150
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 151
    .line 152
    .line 153
    const-string v4, " mContentChanged="

    .line 154
    .line 155
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-boolean v4, v5, Ly29;->e:Z

    .line 159
    .line 160
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 161
    .line 162
    .line 163
    const-string v4, " mProcessingChange="

    .line 164
    .line 165
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 169
    .line 170
    .line 171
    :goto_1
    iget-boolean v4, v5, Ly29;->c:Z

    .line 172
    .line 173
    if-nez v4, :cond_1

    .line 174
    .line 175
    iget-boolean v4, v5, Ly29;->d:Z

    .line 176
    .line 177
    if-eqz v4, :cond_2

    .line 178
    .line 179
    :cond_1
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string v4, "mAbandoned="

    .line 183
    .line 184
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-boolean v4, v5, Ly29;->c:Z

    .line 188
    .line 189
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 190
    .line 191
    .line 192
    const-string v4, " mReset="

    .line 193
    .line 194
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-boolean v4, v5, Ly29;->d:Z

    .line 198
    .line 199
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 200
    .line 201
    .line 202
    :cond_2
    iget-object v4, v5, Ly29;->g:La70;

    .line 203
    .line 204
    const-string v9, " waiting="

    .line 205
    .line 206
    if-eqz v4, :cond_3

    .line 207
    .line 208
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string v4, "mTask="

    .line 212
    .line 213
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object v4, v5, Ly29;->g:La70;

    .line 217
    .line 218
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v4, v5, Ly29;->g:La70;

    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 230
    .line 231
    .line 232
    :cond_3
    iget-object v4, v5, Ly29;->h:La70;

    .line 233
    .line 234
    if-eqz v4, :cond_4

    .line 235
    .line 236
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string v4, "mCancellingTask="

    .line 240
    .line 241
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object v4, v5, Ly29;->h:La70;

    .line 245
    .line 246
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object v4, v5, Ly29;->h:La70;

    .line 253
    .line 254
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 258
    .line 259
    .line 260
    :cond_4
    iget-object v4, v3, Ldz4;->n:Lez4;

    .line 261
    .line 262
    if-eqz v4, :cond_5

    .line 263
    .line 264
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const-string v4, "mCallbacks="

    .line 268
    .line 269
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v4, v3, Ldz4;->n:Lez4;

    .line 273
    .line 274
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    iget-object v4, v3, Ldz4;->n:Lez4;

    .line 278
    .line 279
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    const-string v5, "mDeliveredData="

    .line 290
    .line 291
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-boolean v4, v4, Lez4;->b:Z

    .line 295
    .line 296
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 297
    .line 298
    .line 299
    :cond_5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    const-string v4, "mData="

    .line 303
    .line 304
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget-object v4, v3, Ldz4;->l:Ly29;

    .line 308
    .line 309
    invoke-virtual {v3}, Lzy4;->d()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const/16 v6, 0x40

    .line 319
    .line 320
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    .line 322
    .line 323
    if-nez v5, :cond_6

    .line 324
    .line 325
    const-string v5, "null"

    .line 326
    .line 327
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    goto :goto_2

    .line 331
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v6, "{"

    .line 343
    .line 344
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v5, "}"

    .line 359
    .line 360
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    iget v3, v3, Lzy4;->c:I

    .line 377
    .line 378
    if-lez v3, :cond_7

    .line 379
    .line 380
    const/4 v3, 0x1

    .line 381
    goto :goto_3

    .line 382
    :cond_7
    move v3, v1

    .line 383
    :goto_3
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 384
    .line 385
    .line 386
    add-int/lit8 v2, v2, 0x1

    .line 387
    .line 388
    goto/16 :goto_0

    .line 389
    .line 390
    :cond_8
    return-void
.end method

.method public f(I)[J
    .locals 7

    .line 1
    iget-object v0, p0, Lro;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/Semaphore;

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    const-wide/16 v2, 0x1388

    .line 8
    .line 9
    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lro;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    .line 19
    int-to-long v1, p1

    .line 20
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    add-long/2addr v1, v3

    .line 25
    sub-long/2addr v1, v3

    .line 26
    long-to-int p0, v1

    .line 27
    new-array v1, p0, [J

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-ge v2, p0, :cond_0

    .line 31
    .line 32
    int-to-long v5, v2

    .line 33
    add-long/2addr v5, v3

    .line 34
    aput-wide v5, v1, v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v1

    .line 40
    :cond_1
    new-instance p0, Lgv6;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "Not enough credits ("

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, " available) to hand out "

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, " sequence numbers"

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 82
    .line 83
    .line 84
    new-instance p0, Lgv6;

    .line 85
    .line 86
    const-string v1, "Got interrupted waiting for "

    .line 87
    .line 88
    const-string v2, " to be available. Credits available at this moment: "

    .line 89
    .line 90
    invoke-static {p1, v1, v2}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0
.end method

.method public g(Lnr0;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lro;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Liz2;

    .line 4
    .line 5
    iget-object p0, p0, Liz2;->b:Ljava/io/IOException;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-interface {p1, p2}, Lnr0;->f(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    throw p0

    .line 15
    :cond_1
    return-void
.end method

.method public getPaddingEnd()I
    .locals 0

    .line 1
    iget-object p0, p0, Lro;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t0:I

    .line 6
    .line 7
    return p0
.end method

.method public getPaddingStart()I
    .locals 0

    .line 1
    iget-object p0, p0, Lro;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s0:I

    .line 6
    .line 7
    return p0
.end method

.method public h(Lf59;)V
    .locals 8

    .line 1
    check-cast p1, Lm69;

    .line 2
    .line 3
    new-instance v1, Lb69;

    .line 4
    .line 5
    iget-object v0, p1, Lm69;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p1, Lm69;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v3, p1, Lm69;->c:J

    .line 10
    .line 11
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, "Bearer"

    .line 16
    .line 17
    invoke-direct {v1, v0, v2, v3, v4}, Lb69;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lro;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lke;

    .line 23
    .line 24
    iget-boolean p1, p1, Lm69;->d:Z

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget-object p1, p0, Lro;->b:Ljava/lang/Object;

    .line 31
    .line 32
    move-object v6, p1

    .line 33
    check-cast v6, Lyf1;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    move-object v7, p0

    .line 39
    invoke-virtual/range {v0 .. v7}, Lke;->t(Lb69;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lua9;Lyf1;Ln59;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public i()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    iget-object p0, p0, Lro;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 6
    .line 7
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A0:I

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, -0x2

    .line 12
    :cond_0
    const/4 v1, -0x1

    .line 13
    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public k(Ljava/lang/Class;)Lyo1;
    .locals 2

    .line 1
    new-instance v0, Lln5;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p1, v1}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lyo1;

    .line 10
    .line 11
    iget-object p0, p0, Lro;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lai5;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {p1, p0, v0, v1}, Lyo1;-><init>(Lai5;Lvb8;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance p0, Lsf5;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    new-array p1, p1, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v0, "Can not instantiate null class"

    .line 26
    .line 27
    invoke-direct {p0, v0, p1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public l()Ljava/io/File;
    .locals 5

    .line 1
    const-string v0, "PersistedInstallation."

    .line 2
    .line 3
    iget-object v1, p0, Lro;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/io/File;

    .line 6
    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v1, p0, Lro;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/io/File;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lro;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lcom/google/firebase/FirebaseApp;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ".json"

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Ljava/io/File;

    .line 42
    .line 43
    iget-object v2, p0, Lro;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Lcom/google/firebase/FirebaseApp;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lro;->b:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    iget-object v0, p0, Lro;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Ljava/io/File;

    .line 69
    .line 70
    monitor-exit p0

    .line 71
    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 75
    .line 76
    iget-object v2, p0, Lro;->c:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Lcom/google/firebase/FirebaseApp;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    iget-object v0, p0, Lro;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Ljava/io/File;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_1

    .line 106
    .line 107
    const-string v0, "PersistedInstallation"

    .line 108
    .line 109
    const-string v2, "Unable to move the file from back up to non back up directory"

    .line 110
    .line 111
    new-instance v3, Ljava/io/IOException;

    .line 112
    .line 113
    const-string v4, "Unable to move the file from back up to non back up directory"

    .line 114
    .line 115
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return-object v1

    .line 123
    :cond_1
    monitor-exit p0

    .line 124
    goto :goto_1

    .line 125
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw v0

    .line 127
    :cond_2
    :goto_1
    iget-object p0, p0, Lro;->b:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p0, Ljava/io/File;

    .line 130
    .line 131
    return-object p0
.end method

.method public m(Landroid/content/Context;Lcom/bumptech/glide/a;Lhu4;Landroidx/fragment/app/z;Z)Lyk6;
    .locals 4

    .line 1
    invoke-static {}, Lxh8;->c()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lxh8;->c()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lro;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lyk6;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lcu4;

    .line 20
    .line 21
    invoke-direct {v1, p3}, Lcu4;-><init>(Lhu4;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lro;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Lfo8;

    .line 27
    .line 28
    new-instance v3, Lns0;

    .line 29
    .line 30
    invoke-direct {v3, p0, p4}, Lns0;-><init>(Lro;Landroidx/fragment/app/z;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance p4, Lyk6;

    .line 37
    .line 38
    invoke-direct {p4, p2, v1, v3, p1}, Lyk6;-><init>(Lcom/bumptech/glide/a;Ltt4;Lal6;Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    new-instance p1, Liu4;

    .line 45
    .line 46
    invoke-direct {p1, p0, p3}, Liu4;-><init>(Lro;Lhu4;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lcu4;->k(Ldu4;)V

    .line 50
    .line 51
    .line 52
    if-eqz p5, :cond_0

    .line 53
    .line 54
    invoke-virtual {p4}, Lyk6;->m()V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-object p4

    .line 58
    :cond_1
    return-object v1
.end method

.method public n(Lee0;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Fid"

    .line 7
    .line 8
    iget-object v2, p1, Lee0;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "Status"

    .line 14
    .line 15
    iget v2, p1, Lee0;->b:I

    .line 16
    .line 17
    invoke-static {v2}, Ldj7;->A(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v1, "AuthToken"

    .line 25
    .line 26
    iget-object v2, p1, Lee0;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string v1, "RefreshToken"

    .line 32
    .line 33
    iget-object v2, p1, Lee0;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    const-string v1, "TokenCreationEpochInSecs"

    .line 39
    .line 40
    iget-wide v2, p1, Lee0;->f:J

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    const-string v1, "ExpiresInSecs"

    .line 46
    .line 47
    iget-wide v2, p1, Lee0;->e:J

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string v1, "FisError"

    .line 53
    .line 54
    iget-object p1, p1, Lee0;->g:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    const-string p1, "PersistedInstallation"

    .line 60
    .line 61
    const-string v1, "tmp"

    .line 62
    .line 63
    iget-object v2, p0, Lro;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Lcom/google/firebase/FirebaseApp;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {p1, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v1, Ljava/io/FileOutputStream;

    .line 80
    .line 81
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v2, "UTF-8"

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lro;->l()Ljava/io/File;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-eqz p0, :cond_0

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 112
    .line 113
    const-string p1, "unable to rename the tmpfile to PersistedInstallation"

    .line 114
    .line 115
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :catch_0
    :goto_0
    return-void
.end method

.method public o(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lro;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/AbsSeekBar;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    sget-object v3, Lro;->d:[I

    .line 11
    .line 12
    invoke-static {p2, v2, v1, p1, v3}, Lu94;->e(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lu94;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, v2}, Lu94;->c(I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    instance-of v3, p2, Landroid/graphics/drawable/AnimationDrawable;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 34
    .line 35
    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 43
    .line 44
    .line 45
    move v5, v2

    .line 46
    :goto_0
    const/16 v6, 0x2710

    .line 47
    .line 48
    if-ge v5, v3, :cond_0

    .line 49
    .line 50
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {p0, v7, v1}, Lro;->u(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-virtual {v4, v7, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 72
    .line 73
    .line 74
    move-object p2, v4

    .line 75
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {p1, v1}, Lu94;->c(I)Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    if-eqz p2, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0, p2, v2}, Lro;->u(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {p1}, Lu94;->f()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public p([B)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lro;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, [[J

    .line 8
    .line 9
    const/16 v3, 0xf

    .line 10
    .line 11
    aget-byte v3, v1, v3

    .line 12
    .line 13
    and-int/lit16 v3, v3, 0xff

    .line 14
    .line 15
    aget-object v2, v2, v3

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aget-wide v4, v2, v3

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    aget-wide v7, v2, v6

    .line 22
    .line 23
    const/16 v2, 0xe

    .line 24
    .line 25
    :goto_0
    const/16 v9, 0x8

    .line 26
    .line 27
    if-ltz v2, :cond_0

    .line 28
    .line 29
    iget-object v10, v0, Lro;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v10, [[J

    .line 32
    .line 33
    aget-byte v11, v1, v2

    .line 34
    .line 35
    and-int/lit16 v11, v11, 0xff

    .line 36
    .line 37
    aget-object v10, v10, v11

    .line 38
    .line 39
    const/16 v11, 0x38

    .line 40
    .line 41
    shl-long v12, v7, v11

    .line 42
    .line 43
    aget-wide v14, v10, v6

    .line 44
    .line 45
    ushr-long/2addr v7, v9

    .line 46
    shl-long v16, v4, v11

    .line 47
    .line 48
    or-long v7, v7, v16

    .line 49
    .line 50
    xor-long/2addr v7, v14

    .line 51
    aget-wide v14, v10, v3

    .line 52
    .line 53
    ushr-long/2addr v4, v9

    .line 54
    xor-long/2addr v4, v14

    .line 55
    xor-long/2addr v4, v12

    .line 56
    ushr-long v9, v12, v6

    .line 57
    .line 58
    xor-long/2addr v4, v9

    .line 59
    const/4 v9, 0x2

    .line 60
    ushr-long v9, v12, v9

    .line 61
    .line 62
    xor-long/2addr v4, v9

    .line 63
    const/4 v9, 0x7

    .line 64
    ushr-long v9, v12, v9

    .line 65
    .line 66
    xor-long/2addr v4, v9

    .line 67
    add-int/lit8 v2, v2, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-static {v3, v4, v5, v1}, Lxx3;->u(IJ[B)V

    .line 71
    .line 72
    .line 73
    invoke-static {v9, v7, v8, v1}, Lxx3;->u(IJ[B)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lro;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    .line 5
    iget-object p0, p0, Lro;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljs1;

    .line 8
    .line 9
    new-instance v1, Lzu1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2, p0, p1}, Lzu1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public r(Lmc4;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lro;->k(Ljava/lang/Class;)Lyo1;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lyo1;->b(Lmc4;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget-object v0, p0, Lro;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lai5;

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lai5;->m(Ljava/lang/Class;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lro;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcz4;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public s()Lee0;
    .locals 14

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x4000

    .line 7
    .line 8
    new-array v2, v1, [B

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 12
    .line 13
    invoke-virtual {p0}, Lro;->l()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :goto_0
    :try_start_1
    invoke-virtual {v4, v2, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-gez p0, :cond_0

    .line 25
    .line 26
    new-instance p0, Lorg/json/JSONObject;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_3

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    move-object p0, v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :try_start_3
    invoke-virtual {v0, v2, v3, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 55
    :catch_0
    new-instance p0, Lorg/json/JSONObject;

    .line 56
    .line 57
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .line 59
    .line 60
    :goto_3
    const-string v0, "Fid"

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string v0, "Status"

    .line 68
    .line 69
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const-string v2, "AuthToken"

    .line 74
    .line 75
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    const-string v2, "RefreshToken"

    .line 80
    .line 81
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    const-string v2, "TokenCreationEpochInSecs"

    .line 86
    .line 87
    const-wide/16 v3, 0x0

    .line 88
    .line 89
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v11

    .line 93
    const-string v2, "ExpiresInSecs"

    .line 94
    .line 95
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 96
    .line 97
    .line 98
    move-result-wide v9

    .line 99
    const-string v2, "FisError"

    .line 100
    .line 101
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    sget p0, Lee0;->h:I

    .line 106
    .line 107
    const/4 p0, 0x0

    .line 108
    or-int/lit8 p0, p0, 0x2

    .line 109
    .line 110
    int-to-byte p0, p0

    .line 111
    or-int/lit8 p0, p0, 0x1

    .line 112
    .line 113
    int-to-byte p0, p0

    .line 114
    const/4 v2, 0x5

    .line 115
    invoke-static {v2}, Ldj7;->C(I)[I

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    aget v6, v2, v0

    .line 120
    .line 121
    if-eqz v6, :cond_6

    .line 122
    .line 123
    or-int/lit8 p0, p0, 0x2

    .line 124
    .line 125
    int-to-byte p0, p0

    .line 126
    or-int/lit8 p0, p0, 0x1

    .line 127
    .line 128
    int-to-byte p0, p0

    .line 129
    const/4 v0, 0x3

    .line 130
    if-ne p0, v0, :cond_2

    .line 131
    .line 132
    if-nez v6, :cond_1

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_1
    new-instance v4, Lee0;

    .line 136
    .line 137
    invoke-direct/range {v4 .. v13}, Lee0;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object v4

    .line 141
    :cond_2
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    if-nez v6, :cond_3

    .line 147
    .line 148
    const-string v2, " registrationStatus"

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    :cond_3
    and-int/lit8 v2, p0, 0x1

    .line 154
    .line 155
    if-nez v2, :cond_4

    .line 156
    .line 157
    const-string v2, " expiresInSecs"

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    :cond_4
    and-int/lit8 p0, p0, 0x2

    .line 163
    .line 164
    if-nez p0, :cond_5

    .line 165
    .line 166
    const-string p0, " tokenCreationEpochInSecs"

    .line 167
    .line 168
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    :cond_5
    const-string p0, "Missing required properties:"

    .line 172
    .line 173
    invoke-static {p0, v0}, Lxs1;->k(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-object v1

    .line 181
    :cond_6
    const-string p0, "Null registrationStatus"

    .line 182
    .line 183
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-object v1
.end method

.method public t(Lli3;Lkv1;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Lqi3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lqi3;

    .line 7
    .line 8
    iget v1, v0, Lqi3;->b:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lqi3;->b:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lqi3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lqi3;-><init>(Lro;Lkv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lqi3;->a:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lqi3;->b:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    sget-object v5, Lyx1;->a:Lyx1;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v3, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v4

    .line 50
    :cond_2
    iget p1, v0, Lqi3;->e:I

    .line 51
    .line 52
    iget-object v1, v0, Lqi3;->d:Lli3;

    .line 53
    .line 54
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object v6, v1

    .line 58
    move v1, p1

    .line 59
    move-object p1, v6

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lro;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p2, Lji3;

    .line 67
    .line 68
    iput-object p1, v0, Lqi3;->d:Lli3;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    iput v1, v0, Lqi3;->e:I

    .line 72
    .line 73
    iput v3, v0, Lqi3;->b:I

    .line 74
    .line 75
    invoke-static {p2, p1, v0}, Lxx3;->b(Lji3;Lli3;Lkv1;)Ljava/io/Serializable;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    if-ne p2, v5, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Throwable;

    .line 83
    .line 84
    if-eqz p2, :cond_5

    .line 85
    .line 86
    iget-object p0, p0, Lro;->c:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Lhd7;

    .line 89
    .line 90
    iput-object v4, v0, Lqi3;->d:Lli3;

    .line 91
    .line 92
    iput v1, v0, Lqi3;->e:I

    .line 93
    .line 94
    iput v2, v0, Lqi3;->b:I

    .line 95
    .line 96
    invoke-virtual {p0, p1, p2, v0}, Lhd7;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-ne p0, v5, :cond_5

    .line 101
    .line 102
    :goto_2
    return-object v5

    .line 103
    :cond_5
    :goto_3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 104
    .line 105
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lro;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v1, 0x80

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const-string v1, "LoaderManager{"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, " in "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lro;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lfu4;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, "{"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p0, "}}"

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public u(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, p2, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const v6, 0x102000d

    .line 27
    .line 28
    .line 29
    if-eq v4, v6, :cond_1

    .line 30
    .line 31
    const v6, 0x102000f

    .line 32
    .line 33
    .line 34
    if-ne v4, v6, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v4, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_1
    move v4, v1

    .line 40
    :goto_2
    invoke-virtual {p0, v5, v4}, Lro;->u(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    aput-object v4, v0, v3

    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    .line 50
    .line 51
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 52
    .line 53
    .line 54
    :goto_3
    if-ge v2, p2, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_3
    return-object p0

    .line 130
    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 131
    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v2, p0, Lro;->c:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v2, Landroid/graphics/Bitmap;

    .line 143
    .line 144
    if-nez v2, :cond_5

    .line 145
    .line 146
    iput-object v0, p0, Lro;->c:Ljava/lang/Object;

    .line 147
    .line 148
    :cond_5
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    .line 149
    .line 150
    const/16 v2, 0x8

    .line 151
    .line 152
    new-array v2, v2, [F

    .line 153
    .line 154
    fill-array-data v2, :array_0

    .line 155
    .line 156
    .line 157
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 158
    .line 159
    const/4 v4, 0x0

    .line 160
    invoke-direct {v3, v2, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 164
    .line 165
    .line 166
    new-instance v2, Landroid/graphics/BitmapShader;

    .line 167
    .line 168
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 169
    .line 170
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 171
    .line 172
    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 195
    .line 196
    .line 197
    if-eqz p2, :cond_6

    .line 198
    .line 199
    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    .line 200
    .line 201
    const/4 p2, 0x3

    .line 202
    invoke-direct {p1, p0, p2, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 203
    .line 204
    .line 205
    return-object p1

    .line 206
    :cond_6
    return-object p0

    .line 207
    :cond_7
    return-object p1

    .line 208
    nop

    .line 209
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public v(Lmc4;Ljava/lang/Class;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lro;->k(Ljava/lang/Class;)Lyo1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lro;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lai5;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Lai5;->m(Ljava/lang/Class;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lro;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lcz4;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lyo1;->d(Lmc4;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public w(Lev5;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lro;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lai5;

    .line 4
    .line 5
    invoke-interface {p1, p4}, Lev5;->i(Ljava/lang/String;)Lev5;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p4, Lln5;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-direct {p4, p3, v1}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_2

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    iget-object v1, v0, Lai5;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lx44;

    .line 24
    .line 25
    invoke-virtual {v1, p3}, Lx44;->d(Ljava/lang/Class;)Lq27;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Lq27;->e()Lxd2;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    check-cast v1, Loe;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, p1, v2}, Loe;->e(Lev5;Lxd2;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    move-object v1, p1

    .line 42
    check-cast v1, Lcv5;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcv5;->getAttributes()Lxn5;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v3, v0, Lai5;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Lzo7;

    .line 53
    .line 54
    iget-object v0, v0, Lai5;->e:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Li87;

    .line 57
    .line 58
    invoke-interface {v3, p4, p2, v2, v0}, Lzo7;->d(Lvb8;Ljava/lang/Object;Lxn5;Ljava/util/Map;)Z

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    if-nez p4, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0, p3}, Lro;->k(Ljava/lang/Class;)Lyo1;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0, v1, p2}, Lyo1;->a(Lev5;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance p0, Lkd5;

    .line 73
    .line 74
    const-string p1, "No attributes for %s"

    .line 75
    .line 76
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-direct {p0, p1, p2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_2
    :goto_0
    check-cast p1, Lcv5;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcv5;->commit()V

    .line 87
    .line 88
    .line 89
    return-void
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
    iget-object p0, p0, Lro;->b:Ljava/lang/Object;

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
