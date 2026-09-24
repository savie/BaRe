.class public Lcom/pcloud/sdk/internal/networking/serialization/UnmodifiableListTypeFactory;
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

    .line 1
    invoke-virtual {p1, p0, p2}, Lcom/google/gson/a;->f(Lxb8;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Lcom/pcloud/sdk/internal/networking/serialization/UnmodifiableListTypeFactory$1;

    .line 6
    .line 7
    invoke-direct {p1, p0, p2}, Lcom/pcloud/sdk/internal/networking/serialization/UnmodifiableListTypeFactory$1;-><init>(Lcom/google/gson/b;Lcom/google/gson/reflect/TypeToken;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method
