.class public abstract Lsx1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ltb;

    .line 2
    .line 3
    invoke-direct {v0}, Ltb;-><init>()V

    .line 4
    .line 5
    .line 6
    filled-new-array {v0}, [Ltb;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v1, Lj77;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lj77;-><init>(Ljava/util/Iterator;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lws1;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lws1;-><init>(Lf77;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lh77;->C0(Lf77;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lsx1;->a:Ljava/util/List;

    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    new-instance v1, Ljava/util/ServiceConfigurationError;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v1
.end method
