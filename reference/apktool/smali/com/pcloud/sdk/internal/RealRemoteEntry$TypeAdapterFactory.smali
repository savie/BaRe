.class Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lxb8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pcloud/sdk/internal/RealRemoteEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeAdapterFactory"
.end annotation


# static fields
.field public static final a:Lcom/google/gson/reflect/TypeToken;

.field public static final b:Lcom/google/gson/reflect/TypeToken;

.field public static final c:Lcom/google/gson/reflect/TypeToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory;->a:Lcom/google/gson/reflect/TypeToken;

    .line 7
    .line 8
    new-instance v0, Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory;->b:Lcom/google/gson/reflect/TypeToken;

    .line 14
    .line 15
    new-instance v0, Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory$3;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory$3;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory;->c:Lcom/google/gson/reflect/TypeToken;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/a;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;
    .locals 1

    .line 1
    sget-object p0, Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory;->a:Lcom/google/gson/reflect/TypeToken;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/google/gson/a;->d(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory;->b:Lcom/google/gson/reflect/TypeToken;

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    const-class p0, Lcom/pcloud/sdk/internal/c;

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Lcom/google/gson/a;->e(Ljava/lang/Class;)Lcom/google/gson/b;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    sget-object p0, Lcom/pcloud/sdk/internal/RealRemoteEntry$TypeAdapterFactory;->c:Lcom/google/gson/reflect/TypeToken;

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lcom/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    const-class p0, Lcom/pcloud/sdk/internal/d;

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lcom/google/gson/a;->e(Ljava/lang/Class;)Lcom/google/gson/b;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method
