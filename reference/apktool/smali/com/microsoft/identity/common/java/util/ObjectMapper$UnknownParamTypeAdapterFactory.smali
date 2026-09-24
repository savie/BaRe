.class public Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lxb8;


# direct methods
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/a;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0, p2}, Lcom/google/gson/a;->f(Lxb8;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class p1, Lcom/microsoft/identity/common/java/commands/parameters/IHasExtraParameters;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1;-><init>(Lcom/google/gson/b;)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method
