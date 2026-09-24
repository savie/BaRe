.class public final Lz28;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lc38;
.implements Laj8;
.implements Loy4;
.implements Lug7;
.implements Ldh5;
.implements Li60;
.implements Lj90;
.implements Lza2;
.implements Llo4;
.implements Lt22;
.implements Lc33;
.implements Ljs1;
.implements Llk8;
.implements Ltk5;
.implements Lmr8;
.implements Ldl9;
.implements Lu1a;
.implements Lt1a;


# static fields
.field public static final c:[Ljava/lang/String;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "_data"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lz28;->c:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Lz28;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz28;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lz28;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static D(Ljava/lang/String;I[B)V
    .locals 2

    .line 1
    array-length v0, p2

    .line 2
    if-ne v0, p1, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    .line 7
    array-length p2, p2

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, " should be "

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, " bytes long but is "

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method


# virtual methods
.method public A(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lqg6;

    .line 6
    .line 7
    invoke-static {p1}, Landroidx/recyclerview/widget/a;->O(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 12
    .line 13
    add-int/2addr p1, p0

    .line 14
    return p1
.end method

.method public B(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Exception;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public C()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lca2;

    .line 4
    .line 5
    iget-object p0, p0, Lca2;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/io/File;

    .line 8
    .line 9
    return-object p0
.end method

.method public E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lcom/google/gson/a;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lom4;

    .line 19
    .line 20
    sget-object v1, Lom4;->e:Lnm4;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ltl4;-><init>(Ljava/io/Reader;)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    new-array v2, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    iput-object v2, v0, Lom4;->a:[Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput v2, v0, Lom4;->b:I

    .line 33
    .line 34
    new-array v2, v1, [Ljava/lang/String;

    .line 35
    .line 36
    iput-object v2, v0, Lom4;->c:[Ljava/lang/String;

    .line 37
    .line 38
    new-array v1, v1, [I

    .line 39
    .line 40
    iput-object v1, v0, Lom4;->d:[I

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lom4;->Z(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/a;->a(Ltl4;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public a(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lhg6;

    .line 4
    .line 5
    iget-object p0, p0, Lhg6;->a:Lig6;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lig6;->d(Ljava/lang/Object;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ltd2;

    .line 2
    .line 3
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lnn1;

    .line 6
    .line 7
    iget-object v1, p0, Lnn1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lyw2;

    .line 10
    .line 11
    iget-object p0, p0, Lnn1;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ll22;

    .line 14
    .line 15
    invoke-direct {v0, v1, p0}, Ltd2;-><init>(Lyw2;Ll22;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->createWebView(Landroid/webkit/WebView;)Ljava/lang/reflect/InvocationHandler;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-class p1, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 10
    .line 11
    invoke-static {p1, p0}, Ltu0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 16
    .line 17
    return-object p0
.end method

.method public d()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lca2;

    .line 4
    .line 5
    iget-object p0, p0, Lca2;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/io/File;

    .line 8
    .line 9
    return-object p0
.end method

.method public e()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lca2;

    .line 4
    .line 5
    iget-object p0, p0, Lca2;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/io/File;

    .line 8
    .line 9
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lz28;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public f(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lhg6;

    .line 4
    .line 5
    iget-object p0, p0, Lhg6;->a:Lig6;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lig6;->c(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public g(Lfu;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljs9;

    .line 4
    .line 5
    new-instance v0, Lkm5;

    .line 6
    .line 7
    iget-object p0, p0, Ljs9;->e:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Lkm5;-><init>(Ljava/util/regex/Matcher;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Le0a;

    .line 17
    .line 18
    invoke-direct {p0, p1, p2, v0}, Le0a;-><init>(Lfu;Ljava/lang/CharSequence;Lkm5;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;
    .locals 1

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getStatics()Ljava/lang/reflect/InvocationHandler;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-class v0, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    .line 10
    .line 11
    invoke-static {v0, p0}, Ltu0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    .line 16
    .line 17
    return-object p0
.end method

.method public h(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lqg6;

    .line 6
    .line 7
    invoke-static {p1}, Landroidx/recyclerview/widget/a;->L(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    .line 13
    sub-int/2addr p1, p0

    .line 14
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lz28;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public i()[B
    .locals 2

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lgk1;

    .line 4
    .line 5
    invoke-interface {p0}, Llo4;->i()[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v0, 0x20

    .line 10
    .line 11
    const-string v1, "Key"

    .line 12
    .line 13
    invoke-static {v1, v0, p0}, Lz28;->D(Ljava/lang/String;I[B)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public j()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lca2;

    .line 4
    .line 5
    iget-object p0, p0, Lca2;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/io/File;

    .line 8
    .line 9
    return-object p0
.end method

.method public k()Lez1;
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lca2;

    .line 4
    .line 5
    iget-object p0, p0, Lca2;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lyf1;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lez1;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public l()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0()Ltt;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object v0, p0, Ltt;->m:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Ltt;->m(Ljava/lang/String;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public n(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lhg6;

    .line 4
    .line 5
    iget-object p0, p0, Lhg6;->a:Lig6;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lig6;->e(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public o()I
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public onCancelled(Lwc2;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Lr7;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lr7;->c(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onDataChange(Leb2;)V
    .locals 1

    .line 1
    const-class v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lr7;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lr7;->c(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onError(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lc91;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lo21;

    .line 9
    .line 10
    invoke-virtual {p0}, Lo21;->t()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Lho5;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lbn6;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lo21;

    .line 6
    .line 7
    invoke-virtual {p0}, Lo21;->t()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of p1, p1, Lho5;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    sget-object p1, Lbe8;->a:Lbe8;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public p(Ln58;Lz80;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf80;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lf80;->e(Ln58;Lz80;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    if-nez p2, :cond_3

    .line 10
    .line 11
    iget-object p2, p0, Lz28;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Lf80;

    .line 14
    .line 15
    invoke-virtual {p2}, Lf80;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object v0, p0, Lz28;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lf80;

    .line 22
    .line 23
    iget-object v1, v0, Lf80;->g:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lz80;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    :cond_0
    move-object v1, p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, v0, Lf80;->e:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ln58;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, v1, Ln58;->e:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, v0, Lf80;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lg90;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object v1, v0, Lg90;->C:Ljava/lang/String;

    .line 49
    .line 50
    :goto_0
    move-object v0, p1

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move-object v1, p1

    .line 53
    move-object v0, p2

    .line 54
    move-object p2, v1

    .line 55
    :goto_1
    iget-object v2, p0, Lz28;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Lf80;

    .line 58
    .line 59
    iget-object v2, v2, Lf80;->h:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter v2

    .line 62
    :try_start_0
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Lf80;

    .line 65
    .line 66
    iget-object v3, p0, Lf80;->i:Ljava/io/Serializable;

    .line 67
    .line 68
    check-cast v3, Ljava/util/ArrayList;

    .line 69
    .line 70
    iput-object p1, p0, Lf80;->i:Ljava/io/Serializable;

    .line 71
    .line 72
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcn5;

    .line 88
    .line 89
    invoke-virtual {p1, p2, v1, v0}, Lcn5;->a(Ljava/lang/String;Ljava/lang/String;Lz80;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    return-void

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p0
.end method

.method public q()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getSupportedFeatures()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public r(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lhg6;

    .line 4
    .line 5
    iget-object p0, p0, Lhg6;->a:Lig6;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lig6;->f(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/a;

    .line 4
    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/a;->y:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingRight()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    sub-int/2addr v0, p0

    .line 12
    return v0
.end method

.method public t(Landroid/content/res/AssetManager;Ljava/lang/String;)Lra2;
    .locals 1

    .line 1
    new-instance p0, Lap7;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p2, p1}, Lh60;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public u(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Landroid/content/ContentResolver;

    .line 9
    .line 10
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 11
    .line 12
    filled-new-array {p1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/4 v5, 0x0

    .line 17
    sget-object v2, Lz28;->c:[Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "kind = 1 AND image_id = ?"

    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public v()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lca2;

    .line 4
    .line 5
    iget-object p0, p0, Lca2;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lyf1;

    .line 8
    .line 9
    iget-object p0, p0, Lyf1;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ljava/io/File;

    .line 12
    .line 13
    return-object p0
.end method

.method public w(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/a;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public x()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lca2;

    .line 4
    .line 5
    iget-object p0, p0, Lca2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/io/File;

    .line 8
    .line 9
    return-object p0
.end method

.method public y(Lai5;)Lch5;
    .locals 3

    .line 1
    iget v0, p0, Lz28;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lwl6;

    .line 7
    .line 8
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/content/res/Resources;

    .line 11
    .line 12
    const-class v1, Landroid/net/Uri;

    .line 13
    .line 14
    const-class v2, Ljava/io/InputStream;

    .line 15
    .line 16
    invoke-virtual {p1, v1, v2}, Lai5;->a(Ljava/lang/Class;Ljava/lang/Class;)Lch5;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p0, p1}, Lwl6;-><init>(Landroid/content/res/Resources;Lch5;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    new-instance p1, Lj60;

    .line 25
    .line 26
    iget-object v0, p0, Lz28;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroid/content/res/AssetManager;

    .line 29
    .line 30
    invoke-direct {p1, v0, p0}, Lj60;-><init>(Landroid/content/res/AssetManager;Li60;)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object p0, p0, Lz28;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 4
    .line 5
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->n0()Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "input_method"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->n0()Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, "AndroidOpenSSL"

    .line 2
    .line 3
    const-string v1, "Conscrypt"

    .line 4
    .line 5
    const-string v2, "GmsCore_OpenSSL"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    const/4 v3, 0x3

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    aget-object v3, v0, v2

    .line 21
    .line 22
    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x0

    .line 39
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/security/Provider;

    .line 50
    .line 51
    :try_start_0
    iget-object v3, p0, Lz28;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Ly1a;

    .line 54
    .line 55
    invoke-interface {v3, p1, v2}, Ly1a;->e(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-object p0

    .line 60
    :catch_0
    move-exception v2

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    move-object v1, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 66
    .line 67
    const-string p1, "No good Provider found."

    .line 68
    .line 69
    invoke-direct {p0, p1, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public zzb(Ljava/lang/Class;)Lhm9;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lz28;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [Ldl9;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ldl9;->zzc(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v1, p1}, Ldl9;->zzb(Ljava/lang/Class;)Lhm9;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "No factory is available for message type: "

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public zzc(Ljava/lang/Class;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x2

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lz28;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, [Ldl9;

    .line 9
    .line 10
    aget-object v2, v2, v1

    .line 11
    .line 12
    invoke-interface {v2, p1}, Ldl9;->zzc(Ljava/lang/Class;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v0
.end method
