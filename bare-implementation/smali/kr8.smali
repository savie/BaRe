.class public abstract Lkr8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lmr8;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lzv1;->e()Ljava/lang/reflect/InvocationHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance v1, Lz28;

    .line 6
    .line 7
    const-class v2, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 8
    .line 9
    invoke-static {v2, v0}, Ltu0;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 14
    .line 15
    const/16 v2, 0x13

    .line 16
    .line 17
    invoke-direct {v1, v0, v2}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    new-instance v1, Lns0;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-direct {v1, v0}, Lns0;-><init>(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    sput-object v1, Lkr8;->a:Lmr8;

    .line 28
    .line 29
    return-void

    .line 30
    :catch_1
    move-exception v0

    .line 31
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
