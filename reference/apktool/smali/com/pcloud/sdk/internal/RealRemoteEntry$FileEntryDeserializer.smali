.class Lcom/pcloud/sdk/internal/RealRemoteEntry$FileEntryDeserializer;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpj4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pcloud/sdk/internal/RealRemoteEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileEntryDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpj4;"
    }
.end annotation


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
.method public final deserialize(Lqj4;Ljava/lang/reflect/Type;Lz28;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lqj4;->i()Lfl4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p2, "isfolder"

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lqj4;->e()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-class p0, Lcom/pcloud/sdk/internal/d;

    .line 18
    .line 19
    invoke-virtual {p3, p1, p0}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lzi6;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const-class p0, Lcom/pcloud/sdk/internal/c;

    .line 27
    .line 28
    invoke-virtual {p3, p1, p0}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lzi6;

    .line 33
    .line 34
    return-object p0
.end method
